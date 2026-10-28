; ModuleID = 'obj\Release\net7.0-android\android\typemaps.arm64-v8a.ll'
source_filename = "obj\Release\net7.0-android\android\typemaps.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.TypeMapJava = type {
	i32,; uint32_t module_index
	i32,; uint32_t type_token_id
	i32; uint32_t java_name_index
}

%struct.TypeMapModule = type {
	[16 x i8],; uint8_t module_uuid[16]
	i32,; uint32_t entry_count
	i32,; uint32_t duplicate_count
	%struct.TypeMapModuleEntry*,; TypeMapModuleEntry* map
	%struct.TypeMapModuleEntry*,; TypeMapModuleEntry* duplicate_map
	i8*,; char* assembly_name
	%struct.MonoImage*,; MonoImage* image
	i32,; uint32_t java_name_width
	i8*; uint8_t* java_map
}

%struct.TypeMapModuleEntry = type {
	i32,; uint32_t type_token_id
	i32; uint32_t java_map_index
}

@map_module_count = local_unnamed_addr constant i32 2, align 4

@java_type_count = local_unnamed_addr constant i32 88, align 4

; Map modules data

; module0_managed_to_java
@module0_managed_to_java = internal constant [87 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554507, ; type_token_id
		i32 1; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554508, ; type_token_id
		i32 47; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554509, ; type_token_id
		i32 25; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33554510, ; type_token_id
		i32 26; java_map_index
	}, 
	; 4
	%struct.TypeMapModuleEntry {
		i32 33554511, ; type_token_id
		i32 16; java_map_index
	}, 
	; 5
	%struct.TypeMapModuleEntry {
		i32 33554512, ; type_token_id
		i32 3; java_map_index
	}, 
	; 6
	%struct.TypeMapModuleEntry {
		i32 33554513, ; type_token_id
		i32 35; java_map_index
	}, 
	; 7
	%struct.TypeMapModuleEntry {
		i32 33554516, ; type_token_id
		i32 74; java_map_index
	}, 
	; 8
	%struct.TypeMapModuleEntry {
		i32 33554517, ; type_token_id
		i32 46; java_map_index
	}, 
	; 9
	%struct.TypeMapModuleEntry {
		i32 33554518, ; type_token_id
		i32 62; java_map_index
	}, 
	; 10
	%struct.TypeMapModuleEntry {
		i32 33554520, ; type_token_id
		i32 69; java_map_index
	}, 
	; 11
	%struct.TypeMapModuleEntry {
		i32 33554521, ; type_token_id
		i32 40; java_map_index
	}, 
	; 12
	%struct.TypeMapModuleEntry {
		i32 33554524, ; type_token_id
		i32 33; java_map_index
	}, 
	; 13
	%struct.TypeMapModuleEntry {
		i32 33554529, ; type_token_id
		i32 79; java_map_index
	}, 
	; 14
	%struct.TypeMapModuleEntry {
		i32 33554532, ; type_token_id
		i32 60; java_map_index
	}, 
	; 15
	%struct.TypeMapModuleEntry {
		i32 33554534, ; type_token_id
		i32 73; java_map_index
	}, 
	; 16
	%struct.TypeMapModuleEntry {
		i32 33554536, ; type_token_id
		i32 24; java_map_index
	}, 
	; 17
	%struct.TypeMapModuleEntry {
		i32 33554537, ; type_token_id
		i32 21; java_map_index
	}, 
	; 18
	%struct.TypeMapModuleEntry {
		i32 33554539, ; type_token_id
		i32 7; java_map_index
	}, 
	; 19
	%struct.TypeMapModuleEntry {
		i32 33554543, ; type_token_id
		i32 12; java_map_index
	}, 
	; 20
	%struct.TypeMapModuleEntry {
		i32 33554544, ; type_token_id
		i32 2; java_map_index
	}, 
	; 21
	%struct.TypeMapModuleEntry {
		i32 33554545, ; type_token_id
		i32 43; java_map_index
	}, 
	; 22
	%struct.TypeMapModuleEntry {
		i32 33554546, ; type_token_id
		i32 51; java_map_index
	}, 
	; 23
	%struct.TypeMapModuleEntry {
		i32 33554547, ; type_token_id
		i32 82; java_map_index
	}, 
	; 24
	%struct.TypeMapModuleEntry {
		i32 33554551, ; type_token_id
		i32 37; java_map_index
	}, 
	; 25
	%struct.TypeMapModuleEntry {
		i32 33554552, ; type_token_id
		i32 57; java_map_index
	}, 
	; 26
	%struct.TypeMapModuleEntry {
		i32 33554553, ; type_token_id
		i32 55; java_map_index
	}, 
	; 27
	%struct.TypeMapModuleEntry {
		i32 33554554, ; type_token_id
		i32 76; java_map_index
	}, 
	; 28
	%struct.TypeMapModuleEntry {
		i32 33554555, ; type_token_id
		i32 18; java_map_index
	}, 
	; 29
	%struct.TypeMapModuleEntry {
		i32 33554559, ; type_token_id
		i32 84; java_map_index
	}, 
	; 30
	%struct.TypeMapModuleEntry {
		i32 33554560, ; type_token_id
		i32 17; java_map_index
	}, 
	; 31
	%struct.TypeMapModuleEntry {
		i32 33554561, ; type_token_id
		i32 48; java_map_index
	}, 
	; 32
	%struct.TypeMapModuleEntry {
		i32 33554563, ; type_token_id
		i32 31; java_map_index
	}, 
	; 33
	%struct.TypeMapModuleEntry {
		i32 33554564, ; type_token_id
		i32 75; java_map_index
	}, 
	; 34
	%struct.TypeMapModuleEntry {
		i32 33554567, ; type_token_id
		i32 4; java_map_index
	}, 
	; 35
	%struct.TypeMapModuleEntry {
		i32 33554568, ; type_token_id
		i32 20; java_map_index
	}, 
	; 36
	%struct.TypeMapModuleEntry {
		i32 33554570, ; type_token_id
		i32 15; java_map_index
	}, 
	; 37
	%struct.TypeMapModuleEntry {
		i32 33554571, ; type_token_id
		i32 80; java_map_index
	}, 
	; 38
	%struct.TypeMapModuleEntry {
		i32 33554573, ; type_token_id
		i32 85; java_map_index
	}, 
	; 39
	%struct.TypeMapModuleEntry {
		i32 33554575, ; type_token_id
		i32 67; java_map_index
	}, 
	; 40
	%struct.TypeMapModuleEntry {
		i32 33554578, ; type_token_id
		i32 50; java_map_index
	}, 
	; 41
	%struct.TypeMapModuleEntry {
		i32 33554598, ; type_token_id
		i32 78; java_map_index
	}, 
	; 42
	%struct.TypeMapModuleEntry {
		i32 33554600, ; type_token_id
		i32 87; java_map_index
	}, 
	; 43
	%struct.TypeMapModuleEntry {
		i32 33554602, ; type_token_id
		i32 28; java_map_index
	}, 
	; 44
	%struct.TypeMapModuleEntry {
		i32 33554611, ; type_token_id
		i32 45; java_map_index
	}, 
	; 45
	%struct.TypeMapModuleEntry {
		i32 33554613, ; type_token_id
		i32 77; java_map_index
	}, 
	; 46
	%struct.TypeMapModuleEntry {
		i32 33554614, ; type_token_id
		i32 10; java_map_index
	}, 
	; 47
	%struct.TypeMapModuleEntry {
		i32 33554615, ; type_token_id
		i32 8; java_map_index
	}, 
	; 48
	%struct.TypeMapModuleEntry {
		i32 33554628, ; type_token_id
		i32 66; java_map_index
	}, 
	; 49
	%struct.TypeMapModuleEntry {
		i32 33554637, ; type_token_id
		i32 11; java_map_index
	}, 
	; 50
	%struct.TypeMapModuleEntry {
		i32 33554639, ; type_token_id
		i32 6; java_map_index
	}, 
	; 51
	%struct.TypeMapModuleEntry {
		i32 33554641, ; type_token_id
		i32 63; java_map_index
	}, 
	; 52
	%struct.TypeMapModuleEntry {
		i32 33554643, ; type_token_id
		i32 29; java_map_index
	}, 
	; 53
	%struct.TypeMapModuleEntry {
		i32 33554645, ; type_token_id
		i32 34; java_map_index
	}, 
	; 54
	%struct.TypeMapModuleEntry {
		i32 33554646, ; type_token_id
		i32 68; java_map_index
	}, 
	; 55
	%struct.TypeMapModuleEntry {
		i32 33554647, ; type_token_id
		i32 27; java_map_index
	}, 
	; 56
	%struct.TypeMapModuleEntry {
		i32 33554648, ; type_token_id
		i32 22; java_map_index
	}, 
	; 57
	%struct.TypeMapModuleEntry {
		i32 33554649, ; type_token_id
		i32 65; java_map_index
	}, 
	; 58
	%struct.TypeMapModuleEntry {
		i32 33554650, ; type_token_id
		i32 83; java_map_index
	}, 
	; 59
	%struct.TypeMapModuleEntry {
		i32 33554651, ; type_token_id
		i32 23; java_map_index
	}, 
	; 60
	%struct.TypeMapModuleEntry {
		i32 33554652, ; type_token_id
		i32 5; java_map_index
	}, 
	; 61
	%struct.TypeMapModuleEntry {
		i32 33554653, ; type_token_id
		i32 86; java_map_index
	}, 
	; 62
	%struct.TypeMapModuleEntry {
		i32 33554654, ; type_token_id
		i32 70; java_map_index
	}, 
	; 63
	%struct.TypeMapModuleEntry {
		i32 33554657, ; type_token_id
		i32 30; java_map_index
	}, 
	; 64
	%struct.TypeMapModuleEntry {
		i32 33554658, ; type_token_id
		i32 52; java_map_index
	}, 
	; 65
	%struct.TypeMapModuleEntry {
		i32 33554659, ; type_token_id
		i32 49; java_map_index
	}, 
	; 66
	%struct.TypeMapModuleEntry {
		i32 33554660, ; type_token_id
		i32 54; java_map_index
	}, 
	; 67
	%struct.TypeMapModuleEntry {
		i32 33554661, ; type_token_id
		i32 32; java_map_index
	}, 
	; 68
	%struct.TypeMapModuleEntry {
		i32 33554663, ; type_token_id
		i32 39; java_map_index
	}, 
	; 69
	%struct.TypeMapModuleEntry {
		i32 33554664, ; type_token_id
		i32 38; java_map_index
	}, 
	; 70
	%struct.TypeMapModuleEntry {
		i32 33554665, ; type_token_id
		i32 53; java_map_index
	}, 
	; 71
	%struct.TypeMapModuleEntry {
		i32 33554667, ; type_token_id
		i32 64; java_map_index
	}, 
	; 72
	%struct.TypeMapModuleEntry {
		i32 33554668, ; type_token_id
		i32 59; java_map_index
	}, 
	; 73
	%struct.TypeMapModuleEntry {
		i32 33554669, ; type_token_id
		i32 42; java_map_index
	}, 
	; 74
	%struct.TypeMapModuleEntry {
		i32 33554670, ; type_token_id
		i32 0; java_map_index
	}, 
	; 75
	%struct.TypeMapModuleEntry {
		i32 33554672, ; type_token_id
		i32 36; java_map_index
	}, 
	; 76
	%struct.TypeMapModuleEntry {
		i32 33554673, ; type_token_id
		i32 44; java_map_index
	}, 
	; 77
	%struct.TypeMapModuleEntry {
		i32 33554674, ; type_token_id
		i32 71; java_map_index
	}, 
	; 78
	%struct.TypeMapModuleEntry {
		i32 33554675, ; type_token_id
		i32 41; java_map_index
	}, 
	; 79
	%struct.TypeMapModuleEntry {
		i32 33554676, ; type_token_id
		i32 9; java_map_index
	}, 
	; 80
	%struct.TypeMapModuleEntry {
		i32 33554677, ; type_token_id
		i32 14; java_map_index
	}, 
	; 81
	%struct.TypeMapModuleEntry {
		i32 33554679, ; type_token_id
		i32 13; java_map_index
	}, 
	; 82
	%struct.TypeMapModuleEntry {
		i32 33554680, ; type_token_id
		i32 81; java_map_index
	}, 
	; 83
	%struct.TypeMapModuleEntry {
		i32 33554682, ; type_token_id
		i32 19; java_map_index
	}, 
	; 84
	%struct.TypeMapModuleEntry {
		i32 33554683, ; type_token_id
		i32 58; java_map_index
	}, 
	; 85
	%struct.TypeMapModuleEntry {
		i32 33554684, ; type_token_id
		i32 72; java_map_index
	}, 
	; 86
	%struct.TypeMapModuleEntry {
		i32 33554700, ; type_token_id
		i32 56; java_map_index
	}
], align 4; end of 'module0_managed_to_java' array


; module0_managed_to_java_duplicates
@module0_managed_to_java_duplicates = internal constant [27 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554519, ; type_token_id
		i32 62; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554522, ; type_token_id
		i32 40; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554530, ; type_token_id
		i32 79; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33554533, ; type_token_id
		i32 60; java_map_index
	}, 
	; 4
	%struct.TypeMapModuleEntry {
		i32 33554535, ; type_token_id
		i32 73; java_map_index
	}, 
	; 5
	%struct.TypeMapModuleEntry {
		i32 33554538, ; type_token_id
		i32 21; java_map_index
	}, 
	; 6
	%struct.TypeMapModuleEntry {
		i32 33554540, ; type_token_id
		i32 7; java_map_index
	}, 
	; 7
	%struct.TypeMapModuleEntry {
		i32 33554562, ; type_token_id
		i32 48; java_map_index
	}, 
	; 8
	%struct.TypeMapModuleEntry {
		i32 33554565, ; type_token_id
		i32 75; java_map_index
	}, 
	; 9
	%struct.TypeMapModuleEntry {
		i32 33554569, ; type_token_id
		i32 20; java_map_index
	}, 
	; 10
	%struct.TypeMapModuleEntry {
		i32 33554572, ; type_token_id
		i32 80; java_map_index
	}, 
	; 11
	%struct.TypeMapModuleEntry {
		i32 33554574, ; type_token_id
		i32 85; java_map_index
	}, 
	; 12
	%struct.TypeMapModuleEntry {
		i32 33554576, ; type_token_id
		i32 67; java_map_index
	}, 
	; 13
	%struct.TypeMapModuleEntry {
		i32 33554601, ; type_token_id
		i32 87; java_map_index
	}, 
	; 14
	%struct.TypeMapModuleEntry {
		i32 33554607, ; type_token_id
		i32 28; java_map_index
	}, 
	; 15
	%struct.TypeMapModuleEntry {
		i32 33554612, ; type_token_id
		i32 45; java_map_index
	}, 
	; 16
	%struct.TypeMapModuleEntry {
		i32 33554616, ; type_token_id
		i32 8; java_map_index
	}, 
	; 17
	%struct.TypeMapModuleEntry {
		i32 33554638, ; type_token_id
		i32 11; java_map_index
	}, 
	; 18
	%struct.TypeMapModuleEntry {
		i32 33554640, ; type_token_id
		i32 6; java_map_index
	}, 
	; 19
	%struct.TypeMapModuleEntry {
		i32 33554642, ; type_token_id
		i32 63; java_map_index
	}, 
	; 20
	%struct.TypeMapModuleEntry {
		i32 33554644, ; type_token_id
		i32 29; java_map_index
	}, 
	; 21
	%struct.TypeMapModuleEntry {
		i32 33554655, ; type_token_id
		i32 70; java_map_index
	}, 
	; 22
	%struct.TypeMapModuleEntry {
		i32 33554662, ; type_token_id
		i32 32; java_map_index
	}, 
	; 23
	%struct.TypeMapModuleEntry {
		i32 33554666, ; type_token_id
		i32 53; java_map_index
	}, 
	; 24
	%struct.TypeMapModuleEntry {
		i32 33554678, ; type_token_id
		i32 14; java_map_index
	}, 
	; 25
	%struct.TypeMapModuleEntry {
		i32 33554681, ; type_token_id
		i32 81; java_map_index
	}, 
	; 26
	%struct.TypeMapModuleEntry {
		i32 33554685, ; type_token_id
		i32 72; java_map_index
	}
], align 4; end of 'module0_managed_to_java_duplicates' array


; module1_managed_to_java
@module1_managed_to_java = internal constant [1 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554438, ; type_token_id
		i32 61; java_map_index
	}
], align 4; end of 'module1_managed_to_java' array

; Map modules
@__TypeMapModule_assembly_name.0 = internal constant [13 x i8] c"Mono.Android\00", align 1
@__TypeMapModule_assembly_name.1 = internal constant [15 x i8] c"FeyzTCP_Tester\00", align 1

; map_modules
@map_modules = global [2 x %struct.TypeMapModule] [
	; 0
	%struct.TypeMapModule {
		[16 x i8] c"S_\FE2\9DV\CAM\9C+#M\D1\D7\80\88", ; module_uuid: 32fe5f53-569d-4dca-9c2b-234dd1d78088
		i32 87, ; entry_count
		i32 27, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([87 x %struct.TypeMapModuleEntry], [87 x %struct.TypeMapModuleEntry]* @module0_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* getelementptr inbounds ([27 x %struct.TypeMapModuleEntry], [27 x %struct.TypeMapModuleEntry]* @module0_managed_to_java_duplicates, i32 0, i32 0), ; duplicate_map
		i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__TypeMapModule_assembly_name.0, i32 0, i32 0), ; assembly_name: Mono.Android
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 1
	%struct.TypeMapModule {
		[16 x i8] c"\FF\CA\AA')\14~H\91/ \D3S\93\C1\5C", ; module_uuid: 27aacaff-1429-487e-912f-20d35393c15c
		i32 1, ; entry_count
		i32 0, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([1 x %struct.TypeMapModuleEntry], [1 x %struct.TypeMapModuleEntry]* @module1_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* null, ; duplicate_map
		i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__TypeMapModule_assembly_name.1, i32 0, i32 0), ; assembly_name: FeyzTCP_Tester
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}
], align 8; end of 'map_modules' array


; Java to managed map

; map_java
@map_java = local_unnamed_addr constant [88 x %struct.TypeMapJava] [
	; 0
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554670, ; type_token_id
		i32 74; java_name_index
	}, 
	; 1
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554507, ; type_token_id
		i32 0; java_name_index
	}, 
	; 2
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554544, ; type_token_id
		i32 20; java_name_index
	}, 
	; 3
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554512, ; type_token_id
		i32 5; java_name_index
	}, 
	; 4
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554567, ; type_token_id
		i32 34; java_name_index
	}, 
	; 5
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554652, ; type_token_id
		i32 60; java_name_index
	}, 
	; 6
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 50; java_name_index
	}, 
	; 7
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 18; java_name_index
	}, 
	; 8
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554615, ; type_token_id
		i32 47; java_name_index
	}, 
	; 9
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554676, ; type_token_id
		i32 79; java_name_index
	}, 
	; 10
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554614, ; type_token_id
		i32 46; java_name_index
	}, 
	; 11
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 49; java_name_index
	}, 
	; 12
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554543, ; type_token_id
		i32 19; java_name_index
	}, 
	; 13
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554679, ; type_token_id
		i32 81; java_name_index
	}, 
	; 14
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554677, ; type_token_id
		i32 80; java_name_index
	}, 
	; 15
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554570, ; type_token_id
		i32 36; java_name_index
	}, 
	; 16
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554511, ; type_token_id
		i32 4; java_name_index
	}, 
	; 17
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554560, ; type_token_id
		i32 30; java_name_index
	}, 
	; 18
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554555, ; type_token_id
		i32 28; java_name_index
	}, 
	; 19
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554682, ; type_token_id
		i32 83; java_name_index
	}, 
	; 20
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 35; java_name_index
	}, 
	; 21
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 17; java_name_index
	}, 
	; 22
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554648, ; type_token_id
		i32 56; java_name_index
	}, 
	; 23
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554651, ; type_token_id
		i32 59; java_name_index
	}, 
	; 24
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554536, ; type_token_id
		i32 16; java_name_index
	}, 
	; 25
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554509, ; type_token_id
		i32 2; java_name_index
	}, 
	; 26
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554510, ; type_token_id
		i32 3; java_name_index
	}, 
	; 27
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554647, ; type_token_id
		i32 55; java_name_index
	}, 
	; 28
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554602, ; type_token_id
		i32 43; java_name_index
	}, 
	; 29
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554643, ; type_token_id
		i32 52; java_name_index
	}, 
	; 30
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554657, ; type_token_id
		i32 63; java_name_index
	}, 
	; 31
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554563, ; type_token_id
		i32 32; java_name_index
	}, 
	; 32
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 67; java_name_index
	}, 
	; 33
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554524, ; type_token_id
		i32 12; java_name_index
	}, 
	; 34
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554645, ; type_token_id
		i32 53; java_name_index
	}, 
	; 35
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554513, ; type_token_id
		i32 6; java_name_index
	}, 
	; 36
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554672, ; type_token_id
		i32 75; java_name_index
	}, 
	; 37
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554551, ; type_token_id
		i32 24; java_name_index
	}, 
	; 38
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554664, ; type_token_id
		i32 69; java_name_index
	}, 
	; 39
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554663, ; type_token_id
		i32 68; java_name_index
	}, 
	; 40
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 11; java_name_index
	}, 
	; 41
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554675, ; type_token_id
		i32 78; java_name_index
	}, 
	; 42
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554669, ; type_token_id
		i32 73; java_name_index
	}, 
	; 43
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554545, ; type_token_id
		i32 21; java_name_index
	}, 
	; 44
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554673, ; type_token_id
		i32 76; java_name_index
	}, 
	; 45
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554611, ; type_token_id
		i32 44; java_name_index
	}, 
	; 46
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554517, ; type_token_id
		i32 8; java_name_index
	}, 
	; 47
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554508, ; type_token_id
		i32 1; java_name_index
	}, 
	; 48
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554561, ; type_token_id
		i32 31; java_name_index
	}, 
	; 49
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554659, ; type_token_id
		i32 65; java_name_index
	}, 
	; 50
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554578, ; type_token_id
		i32 40; java_name_index
	}, 
	; 51
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554546, ; type_token_id
		i32 22; java_name_index
	}, 
	; 52
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554658, ; type_token_id
		i32 64; java_name_index
	}, 
	; 53
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554665, ; type_token_id
		i32 70; java_name_index
	}, 
	; 54
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554660, ; type_token_id
		i32 66; java_name_index
	}, 
	; 55
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554553, ; type_token_id
		i32 26; java_name_index
	}, 
	; 56
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554700, ; type_token_id
		i32 86; java_name_index
	}, 
	; 57
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554552, ; type_token_id
		i32 25; java_name_index
	}, 
	; 58
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554683, ; type_token_id
		i32 84; java_name_index
	}, 
	; 59
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554668, ; type_token_id
		i32 72; java_name_index
	}, 
	; 60
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 14; java_name_index
	}, 
	; 61
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554438, ; type_token_id
		i32 87; java_name_index
	}, 
	; 62
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 9; java_name_index
	}, 
	; 63
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554641, ; type_token_id
		i32 51; java_name_index
	}, 
	; 64
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554667, ; type_token_id
		i32 71; java_name_index
	}, 
	; 65
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554649, ; type_token_id
		i32 57; java_name_index
	}, 
	; 66
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554628, ; type_token_id
		i32 48; java_name_index
	}, 
	; 67
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 39; java_name_index
	}, 
	; 68
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554646, ; type_token_id
		i32 54; java_name_index
	}, 
	; 69
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554520, ; type_token_id
		i32 10; java_name_index
	}, 
	; 70
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 62; java_name_index
	}, 
	; 71
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554674, ; type_token_id
		i32 77; java_name_index
	}, 
	; 72
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554684, ; type_token_id
		i32 85; java_name_index
	}, 
	; 73
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554534, ; type_token_id
		i32 15; java_name_index
	}, 
	; 74
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554516, ; type_token_id
		i32 7; java_name_index
	}, 
	; 75
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 33; java_name_index
	}, 
	; 76
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554554, ; type_token_id
		i32 27; java_name_index
	}, 
	; 77
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554613, ; type_token_id
		i32 45; java_name_index
	}, 
	; 78
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554598, ; type_token_id
		i32 41; java_name_index
	}, 
	; 79
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554529, ; type_token_id
		i32 13; java_name_index
	}, 
	; 80
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 37; java_name_index
	}, 
	; 81
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554680, ; type_token_id
		i32 82; java_name_index
	}, 
	; 82
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554547, ; type_token_id
		i32 23; java_name_index
	}, 
	; 83
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554650, ; type_token_id
		i32 58; java_name_index
	}, 
	; 84
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554559, ; type_token_id
		i32 29; java_name_index
	}, 
	; 85
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 38; java_name_index
	}, 
	; 86
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554653, ; type_token_id
		i32 61; java_name_index
	}, 
	; 87
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554600, ; type_token_id
		i32 42; java_name_index
	}
], align 4; end of 'map_java' array

@map_java_hashes = local_unnamed_addr constant [88 x i64] [
	i64 128182020419974451, ; 0: 0x1c764de51b97533 => java/lang/String
	i64 318564728890166633, ; 1: 0x46bc4eedf778d69 => android/widget/Button
	i64 361870449891484378, ; 2: 0x5059f41c47e22da => android/os/Bundle
	i64 363417747702605178, ; 3: 0x50b1e841ce2e57a => android/widget/TextView
	i64 698738878519169148, ; 4: 0x9b26b4ed4e3d07c => mono/android/content/DialogInterface_OnClickListenerImplementor
	i64 870874870088288028, ; 5: 0xc15f8148b6d471c => java/lang/Exception
	i64 1079586186822872943, ; 6: 0xefb75eac1feef6f => java/util/function/Consumer
	i64 1093289771861447773, ; 7: 0xf2c2541485e945d => android/text/Spanned
	i64 1217044833273073796, ; 8: 0x10e3cfd3e2f75084 => java/util/HashSet
	i64 1317579852464953526, ; 9: 0x1248fbe51d6298b6 => java/io/FileInputStream
	i64 1320822650197077237, ; 10: 0x12548133cc496cf5 => android/runtime/JavaProxyThrowable
	i64 1362770524300979611, ; 11: 0x12e9889253552d9b => java/util/Iterator
	i64 1747499027921055994, ; 12: 0x18405d1b749330fa => android/os/BaseBundle
	i64 1831728799718484971, ; 13: 0x196b9ba37012abeb => java/io/IOException
	i64 2164140653916027403, ; 14: 0x1e08927568a57a0b => java/io/InputStream
	i64 2972252214977986258, ; 15: 0x293f8fa450a17ed2 => android/content/Intent
	i64 3145165272272586806, ; 16: 0x2ba5df26bdb3c836 => android/widget/ScrollView
	i64 3155261737265476761, ; 17: 0x2bc9bdd52f173499 => android/content/ClipData
	i64 3312753486604898190, ; 18: 0x2df943be8d858f8e => android/app/Dialog
	i64 3476617847597562063, ; 19: 0x303f6d8331d5f8cf => java/io/PrintWriter
	i64 3530631042196079534, ; 20: 0x30ff523a0f1083ae => android/content/DialogInterface
	i64 3664445150084014760, ; 21: 0x32dab972eda922a8 => android/text/InputFilter
	i64 4305371449952891808, ; 22: 0x3bbfc085dc8cf3a0 => java/lang/Class
	i64 5214467817578676657, ; 23: 0x485d82da477bc1b1 => java/lang/Error
	i64 5273367786484979320, ; 24: 0x492ec40ff36cd678 => android/text/InputFilter$LengthFilter
	i64 5890385405214755341, ; 25: 0x51beda5143f88a0d => android/widget/FrameLayout
	i64 6116679261601087867, ; 26: 0x54e2cf6180bb417b => android/widget/LinearLayout
	i64 7658195837123306865, ; 27: 0x6a476089fc1c2571 => java/lang/Character
	i64 7933543037734065265, ; 28: 0x6e199b5bee699471 => java/util/HashMap
	i64 8190305621607579207, ; 29: 0x71a9cf9199cdfe47 => java/nio/channels/spi/AbstractInterruptibleChannel
	i64 8416619862292774857, ; 30: 0x74cdd72bed753fc9 => java/lang/IllegalArgumentException
	i64 8487642170263250902, ; 31: 0x75ca29959b2aa7d6 => android/content/ContextWrapper
	i64 8587172038193766563, ; 32: 0x772bc378d1b4e0a3 => java/lang/Runnable
	i64 8614596961941480999, ; 33: 0x778d324b77ae6627 => mono/android/view/View_OnLongClickListenerImplementor
	i64 8950391188589719199, ; 34: 0x7c362d5d64ad2e9f => java/lang/Boolean
	i64 9478593896738967145, ; 35: 0x838abaede94fce69 => android/widget/Toast
	i64 9667515047141612341, ; 36: 0x8629e9b6f59e9b35 => java/lang/Thread
	i64 9869939015140501507, ; 37: 0x88f9113db837e803 => android/app/Activity
	i64 9977296435420958008, ; 38: 0x8a767a3efc098d38 => java/lang/NullPointerException
	i64 10266059374509936169, ; 39: 0x8e785e9bf4bbce29 => java/lang/Long
	i64 10354448552699118825, ; 40: 0x8fb2641934b044e9 => android/view/View$OnLongClickListener
	i64 10589642565195629679, ; 41: 0x92f5f7ce84d7846f => java/lang/UnsupportedOperationException
	i64 10722894652849872693, ; 42: 0x94cf5fdfdb0d5f35 => java/lang/Short
	i64 11112718717483603117, ; 43: 0x9a384ecbbc71d4ad => android/os/Handler
	i64 11573301743732151818, ; 44: 0xa09ca09e3190560a => mono/java/lang/RunnableImplementor
	i64 11712899692065226922, ; 45: 0xa28c94365b5480aa => java/util/ArrayList
	i64 11954228872253987625, ; 46: 0xa5e5f3d2b66adb29 => android/view/View
	i64 12016049636675011370, ; 47: 0xa6c1957b1579c32a => android/widget/EditText
	i64 12228984007958404582, ; 48: 0xa9b61429ce4b1de6 => android/content/Context
	i64 12426529965699990912, ; 49: 0xac73e72a4c4b8580 => java/lang/IndexOutOfBoundsException
	i64 12458575303368155603, ; 50: 0xace5c03ae4b6a1d3 => android/content/res/Resources
	i64 12476375190645835422, ; 51: 0xad24fd221af1069e => android/os/Looper
	i64 12488842103917764438, ; 52: 0xad5147b98bf5df56 => java/lang/IllegalStateException
	i64 12532121860257401396, ; 53: 0xadeb0a6f128cca34 => java/lang/Number
	i64 12806567541869262104, ; 54: 0xb1ba1153c52a3518 => java/lang/Integer
	i64 13191394589072141775, ; 55: 0xb7113f7cdda7adcf => android/app/AlertDialog$Builder
	i64 13402779434266666368, ; 56: 0xba003ce26e602580 => mono/android/TypeManager
	i64 13491848569179882038, ; 57: 0xbb3cacca71544236 => android/app/AlertDialog
	i64 13770727111868296170, ; 58: 0xbf1b735909c02bea => java/io/StringWriter
	i64 13789203013919682202, ; 59: 0xbf5d1715346dae9a => java/lang/RuntimeException
	i64 13805562342397192842, ; 60: 0xbf9735ce2f182a8a => android/util/AttributeSet
	i64 13811305833003270601, ; 61: 0xbfab9d7acc70c1c9 => crc644717373c647c7a0b/MainActivity
	i64 13877554026709814142, ; 62: 0xc096f9dc61548b7e => android/view/View$OnClickListener
	i64 14031640676547298208, ; 63: 0xc2ba66da3d8603a0 => java/nio/channels/FileChannel
	i64 14167891754637755728, ; 64: 0xc49e767c735e8550 => java/lang/Object
	i64 14180814796703042768, ; 65: 0xc4cc5feca7168cd0 => java/lang/ClassCastException
	i64 14206023932851353817, ; 66: 0xc525ef800c4d78d9 => mono/android/runtime/OutputStreamAdapter
	i64 14296237994325564878, ; 67: 0xc66670b60c37ddce => android/content/SharedPreferences
	i64 14501341618205132561, ; 68: 0xc93f1d5ecfb48711 => java/lang/Byte
	i64 14649586819325063784, ; 69: 0xcb4dc998681d7268 => mono/android/view/View_OnClickListenerImplementor
	i64 14684559126920293129, ; 70: 0xcbca08b94b4deb09 => java/lang/CharSequence
	i64 14940408132235664607, ; 71: 0xcf56fe09e1439cdf => java/lang/Throwable
	i64 15633873768898914415, ; 72: 0xd8f6ad5c6a84686f => java/io/Writer
	i64 16281235200369999056, ; 73: 0xe1f291272ea3bcd0 => android/text/ClipboardManager
	i64 16314168557433322311, ; 74: 0xe26791dde7a8fb47 => android/view/ContextThemeWrapper
	i64 16413651262945443612, ; 75: 0xe3c900dc43013f1c => android/content/DialogInterface$OnClickListener
	i64 16542847110558016359, ; 76: 0xe593ffcc9e686367 => android/app/Application
	i64 16603717322881265010, ; 77: 0xe66c40ef55566d72 => mono/android/runtime/JavaObject
	i64 16723123314454325679, ; 78: 0xe814780d351a69af => mono/android/runtime/InputStreamAdapter
	i64 16832017439803262409, ; 79: 0xe99756ae80a745c9 => android/view/ViewGroup
	i64 16878061737430998064, ; 80: 0xea3aebb9f4afdc30 => android/content/SharedPreferences$Editor
	i64 17125416866214736517, ; 81: 0xeda9b3e7cd367285 => java/io/OutputStream
	i64 17356379843024169959, ; 82: 0xf0de3f825a34abe7 => android/graphics/Color
	i64 17498018958444438720, ; 83: 0xf2d57388c321a4c0 => java/lang/Double
	i64 17859888160793648683, ; 84: 0xf7db11a8104f5e2b => android/content/ClipboardManager
	i64 18213852175163534091, ; 85: 0xfcc49a0d5c192b0b => android/content/SharedPreferences$OnSharedPreferenceChangeListener
	i64 18401512074820890716, ; 86: 0xff5f4dbc95c2b05c => java/lang/Float
	i64 18401692079723824300 ; 87: 0xff5ff1733e0ec4ac => java/util/Collection
], align 8

; java_type_names
@__java_type_names.0 = internal constant [22 x i8] c"android/widget/Button\00", align 1
@__java_type_names.1 = internal constant [24 x i8] c"android/widget/EditText\00", align 1
@__java_type_names.2 = internal constant [27 x i8] c"android/widget/FrameLayout\00", align 1
@__java_type_names.3 = internal constant [28 x i8] c"android/widget/LinearLayout\00", align 1
@__java_type_names.4 = internal constant [26 x i8] c"android/widget/ScrollView\00", align 1
@__java_type_names.5 = internal constant [24 x i8] c"android/widget/TextView\00", align 1
@__java_type_names.6 = internal constant [21 x i8] c"android/widget/Toast\00", align 1
@__java_type_names.7 = internal constant [33 x i8] c"android/view/ContextThemeWrapper\00", align 1
@__java_type_names.8 = internal constant [18 x i8] c"android/view/View\00", align 1
@__java_type_names.9 = internal constant [34 x i8] c"android/view/View$OnClickListener\00", align 1
@__java_type_names.10 = internal constant [50 x i8] c"mono/android/view/View_OnClickListenerImplementor\00", align 1
@__java_type_names.11 = internal constant [38 x i8] c"android/view/View$OnLongClickListener\00", align 1
@__java_type_names.12 = internal constant [54 x i8] c"mono/android/view/View_OnLongClickListenerImplementor\00", align 1
@__java_type_names.13 = internal constant [23 x i8] c"android/view/ViewGroup\00", align 1
@__java_type_names.14 = internal constant [26 x i8] c"android/util/AttributeSet\00", align 1
@__java_type_names.15 = internal constant [30 x i8] c"android/text/ClipboardManager\00", align 1
@__java_type_names.16 = internal constant [38 x i8] c"android/text/InputFilter$LengthFilter\00", align 1
@__java_type_names.17 = internal constant [25 x i8] c"android/text/InputFilter\00", align 1
@__java_type_names.18 = internal constant [21 x i8] c"android/text/Spanned\00", align 1
@__java_type_names.19 = internal constant [22 x i8] c"android/os/BaseBundle\00", align 1
@__java_type_names.20 = internal constant [18 x i8] c"android/os/Bundle\00", align 1
@__java_type_names.21 = internal constant [19 x i8] c"android/os/Handler\00", align 1
@__java_type_names.22 = internal constant [18 x i8] c"android/os/Looper\00", align 1
@__java_type_names.23 = internal constant [23 x i8] c"android/graphics/Color\00", align 1
@__java_type_names.24 = internal constant [21 x i8] c"android/app/Activity\00", align 1
@__java_type_names.25 = internal constant [24 x i8] c"android/app/AlertDialog\00", align 1
@__java_type_names.26 = internal constant [32 x i8] c"android/app/AlertDialog$Builder\00", align 1
@__java_type_names.27 = internal constant [24 x i8] c"android/app/Application\00", align 1
@__java_type_names.28 = internal constant [19 x i8] c"android/app/Dialog\00", align 1
@__java_type_names.29 = internal constant [33 x i8] c"android/content/ClipboardManager\00", align 1
@__java_type_names.30 = internal constant [25 x i8] c"android/content/ClipData\00", align 1
@__java_type_names.31 = internal constant [24 x i8] c"android/content/Context\00", align 1
@__java_type_names.32 = internal constant [31 x i8] c"android/content/ContextWrapper\00", align 1
@__java_type_names.33 = internal constant [48 x i8] c"android/content/DialogInterface$OnClickListener\00", align 1
@__java_type_names.34 = internal constant [64 x i8] c"mono/android/content/DialogInterface_OnClickListenerImplementor\00", align 1
@__java_type_names.35 = internal constant [32 x i8] c"android/content/DialogInterface\00", align 1
@__java_type_names.36 = internal constant [23 x i8] c"android/content/Intent\00", align 1
@__java_type_names.37 = internal constant [41 x i8] c"android/content/SharedPreferences$Editor\00", align 1
@__java_type_names.38 = internal constant [67 x i8] c"android/content/SharedPreferences$OnSharedPreferenceChangeListener\00", align 1
@__java_type_names.39 = internal constant [34 x i8] c"android/content/SharedPreferences\00", align 1
@__java_type_names.40 = internal constant [30 x i8] c"android/content/res/Resources\00", align 1
@__java_type_names.41 = internal constant [40 x i8] c"mono/android/runtime/InputStreamAdapter\00", align 1
@__java_type_names.42 = internal constant [21 x i8] c"java/util/Collection\00", align 1
@__java_type_names.43 = internal constant [18 x i8] c"java/util/HashMap\00", align 1
@__java_type_names.44 = internal constant [20 x i8] c"java/util/ArrayList\00", align 1
@__java_type_names.45 = internal constant [32 x i8] c"mono/android/runtime/JavaObject\00", align 1
@__java_type_names.46 = internal constant [35 x i8] c"android/runtime/JavaProxyThrowable\00", align 1
@__java_type_names.47 = internal constant [18 x i8] c"java/util/HashSet\00", align 1
@__java_type_names.48 = internal constant [41 x i8] c"mono/android/runtime/OutputStreamAdapter\00", align 1
@__java_type_names.49 = internal constant [19 x i8] c"java/util/Iterator\00", align 1
@__java_type_names.50 = internal constant [28 x i8] c"java/util/function/Consumer\00", align 1
@__java_type_names.51 = internal constant [30 x i8] c"java/nio/channels/FileChannel\00", align 1
@__java_type_names.52 = internal constant [51 x i8] c"java/nio/channels/spi/AbstractInterruptibleChannel\00", align 1
@__java_type_names.53 = internal constant [18 x i8] c"java/lang/Boolean\00", align 1
@__java_type_names.54 = internal constant [15 x i8] c"java/lang/Byte\00", align 1
@__java_type_names.55 = internal constant [20 x i8] c"java/lang/Character\00", align 1
@__java_type_names.56 = internal constant [16 x i8] c"java/lang/Class\00", align 1
@__java_type_names.57 = internal constant [29 x i8] c"java/lang/ClassCastException\00", align 1
@__java_type_names.58 = internal constant [17 x i8] c"java/lang/Double\00", align 1
@__java_type_names.59 = internal constant [16 x i8] c"java/lang/Error\00", align 1
@__java_type_names.60 = internal constant [20 x i8] c"java/lang/Exception\00", align 1
@__java_type_names.61 = internal constant [16 x i8] c"java/lang/Float\00", align 1
@__java_type_names.62 = internal constant [23 x i8] c"java/lang/CharSequence\00", align 1
@__java_type_names.63 = internal constant [35 x i8] c"java/lang/IllegalArgumentException\00", align 1
@__java_type_names.64 = internal constant [32 x i8] c"java/lang/IllegalStateException\00", align 1
@__java_type_names.65 = internal constant [36 x i8] c"java/lang/IndexOutOfBoundsException\00", align 1
@__java_type_names.66 = internal constant [18 x i8] c"java/lang/Integer\00", align 1
@__java_type_names.67 = internal constant [19 x i8] c"java/lang/Runnable\00", align 1
@__java_type_names.68 = internal constant [15 x i8] c"java/lang/Long\00", align 1
@__java_type_names.69 = internal constant [31 x i8] c"java/lang/NullPointerException\00", align 1
@__java_type_names.70 = internal constant [17 x i8] c"java/lang/Number\00", align 1
@__java_type_names.71 = internal constant [17 x i8] c"java/lang/Object\00", align 1
@__java_type_names.72 = internal constant [27 x i8] c"java/lang/RuntimeException\00", align 1
@__java_type_names.73 = internal constant [16 x i8] c"java/lang/Short\00", align 1
@__java_type_names.74 = internal constant [17 x i8] c"java/lang/String\00", align 1
@__java_type_names.75 = internal constant [17 x i8] c"java/lang/Thread\00", align 1
@__java_type_names.76 = internal constant [35 x i8] c"mono/java/lang/RunnableImplementor\00", align 1
@__java_type_names.77 = internal constant [20 x i8] c"java/lang/Throwable\00", align 1
@__java_type_names.78 = internal constant [40 x i8] c"java/lang/UnsupportedOperationException\00", align 1
@__java_type_names.79 = internal constant [24 x i8] c"java/io/FileInputStream\00", align 1
@__java_type_names.80 = internal constant [20 x i8] c"java/io/InputStream\00", align 1
@__java_type_names.81 = internal constant [20 x i8] c"java/io/IOException\00", align 1
@__java_type_names.82 = internal constant [21 x i8] c"java/io/OutputStream\00", align 1
@__java_type_names.83 = internal constant [20 x i8] c"java/io/PrintWriter\00", align 1
@__java_type_names.84 = internal constant [21 x i8] c"java/io/StringWriter\00", align 1
@__java_type_names.85 = internal constant [15 x i8] c"java/io/Writer\00", align 1
@__java_type_names.86 = internal constant [25 x i8] c"mono/android/TypeManager\00", align 1
@__java_type_names.87 = internal constant [35 x i8] c"crc644717373c647c7a0b/MainActivity\00", align 1

@java_type_names = local_unnamed_addr constant [88 x i8*] [
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.0, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.1, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.2, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__java_type_names.3, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.4, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.5, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.6, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.7, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.8, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.9, i32 0, i32 0),
	i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__java_type_names.10, i32 0, i32 0),
	i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__java_type_names.11, i32 0, i32 0),
	i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__java_type_names.12, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.13, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.14, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.15, i32 0, i32 0),
	i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__java_type_names.16, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.17, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.18, i32 0, i32 0),
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.19, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.20, i32 0, i32 0),
	i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__java_type_names.21, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.22, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.23, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.24, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.25, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.26, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.27, i32 0, i32 0),
	i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__java_type_names.28, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.29, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.30, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.31, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.32, i32 0, i32 0),
	i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__java_type_names.33, i32 0, i32 0),
	i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__java_type_names.34, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.35, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.36, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.37, i32 0, i32 0),
	i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__java_type_names.38, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.39, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.40, i32 0, i32 0),
	i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__java_type_names.41, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.42, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.43, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.44, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.45, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.46, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.47, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.48, i32 0, i32 0),
	i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__java_type_names.49, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__java_type_names.50, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.51, i32 0, i32 0),
	i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__java_type_names.52, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.53, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__java_type_names.54, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.55, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__java_type_names.56, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__java_type_names.57, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.58, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__java_type_names.59, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.60, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__java_type_names.61, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.62, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.63, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.64, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.65, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.66, i32 0, i32 0),
	i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__java_type_names.67, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__java_type_names.68, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.69, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.70, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.71, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.72, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__java_type_names.73, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.74, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.75, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.76, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.77, i32 0, i32 0),
	i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__java_type_names.78, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.79, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.80, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.81, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.82, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.83, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.84, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__java_type_names.85, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.86, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.87, i32 0, i32 0)
], align 8

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/release/7.0.1xx @ 8f1d9a47205ead80132661f68b0cee9ed0e0220b"}
