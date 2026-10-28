using Android.App;
using Android.Content;
using Android.Graphics;
using Android.OS;
using Android.Widget;
using System;
using System.Diagnostics;
using System.Net.Sockets;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

using AndroidActivity = Android.App.Activity;
using WidgetOrientation = Android.Widget.Orientation;

namespace FeyzTCP_Tester
{
    [Activity(Label = "FeyzTCP Tester", MainLauncher = true)]
    public class MainActivity : AndroidActivity
    {
        private EditText? etIp;
        private EditText? etPort;
        private EditText? etCustomHex;
        private TextView? tvLog;
        private ScrollView? scrollLog;

        private Button? btnConnect;
        private Button? btnSpeedTestESP;
        private Button? btnSpeedTestSTM;
        private Button? btnCopyLog;
        private Button? btnShareLog;
        private Button? btnClearLog;
        private Button? btnSendCustom;
        private Button? btnKey1;
        private Button? btnKey2;
        private Button? btnKey3;
        private Button? btnKey4;

        private ISharedPreferences? prefs;

        private string[] keyNames = new string[] { "KEY1", "KEY2", "KEY3", "KEY4" };
        private string[] keyValues = new string[] { "01", "02", "03", "04" };

        // Max Speed Trackers (in Bytes per second)
        private double maxSpeedBytesPerSecESP = 0.0;
        private double maxSpeedBytesPerSecSTM = 0.0;

        private TcpClient? tcpClient;
        private NetworkStream? netStream;
        private readonly object streamLock = new object();
        private bool isConnected = false;
        private bool isTestingSpeed = false;

        protected override void OnCreate(Bundle? savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.activity_main);

            prefs = GetSharedPreferences("FeyzTCP_Prefs", FileCreationMode.Private);

            int GetId(string name) => Resources?.GetIdentifier(name, "id", PackageName) ?? 0;

            etIp = FindViewById<EditText>(GetId("etIp"));
            etPort = FindViewById<EditText>(GetId("etPort"));
            etCustomHex = FindViewById<EditText>(GetId("etCustomHex"));
            tvLog = FindViewById<TextView>(GetId("tvLog"));
            scrollLog = FindViewById<ScrollView>(GetId("scrollLog"));

            btnConnect = FindViewById<Button>(GetId("btnConnect"));
            btnSpeedTestESP = FindViewById<Button>(GetId("btnSpeedTestESP"));
            btnSpeedTestSTM = FindViewById<Button>(GetId("btnSpeedTestSTM"));
            btnCopyLog = FindViewById<Button>(GetId("btnCopyLog"));
            btnShareLog = FindViewById<Button>(GetId("btnShareLog"));
            btnClearLog = FindViewById<Button>(GetId("btnClearLog"));
            btnSendCustom = FindViewById<Button>(GetId("btnSendCustom"));
            btnKey1 = FindViewById<Button>(GetId("btnKey1"));
            btnKey2 = FindViewById<Button>(GetId("btnKey2"));
            btnKey3 = FindViewById<Button>(GetId("btnKey3"));
            btnKey4 = FindViewById<Button>(GetId("btnKey4"));

            LoadPreferences();
            SetupEvents();
            UpdateConnectButtonVisuals();
        }

        private void LoadPreferences()
        {
            if (prefs != null)
            {
                if (etIp != null) etIp.Text = prefs.GetString("SAVED_IP", "192.168.4.1") ?? "192.168.4.1";
                if (etPort != null) etPort.Text = prefs.GetString("SAVED_PORT", "8080") ?? "8080";

                for (int i = 0; i < 4; i++)
                {
                    keyNames[i] = prefs.GetString($"NAME_{i}", keyNames[i]) ?? keyNames[i];
                    keyValues[i] = prefs.GetString($"VAL_{i}", keyValues[i]) ?? keyValues[i];
                }

                // Load saved max throughputs
                maxSpeedBytesPerSecESP = Convert.ToDouble(prefs.GetString("MAX_SPEED_ESP", "0.0"));
                maxSpeedBytesPerSecSTM = Convert.ToDouble(prefs.GetString("MAX_SPEED_STM", "0.0"));
            }
            UpdateButtonLabels();
        }

        private void UpdateButtonLabels()
        {
            if (btnKey1 != null) btnKey1.Text = $"{keyNames[0]} (0x{keyValues[0]})";
            if (btnKey2 != null) btnKey2.Text = $"{keyNames[1]} (0x{keyValues[1]})";
            if (btnKey3 != null) btnKey3.Text = $"{keyNames[2]} (0x{keyValues[2]})";
            if (btnKey4 != null) btnKey4.Text = $"{keyNames[3]} (0x{keyValues[3]})";
        }

        private void SetupEvents()
        {
            if (btnConnect != null)
            {
                btnConnect.Click += async (s, e) =>
                {
                    if (!isConnected)
                        await ConnectToServerAsync();
                    else
                        DisconnectFromServer();
                };
            }

            // Bulk Speed Test: ESP Wi-Fi (256 KB)
            if (btnSpeedTestESP != null)
            {
                btnSpeedTestESP.Click += async (s, e) =>
                {
                    if (!isConnected) { Toast.MakeText(this, "Connect first!", ToastLength.Short)?.Show(); return; }
                    if (isTestingSpeed) return;
                    await ExecuteSpeedBenchmarkAsync(0xFE, 262144, "ESP8266 (Wi-Fi Link)", isESP: true);
                };
            }

            // Bulk Speed Test: STM32 DMA Link (32 KB)
            if (btnSpeedTestSTM != null)
            {
                btnSpeedTestSTM.Click += async (s, e) =>
                {
                    if (!isConnected) { Toast.MakeText(this, "Connect first!", ToastLength.Short)?.Show(); return; }
                    if (isTestingSpeed) return;
                    await ExecuteSpeedBenchmarkAsync(0xFD, 32768, "STM32F429 (DMA Link)", isESP: false);
                };
            }

            // Copy Log to Clipboard
            if (btnCopyLog != null)
            {
                btnCopyLog.Click += (s, e) =>
                {
                    var clipboard = (ClipboardManager?)GetSystemService(ClipboardService);
                    if (clipboard != null && tvLog != null)
                    {
                        var clip = ClipData.NewPlainText("FeyzTCP Log", tvLog.Text);
                        clipboard.PrimaryClip = clip;
                        Toast.MakeText(this, "Log copied to clipboard!", ToastLength.Short)?.Show();
                    }
                };
            }

            // Share Log via System Dialog
            if (btnShareLog != null)
            {
                btnShareLog.Click += (s, e) =>
                {
                    if (tvLog == null || string.IsNullOrWhiteSpace(tvLog.Text)) return;
                    Intent sendIntent = new Intent();
                    sendIntent.SetAction(Intent.ActionSend);
                    sendIntent.PutExtra(Intent.ExtraText, tvLog.Text);
                    sendIntent.SetType("text/plain");
                    StartActivity(Intent.CreateChooser(sendIntent, "Share Log via"));
                };
            }

            // Clear Log Window
            if (btnClearLog != null)
            {
                btnClearLog.Click += (s, e) =>
                {
                    if (tvLog != null)
                    {
                        tvLog.Text = "Log cleared.\n";
                        Toast.MakeText(this, "Log cleared", ToastLength.Short)?.Show();
                    }
                };
            }

            if (btnSendCustom != null)
            {
                btnSendCustom.Click += async (s, e) =>
                {
                    string hex = etCustomHex?.Text?.Trim() ?? "";
                    if (IsValidHex(hex))
                        await SendByteOverTcpAsync(hex);
                    else
                        Toast.MakeText(this, "Enter valid hex byte (00 - FF)", ToastLength.Short)?.Show();
                };
            }

            Button?[] buttons = { btnKey1, btnKey2, btnKey3, btnKey4 };
            for (int i = 0; i < buttons.Length; i++)
            {
                int index = i;
                Button? btn = buttons[i];
                if (btn != null)
                {
                    btn.Click += async (s, e) => await SendByteOverTcpAsync(keyValues[index]);
                    btn.LongClick += (s, e) => ShowKeyConfigDialog(index);
                }
            }
        }

        private async Task ConnectToServerAsync()
        {
            string ip = etIp?.Text?.Trim() ?? "";
            string portStr = etPort?.Text?.Trim() ?? "";

            if (string.IsNullOrEmpty(ip) || !int.TryParse(portStr, out int port) || port < 1 || port > 65535)
            {
                Toast.MakeText(this, "Invalid IP or Port", ToastLength.Short)?.Show();
                return;
            }

            var editor = prefs?.Edit();
            editor?.PutString("SAVED_IP", ip);
            editor?.PutString("SAVED_PORT", portStr);
            editor?.Apply();

            Log($"Connecting to {ip}:{port}...");

            bool success = await Task.Run(() =>
            {
                try
                {
                    DisconnectInternal();
                    tcpClient = new TcpClient();
                    tcpClient.NoDelay = true;

                    var connectTask = tcpClient.ConnectAsync(ip, port);
                    if (!connectTask.Wait(3000))
                    {
                        tcpClient.Close();
                        return false;
                    }

                    netStream = tcpClient.GetStream();
                    return true;
                }
                catch (Exception ex)
                {
                    RunOnUiThread(() => Log($"Connection failed: {ex.Message}"));
                    return false;
                }
            });

            isConnected = success;
            UpdateConnectButtonVisuals();
            Log(success ? "-> CONNECTED." : "-> Could not connect.");
        }

        private void DisconnectFromServer()
        {
            DisconnectInternal();
            isConnected = false;
            UpdateConnectButtonVisuals();
            Log("-> DISCONNECTED.");
        }

        private void DisconnectInternal()
        {
            lock (streamLock)
            {
                try { netStream?.Close(); } catch { }
                try { tcpClient?.Close(); } catch { }
                netStream = null;
                tcpClient = null;
            }
        }

        private void UpdateConnectButtonVisuals()
        {
            RunOnUiThread(() =>
            {
                if (btnConnect != null)
                {
                    if (isConnected)
                    {
                        btnConnect.Text = "Disconnect";
                        btnConnect.SetBackgroundColor(Color.ParseColor("#FF8C00"));
                    }
                    else
                    {
                        btnConnect.Text = "Connect";
                        btnConnect.SetBackgroundColor(Color.ParseColor("#28A745"));
                    }
                }
            });
        }

        private async Task SendByteOverTcpAsync(string hex)
        {
            if (!isConnected || netStream == null)
            {
                Toast.MakeText(this, "Not connected!", ToastLength.Short)?.Show();
                return;
            }

            byte byteToSend = Convert.ToByte(hex, 16);

            await Task.Run(() =>
            {
                try
                {
                    lock (streamLock)
                    {
                        if (netStream != null && netStream.CanWrite)
                        {
                            netStream.Write(new byte[] { byteToSend }, 0, 1);
                            netStream.Flush();
                        }
                    }
                    RunOnUiThread(() => Log($"-> Sent 0x{byteToSend:X2}"));
                }
                catch (Exception ex)
                {
                    RunOnUiThread(() =>
                    {
                        Log($"Send error: {ex.Message}");
                        DisconnectFromServer();
                    });
                }
            });
        }

        private void SetSpeedButtonsEnabled(bool enabled)
        {
            RunOnUiThread(() =>
            {
                if (btnSpeedTestESP != null) btnSpeedTestESP.Enabled = enabled;
                if (btnSpeedTestSTM != null) btnSpeedTestSTM.Enabled = enabled;
            });
        }

        private string FormatSpeed(double bytesPerSec)
        {
            double kbps = bytesPerSec / 1024.0;
            double mbps = kbps / 1024.0;
            double bitRateMbps = (bytesPerSec * 8.0) / (1000.0 * 1000.0);

            if (mbps >= 1.0)
                return $"{mbps:F2} MB/s ({bitRateMbps:F2} Mbps)";
            else
                return $"{kbps:F2} KB/s ({bitRateMbps:F2} Mbps)";
        }

        private async Task ExecuteSpeedBenchmarkAsync(byte headerByte, int totalBytes, string targetName, bool isESP)
        {
            isTestingSpeed = true;
            SetSpeedButtonsEnabled(false);
            Log($"--- Starting Bulk Test: {targetName} ({totalBytes / 1024} KB) ---");

            await Task.Run(async () =>
            {
                try
                {
                    if (netStream == null || !netStream.CanWrite) throw new Exception("Stream unavailable.");

                    while (netStream.DataAvailable)
                    {
                        netStream.ReadByte();
                    }

                    byte[] payload = new byte[totalBytes];
                    payload[0] = headerByte;
                    for (int i = 1; i < totalBytes; i++) payload[i] = 0xAA;

                    byte[] ack = new byte[1];
                    Stopwatch sw = Stopwatch.StartNew();

                    int offset = 0;
                    const int chunkSize = 4096;
                    while (offset < totalBytes)
                    {
                        int sendSize = Math.Min(chunkSize, totalBytes - offset);
                        await netStream.WriteAsync(payload, offset, sendSize);
                        offset += sendSize;
                    }
                    await netStream.FlushAsync();

                    var readTask = netStream.ReadAsync(ack, 0, 1);
                    var timeoutTask = Task.Delay(10000);

                    if (await Task.WhenAny(readTask, timeoutTask) == timeoutTask)
                    {
                        throw new Exception("Timeout waiting for completion ACK.");
                    }

                    int bytesRead = await readTask;
                    sw.Stop();

                    if (bytesRead <= 0 || ack[0] != 0x06)
                    {
                        throw new Exception("Invalid response from target.");
                    }

                    double elapsedSec = sw.Elapsed.TotalSeconds;
                    if (elapsedSec <= 0.0001) elapsedSec = 0.001;

                    double bytesPerSec = totalBytes / elapsedSec;

                    // Update and persist peak speed
                    bool isNewRecord = false;
                    if (isESP)
                    {
                        if (bytesPerSec > maxSpeedBytesPerSecESP)
                        {
                            maxSpeedBytesPerSecESP = bytesPerSec;
                            isNewRecord = true;
                            prefs?.Edit()?.PutString("MAX_SPEED_ESP", maxSpeedBytesPerSecESP.ToString())?.Apply();
                        }
                    }
                    else
                    {
                        if (bytesPerSec > maxSpeedBytesPerSecSTM)
                        {
                            maxSpeedBytesPerSecSTM = bytesPerSec;
                            isNewRecord = true;
                            prefs?.Edit()?.PutString("MAX_SPEED_STM", maxSpeedBytesPerSecSTM.ToString())?.Apply();
                        }
                    }

                    double currentMax = isESP ? maxSpeedBytesPerSecESP : maxSpeedBytesPerSecSTM;
                    string currentSpeedStr = FormatSpeed(bytesPerSec);
                    string maxSpeedStr = FormatSpeed(currentMax);

                    RunOnUiThread(() =>
                    {
                        Log($"Streamed {totalBytes / 1024} KB in {sw.ElapsedMilliseconds} ms");
                        Log($"-> Current Speed: {currentSpeedStr}");
                        Log($"-> Peak Record:   {maxSpeedStr}" + (isNewRecord ? " [NEW MAX!]" : ""));
                    });
                }
                catch (Exception ex)
                {
                    RunOnUiThread(() => Log($"Test Error: {ex.Message}"));
                }
                finally
                {
                    isTestingSpeed = false;
                    SetSpeedButtonsEnabled(true);
                }
            });
        }

        private void ShowKeyConfigDialog(int keyIndex)
        {
            LinearLayout layout = new LinearLayout(this)
            {
                Orientation = WidgetOrientation.Vertical
            };
            layout.SetPadding(40, 20, 40, 10);

            EditText txtName = new EditText(this)
            {
                Hint = "Button Name (e.g. KEY1, ON)",
                Text = keyNames[keyIndex]
            };
            layout.AddView(txtName);

            EditText txtHex = new EditText(this)
            {
                Hint = "Hex Command (00 - FF)",
                Text = keyValues[keyIndex]
            };
            txtHex.SetFilters(new Android.Text.IInputFilter[] { new Android.Text.InputFilterLengthFilter(2) });
            layout.AddView(txtHex);

            new AlertDialog.Builder(this)
                .SetTitle($"Configure Key {keyIndex + 1}")
                .SetView(layout)
                .SetPositiveButton("Save", (s, e) =>
                {
                    string newName = txtName.Text?.Trim() ?? $"KEY{keyIndex + 1}";
                    string newHex = txtHex.Text?.Trim().ToUpper() ?? "";

                    if (IsValidHex(newHex))
                    {
                        keyNames[keyIndex] = string.IsNullOrEmpty(newName) ? $"KEY{keyIndex + 1}" : newName;
                        keyValues[keyIndex] = newHex;

                        var editor = prefs?.Edit();
                        if (editor != null)
                        {
                            editor.PutString($"NAME_{keyIndex}", keyNames[keyIndex]);
                            editor.PutString($"VAL_{keyIndex}", keyValues[keyIndex]);
                            editor.Apply();
                        }

                        UpdateButtonLabels();
                        Log($"Saved: '{keyNames[keyIndex]}' -> 0x{newHex}");
                    }
                    else
                    {
                        Toast.MakeText(this, "Invalid hex byte!", ToastLength.Short)?.Show();
                    }
                })
                .SetNegativeButton("Cancel", (s, e) => { })
                .Show();
        }

        private bool IsValidHex(string val) => Regex.IsMatch(val, "^[0-9A-Fa-f]{1,2}$");

        private void Log(string msg)
        {
            RunOnUiThread(() =>
            {
                if (tvLog != null)
                {
                    tvLog.Text += $"\n{msg}";
                    if (scrollLog != null)
                    {
                        scrollLog.Post(() => scrollLog.FullScroll(Android.Views.FocusSearchDirection.Down));
                    }
                }
            });
        }

        protected override void OnDestroy()
        {
            DisconnectInternal();
            base.OnDestroy();
        }
    }
}

