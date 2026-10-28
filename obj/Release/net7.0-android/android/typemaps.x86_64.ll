; ModuleID = 'obj\Release\net7.0-android\android\typemaps.x86_64.ll'
source_filename = "obj\Release\net7.0-android\android\typemaps.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


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

@java_type_count = local_unnamed_addr constant i32 103, align 4

; Map modules data

; module0_managed_to_java
@module0_managed_to_java = internal constant [101 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554507, ; type_token_id
		i32 43; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554509, ; type_token_id
		i32 67; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554511, ; type_token_id
		i32 22; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33554513, ; type_token_id
		i32 100; java_map_index
	}, 
	; 4
	%struct.TypeMapModuleEntry {
		i32 33554515, ; type_token_id
		i32 1; java_map_index
	}, 
	; 5
	%struct.TypeMapModuleEntry {
		i32 33554516, ; type_token_id
		i32 53; java_map_index
	}, 
	; 6
	%struct.TypeMapModuleEntry {
		i32 33554517, ; type_token_id
		i32 55; java_map_index
	}, 
	; 7
	%struct.TypeMapModuleEntry {
		i32 33554519, ; type_token_id
		i32 59; java_map_index
	}, 
	; 8
	%struct.TypeMapModuleEntry {
		i32 33554520, ; type_token_id
		i32 28; java_map_index
	}, 
	; 9
	%struct.TypeMapModuleEntry {
		i32 33554521, ; type_token_id
		i32 29; java_map_index
	}, 
	; 10
	%struct.TypeMapModuleEntry {
		i32 33554523, ; type_token_id
		i32 24; java_map_index
	}, 
	; 11
	%struct.TypeMapModuleEntry {
		i32 33554525, ; type_token_id
		i32 30; java_map_index
	}, 
	; 12
	%struct.TypeMapModuleEntry {
		i32 33554526, ; type_token_id
		i32 34; java_map_index
	}, 
	; 13
	%struct.TypeMapModuleEntry {
		i32 33554527, ; type_token_id
		i32 17; java_map_index
	}, 
	; 14
	%struct.TypeMapModuleEntry {
		i32 33554528, ; type_token_id
		i32 36; java_map_index
	}, 
	; 15
	%struct.TypeMapModuleEntry {
		i32 33554529, ; type_token_id
		i32 6; java_map_index
	}, 
	; 16
	%struct.TypeMapModuleEntry {
		i32 33554534, ; type_token_id
		i32 66; java_map_index
	}, 
	; 17
	%struct.TypeMapModuleEntry {
		i32 33554537, ; type_token_id
		i32 85; java_map_index
	}, 
	; 18
	%struct.TypeMapModuleEntry {
		i32 33554538, ; type_token_id
		i32 3; java_map_index
	}, 
	; 19
	%struct.TypeMapModuleEntry {
		i32 33554539, ; type_token_id
		i32 42; java_map_index
	}, 
	; 20
	%struct.TypeMapModuleEntry {
		i32 33554544, ; type_token_id
		i32 88; java_map_index
	}, 
	; 21
	%struct.TypeMapModuleEntry {
		i32 33554545, ; type_token_id
		i32 58; java_map_index
	}, 
	; 22
	%struct.TypeMapModuleEntry {
		i32 33554546, ; type_token_id
		i32 75; java_map_index
	}, 
	; 23
	%struct.TypeMapModuleEntry {
		i32 33554548, ; type_token_id
		i32 82; java_map_index
	}, 
	; 24
	%struct.TypeMapModuleEntry {
		i32 33554549, ; type_token_id
		i32 48; java_map_index
	}, 
	; 25
	%struct.TypeMapModuleEntry {
		i32 33554552, ; type_token_id
		i32 40; java_map_index
	}, 
	; 26
	%struct.TypeMapModuleEntry {
		i32 33554557, ; type_token_id
		i32 93; java_map_index
	}, 
	; 27
	%struct.TypeMapModuleEntry {
		i32 33554561, ; type_token_id
		i32 74; java_map_index
	}, 
	; 28
	%struct.TypeMapModuleEntry {
		i32 33554564, ; type_token_id
		i32 87; java_map_index
	}, 
	; 29
	%struct.TypeMapModuleEntry {
		i32 33554566, ; type_token_id
		i32 13; java_map_index
	}, 
	; 30
	%struct.TypeMapModuleEntry {
		i32 33554567, ; type_token_id
		i32 2; java_map_index
	}, 
	; 31
	%struct.TypeMapModuleEntry {
		i32 33554568, ; type_token_id
		i32 54; java_map_index
	}, 
	; 32
	%struct.TypeMapModuleEntry {
		i32 33554569, ; type_token_id
		i32 63; java_map_index
	}, 
	; 33
	%struct.TypeMapModuleEntry {
		i32 33554570, ; type_token_id
		i32 26; java_map_index
	}, 
	; 34
	%struct.TypeMapModuleEntry {
		i32 33554572, ; type_token_id
		i32 96; java_map_index
	}, 
	; 35
	%struct.TypeMapModuleEntry {
		i32 33554575, ; type_token_id
		i32 52; java_map_index
	}, 
	; 36
	%struct.TypeMapModuleEntry {
		i32 33554578, ; type_token_id
		i32 45; java_map_index
	}, 
	; 37
	%struct.TypeMapModuleEntry {
		i32 33554579, ; type_token_id
		i32 71; java_map_index
	}, 
	; 38
	%struct.TypeMapModuleEntry {
		i32 33554580, ; type_token_id
		i32 69; java_map_index
	}, 
	; 39
	%struct.TypeMapModuleEntry {
		i32 33554581, ; type_token_id
		i32 90; java_map_index
	}, 
	; 40
	%struct.TypeMapModuleEntry {
		i32 33554582, ; type_token_id
		i32 20; java_map_index
	}, 
	; 41
	%struct.TypeMapModuleEntry {
		i32 33554587, ; type_token_id
		i32 98; java_map_index
	}, 
	; 42
	%struct.TypeMapModuleEntry {
		i32 33554588, ; type_token_id
		i32 19; java_map_index
	}, 
	; 43
	%struct.TypeMapModuleEntry {
		i32 33554589, ; type_token_id
		i32 31; java_map_index
	}, 
	; 44
	%struct.TypeMapModuleEntry {
		i32 33554591, ; type_token_id
		i32 60; java_map_index
	}, 
	; 45
	%struct.TypeMapModuleEntry {
		i32 33554593, ; type_token_id
		i32 38; java_map_index
	}, 
	; 46
	%struct.TypeMapModuleEntry {
		i32 33554594, ; type_token_id
		i32 89; java_map_index
	}, 
	; 47
	%struct.TypeMapModuleEntry {
		i32 33554597, ; type_token_id
		i32 4; java_map_index
	}, 
	; 48
	%struct.TypeMapModuleEntry {
		i32 33554598, ; type_token_id
		i32 23; java_map_index
	}, 
	; 49
	%struct.TypeMapModuleEntry {
		i32 33554600, ; type_token_id
		i32 16; java_map_index
	}, 
	; 50
	%struct.TypeMapModuleEntry {
		i32 33554601, ; type_token_id
		i32 94; java_map_index
	}, 
	; 51
	%struct.TypeMapModuleEntry {
		i32 33554603, ; type_token_id
		i32 99; java_map_index
	}, 
	; 52
	%struct.TypeMapModuleEntry {
		i32 33554605, ; type_token_id
		i32 80; java_map_index
	}, 
	; 53
	%struct.TypeMapModuleEntry {
		i32 33554608, ; type_token_id
		i32 50; java_map_index
	}, 
	; 54
	%struct.TypeMapModuleEntry {
		i32 33554609, ; type_token_id
		i32 62; java_map_index
	}, 
	; 55
	%struct.TypeMapModuleEntry {
		i32 33554630, ; type_token_id
		i32 92; java_map_index
	}, 
	; 56
	%struct.TypeMapModuleEntry {
		i32 33554632, ; type_token_id
		i32 102; java_map_index
	}, 
	; 57
	%struct.TypeMapModuleEntry {
		i32 33554634, ; type_token_id
		i32 33; java_map_index
	}, 
	; 58
	%struct.TypeMapModuleEntry {
		i32 33554643, ; type_token_id
		i32 57; java_map_index
	}, 
	; 59
	%struct.TypeMapModuleEntry {
		i32 33554645, ; type_token_id
		i32 91; java_map_index
	}, 
	; 60
	%struct.TypeMapModuleEntry {
		i32 33554646, ; type_token_id
		i32 11; java_map_index
	}, 
	; 61
	%struct.TypeMapModuleEntry {
		i32 33554647, ; type_token_id
		i32 9; java_map_index
	}, 
	; 62
	%struct.TypeMapModuleEntry {
		i32 33554660, ; type_token_id
		i32 79; java_map_index
	}, 
	; 63
	%struct.TypeMapModuleEntry {
		i32 33554669, ; type_token_id
		i32 12; java_map_index
	}, 
	; 64
	%struct.TypeMapModuleEntry {
		i32 33554671, ; type_token_id
		i32 8; java_map_index
	}, 
	; 65
	%struct.TypeMapModuleEntry {
		i32 33554673, ; type_token_id
		i32 76; java_map_index
	}, 
	; 66
	%struct.TypeMapModuleEntry {
		i32 33554675, ; type_token_id
		i32 35; java_map_index
	}, 
	; 67
	%struct.TypeMapModuleEntry {
		i32 33554677, ; type_token_id
		i32 41; java_map_index
	}, 
	; 68
	%struct.TypeMapModuleEntry {
		i32 33554678, ; type_token_id
		i32 81; java_map_index
	}, 
	; 69
	%struct.TypeMapModuleEntry {
		i32 33554679, ; type_token_id
		i32 32; java_map_index
	}, 
	; 70
	%struct.TypeMapModuleEntry {
		i32 33554680, ; type_token_id
		i32 25; java_map_index
	}, 
	; 71
	%struct.TypeMapModuleEntry {
		i32 33554681, ; type_token_id
		i32 78; java_map_index
	}, 
	; 72
	%struct.TypeMapModuleEntry {
		i32 33554682, ; type_token_id
		i32 97; java_map_index
	}, 
	; 73
	%struct.TypeMapModuleEntry {
		i32 33554683, ; type_token_id
		i32 27; java_map_index
	}, 
	; 74
	%struct.TypeMapModuleEntry {
		i32 33554684, ; type_token_id
		i32 7; java_map_index
	}, 
	; 75
	%struct.TypeMapModuleEntry {
		i32 33554685, ; type_token_id
		i32 101; java_map_index
	}, 
	; 76
	%struct.TypeMapModuleEntry {
		i32 33554686, ; type_token_id
		i32 83; java_map_index
	}, 
	; 77
	%struct.TypeMapModuleEntry {
		i32 33554689, ; type_token_id
		i32 37; java_map_index
	}, 
	; 78
	%struct.TypeMapModuleEntry {
		i32 33554690, ; type_token_id
		i32 64; java_map_index
	}, 
	; 79
	%struct.TypeMapModuleEntry {
		i32 33554691, ; type_token_id
		i32 61; java_map_index
	}, 
	; 80
	%struct.TypeMapModuleEntry {
		i32 33554692, ; type_token_id
		i32 68; java_map_index
	}, 
	; 81
	%struct.TypeMapModuleEntry {
		i32 33554693, ; type_token_id
		i32 39; java_map_index
	}, 
	; 82
	%struct.TypeMapModuleEntry {
		i32 33554695, ; type_token_id
		i32 47; java_map_index
	}, 
	; 83
	%struct.TypeMapModuleEntry {
		i32 33554696, ; type_token_id
		i32 46; java_map_index
	}, 
	; 84
	%struct.TypeMapModuleEntry {
		i32 33554697, ; type_token_id
		i32 65; java_map_index
	}, 
	; 85
	%struct.TypeMapModuleEntry {
		i32 33554699, ; type_token_id
		i32 77; java_map_index
	}, 
	; 86
	%struct.TypeMapModuleEntry {
		i32 33554700, ; type_token_id
		i32 73; java_map_index
	}, 
	; 87
	%struct.TypeMapModuleEntry {
		i32 33554701, ; type_token_id
		i32 51; java_map_index
	}, 
	; 88
	%struct.TypeMapModuleEntry {
		i32 33554702, ; type_token_id
		i32 0; java_map_index
	}, 
	; 89
	%struct.TypeMapModuleEntry {
		i32 33554704, ; type_token_id
		i32 44; java_map_index
	}, 
	; 90
	%struct.TypeMapModuleEntry {
		i32 33554705, ; type_token_id
		i32 56; java_map_index
	}, 
	; 91
	%struct.TypeMapModuleEntry {
		i32 33554706, ; type_token_id
		i32 84; java_map_index
	}, 
	; 92
	%struct.TypeMapModuleEntry {
		i32 33554707, ; type_token_id
		i32 49; java_map_index
	}, 
	; 93
	%struct.TypeMapModuleEntry {
		i32 33554708, ; type_token_id
		i32 10; java_map_index
	}, 
	; 94
	%struct.TypeMapModuleEntry {
		i32 33554709, ; type_token_id
		i32 15; java_map_index
	}, 
	; 95
	%struct.TypeMapModuleEntry {
		i32 33554711, ; type_token_id
		i32 14; java_map_index
	}, 
	; 96
	%struct.TypeMapModuleEntry {
		i32 33554712, ; type_token_id
		i32 95; java_map_index
	}, 
	; 97
	%struct.TypeMapModuleEntry {
		i32 33554714, ; type_token_id
		i32 21; java_map_index
	}, 
	; 98
	%struct.TypeMapModuleEntry {
		i32 33554715, ; type_token_id
		i32 72; java_map_index
	}, 
	; 99
	%struct.TypeMapModuleEntry {
		i32 33554716, ; type_token_id
		i32 86; java_map_index
	}, 
	; 100
	%struct.TypeMapModuleEntry {
		i32 33554732, ; type_token_id
		i32 70; java_map_index
	}
], align 16; end of 'module0_managed_to_java' array


; module0_managed_to_java_duplicates
@module0_managed_to_java_duplicates = internal constant [38 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554508, ; type_token_id
		i32 43; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554510, ; type_token_id
		i32 67; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554512, ; type_token_id
		i32 22; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33554514, ; type_token_id
		i32 100; java_map_index
	}, 
	; 4
	%struct.TypeMapModuleEntry {
		i32 33554518, ; type_token_id
		i32 55; java_map_index
	}, 
	; 5
	%struct.TypeMapModuleEntry {
		i32 33554522, ; type_token_id
		i32 29; java_map_index
	}, 
	; 6
	%struct.TypeMapModuleEntry {
		i32 33554524, ; type_token_id
		i32 24; java_map_index
	}, 
	; 7
	%struct.TypeMapModuleEntry {
		i32 33554530, ; type_token_id
		i32 6; java_map_index
	}, 
	; 8
	%struct.TypeMapModuleEntry {
		i32 33554542, ; type_token_id
		i32 22; java_map_index
	}, 
	; 9
	%struct.TypeMapModuleEntry {
		i32 33554543, ; type_token_id
		i32 100; java_map_index
	}, 
	; 10
	%struct.TypeMapModuleEntry {
		i32 33554547, ; type_token_id
		i32 75; java_map_index
	}, 
	; 11
	%struct.TypeMapModuleEntry {
		i32 33554550, ; type_token_id
		i32 48; java_map_index
	}, 
	; 12
	%struct.TypeMapModuleEntry {
		i32 33554558, ; type_token_id
		i32 93; java_map_index
	}, 
	; 13
	%struct.TypeMapModuleEntry {
		i32 33554562, ; type_token_id
		i32 74; java_map_index
	}, 
	; 14
	%struct.TypeMapModuleEntry {
		i32 33554565, ; type_token_id
		i32 87; java_map_index
	}, 
	; 15
	%struct.TypeMapModuleEntry {
		i32 33554571, ; type_token_id
		i32 26; java_map_index
	}, 
	; 16
	%struct.TypeMapModuleEntry {
		i32 33554576, ; type_token_id
		i32 52; java_map_index
	}, 
	; 17
	%struct.TypeMapModuleEntry {
		i32 33554590, ; type_token_id
		i32 31; java_map_index
	}, 
	; 18
	%struct.TypeMapModuleEntry {
		i32 33554592, ; type_token_id
		i32 60; java_map_index
	}, 
	; 19
	%struct.TypeMapModuleEntry {
		i32 33554595, ; type_token_id
		i32 89; java_map_index
	}, 
	; 20
	%struct.TypeMapModuleEntry {
		i32 33554599, ; type_token_id
		i32 23; java_map_index
	}, 
	; 21
	%struct.TypeMapModuleEntry {
		i32 33554602, ; type_token_id
		i32 94; java_map_index
	}, 
	; 22
	%struct.TypeMapModuleEntry {
		i32 33554604, ; type_token_id
		i32 99; java_map_index
	}, 
	; 23
	%struct.TypeMapModuleEntry {
		i32 33554606, ; type_token_id
		i32 80; java_map_index
	}, 
	; 24
	%struct.TypeMapModuleEntry {
		i32 33554633, ; type_token_id
		i32 102; java_map_index
	}, 
	; 25
	%struct.TypeMapModuleEntry {
		i32 33554639, ; type_token_id
		i32 33; java_map_index
	}, 
	; 26
	%struct.TypeMapModuleEntry {
		i32 33554644, ; type_token_id
		i32 57; java_map_index
	}, 
	; 27
	%struct.TypeMapModuleEntry {
		i32 33554648, ; type_token_id
		i32 9; java_map_index
	}, 
	; 28
	%struct.TypeMapModuleEntry {
		i32 33554670, ; type_token_id
		i32 12; java_map_index
	}, 
	; 29
	%struct.TypeMapModuleEntry {
		i32 33554672, ; type_token_id
		i32 8; java_map_index
	}, 
	; 30
	%struct.TypeMapModuleEntry {
		i32 33554674, ; type_token_id
		i32 76; java_map_index
	}, 
	; 31
	%struct.TypeMapModuleEntry {
		i32 33554676, ; type_token_id
		i32 35; java_map_index
	}, 
	; 32
	%struct.TypeMapModuleEntry {
		i32 33554687, ; type_token_id
		i32 83; java_map_index
	}, 
	; 33
	%struct.TypeMapModuleEntry {
		i32 33554694, ; type_token_id
		i32 39; java_map_index
	}, 
	; 34
	%struct.TypeMapModuleEntry {
		i32 33554698, ; type_token_id
		i32 65; java_map_index
	}, 
	; 35
	%struct.TypeMapModuleEntry {
		i32 33554710, ; type_token_id
		i32 15; java_map_index
	}, 
	; 36
	%struct.TypeMapModuleEntry {
		i32 33554713, ; type_token_id
		i32 95; java_map_index
	}, 
	; 37
	%struct.TypeMapModuleEntry {
		i32 33554717, ; type_token_id
		i32 86; java_map_index
	}
], align 16; end of 'module0_managed_to_java_duplicates' array


; module1_managed_to_java
@module1_managed_to_java = internal constant [2 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554438, ; type_token_id
		i32 18; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554440, ; type_token_id
		i32 5; java_map_index
	}
], align 16; end of 'module1_managed_to_java' array

; Map modules
@__TypeMapModule_assembly_name.0 = internal constant [13 x i8] c"Mono.Android\00", align 1
@__TypeMapModule_assembly_name.1 = internal constant [8 x i8] c"NetByte\00", align 1

; map_modules
@map_modules = global [2 x %struct.TypeMapModule] [
	; 0
	%struct.TypeMapModule {
		[16 x i8] c"d\12<\08\04yOH\B3+\CE\E3\DAS\FC\82", ; module_uuid: 083c1264-7904-484f-b32b-cee3da53fc82
		i32 101, ; entry_count
		i32 38, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([101 x %struct.TypeMapModuleEntry], [101 x %struct.TypeMapModuleEntry]* @module0_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* getelementptr inbounds ([38 x %struct.TypeMapModuleEntry], [38 x %struct.TypeMapModuleEntry]* @module0_managed_to_java_duplicates, i32 0, i32 0), ; duplicate_map
		i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__TypeMapModule_assembly_name.0, i32 0, i32 0), ; assembly_name: Mono.Android
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 1
	%struct.TypeMapModule {
		[16 x i8] c"\FC\C6\F1CF\83\83O\B8\F5yi\98\08mK", ; module_uuid: 43f1c6fc-8346-4f83-b8f5-796998086d4b
		i32 2, ; entry_count
		i32 0, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([2 x %struct.TypeMapModuleEntry], [2 x %struct.TypeMapModuleEntry]* @module1_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* null, ; duplicate_map
		i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__TypeMapModule_assembly_name.1, i32 0, i32 0), ; assembly_name: NetByte
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}
], align 16; end of 'map_modules' array


; Java to managed map

; map_java
@map_java = local_unnamed_addr constant [103 x %struct.TypeMapJava] [
	; 0
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554702, ; type_token_id
		i32 88; java_name_index
	}, 
	; 1
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554515, ; type_token_id
		i32 4; java_name_index
	}, 
	; 2
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554567, ; type_token_id
		i32 30; java_name_index
	}, 
	; 3
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554538, ; type_token_id
		i32 18; java_name_index
	}, 
	; 4
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554597, ; type_token_id
		i32 47; java_name_index
	}, 
	; 5
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554440, ; type_token_id
		i32 102; java_name_index
	}, 
	; 6
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 15; java_name_index
	}, 
	; 7
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554684, ; type_token_id
		i32 74; java_name_index
	}, 
	; 8
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 64; java_name_index
	}, 
	; 9
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554647, ; type_token_id
		i32 61; java_name_index
	}, 
	; 10
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554708, ; type_token_id
		i32 93; java_name_index
	}, 
	; 11
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554646, ; type_token_id
		i32 60; java_name_index
	}, 
	; 12
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 63; java_name_index
	}, 
	; 13
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554566, ; type_token_id
		i32 29; java_name_index
	}, 
	; 14
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554711, ; type_token_id
		i32 95; java_name_index
	}, 
	; 15
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554709, ; type_token_id
		i32 94; java_name_index
	}, 
	; 16
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554600, ; type_token_id
		i32 49; java_name_index
	}, 
	; 17
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554527, ; type_token_id
		i32 13; java_name_index
	}, 
	; 18
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554438, ; type_token_id
		i32 101; java_name_index
	}, 
	; 19
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554588, ; type_token_id
		i32 42; java_name_index
	}, 
	; 20
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554582, ; type_token_id
		i32 40; java_name_index
	}, 
	; 21
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554714, ; type_token_id
		i32 97; java_name_index
	}, 
	; 22
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554511, ; type_token_id
		i32 2; java_name_index
	}, 
	; 23
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 48; java_name_index
	}, 
	; 24
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 10; java_name_index
	}, 
	; 25
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554680, ; type_token_id
		i32 70; java_name_index
	}, 
	; 26
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554570, ; type_token_id
		i32 33; java_name_index
	}, 
	; 27
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554683, ; type_token_id
		i32 73; java_name_index
	}, 
	; 28
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554520, ; type_token_id
		i32 8; java_name_index
	}, 
	; 29
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 9; java_name_index
	}, 
	; 30
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554525, ; type_token_id
		i32 11; java_name_index
	}, 
	; 31
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554589, ; type_token_id
		i32 43; java_name_index
	}, 
	; 32
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554679, ; type_token_id
		i32 69; java_name_index
	}, 
	; 33
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554634, ; type_token_id
		i32 57; java_name_index
	}, 
	; 34
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554526, ; type_token_id
		i32 12; java_name_index
	}, 
	; 35
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554675, ; type_token_id
		i32 66; java_name_index
	}, 
	; 36
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554528, ; type_token_id
		i32 14; java_name_index
	}, 
	; 37
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554689, ; type_token_id
		i32 77; java_name_index
	}, 
	; 38
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554593, ; type_token_id
		i32 45; java_name_index
	}, 
	; 39
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 81; java_name_index
	}, 
	; 40
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554552, ; type_token_id
		i32 25; java_name_index
	}, 
	; 41
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554677, ; type_token_id
		i32 67; java_name_index
	}, 
	; 42
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554539, ; type_token_id
		i32 19; java_name_index
	}, 
	; 43
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554507, ; type_token_id
		i32 0; java_name_index
	}, 
	; 44
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554704, ; type_token_id
		i32 89; java_name_index
	}, 
	; 45
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554578, ; type_token_id
		i32 36; java_name_index
	}, 
	; 46
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554696, ; type_token_id
		i32 83; java_name_index
	}, 
	; 47
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554695, ; type_token_id
		i32 82; java_name_index
	}, 
	; 48
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 24; java_name_index
	}, 
	; 49
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554707, ; type_token_id
		i32 92; java_name_index
	}, 
	; 50
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554608, ; type_token_id
		i32 53; java_name_index
	}, 
	; 51
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554701, ; type_token_id
		i32 87; java_name_index
	}, 
	; 52
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554575, ; type_token_id
		i32 35; java_name_index
	}, 
	; 53
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554516, ; type_token_id
		i32 5; java_name_index
	}, 
	; 54
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554568, ; type_token_id
		i32 31; java_name_index
	}, 
	; 55
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554517, ; type_token_id
		i32 6; java_name_index
	}, 
	; 56
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554705, ; type_token_id
		i32 90; java_name_index
	}, 
	; 57
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554643, ; type_token_id
		i32 58; java_name_index
	}, 
	; 58
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554545, ; type_token_id
		i32 21; java_name_index
	}, 
	; 59
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554519, ; type_token_id
		i32 7; java_name_index
	}, 
	; 60
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554591, ; type_token_id
		i32 44; java_name_index
	}, 
	; 61
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554691, ; type_token_id
		i32 79; java_name_index
	}, 
	; 62
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554609, ; type_token_id
		i32 54; java_name_index
	}, 
	; 63
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554569, ; type_token_id
		i32 32; java_name_index
	}, 
	; 64
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554690, ; type_token_id
		i32 78; java_name_index
	}, 
	; 65
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554697, ; type_token_id
		i32 84; java_name_index
	}, 
	; 66
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554534, ; type_token_id
		i32 16; java_name_index
	}, 
	; 67
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554509, ; type_token_id
		i32 1; java_name_index
	}, 
	; 68
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554692, ; type_token_id
		i32 80; java_name_index
	}, 
	; 69
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554580, ; type_token_id
		i32 38; java_name_index
	}, 
	; 70
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554732, ; type_token_id
		i32 100; java_name_index
	}, 
	; 71
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554579, ; type_token_id
		i32 37; java_name_index
	}, 
	; 72
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554715, ; type_token_id
		i32 98; java_name_index
	}, 
	; 73
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554700, ; type_token_id
		i32 86; java_name_index
	}, 
	; 74
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 27; java_name_index
	}, 
	; 75
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 22; java_name_index
	}, 
	; 76
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554673, ; type_token_id
		i32 65; java_name_index
	}, 
	; 77
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554699, ; type_token_id
		i32 85; java_name_index
	}, 
	; 78
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554681, ; type_token_id
		i32 71; java_name_index
	}, 
	; 79
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554660, ; type_token_id
		i32 62; java_name_index
	}, 
	; 80
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 52; java_name_index
	}, 
	; 81
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554678, ; type_token_id
		i32 68; java_name_index
	}, 
	; 82
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554548, ; type_token_id
		i32 23; java_name_index
	}, 
	; 83
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 76; java_name_index
	}, 
	; 84
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554706, ; type_token_id
		i32 91; java_name_index
	}, 
	; 85
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554537, ; type_token_id
		i32 17; java_name_index
	}, 
	; 86
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554716, ; type_token_id
		i32 99; java_name_index
	}, 
	; 87
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554564, ; type_token_id
		i32 28; java_name_index
	}, 
	; 88
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554544, ; type_token_id
		i32 20; java_name_index
	}, 
	; 89
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 46; java_name_index
	}, 
	; 90
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554581, ; type_token_id
		i32 39; java_name_index
	}, 
	; 91
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554645, ; type_token_id
		i32 59; java_name_index
	}, 
	; 92
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554630, ; type_token_id
		i32 55; java_name_index
	}, 
	; 93
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554557, ; type_token_id
		i32 26; java_name_index
	}, 
	; 94
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 50; java_name_index
	}, 
	; 95
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554712, ; type_token_id
		i32 96; java_name_index
	}, 
	; 96
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554572, ; type_token_id
		i32 34; java_name_index
	}, 
	; 97
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554682, ; type_token_id
		i32 72; java_name_index
	}, 
	; 98
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554587, ; type_token_id
		i32 41; java_name_index
	}, 
	; 99
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 51; java_name_index
	}, 
	; 100
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554513, ; type_token_id
		i32 3; java_name_index
	}, 
	; 101
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554685, ; type_token_id
		i32 75; java_name_index
	}, 
	; 102
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554632, ; type_token_id
		i32 56; java_name_index
	}
], align 16; end of 'map_java' array

@map_java_hashes = local_unnamed_addr constant [103 x i64] [
	i64 128182020419974451, ; 0: 0x1c764de51b97533 => java/lang/String
	i64 318564728890166633, ; 1: 0x46bc4eedf778d69 => android/widget/Button
	i64 361870449891484378, ; 2: 0x5059f41c47e22da => android/os/Bundle
	i64 363417747702605178, ; 3: 0x50b1e841ce2e57a => android/widget/TextView
	i64 698738878519169148, ; 4: 0x9b26b4ed4e3d07c => mono/android/content/DialogInterface_OnClickListenerImplementor
	i64 704516975057996638, ; 5: 0x9c6f274c4908b5e => com/feyz/netbyte/MainActivity_ThemedSpinnerAdapter
	i64 769314120471534533, ; 6: 0xaad271dd765dbc5 => android/widget/SeekBar$OnSeekBarChangeListener
	i64 870874870088288028, ; 7: 0xc15f8148b6d471c => java/lang/Exception
	i64 1079586186822872943, ; 8: 0xefb75eac1feef6f => java/util/function/Consumer
	i64 1217044833273073796, ; 9: 0x10e3cfd3e2f75084 => java/util/HashSet
	i64 1317579852464953526, ; 10: 0x1248fbe51d6298b6 => java/io/FileInputStream
	i64 1320822650197077237, ; 11: 0x12548133cc496cf5 => android/runtime/JavaProxyThrowable
	i64 1362770524300979611, ; 12: 0x12e9889253552d9b => java/util/Iterator
	i64 1747499027921055994, ; 13: 0x18405d1b749330fa => android/os/BaseBundle
	i64 1831728799718484971, ; 14: 0x196b9ba37012abeb => java/io/IOException
	i64 2164140653916027403, ; 15: 0x1e08927568a57a0b => java/io/InputStream
	i64 2972252214977986258, ; 16: 0x293f8fa450a17ed2 => android/content/Intent
	i64 3145165272272586806, ; 17: 0x2ba5df26bdb3c836 => android/widget/ScrollView
	i64 3148146340590821044, ; 18: 0x2bb0766acbdc9eb4 => com/feyz/netbyte/MainActivity
	i64 3155261737265476761, ; 19: 0x2bc9bdd52f173499 => android/content/ClipData
	i64 3312753486604898190, ; 20: 0x2df943be8d858f8e => android/app/Dialog
	i64 3476617847597562063, ; 21: 0x303f6d8331d5f8cf => java/io/PrintWriter
	i64 3492966660860961054, ; 22: 0x307982abe8e6611e => android/widget/AdapterView
	i64 3530631042196079534, ; 23: 0x30ff523a0f1083ae => android/content/DialogInterface
	i64 3880992763041431256, ; 24: 0x35dc0e5b08f23ed8 => android/widget/SpinnerAdapter
	i64 4305371449952891808, ; 25: 0x3bbfc085dc8cf3a0 => java/lang/Class
	i64 4328468547648071486, ; 26: 0x3c11cf35fc03a73e => android/net/Uri
	i64 5214467817578676657, ; 27: 0x485d82da477bc1b1 => java/lang/Error
	i64 5890385405214755341, ; 28: 0x51beda5143f88a0d => android/widget/FrameLayout
	i64 5928119462157283979, ; 29: 0x5244e93e07f6f28b => android/widget/Adapter
	i64 6116679261601087867, ; 30: 0x54e2cf6180bb417b => android/widget/LinearLayout
	i64 6875961628645093091, ; 31: 0x5f6c52abbc9b6ee3 => android/content/ContentResolver
	i64 7658195837123306865, ; 32: 0x6a476089fc1c2571 => java/lang/Character
	i64 7933543037734065265, ; 33: 0x6e199b5bee699471 => java/util/HashMap
	i64 7977746367831656039, ; 34: 0x6eb6a60dbac4c667 => android/widget/ProgressBar
	i64 8190305621607579207, ; 35: 0x71a9cf9199cdfe47 => java/nio/channels/spi/AbstractInterruptibleChannel
	i64 8372779371615156560, ; 36: 0x7432167a43d6f950 => android/widget/SeekBar
	i64 8416619862292774857, ; 37: 0x74cdd72bed753fc9 => java/lang/IllegalArgumentException
	i64 8487642170263250902, ; 38: 0x75ca29959b2aa7d6 => android/content/ContextWrapper
	i64 8587172038193766563, ; 39: 0x772bc378d1b4e0a3 => java/lang/Runnable
	i64 8614596961941480999, ; 40: 0x778d324b77ae6627 => mono/android/view/View_OnLongClickListenerImplementor
	i64 8950391188589719199, ; 41: 0x7c362d5d64ad2e9f => java/lang/Boolean
	i64 9478593896738967145, ; 42: 0x838abaede94fce69 => android/widget/Toast
	i64 9507464054666394215, ; 43: 0x83f14c2f5d2f7a67 => android/widget/AbsSeekBar
	i64 9667515047141612341, ; 44: 0x8629e9b6f59e9b35 => java/lang/Thread
	i64 9869939015140501507, ; 45: 0x88f9113db837e803 => android/app/Activity
	i64 9977296435420958008, ; 46: 0x8a767a3efc098d38 => java/lang/NullPointerException
	i64 10266059374509936169, ; 47: 0x8e785e9bf4bbce29 => java/lang/Long
	i64 10354448552699118825, ; 48: 0x8fb2641934b044e9 => android/view/View$OnLongClickListener
	i64 10589642565195629679, ; 49: 0x92f5f7ce84d7846f => java/lang/UnsupportedOperationException
	i64 10655658609895831411, ; 50: 0x93e0810cb2ac7773 => android/content/res/ColorStateList
	i64 10722894652849872693, ; 51: 0x94cf5fdfdb0d5f35 => java/lang/Short
	i64 10808978037618020601, ; 52: 0x96013441bd3890f9 => android/database/DataSetObserver
	i64 10846083286812210570, ; 53: 0x96850748cabe358a => android/widget/CheckBox
	i64 11112718717483603117, ; 54: 0x9a384ecbbc71d4ad => android/os/Handler
	i64 11535591933768018538, ; 55: 0xa016a7bede1aaa6a => android/widget/CompoundButton
	i64 11573301743732151818, ; 56: 0xa09ca09e3190560a => mono/java/lang/RunnableImplementor
	i64 11712899692065226922, ; 57: 0xa28c94365b5480aa => java/util/ArrayList
	i64 11954228872253987625, ; 58: 0xa5e5f3d2b66adb29 => android/view/View
	i64 12016049636675011370, ; 59: 0xa6c1957b1579c32a => android/widget/EditText
	i64 12228984007958404582, ; 60: 0xa9b61429ce4b1de6 => android/content/Context
	i64 12426529965699990912, ; 61: 0xac73e72a4c4b8580 => java/lang/IndexOutOfBoundsException
	i64 12458575303368155603, ; 62: 0xace5c03ae4b6a1d3 => android/content/res/Resources
	i64 12476375190645835422, ; 63: 0xad24fd221af1069e => android/os/Looper
	i64 12488842103917764438, ; 64: 0xad5147b98bf5df56 => java/lang/IllegalStateException
	i64 12532121860257401396, ; 65: 0xadeb0a6f128cca34 => java/lang/Number
	i64 12580464349154168910, ; 66: 0xae96c9abe0ccd04e => mono/android/widget/SeekBar_OnSeekBarChangeListenerImplementor
	i64 12610567535961206755, ; 67: 0xaf01bc5c3d0a6fe3 => android/widget/AbsSpinner
	i64 12806567541869262104, ; 68: 0xb1ba1153c52a3518 => java/lang/Integer
	i64 13191394589072141775, ; 69: 0xb7113f7cdda7adcf => android/app/AlertDialog$Builder
	i64 13402779434266666368, ; 70: 0xba003ce26e602580 => mono/android/TypeManager
	i64 13491848569179882038, ; 71: 0xbb3cacca71544236 => android/app/AlertDialog
	i64 13770727111868296170, ; 72: 0xbf1b735909c02bea => java/io/StringWriter
	i64 13789203013919682202, ; 73: 0xbf5d1715346dae9a => java/lang/RuntimeException
	i64 13805562342397192842, ; 74: 0xbf9735ce2f182a8a => android/util/AttributeSet
	i64 13877554026709814142, ; 75: 0xc096f9dc61548b7e => android/view/View$OnClickListener
	i64 14031640676547298208, ; 76: 0xc2ba66da3d8603a0 => java/nio/channels/FileChannel
	i64 14167891754637755728, ; 77: 0xc49e767c735e8550 => java/lang/Object
	i64 14180814796703042768, ; 78: 0xc4cc5feca7168cd0 => java/lang/ClassCastException
	i64 14206023932851353817, ; 79: 0xc525ef800c4d78d9 => mono/android/runtime/OutputStreamAdapter
	i64 14296237994325564878, ; 80: 0xc66670b60c37ddce => android/content/SharedPreferences
	i64 14501341618205132561, ; 81: 0xc93f1d5ecfb48711 => java/lang/Byte
	i64 14649586819325063784, ; 82: 0xcb4dc998681d7268 => mono/android/view/View_OnClickListenerImplementor
	i64 14684559126920293129, ; 83: 0xcbca08b94b4deb09 => java/lang/CharSequence
	i64 14940408132235664607, ; 84: 0xcf56fe09e1439cdf => java/lang/Throwable
	i64 15227253633559603018, ; 85: 0xd35212809518a74a => android/widget/Spinner
	i64 15633873768898914415, ; 86: 0xd8f6ad5c6a84686f => java/io/Writer
	i64 16281235200369999056, ; 87: 0xe1f291272ea3bcd0 => android/text/ClipboardManager
	i64 16314168557433322311, ; 88: 0xe26791dde7a8fb47 => android/view/ContextThemeWrapper
	i64 16413651262945443612, ; 89: 0xe3c900dc43013f1c => android/content/DialogInterface$OnClickListener
	i64 16542847110558016359, ; 90: 0xe593ffcc9e686367 => android/app/Application
	i64 16603717322881265010, ; 91: 0xe66c40ef55566d72 => mono/android/runtime/JavaObject
	i64 16723123314454325679, ; 92: 0xe814780d351a69af => mono/android/runtime/InputStreamAdapter
	i64 16832017439803262409, ; 93: 0xe99756ae80a745c9 => android/view/ViewGroup
	i64 16878061737430998064, ; 94: 0xea3aebb9f4afdc30 => android/content/SharedPreferences$Editor
	i64 17125416866214736517, ; 95: 0xeda9b3e7cd367285 => java/io/OutputStream
	i64 17356379843024169959, ; 96: 0xf0de3f825a34abe7 => android/graphics/Color
	i64 17498018958444438720, ; 97: 0xf2d57388c321a4c0 => java/lang/Double
	i64 17859888160793648683, ; 98: 0xf7db11a8104f5e2b => android/content/ClipboardManager
	i64 18213852175163534091, ; 99: 0xfcc49a0d5c192b0b => android/content/SharedPreferences$OnSharedPreferenceChangeListener
	i64 18323076787180290332, ; 100: 0xfe48a5421416411c => android/widget/BaseAdapter
	i64 18401512074820890716, ; 101: 0xff5f4dbc95c2b05c => java/lang/Float
	i64 18401692079723824300 ; 102: 0xff5ff1733e0ec4ac => java/util/Collection
], align 16

; java_type_names
@__java_type_names.0 = internal constant [26 x i8] c"android/widget/AbsSeekBar\00", align 16
@__java_type_names.1 = internal constant [26 x i8] c"android/widget/AbsSpinner\00", align 16
@__java_type_names.2 = internal constant [27 x i8] c"android/widget/AdapterView\00", align 16
@__java_type_names.3 = internal constant [27 x i8] c"android/widget/BaseAdapter\00", align 16
@__java_type_names.4 = internal constant [22 x i8] c"android/widget/Button\00", align 16
@__java_type_names.5 = internal constant [24 x i8] c"android/widget/CheckBox\00", align 16
@__java_type_names.6 = internal constant [30 x i8] c"android/widget/CompoundButton\00", align 16
@__java_type_names.7 = internal constant [24 x i8] c"android/widget/EditText\00", align 16
@__java_type_names.8 = internal constant [27 x i8] c"android/widget/FrameLayout\00", align 16
@__java_type_names.9 = internal constant [23 x i8] c"android/widget/Adapter\00", align 16
@__java_type_names.10 = internal constant [30 x i8] c"android/widget/SpinnerAdapter\00", align 16
@__java_type_names.11 = internal constant [28 x i8] c"android/widget/LinearLayout\00", align 16
@__java_type_names.12 = internal constant [27 x i8] c"android/widget/ProgressBar\00", align 16
@__java_type_names.13 = internal constant [26 x i8] c"android/widget/ScrollView\00", align 16
@__java_type_names.14 = internal constant [23 x i8] c"android/widget/SeekBar\00", align 16
@__java_type_names.15 = internal constant [47 x i8] c"android/widget/SeekBar$OnSeekBarChangeListener\00", align 16
@__java_type_names.16 = internal constant [63 x i8] c"mono/android/widget/SeekBar_OnSeekBarChangeListenerImplementor\00", align 16
@__java_type_names.17 = internal constant [23 x i8] c"android/widget/Spinner\00", align 16
@__java_type_names.18 = internal constant [24 x i8] c"android/widget/TextView\00", align 16
@__java_type_names.19 = internal constant [21 x i8] c"android/widget/Toast\00", align 16
@__java_type_names.20 = internal constant [33 x i8] c"android/view/ContextThemeWrapper\00", align 16
@__java_type_names.21 = internal constant [18 x i8] c"android/view/View\00", align 16
@__java_type_names.22 = internal constant [34 x i8] c"android/view/View$OnClickListener\00", align 16
@__java_type_names.23 = internal constant [50 x i8] c"mono/android/view/View_OnClickListenerImplementor\00", align 16
@__java_type_names.24 = internal constant [38 x i8] c"android/view/View$OnLongClickListener\00", align 16
@__java_type_names.25 = internal constant [54 x i8] c"mono/android/view/View_OnLongClickListenerImplementor\00", align 16
@__java_type_names.26 = internal constant [23 x i8] c"android/view/ViewGroup\00", align 16
@__java_type_names.27 = internal constant [26 x i8] c"android/util/AttributeSet\00", align 16
@__java_type_names.28 = internal constant [30 x i8] c"android/text/ClipboardManager\00", align 16
@__java_type_names.29 = internal constant [22 x i8] c"android/os/BaseBundle\00", align 16
@__java_type_names.30 = internal constant [18 x i8] c"android/os/Bundle\00", align 16
@__java_type_names.31 = internal constant [19 x i8] c"android/os/Handler\00", align 16
@__java_type_names.32 = internal constant [18 x i8] c"android/os/Looper\00", align 16
@__java_type_names.33 = internal constant [16 x i8] c"android/net/Uri\00", align 16
@__java_type_names.34 = internal constant [23 x i8] c"android/graphics/Color\00", align 16
@__java_type_names.35 = internal constant [33 x i8] c"android/database/DataSetObserver\00", align 16
@__java_type_names.36 = internal constant [21 x i8] c"android/app/Activity\00", align 16
@__java_type_names.37 = internal constant [24 x i8] c"android/app/AlertDialog\00", align 16
@__java_type_names.38 = internal constant [32 x i8] c"android/app/AlertDialog$Builder\00", align 16
@__java_type_names.39 = internal constant [24 x i8] c"android/app/Application\00", align 16
@__java_type_names.40 = internal constant [19 x i8] c"android/app/Dialog\00", align 16
@__java_type_names.41 = internal constant [33 x i8] c"android/content/ClipboardManager\00", align 16
@__java_type_names.42 = internal constant [25 x i8] c"android/content/ClipData\00", align 16
@__java_type_names.43 = internal constant [32 x i8] c"android/content/ContentResolver\00", align 16
@__java_type_names.44 = internal constant [24 x i8] c"android/content/Context\00", align 16
@__java_type_names.45 = internal constant [31 x i8] c"android/content/ContextWrapper\00", align 16
@__java_type_names.46 = internal constant [48 x i8] c"android/content/DialogInterface$OnClickListener\00", align 16
@__java_type_names.47 = internal constant [64 x i8] c"mono/android/content/DialogInterface_OnClickListenerImplementor\00", align 16
@__java_type_names.48 = internal constant [32 x i8] c"android/content/DialogInterface\00", align 16
@__java_type_names.49 = internal constant [23 x i8] c"android/content/Intent\00", align 16
@__java_type_names.50 = internal constant [41 x i8] c"android/content/SharedPreferences$Editor\00", align 16
@__java_type_names.51 = internal constant [67 x i8] c"android/content/SharedPreferences$OnSharedPreferenceChangeListener\00", align 16
@__java_type_names.52 = internal constant [34 x i8] c"android/content/SharedPreferences\00", align 16
@__java_type_names.53 = internal constant [35 x i8] c"android/content/res/ColorStateList\00", align 16
@__java_type_names.54 = internal constant [30 x i8] c"android/content/res/Resources\00", align 16
@__java_type_names.55 = internal constant [40 x i8] c"mono/android/runtime/InputStreamAdapter\00", align 16
@__java_type_names.56 = internal constant [21 x i8] c"java/util/Collection\00", align 16
@__java_type_names.57 = internal constant [18 x i8] c"java/util/HashMap\00", align 16
@__java_type_names.58 = internal constant [20 x i8] c"java/util/ArrayList\00", align 16
@__java_type_names.59 = internal constant [32 x i8] c"mono/android/runtime/JavaObject\00", align 16
@__java_type_names.60 = internal constant [35 x i8] c"android/runtime/JavaProxyThrowable\00", align 16
@__java_type_names.61 = internal constant [18 x i8] c"java/util/HashSet\00", align 16
@__java_type_names.62 = internal constant [41 x i8] c"mono/android/runtime/OutputStreamAdapter\00", align 16
@__java_type_names.63 = internal constant [19 x i8] c"java/util/Iterator\00", align 16
@__java_type_names.64 = internal constant [28 x i8] c"java/util/function/Consumer\00", align 16
@__java_type_names.65 = internal constant [30 x i8] c"java/nio/channels/FileChannel\00", align 16
@__java_type_names.66 = internal constant [51 x i8] c"java/nio/channels/spi/AbstractInterruptibleChannel\00", align 16
@__java_type_names.67 = internal constant [18 x i8] c"java/lang/Boolean\00", align 16
@__java_type_names.68 = internal constant [15 x i8] c"java/lang/Byte\00", align 1
@__java_type_names.69 = internal constant [20 x i8] c"java/lang/Character\00", align 16
@__java_type_names.70 = internal constant [16 x i8] c"java/lang/Class\00", align 16
@__java_type_names.71 = internal constant [29 x i8] c"java/lang/ClassCastException\00", align 16
@__java_type_names.72 = internal constant [17 x i8] c"java/lang/Double\00", align 16
@__java_type_names.73 = internal constant [16 x i8] c"java/lang/Error\00", align 16
@__java_type_names.74 = internal constant [20 x i8] c"java/lang/Exception\00", align 16
@__java_type_names.75 = internal constant [16 x i8] c"java/lang/Float\00", align 16
@__java_type_names.76 = internal constant [23 x i8] c"java/lang/CharSequence\00", align 16
@__java_type_names.77 = internal constant [35 x i8] c"java/lang/IllegalArgumentException\00", align 16
@__java_type_names.78 = internal constant [32 x i8] c"java/lang/IllegalStateException\00", align 16
@__java_type_names.79 = internal constant [36 x i8] c"java/lang/IndexOutOfBoundsException\00", align 16
@__java_type_names.80 = internal constant [18 x i8] c"java/lang/Integer\00", align 16
@__java_type_names.81 = internal constant [19 x i8] c"java/lang/Runnable\00", align 16
@__java_type_names.82 = internal constant [15 x i8] c"java/lang/Long\00", align 1
@__java_type_names.83 = internal constant [31 x i8] c"java/lang/NullPointerException\00", align 16
@__java_type_names.84 = internal constant [17 x i8] c"java/lang/Number\00", align 16
@__java_type_names.85 = internal constant [17 x i8] c"java/lang/Object\00", align 16
@__java_type_names.86 = internal constant [27 x i8] c"java/lang/RuntimeException\00", align 16
@__java_type_names.87 = internal constant [16 x i8] c"java/lang/Short\00", align 16
@__java_type_names.88 = internal constant [17 x i8] c"java/lang/String\00", align 16
@__java_type_names.89 = internal constant [17 x i8] c"java/lang/Thread\00", align 16
@__java_type_names.90 = internal constant [35 x i8] c"mono/java/lang/RunnableImplementor\00", align 16
@__java_type_names.91 = internal constant [20 x i8] c"java/lang/Throwable\00", align 16
@__java_type_names.92 = internal constant [40 x i8] c"java/lang/UnsupportedOperationException\00", align 16
@__java_type_names.93 = internal constant [24 x i8] c"java/io/FileInputStream\00", align 16
@__java_type_names.94 = internal constant [20 x i8] c"java/io/InputStream\00", align 16
@__java_type_names.95 = internal constant [20 x i8] c"java/io/IOException\00", align 16
@__java_type_names.96 = internal constant [21 x i8] c"java/io/OutputStream\00", align 16
@__java_type_names.97 = internal constant [20 x i8] c"java/io/PrintWriter\00", align 16
@__java_type_names.98 = internal constant [21 x i8] c"java/io/StringWriter\00", align 16
@__java_type_names.99 = internal constant [15 x i8] c"java/io/Writer\00", align 1
@__java_type_names.100 = internal constant [25 x i8] c"mono/android/TypeManager\00", align 16
@__java_type_names.101 = internal constant [30 x i8] c"com/feyz/netbyte/MainActivity\00", align 16
@__java_type_names.102 = internal constant [51 x i8] c"com/feyz/netbyte/MainActivity_ThemedSpinnerAdapter\00", align 16

@java_type_names = local_unnamed_addr constant [103 x i8*] [
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.0, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.1, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.2, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.3, i32 0, i32 0),
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.4, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.5, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.6, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.7, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.8, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.9, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.10, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__java_type_names.11, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.12, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.13, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.14, i32 0, i32 0),
	i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__java_type_names.15, i32 0, i32 0),
	i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__java_type_names.16, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.17, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.18, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.19, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.20, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.21, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.22, i32 0, i32 0),
	i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__java_type_names.23, i32 0, i32 0),
	i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__java_type_names.24, i32 0, i32 0),
	i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__java_type_names.25, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.26, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.27, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.28, i32 0, i32 0),
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.29, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.30, i32 0, i32 0),
	i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__java_type_names.31, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.32, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__java_type_names.33, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.34, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.35, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.36, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.37, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.38, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.39, i32 0, i32 0),
	i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__java_type_names.40, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.41, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.42, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.43, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.44, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.45, i32 0, i32 0),
	i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__java_type_names.46, i32 0, i32 0),
	i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__java_type_names.47, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.48, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.49, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.50, i32 0, i32 0),
	i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__java_type_names.51, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.52, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.53, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.54, i32 0, i32 0),
	i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__java_type_names.55, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.56, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.57, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.58, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.59, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.60, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.61, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.62, i32 0, i32 0),
	i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__java_type_names.63, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__java_type_names.64, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.65, i32 0, i32 0),
	i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__java_type_names.66, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.67, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__java_type_names.68, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.69, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__java_type_names.70, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__java_type_names.71, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.72, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__java_type_names.73, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.74, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__java_type_names.75, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.76, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.77, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.78, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.79, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.80, i32 0, i32 0),
	i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__java_type_names.81, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__java_type_names.82, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.83, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.84, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.85, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.86, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__java_type_names.87, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.88, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.89, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.90, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.91, i32 0, i32 0),
	i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__java_type_names.92, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.93, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.94, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.95, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.96, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.97, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.98, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__java_type_names.99, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.100, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.101, i32 0, i32 0),
	i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__java_type_names.102, i32 0, i32 0)
], align 16

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/release/7.0.1xx @ 8f1d9a47205ead80132661f68b0cee9ed0e0220b"}
