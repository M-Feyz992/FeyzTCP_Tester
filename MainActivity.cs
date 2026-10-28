using Android.App;
using Android.Content;
using Android.Content.Res;
using Android.Graphics;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using System;
using System.Diagnostics;
using System.IO;
using System.Net.Sockets;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;

using AndroidActivity = Android.App.Activity;

namespace NetByte
{
    [Register("com.feyz.netbyte.MainActivity")]
    [Activity(
        Label = "Feyz Net Byte",
        Icon = "@mipmap/ic_launcher",
        RoundIcon = "@mipmap/ic_launcher",
        MainLauncher = true,
        Exported = true,
        ConfigurationChanges = Android.Content.PM.ConfigChanges.Orientation | Android.Content.PM.ConfigChanges.ScreenSize
    )]
    public class MainActivity : AndroidActivity
    {
        private const int REQUEST_PICK_FILE = 1001;
        private const string GITHUB_URL = "https://github.com/feyz";

        // Status Indicators
        private View? vStatusDot;
        private TextView? tvTopStatus;

        // Navigation Tabs
        private Button? tabBtnTerminal, tabBtnMacros, tabBtnTransfer, tabBtnConfig, tabBtnAbout;
        private LinearLayout? tabViewTerminal;
        private ScrollView? tabViewMacros, tabViewTransfer, tabViewConfig, tabViewAbout;

        // Terminal Components
        private TextView? tvLog;
        private ScrollView? scrollLog;
        private Spinner? spnViewFormat, spnSendFormat, spnLineEnding;
        private Button? btnCopyLog, btnShareLog, btnClearLog, btnDirectSend;
        private EditText? etDirectInput;

        // Macro Keys
        private readonly Button?[] macroButtons = new Button?[12];
        private readonly string[] macroLabels = new string[12];
        private readonly string[] macroPayloads = new string[12];
        private readonly string[] macroFormats = new string[12];

        // Benchmark & File Streaming
        private Button? btnBench64K, btnBench256K, btnSelectAndSendFile;
        private TextView? tvBenchStats, tvFileTransferStatus, tvPacingVal;
        private SeekBar? sbPacingDelay;
        private int pacingDelayMs = 0;
        private double maxPeakBytesPerSec = 0.0;

        // Config Components
        private Spinner? spnProtocol;
        private EditText? etTargetIp, etTargetPort;
        private Button? btnMainConnect;

        // About Components
        private TextView? tvGithubLink;
        private Button? btnOpenGithub;

        // Persistent Socket Management
        private ISharedPreferences? prefs;
        private TcpClient? tcpClient;
        private NetworkStream? netStream;
        private CancellationTokenSource? rxCts;
        private readonly object networkLock = new object();
        private bool isConnected = false;

        protected override void OnCreate(Bundle? savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.activity_main);

            prefs = GetSharedPreferences("NetByte_Prefs", FileCreationMode.Private);

            InitViews();
            SetupSpinners();
            LoadSavedSettings();
            SetupEventHandlers();
            SelectTab(0);
            UpdateUiConnectionState();
        }

        private void InitViews()
        {
            int GetId(string name) => Resources?.GetIdentifier(name, "id", PackageName) ?? 0;

            vStatusDot = FindViewById<View>(GetId("vStatusDot"));
            tvTopStatus = FindViewById<TextView>(GetId("tvTopStatus"));

            tabBtnTerminal = FindViewById<Button>(GetId("tabBtnTerminal"));
            tabBtnMacros = FindViewById<Button>(GetId("tabBtnMacros"));
            tabBtnTransfer = FindViewById<Button>(GetId("tabBtnTransfer"));
            tabBtnConfig = FindViewById<Button>(GetId("tabBtnConfig"));
            tabBtnAbout = FindViewById<Button>(GetId("tabBtnAbout"));

            tabViewTerminal = FindViewById<LinearLayout>(GetId("tabViewTerminal"));
            tabViewMacros = FindViewById<ScrollView>(GetId("tabViewMacros"));
            tabViewTransfer = FindViewById<ScrollView>(GetId("tabViewTransfer"));
            tabViewConfig = FindViewById<ScrollView>(GetId("tabViewConfig"));
            tabViewAbout = FindViewById<ScrollView>(GetId("tabViewAbout"));

            tvLog = FindViewById<TextView>(GetId("tvLog"));
            scrollLog = FindViewById<ScrollView>(GetId("scrollLog"));
            spnViewFormat = FindViewById<Spinner>(GetId("spnViewFormat"));
            spnSendFormat = FindViewById<Spinner>(GetId("spnSendFormat"));
            spnLineEnding = FindViewById<Spinner>(GetId("spnLineEnding"));

            btnCopyLog = FindViewById<Button>(GetId("btnCopyLog"));
            btnShareLog = FindViewById<Button>(GetId("btnShareLog"));
            btnClearLog = FindViewById<Button>(GetId("btnClearLog"));
            btnDirectSend = FindViewById<Button>(GetId("btnDirectSend"));
            etDirectInput = FindViewById<EditText>(GetId("etDirectInput"));

            for (int i = 0; i < 12; i++)
            {
                macroButtons[i] = FindViewById<Button>(GetId($"macroKey{i}"));
            }

            btnBench64K = FindViewById<Button>(GetId("btnBench64K"));
            btnBench256K = FindViewById<Button>(GetId("btnBench256K"));
            btnSelectAndSendFile = FindViewById<Button>(GetId("btnSelectAndSendFile"));
            tvBenchStats = FindViewById<TextView>(GetId("tvBenchStats"));
            tvFileTransferStatus = FindViewById<TextView>(GetId("tvFileTransferStatus"));
            tvPacingVal = FindViewById<TextView>(GetId("tvPacingVal"));
            sbPacingDelay = FindViewById<SeekBar>(GetId("sbPacingDelay"));

            spnProtocol = FindViewById<Spinner>(GetId("spnProtocol"));
            etTargetIp = FindViewById<EditText>(GetId("etTargetIp"));
            etTargetPort = FindViewById<EditText>(GetId("etTargetPort"));
            btnMainConnect = FindViewById<Button>(GetId("btnMainConnect"));

            tvGithubLink = FindViewById<TextView>(GetId("tvGithubLink"));
            btnOpenGithub = FindViewById<Button>(GetId("btnOpenGithub"));
        }

        private void SetupSpinners()
        {
            void SetAdapter(Spinner? spinner, string[] items)
            {
                if (spinner == null) return;
                var adapter = new ThemedSpinnerAdapter(this, items);
                spinner.Adapter = adapter;
            }

            SetAdapter(spnViewFormat, new[] { "Mixed (HEX + ASCII)", "HEX Only", "ASCII Only" });
            SetAdapter(spnSendFormat, new[] { "HEX Bytes", "ASCII Text" });
            SetAdapter(spnLineEnding, new[] { "None", "CR+LF (\\r\\n)", "LF (\\n)", "CR (\\r)" });
            SetAdapter(spnProtocol, new[] { "TCP Client", "TCP Server", "UDP" });
        }

        private void LoadSavedSettings()
        {
            if (prefs != null)
            {
                if (etTargetIp != null) etTargetIp.Text = prefs.GetString("IP", "192.168.4.1") ?? "192.168.4.1";
                if (etTargetPort != null) etTargetPort.Text = prefs.GetString("PORT", "8080") ?? "8080";

                maxPeakBytesPerSec = Convert.ToDouble(prefs.GetString("MAX_PEAK_SPEED", "0.0"));
                if (tvBenchStats != null) tvBenchStats.Text = $"Peak Speed: {FormatSpeed(maxPeakBytesPerSec)}";

                for (int i = 0; i < 12; i++)
                {
                    macroLabels[i] = prefs.GetString($"M_LBL_{i}", $"KEY {i + 1}") ?? $"KEY {i + 1}";
                    macroPayloads[i] = prefs.GetString($"M_PAY_{i}", (i + 1).ToString("X2")) ?? (i + 1).ToString("X2");
                    macroFormats[i] = prefs.GetString($"M_FMT_{i}", "HEX") ?? "HEX";
                }
            }
            UpdateMacroButtonLabels();
        }

        private void UpdateMacroButtonLabels()
        {
            for (int i = 0; i < 12; i++)
            {
                if (macroButtons[i] != null)
                {
                    macroButtons[i]!.Text = $"{macroLabels[i]}\n[{macroPayloads[i]}]";
                }
            }
        }

        private void SetupEventHandlers()
        {
            tabBtnTerminal!.Click += (s, e) => SelectTab(0);
            tabBtnMacros!.Click += (s, e) => SelectTab(1);
            tabBtnTransfer!.Click += (s, e) => SelectTab(2);
            tabBtnConfig!.Click += (s, e) => SelectTab(3);
            tabBtnAbout!.Click += (s, e) => SelectTab(4);

            btnMainConnect!.Click += async (s, e) =>
            {
                if (!isConnected)
                    await StartConnectionAsync();
                else
                    CloseConnection();
            };

            btnDirectSend!.Click += async (s, e) =>
            {
                string text = etDirectInput?.Text?.Trim() ?? "";
                if (string.IsNullOrEmpty(text)) return;

                bool isHex = (spnSendFormat?.SelectedItemPosition == 0);
                string endingMode = spnLineEnding?.SelectedItem?.ToString() ?? "None";

                byte[]? bytesToSend = ParsePayload(text, isHex, endingMode);
                if (bytesToSend != null)
                {
                    await TransmitDataAsync(bytesToSend, $"Direct ({text})");
                }
                else
                {
                    Toast.MakeText(this, "Invalid hex string (e.g. 01 AA FF)", ToastLength.Short)?.Show();
                }
            };

            for (int i = 0; i < 12; i++)
            {
                int index = i;
                Button? btn = macroButtons[i];
                if (btn != null)
                {
                    btn.Click += async (s, e) =>
                    {
                        bool isHex = macroFormats[index] == "HEX";
                        byte[]? data = ParsePayload(macroPayloads[index], isHex, "None");
                        if (data != null)
                            await TransmitDataAsync(data, macroLabels[index]);
                    };
                    btn.LongClick += (s, e) => ShowMacroConfigDialog(index);
                }
            }

            btnBench64K!.Click += async (s, e) => await ExecuteBenchmarkAsync(65536, "64 KB Test");
            btnBench256K!.Click += async (s, e) => await ExecuteBenchmarkAsync(262144, "256 KB Test");

            btnSelectAndSendFile!.Click += (s, e) =>
            {
                if (!isConnected) { Toast.MakeText(this, "Connect first!", ToastLength.Short)?.Show(); return; }
                var intent = new Intent(Intent.ActionGetContent);
                intent.SetType("*/*");
                StartActivityForResult(Intent.CreateChooser(intent, "Select File to Send"), REQUEST_PICK_FILE);
            };

            sbPacingDelay!.ProgressChanged += (s, e) =>
            {
                pacingDelayMs = e.Progress;
                if (tvPacingVal != null)
                    tvPacingVal.Text = $"Current Delay: {pacingDelayMs} ms {(pacingDelayMs == 0 ? "(Full line rate)" : "")}";
            };

            btnClearLog!.Click += (s, e) => { if (tvLog != null) tvLog.Text = "[SYS] Console cleared.\n"; };
            btnCopyLog!.Click += (s, e) =>
            {
                var clipboard = (ClipboardManager?)GetSystemService(ClipboardService);
                if (clipboard != null && tvLog != null)
                {
                    clipboard.PrimaryClip = ClipData.NewPlainText("NetByte Log", tvLog.Text);
                    Toast.MakeText(this, "Log copied to clipboard", ToastLength.Short)?.Show();
                }
            };
            btnShareLog!.Click += (s, e) =>
            {
                if (tvLog == null || string.IsNullOrWhiteSpace(tvLog.Text)) return;
                var sendIntent = new Intent(Intent.ActionSend);
                sendIntent.PutExtra(Intent.ExtraText, tvLog.Text);
                sendIntent.SetType("text/plain");
                StartActivity(Intent.CreateChooser(sendIntent, "Share NetByte Log"));
            };

            void OpenGithub()
            {
                try
                {
                    StartActivity(new Intent(Intent.ActionView, Android.Net.Uri.Parse(GITHUB_URL)));
                }
                catch (Exception ex)
                {
                    Toast.MakeText(this, ex.Message, ToastLength.Short)?.Show();
                }
            }

            if (tvGithubLink != null) tvGithubLink.Click += (s, e) => OpenGithub();
            if (btnOpenGithub != null) btnOpenGithub.Click += (s, e) => OpenGithub();
        }

        private void SelectTab(int index)
        {
            Button?[] tabBtns = { tabBtnTerminal, tabBtnMacros, tabBtnTransfer, tabBtnConfig, tabBtnAbout };
            for (int i = 0; i < tabBtns.Length; i++)
            {
                if (tabBtns[i] != null)
                {
                    bool isSelected = (i == index);
                    Color bgColor = isSelected ? Color.ParseColor("#007ACC") : Color.ParseColor("#E5E7EB");
                    Color textColor = isSelected ? Color.White : Color.ParseColor("#4B5563");

                    tabBtns[i]!.BackgroundTintList = ColorStateList.ValueOf(bgColor);
                    tabBtns[i]!.SetTextColor(textColor);
                }
            }

            if (tabViewTerminal != null) tabViewTerminal.Visibility = (index == 0) ? ViewStates.Visible : ViewStates.Gone;
            if (tabViewMacros != null) tabViewMacros.Visibility = (index == 1) ? ViewStates.Visible : ViewStates.Gone;
            if (tabViewTransfer != null) tabViewTransfer.Visibility = (index == 2) ? ViewStates.Visible : ViewStates.Gone;
            if (tabViewConfig != null) tabViewConfig.Visibility = (index == 3) ? ViewStates.Visible : ViewStates.Gone;
            if (tabViewAbout != null) tabViewAbout.Visibility = (index == 4) ? ViewStates.Visible : ViewStates.Gone;
        }

        private async Task StartConnectionAsync()
        {
            string ip = etTargetIp?.Text?.Trim() ?? "";
            string portStr = etTargetPort?.Text?.Trim() ?? "";

            if (!int.TryParse(portStr, out int port) || port < 1 || port > 65535)
            {
                Toast.MakeText(this, "Invalid Port number", ToastLength.Short)?.Show();
                return;
            }

            prefs?.Edit()?.PutString("IP", ip)?.PutString("PORT", portStr)?.Apply();
            Log($"[SYS] Connecting to {ip}:{port}...");

            bool ok = await Task.Run(() =>
            {
                try
                {
                    CloseConnection();

                    tcpClient = new TcpClient();
                    tcpClient.NoDelay = true; // Disable Nagle algorithm for real-time response

                    var task = tcpClient.ConnectAsync(ip, port);
                    if (!task.Wait(3500)) throw new TimeoutException("Connection timed out");

                    netStream = tcpClient.GetStream();
                    rxCts = new CancellationTokenSource();

                    // Start background listener task
                    _ = Task.Run(() => ListenIncomingDataAsync(rxCts.Token));

                    return true;
                }
                catch (Exception ex)
                {
                    RunOnUiThread(() => Log($"[ERR] Connect failed: {ex.Message}"));
                    return false;
                }
            });

            isConnected = ok;
            UpdateUiConnectionState();
        }

        private void CloseConnection()
        {
            lock (networkLock)
            {
                try { rxCts?.Cancel(); } catch { }
                try { netStream?.Close(); } catch { }
                try { tcpClient?.Close(); } catch { }
                rxCts = null;
                netStream = null;
                tcpClient = null;
            }
            isConnected = false;
            UpdateUiConnectionState();
        }

        // Dedicated listener that continuously captures any byte received from ESP
        private async Task ListenIncomingDataAsync(CancellationToken token)
        {
            byte[] rxBuffer = new byte[1024];

            try
            {
                while (!token.IsCancellationRequested && netStream != null && netStream.CanRead)
                {
                    int bytesRead = await netStream.ReadAsync(rxBuffer, 0, rxBuffer.Length, token);
                    if (bytesRead <= 0) break; // Server closed connection

                    byte[] packet = new byte[bytesRead];
                    Array.Copy(rxBuffer, packet, bytesRead);

                    RunOnUiThread(() =>
                    {
                        int mode = spnViewFormat?.SelectedItemPosition ?? 0;
                        string hex = BitConverter.ToString(packet).Replace("-", " ");
                        string ascii = Encoding.ASCII.GetString(packet);

                        if (mode == 1) // HEX Only
                            Log($"[RX] {hex}");
                        else if (mode == 2) // ASCII Only
                            Log($"[RX] {ascii}");
                        else // Mixed
                            Log($"[RX] {hex} | \"{ascii.Replace("\r", "\\r").Replace("\n", "\\n")}\"");
                    });
                }
            }
            catch (Exception)
            {
                // Expected on cancellation or close
            }
            finally
            {
                if (isConnected)
                {
                    RunOnUiThread(() =>
                    {
                        Log("[SYS] Server closed connection.");
                        CloseConnection();
                    });
                }
            }
        }

        private void UpdateUiConnectionState()
        {
            RunOnUiThread(() =>
            {
                if (vStatusDot != null && tvTopStatus != null)
                {
                    vStatusDot.SetBackgroundColor(Color.ParseColor(isConnected ? "#10B981" : "#F97316"));
                    tvTopStatus.Text = isConnected ? "Connected" : "Disconnected";
                    tvTopStatus.SetTextColor(Color.ParseColor(isConnected ? "#10B981" : "#F97316"));
                }

                if (btnMainConnect != null)
                {
                    btnMainConnect.Text = isConnected ? "Disconnect" : "Connect";
                    btnMainConnect.BackgroundTintList = ColorStateList.ValueOf(
                        isConnected ? Color.ParseColor("#DC2626") : Color.ParseColor("#059669")
                    );
                }
            });
        }

        private async Task TransmitDataAsync(byte[] data, string desc)
        {
            if (!isConnected || netStream == null)
            {
                Toast.MakeText(this, "Connect first!", ToastLength.Short)?.Show();
                return;
            }

            try
            {
                lock (networkLock)
                {
                    if (netStream != null && netStream.CanWrite)
                    {
                        netStream.Write(data, 0, data.Length);
                        netStream.Flush();
                    }
                }
                Log($"[TX] {BitConverter.ToString(data).Replace("-", " ")} ({desc})");
            }
            catch (Exception ex)
            {
                Log($"[ERR] TX Failed: {ex.Message}");
            }
        }

        private async Task ExecuteBenchmarkAsync(int totalBytes, string testName)
        {
            if (!isConnected || netStream == null) { Toast.MakeText(this, "Connect first!", ToastLength.Short)?.Show(); return; }

            Log($"--- Starting {testName} ({totalBytes / 1024} KB) ---");

            await Task.Run(async () =>
            {
                try
                {
                    byte[] payload = new byte[totalBytes];
                    payload[0] = 0xFE;
                    for (int i = 1; i < totalBytes; i++) payload[i] = 0xAA;

                    Stopwatch sw = Stopwatch.StartNew();
                    int offset = 0;
                    const int chunk = 1024;

                    while (offset < totalBytes && isConnected)
                    {
                        int size = Math.Min(chunk, totalBytes - offset);
                        lock (networkLock)
                        {
                            netStream?.Write(payload, offset, size);
                        }
                        offset += size;

                        if (offset % 4096 == 0)
                            await Task.Delay(2);
                    }

                    lock (networkLock) { netStream?.Flush(); }
                    sw.Stop();

                    double elapsedSec = Math.Max(0.001, sw.Elapsed.TotalSeconds);
                    double bytesPerSec = totalBytes / elapsedSec;

                    if (bytesPerSec > maxPeakBytesPerSec)
                    {
                        maxPeakBytesPerSec = bytesPerSec;
                        prefs?.Edit()?.PutString("MAX_PEAK_SPEED", maxPeakBytesPerSec.ToString())?.Apply();
                    }

                    RunOnUiThread(() =>
                    {
                        Log($"Transferred {totalBytes / 1024} KB in {sw.ElapsedMilliseconds} ms -> Speed: {FormatSpeed(bytesPerSec)}");
                        if (tvBenchStats != null) tvBenchStats.Text = $"Peak Speed: {FormatSpeed(maxPeakBytesPerSec)}";
                    });
                }
                catch (Exception ex)
                {
                    RunOnUiThread(() => Log($"Benchmark Error: {ex.Message}"));
                }
            });
        }

        protected override async void OnActivityResult(int requestCode, Result resultCode, Intent? data)
        {
            base.OnActivityResult(requestCode, resultCode, data);
            if (requestCode == REQUEST_PICK_FILE && resultCode == Result.Ok && data?.Data != null)
            {
                await StreamFileAsync(data.Data);
            }
        }

        private async Task StreamFileAsync(Android.Net.Uri fileUri)
        {
            Log($"--- Initiating File Transfer ---");

            await Task.Run(async () =>
            {
                try
                {
                    using (Stream? inStream = ContentResolver?.OpenInputStream(fileUri))
                    {
                        if (inStream == null) throw new Exception("Cannot read file stream");

                        byte[] buffer = new byte[512];
                        int bytesRead;
                        long totalStreamed = 0;
                        Stopwatch sw = Stopwatch.StartNew();
                        int activeDelay = Math.Max(2, pacingDelayMs);

                        while ((bytesRead = await inStream.ReadAsync(buffer, 0, buffer.Length)) > 0 && isConnected)
                        {
                            lock (networkLock)
                            {
                                netStream?.Write(buffer, 0, bytesRead);
                                netStream?.Flush();
                            }
                            totalStreamed += bytesRead;
                            await Task.Delay(activeDelay);
                        }

                        sw.Stop();
                        RunOnUiThread(() =>
                        {
                            Log($"File sent: {totalStreamed} bytes in {sw.ElapsedMilliseconds} ms");
                            if (tvFileTransferStatus != null)
                                tvFileTransferStatus.Text = $"Sent {totalStreamed} bytes ({FormatSpeed(totalStreamed / Math.Max(0.001, sw.Elapsed.TotalSeconds))})";
                        });
                    }
                }
                catch (Exception ex)
                {
                    RunOnUiThread(() => Log($"Transfer Error: {ex.Message}"));
                }
            });
        }

        private void ShowMacroConfigDialog(int keyIndex)
        {
            LinearLayout layout = new LinearLayout(this) { Orientation = Android.Widget.Orientation.Vertical };
            layout.SetPadding(40, 20, 40, 10);

            EditText txtName = new EditText(this) { Hint = "Button Label", Text = macroLabels[keyIndex] };
            layout.AddView(txtName);

            EditText txtData = new EditText(this) { Hint = "Command (HEX or ASCII)", Text = macroPayloads[keyIndex] };
            layout.AddView(txtData);

            CheckBox chkHex = new CheckBox(this) { Text = "Treat as HEX", Checked = (macroFormats[keyIndex] == "HEX") };
            layout.AddView(chkHex);

            new AlertDialog.Builder(this)
                .SetTitle($"Edit Key {keyIndex + 1}")
                .SetView(layout)
                .SetPositiveButton("Save", (s, e) =>
                {
                    macroLabels[keyIndex] = txtName.Text?.Trim() ?? $"KEY {keyIndex + 1}";
                    macroPayloads[keyIndex] = txtData.Text?.Trim() ?? "00";
                    macroFormats[keyIndex] = chkHex.Checked ? "HEX" : "ASCII";

                    prefs?.Edit()?
                        .PutString($"M_LBL_{keyIndex}", macroLabels[keyIndex])?
                        .PutString($"M_PAY_{keyIndex}", macroPayloads[keyIndex])?
                        .PutString($"M_FMT_{keyIndex}", macroFormats[keyIndex])?
                        .Apply();

                    UpdateMacroButtonLabels();
                })
                .SetNegativeButton("Cancel", (s, e) => { })
                .Show();
        }

        private byte[]? ParsePayload(string input, bool isHex, string endingMode)
        {
            if (isHex)
            {
                string cleanHex = Regex.Replace(input, @"[^0-9A-Fa-f]", "");
                if (cleanHex.Length % 2 != 0) cleanHex = "0" + cleanHex;
                byte[] raw = new byte[cleanHex.Length / 2];
                for (int i = 0; i < raw.Length; i++)
                    raw[i] = Convert.ToByte(cleanHex.Substring(i * 2, 2), 16);
                return raw;
            }

            string append = endingMode switch
            {
                "CR+LF (\\r\\n)" => "\r\n",
                "LF (\\n)" => "\n",
                "CR (\\r)" => "\r",
                _ => ""
            };

            return Encoding.ASCII.GetBytes(input + append);
        }

        private string FormatSpeed(double bytesPerSec)
        {
            double kbps = bytesPerSec / 1024.0;
            double mbps = kbps / 1024.0;
            double bitRateMbps = (bytesPerSec * 8.0) / 1000000.0;

            if (mbps >= 1.0)
                return $"{mbps:F2} MB/s ({bitRateMbps:F2} Mbps)";
            return $"{kbps:F2} KB/s ({bitRateMbps:F2} Mbps)";
        }

        private void Log(string msg)
        {
            RunOnUiThread(() =>
            {
                if (tvLog != null)
                {
                    tvLog.Text += $"\n{msg}";
                    scrollLog?.Post(() => scrollLog.FullScroll(FocusSearchDirection.Down));
                }
            });
        }

        protected override void OnDestroy()
        {
            CloseConnection();
            base.OnDestroy();
        }

        private class ThemedSpinnerAdapter : BaseAdapter<string>
        {
            private readonly Context context;
            private readonly string[] items;

            public ThemedSpinnerAdapter(Context context, string[] items)
            {
                this.context = context;
                this.items = items;
            }

            public override int Count => items.Length;
            public override string this[int position] => items[position];
            public override long GetItemId(int position) => position;

            public override View GetView(int position, View? convertView, ViewGroup? parent)
            {
                TextView tv = (TextView?)(convertView) ?? new TextView(context);
                tv.Text = items[position];
                tv.SetTextColor(Color.ParseColor("#1F2937"));
                tv.SetTextSize(Android.Util.ComplexUnitType.Sp, 13);
                tv.SetPadding(16, 12, 16, 12);
                return tv;
            }

            public override View GetDropDownView(int position, View? convertView, ViewGroup? parent)
            {
                TextView tv = (TextView?)(convertView) ?? new TextView(context);
                tv.Text = items[position];
                tv.SetTextColor(Color.ParseColor("#111827"));
                tv.SetBackgroundColor(Color.ParseColor("#FFFFFF"));
                tv.SetTextSize(Android.Util.ComplexUnitType.Sp, 14);
                tv.SetPadding(24, 20, 24, 20);
                return tv;
            }
        }
    }
}