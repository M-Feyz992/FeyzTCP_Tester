; ModuleID = 'obj\Release\net7.0-android\android\typemaps.x86.ll'
source_filename = "obj\Release\net7.0-android\android\typemaps.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
		i32 61; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554509, ; type_token_id
		i32 8; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554511, ; type_token_id
		i32 57; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33554513, ; type_token_id
		i32 69; java_map_index
	}, 
	; 4
	%struct.TypeMapModuleEntry {
		i32 33554515, ; type_token_id
		i32 35; java_map_index
	}, 
	; 5
	%struct.TypeMapModuleEntry {
		i32 33554516, ; type_token_id
		i32 42; java_map_index
	}, 
	; 6
	%struct.TypeMapModuleEntry {
		i32 33554517, ; type_token_id
		i32 43; java_map_index
	}, 
	; 7
	%struct.TypeMapModuleEntry {
		i32 33554519, ; type_token_id
		i32 24; java_map_index
	}, 
	; 8
	%struct.TypeMapModuleEntry {
		i32 33554520, ; type_token_id
		i32 45; java_map_index
	}, 
	; 9
	%struct.TypeMapModuleEntry {
		i32 33554521, ; type_token_id
		i32 70; java_map_index
	}, 
	; 10
	%struct.TypeMapModuleEntry {
		i32 33554523, ; type_token_id
		i32 59; java_map_index
	}, 
	; 11
	%struct.TypeMapModuleEntry {
		i32 33554525, ; type_token_id
		i32 51; java_map_index
	}, 
	; 12
	%struct.TypeMapModuleEntry {
		i32 33554526, ; type_token_id
		i32 32; java_map_index
	}, 
	; 13
	%struct.TypeMapModuleEntry {
		i32 33554527, ; type_token_id
		i32 73; java_map_index
	}, 
	; 14
	%struct.TypeMapModuleEntry {
		i32 33554528, ; type_token_id
		i32 80; java_map_index
	}, 
	; 15
	%struct.TypeMapModuleEntry {
		i32 33554529, ; type_token_id
		i32 28; java_map_index
	}, 
	; 16
	%struct.TypeMapModuleEntry {
		i32 33554534, ; type_token_id
		i32 14; java_map_index
	}, 
	; 17
	%struct.TypeMapModuleEntry {
		i32 33554537, ; type_token_id
		i32 78; java_map_index
	}, 
	; 18
	%struct.TypeMapModuleEntry {
		i32 33554538, ; type_token_id
		i32 71; java_map_index
	}, 
	; 19
	%struct.TypeMapModuleEntry {
		i32 33554539, ; type_token_id
		i32 91; java_map_index
	}, 
	; 20
	%struct.TypeMapModuleEntry {
		i32 33554544, ; type_token_id
		i32 56; java_map_index
	}, 
	; 21
	%struct.TypeMapModuleEntry {
		i32 33554545, ; type_token_id
		i32 38; java_map_index
	}, 
	; 22
	%struct.TypeMapModuleEntry {
		i32 33554546, ; type_token_id
		i32 49; java_map_index
	}, 
	; 23
	%struct.TypeMapModuleEntry {
		i32 33554548, ; type_token_id
		i32 97; java_map_index
	}, 
	; 24
	%struct.TypeMapModuleEntry {
		i32 33554549, ; type_token_id
		i32 67; java_map_index
	}, 
	; 25
	%struct.TypeMapModuleEntry {
		i32 33554552, ; type_token_id
		i32 65; java_map_index
	}, 
	; 26
	%struct.TypeMapModuleEntry {
		i32 33554557, ; type_token_id
		i32 2; java_map_index
	}, 
	; 27
	%struct.TypeMapModuleEntry {
		i32 33554561, ; type_token_id
		i32 75; java_map_index
	}, 
	; 28
	%struct.TypeMapModuleEntry {
		i32 33554564, ; type_token_id
		i32 100; java_map_index
	}, 
	; 29
	%struct.TypeMapModuleEntry {
		i32 33554566, ; type_token_id
		i32 46; java_map_index
	}, 
	; 30
	%struct.TypeMapModuleEntry {
		i32 33554567, ; type_token_id
		i32 12; java_map_index
	}, 
	; 31
	%struct.TypeMapModuleEntry {
		i32 33554568, ; type_token_id
		i32 37; java_map_index
	}, 
	; 32
	%struct.TypeMapModuleEntry {
		i32 33554569, ; type_token_id
		i32 99; java_map_index
	}, 
	; 33
	%struct.TypeMapModuleEntry {
		i32 33554570, ; type_token_id
		i32 87; java_map_index
	}, 
	; 34
	%struct.TypeMapModuleEntry {
		i32 33554572, ; type_token_id
		i32 23; java_map_index
	}, 
	; 35
	%struct.TypeMapModuleEntry {
		i32 33554575, ; type_token_id
		i32 25; java_map_index
	}, 
	; 36
	%struct.TypeMapModuleEntry {
		i32 33554578, ; type_token_id
		i32 53; java_map_index
	}, 
	; 37
	%struct.TypeMapModuleEntry {
		i32 33554579, ; type_token_id
		i32 36; java_map_index
	}, 
	; 38
	%struct.TypeMapModuleEntry {
		i32 33554580, ; type_token_id
		i32 60; java_map_index
	}, 
	; 39
	%struct.TypeMapModuleEntry {
		i32 33554581, ; type_token_id
		i32 63; java_map_index
	}, 
	; 40
	%struct.TypeMapModuleEntry {
		i32 33554582, ; type_token_id
		i32 95; java_map_index
	}, 
	; 41
	%struct.TypeMapModuleEntry {
		i32 33554587, ; type_token_id
		i32 62; java_map_index
	}, 
	; 42
	%struct.TypeMapModuleEntry {
		i32 33554588, ; type_token_id
		i32 47; java_map_index
	}, 
	; 43
	%struct.TypeMapModuleEntry {
		i32 33554589, ; type_token_id
		i32 21; java_map_index
	}, 
	; 44
	%struct.TypeMapModuleEntry {
		i32 33554591, ; type_token_id
		i32 96; java_map_index
	}, 
	; 45
	%struct.TypeMapModuleEntry {
		i32 33554593, ; type_token_id
		i32 93; java_map_index
	}, 
	; 46
	%struct.TypeMapModuleEntry {
		i32 33554594, ; type_token_id
		i32 74; java_map_index
	}, 
	; 47
	%struct.TypeMapModuleEntry {
		i32 33554597, ; type_token_id
		i32 90; java_map_index
	}, 
	; 48
	%struct.TypeMapModuleEntry {
		i32 33554598, ; type_token_id
		i32 58; java_map_index
	}, 
	; 49
	%struct.TypeMapModuleEntry {
		i32 33554600, ; type_token_id
		i32 55; java_map_index
	}, 
	; 50
	%struct.TypeMapModuleEntry {
		i32 33554601, ; type_token_id
		i32 4; java_map_index
	}, 
	; 51
	%struct.TypeMapModuleEntry {
		i32 33554603, ; type_token_id
		i32 66; java_map_index
	}, 
	; 52
	%struct.TypeMapModuleEntry {
		i32 33554605, ; type_token_id
		i32 82; java_map_index
	}, 
	; 53
	%struct.TypeMapModuleEntry {
		i32 33554608, ; type_token_id
		i32 48; java_map_index
	}, 
	; 54
	%struct.TypeMapModuleEntry {
		i32 33554609, ; type_token_id
		i32 26; java_map_index
	}, 
	; 55
	%struct.TypeMapModuleEntry {
		i32 33554630, ; type_token_id
		i32 92; java_map_index
	}, 
	; 56
	%struct.TypeMapModuleEntry {
		i32 33554632, ; type_token_id
		i32 30; java_map_index
	}, 
	; 57
	%struct.TypeMapModuleEntry {
		i32 33554634, ; type_token_id
		i32 33; java_map_index
	}, 
	; 58
	%struct.TypeMapModuleEntry {
		i32 33554643, ; type_token_id
		i32 15; java_map_index
	}, 
	; 59
	%struct.TypeMapModuleEntry {
		i32 33554645, ; type_token_id
		i32 85; java_map_index
	}, 
	; 60
	%struct.TypeMapModuleEntry {
		i32 33554646, ; type_token_id
		i32 83; java_map_index
	}, 
	; 61
	%struct.TypeMapModuleEntry {
		i32 33554647, ; type_token_id
		i32 102; java_map_index
	}, 
	; 62
	%struct.TypeMapModuleEntry {
		i32 33554660, ; type_token_id
		i32 9; java_map_index
	}, 
	; 63
	%struct.TypeMapModuleEntry {
		i32 33554669, ; type_token_id
		i32 7; java_map_index
	}, 
	; 64
	%struct.TypeMapModuleEntry {
		i32 33554671, ; type_token_id
		i32 27; java_map_index
	}, 
	; 65
	%struct.TypeMapModuleEntry {
		i32 33554673, ; type_token_id
		i32 10; java_map_index
	}, 
	; 66
	%struct.TypeMapModuleEntry {
		i32 33554675, ; type_token_id
		i32 34; java_map_index
	}, 
	; 67
	%struct.TypeMapModuleEntry {
		i32 33554677, ; type_token_id
		i32 54; java_map_index
	}, 
	; 68
	%struct.TypeMapModuleEntry {
		i32 33554678, ; type_token_id
		i32 41; java_map_index
	}, 
	; 69
	%struct.TypeMapModuleEntry {
		i32 33554679, ; type_token_id
		i32 44; java_map_index
	}, 
	; 70
	%struct.TypeMapModuleEntry {
		i32 33554680, ; type_token_id
		i32 88; java_map_index
	}, 
	; 71
	%struct.TypeMapModuleEntry {
		i32 33554681, ; type_token_id
		i32 31; java_map_index
	}, 
	; 72
	%struct.TypeMapModuleEntry {
		i32 33554682, ; type_token_id
		i32 86; java_map_index
	}, 
	; 73
	%struct.TypeMapModuleEntry {
		i32 33554683, ; type_token_id
		i32 94; java_map_index
	}, 
	; 74
	%struct.TypeMapModuleEntry {
		i32 33554684, ; type_token_id
		i32 76; java_map_index
	}, 
	; 75
	%struct.TypeMapModuleEntry {
		i32 33554685, ; type_token_id
		i32 72; java_map_index
	}, 
	; 76
	%struct.TypeMapModuleEntry {
		i32 33554686, ; type_token_id
		i32 16; java_map_index
	}, 
	; 77
	%struct.TypeMapModuleEntry {
		i32 33554689, ; type_token_id
		i32 3; java_map_index
	}, 
	; 78
	%struct.TypeMapModuleEntry {
		i32 33554690, ; type_token_id
		i32 11; java_map_index
	}, 
	; 79
	%struct.TypeMapModuleEntry {
		i32 33554691, ; type_token_id
		i32 40; java_map_index
	}, 
	; 80
	%struct.TypeMapModuleEntry {
		i32 33554692, ; type_token_id
		i32 18; java_map_index
	}, 
	; 81
	%struct.TypeMapModuleEntry {
		i32 33554693, ; type_token_id
		i32 50; java_map_index
	}, 
	; 82
	%struct.TypeMapModuleEntry {
		i32 33554695, ; type_token_id
		i32 6; java_map_index
	}, 
	; 83
	%struct.TypeMapModuleEntry {
		i32 33554696, ; type_token_id
		i32 20; java_map_index
	}, 
	; 84
	%struct.TypeMapModuleEntry {
		i32 33554697, ; type_token_id
		i32 81; java_map_index
	}, 
	; 85
	%struct.TypeMapModuleEntry {
		i32 33554699, ; type_token_id
		i32 0; java_map_index
	}, 
	; 86
	%struct.TypeMapModuleEntry {
		i32 33554700, ; type_token_id
		i32 39; java_map_index
	}, 
	; 87
	%struct.TypeMapModuleEntry {
		i32 33554701, ; type_token_id
		i32 22; java_map_index
	}, 
	; 88
	%struct.TypeMapModuleEntry {
		i32 33554702, ; type_token_id
		i32 84; java_map_index
	}, 
	; 89
	%struct.TypeMapModuleEntry {
		i32 33554704, ; type_token_id
		i32 19; java_map_index
	}, 
	; 90
	%struct.TypeMapModuleEntry {
		i32 33554705, ; type_token_id
		i32 5; java_map_index
	}, 
	; 91
	%struct.TypeMapModuleEntry {
		i32 33554706, ; type_token_id
		i32 29; java_map_index
	}, 
	; 92
	%struct.TypeMapModuleEntry {
		i32 33554707, ; type_token_id
		i32 64; java_map_index
	}, 
	; 93
	%struct.TypeMapModuleEntry {
		i32 33554708, ; type_token_id
		i32 68; java_map_index
	}, 
	; 94
	%struct.TypeMapModuleEntry {
		i32 33554709, ; type_token_id
		i32 89; java_map_index
	}, 
	; 95
	%struct.TypeMapModuleEntry {
		i32 33554711, ; type_token_id
		i32 101; java_map_index
	}, 
	; 96
	%struct.TypeMapModuleEntry {
		i32 33554712, ; type_token_id
		i32 52; java_map_index
	}, 
	; 97
	%struct.TypeMapModuleEntry {
		i32 33554714, ; type_token_id
		i32 17; java_map_index
	}, 
	; 98
	%struct.TypeMapModuleEntry {
		i32 33554715, ; type_token_id
		i32 79; java_map_index
	}, 
	; 99
	%struct.TypeMapModuleEntry {
		i32 33554716, ; type_token_id
		i32 98; java_map_index
	}, 
	; 100
	%struct.TypeMapModuleEntry {
		i32 33554732, ; type_token_id
		i32 77; java_map_index
	}
], align 4; end of 'module0_managed_to_java' array


; module0_managed_to_java_duplicates
@module0_managed_to_java_duplicates = internal constant [38 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554508, ; type_token_id
		i32 61; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554510, ; type_token_id
		i32 8; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554512, ; type_token_id
		i32 57; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33554514, ; type_token_id
		i32 69; java_map_index
	}, 
	; 4
	%struct.TypeMapModuleEntry {
		i32 33554518, ; type_token_id
		i32 43; java_map_index
	}, 
	; 5
	%struct.TypeMapModuleEntry {
		i32 33554522, ; type_token_id
		i32 70; java_map_index
	}, 
	; 6
	%struct.TypeMapModuleEntry {
		i32 33554524, ; type_token_id
		i32 59; java_map_index
	}, 
	; 7
	%struct.TypeMapModuleEntry {
		i32 33554530, ; type_token_id
		i32 28; java_map_index
	}, 
	; 8
	%struct.TypeMapModuleEntry {
		i32 33554542, ; type_token_id
		i32 57; java_map_index
	}, 
	; 9
	%struct.TypeMapModuleEntry {
		i32 33554543, ; type_token_id
		i32 69; java_map_index
	}, 
	; 10
	%struct.TypeMapModuleEntry {
		i32 33554547, ; type_token_id
		i32 49; java_map_index
	}, 
	; 11
	%struct.TypeMapModuleEntry {
		i32 33554550, ; type_token_id
		i32 67; java_map_index
	}, 
	; 12
	%struct.TypeMapModuleEntry {
		i32 33554558, ; type_token_id
		i32 2; java_map_index
	}, 
	; 13
	%struct.TypeMapModuleEntry {
		i32 33554562, ; type_token_id
		i32 75; java_map_index
	}, 
	; 14
	%struct.TypeMapModuleEntry {
		i32 33554565, ; type_token_id
		i32 100; java_map_index
	}, 
	; 15
	%struct.TypeMapModuleEntry {
		i32 33554571, ; type_token_id
		i32 87; java_map_index
	}, 
	; 16
	%struct.TypeMapModuleEntry {
		i32 33554576, ; type_token_id
		i32 25; java_map_index
	}, 
	; 17
	%struct.TypeMapModuleEntry {
		i32 33554590, ; type_token_id
		i32 21; java_map_index
	}, 
	; 18
	%struct.TypeMapModuleEntry {
		i32 33554592, ; type_token_id
		i32 96; java_map_index
	}, 
	; 19
	%struct.TypeMapModuleEntry {
		i32 33554595, ; type_token_id
		i32 74; java_map_index
	}, 
	; 20
	%struct.TypeMapModuleEntry {
		i32 33554599, ; type_token_id
		i32 58; java_map_index
	}, 
	; 21
	%struct.TypeMapModuleEntry {
		i32 33554602, ; type_token_id
		i32 4; java_map_index
	}, 
	; 22
	%struct.TypeMapModuleEntry {
		i32 33554604, ; type_token_id
		i32 66; java_map_index
	}, 
	; 23
	%struct.TypeMapModuleEntry {
		i32 33554606, ; type_token_id
		i32 82; java_map_index
	}, 
	; 24
	%struct.TypeMapModuleEntry {
		i32 33554633, ; type_token_id
		i32 30; java_map_index
	}, 
	; 25
	%struct.TypeMapModuleEntry {
		i32 33554639, ; type_token_id
		i32 33; java_map_index
	}, 
	; 26
	%struct.TypeMapModuleEntry {
		i32 33554644, ; type_token_id
		i32 15; java_map_index
	}, 
	; 27
	%struct.TypeMapModuleEntry {
		i32 33554648, ; type_token_id
		i32 102; java_map_index
	}, 
	; 28
	%struct.TypeMapModuleEntry {
		i32 33554670, ; type_token_id
		i32 7; java_map_index
	}, 
	; 29
	%struct.TypeMapModuleEntry {
		i32 33554672, ; type_token_id
		i32 27; java_map_index
	}, 
	; 30
	%struct.TypeMapModuleEntry {
		i32 33554674, ; type_token_id
		i32 10; java_map_index
	}, 
	; 31
	%struct.TypeMapModuleEntry {
		i32 33554676, ; type_token_id
		i32 34; java_map_index
	}, 
	; 32
	%struct.TypeMapModuleEntry {
		i32 33554687, ; type_token_id
		i32 16; java_map_index
	}, 
	; 33
	%struct.TypeMapModuleEntry {
		i32 33554694, ; type_token_id
		i32 50; java_map_index
	}, 
	; 34
	%struct.TypeMapModuleEntry {
		i32 33554698, ; type_token_id
		i32 81; java_map_index
	}, 
	; 35
	%struct.TypeMapModuleEntry {
		i32 33554710, ; type_token_id
		i32 89; java_map_index
	}, 
	; 36
	%struct.TypeMapModuleEntry {
		i32 33554713, ; type_token_id
		i32 52; java_map_index
	}, 
	; 37
	%struct.TypeMapModuleEntry {
		i32 33554717, ; type_token_id
		i32 98; java_map_index
	}
], align 4; end of 'module0_managed_to_java_duplicates' array


; module1_managed_to_java
@module1_managed_to_java = internal constant [2 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554438, ; type_token_id
		i32 1; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554440, ; type_token_id
		i32 13; java_map_index
	}
], align 4; end of 'module1_managed_to_java' array

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
], align 4; end of 'map_modules' array


; Java to managed map

; map_java
@map_java = local_unnamed_addr constant [103 x %struct.TypeMapJava] [
	; 0
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554699, ; type_token_id
		i32 85; java_name_index
	}, 
	; 1
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554438, ; type_token_id
		i32 101; java_name_index
	}, 
	; 2
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554557, ; type_token_id
		i32 26; java_name_index
	}, 
	; 3
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554689, ; type_token_id
		i32 77; java_name_index
	}, 
	; 4
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 50; java_name_index
	}, 
	; 5
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554705, ; type_token_id
		i32 90; java_name_index
	}, 
	; 6
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554695, ; type_token_id
		i32 82; java_name_index
	}, 
	; 7
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 63; java_name_index
	}, 
	; 8
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554509, ; type_token_id
		i32 1; java_name_index
	}, 
	; 9
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554660, ; type_token_id
		i32 62; java_name_index
	}, 
	; 10
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554673, ; type_token_id
		i32 65; java_name_index
	}, 
	; 11
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554690, ; type_token_id
		i32 78; java_name_index
	}, 
	; 12
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554567, ; type_token_id
		i32 30; java_name_index
	}, 
	; 13
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554440, ; type_token_id
		i32 102; java_name_index
	}, 
	; 14
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554534, ; type_token_id
		i32 16; java_name_index
	}, 
	; 15
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554643, ; type_token_id
		i32 58; java_name_index
	}, 
	; 16
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 76; java_name_index
	}, 
	; 17
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554714, ; type_token_id
		i32 97; java_name_index
	}, 
	; 18
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554692, ; type_token_id
		i32 80; java_name_index
	}, 
	; 19
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554704, ; type_token_id
		i32 89; java_name_index
	}, 
	; 20
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554696, ; type_token_id
		i32 83; java_name_index
	}, 
	; 21
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554589, ; type_token_id
		i32 43; java_name_index
	}, 
	; 22
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554701, ; type_token_id
		i32 87; java_name_index
	}, 
	; 23
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554572, ; type_token_id
		i32 34; java_name_index
	}, 
	; 24
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554519, ; type_token_id
		i32 7; java_name_index
	}, 
	; 25
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554575, ; type_token_id
		i32 35; java_name_index
	}, 
	; 26
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554609, ; type_token_id
		i32 54; java_name_index
	}, 
	; 27
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 64; java_name_index
	}, 
	; 28
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 15; java_name_index
	}, 
	; 29
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554706, ; type_token_id
		i32 91; java_name_index
	}, 
	; 30
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554632, ; type_token_id
		i32 56; java_name_index
	}, 
	; 31
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554681, ; type_token_id
		i32 71; java_name_index
	}, 
	; 32
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554526, ; type_token_id
		i32 12; java_name_index
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
		i32 33554675, ; type_token_id
		i32 66; java_name_index
	}, 
	; 35
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554515, ; type_token_id
		i32 4; java_name_index
	}, 
	; 36
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554579, ; type_token_id
		i32 37; java_name_index
	}, 
	; 37
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554568, ; type_token_id
		i32 31; java_name_index
	}, 
	; 38
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554545, ; type_token_id
		i32 21; java_name_index
	}, 
	; 39
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554700, ; type_token_id
		i32 86; java_name_index
	}, 
	; 40
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554691, ; type_token_id
		i32 79; java_name_index
	}, 
	; 41
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554678, ; type_token_id
		i32 68; java_name_index
	}, 
	; 42
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554516, ; type_token_id
		i32 5; java_name_index
	}, 
	; 43
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554517, ; type_token_id
		i32 6; java_name_index
	}, 
	; 44
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554679, ; type_token_id
		i32 69; java_name_index
	}, 
	; 45
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554520, ; type_token_id
		i32 8; java_name_index
	}, 
	; 46
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554566, ; type_token_id
		i32 29; java_name_index
	}, 
	; 47
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554588, ; type_token_id
		i32 42; java_name_index
	}, 
	; 48
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554608, ; type_token_id
		i32 53; java_name_index
	}, 
	; 49
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 22; java_name_index
	}, 
	; 50
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 81; java_name_index
	}, 
	; 51
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554525, ; type_token_id
		i32 11; java_name_index
	}, 
	; 52
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554712, ; type_token_id
		i32 96; java_name_index
	}, 
	; 53
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554578, ; type_token_id
		i32 36; java_name_index
	}, 
	; 54
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554677, ; type_token_id
		i32 67; java_name_index
	}, 
	; 55
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554600, ; type_token_id
		i32 49; java_name_index
	}, 
	; 56
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554544, ; type_token_id
		i32 20; java_name_index
	}, 
	; 57
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554511, ; type_token_id
		i32 2; java_name_index
	}, 
	; 58
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 48; java_name_index
	}, 
	; 59
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 10; java_name_index
	}, 
	; 60
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554580, ; type_token_id
		i32 38; java_name_index
	}, 
	; 61
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554507, ; type_token_id
		i32 0; java_name_index
	}, 
	; 62
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554587, ; type_token_id
		i32 41; java_name_index
	}, 
	; 63
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554581, ; type_token_id
		i32 39; java_name_index
	}, 
	; 64
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554707, ; type_token_id
		i32 92; java_name_index
	}, 
	; 65
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554552, ; type_token_id
		i32 25; java_name_index
	}, 
	; 66
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 51; java_name_index
	}, 
	; 67
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 24; java_name_index
	}, 
	; 68
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554708, ; type_token_id
		i32 93; java_name_index
	}, 
	; 69
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554513, ; type_token_id
		i32 3; java_name_index
	}, 
	; 70
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 9; java_name_index
	}, 
	; 71
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554538, ; type_token_id
		i32 18; java_name_index
	}, 
	; 72
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554685, ; type_token_id
		i32 75; java_name_index
	}, 
	; 73
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554527, ; type_token_id
		i32 13; java_name_index
	}, 
	; 74
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 46; java_name_index
	}, 
	; 75
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 27; java_name_index
	}, 
	; 76
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554684, ; type_token_id
		i32 74; java_name_index
	}, 
	; 77
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554732, ; type_token_id
		i32 100; java_name_index
	}, 
	; 78
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554537, ; type_token_id
		i32 17; java_name_index
	}, 
	; 79
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554715, ; type_token_id
		i32 98; java_name_index
	}, 
	; 80
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554528, ; type_token_id
		i32 14; java_name_index
	}, 
	; 81
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554697, ; type_token_id
		i32 84; java_name_index
	}, 
	; 82
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 52; java_name_index
	}, 
	; 83
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554646, ; type_token_id
		i32 60; java_name_index
	}, 
	; 84
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554702, ; type_token_id
		i32 88; java_name_index
	}, 
	; 85
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554645, ; type_token_id
		i32 59; java_name_index
	}, 
	; 86
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554682, ; type_token_id
		i32 72; java_name_index
	}, 
	; 87
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554570, ; type_token_id
		i32 33; java_name_index
	}, 
	; 88
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554680, ; type_token_id
		i32 70; java_name_index
	}, 
	; 89
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554709, ; type_token_id
		i32 94; java_name_index
	}, 
	; 90
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554597, ; type_token_id
		i32 47; java_name_index
	}, 
	; 91
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554539, ; type_token_id
		i32 19; java_name_index
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
		i32 33554593, ; type_token_id
		i32 45; java_name_index
	}, 
	; 94
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554683, ; type_token_id
		i32 73; java_name_index
	}, 
	; 95
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554582, ; type_token_id
		i32 40; java_name_index
	}, 
	; 96
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554591, ; type_token_id
		i32 44; java_name_index
	}, 
	; 97
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554548, ; type_token_id
		i32 23; java_name_index
	}, 
	; 98
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554716, ; type_token_id
		i32 99; java_name_index
	}, 
	; 99
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554569, ; type_token_id
		i32 32; java_name_index
	}, 
	; 100
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554564, ; type_token_id
		i32 28; java_name_index
	}, 
	; 101
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554711, ; type_token_id
		i32 95; java_name_index
	}, 
	; 102
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554647, ; type_token_id
		i32 61; java_name_index
	}
], align 4; end of 'map_java' array

@map_java_hashes = local_unnamed_addr constant [103 x i32] [
	i32 12341354, ; 0: 0xbc506a => java/lang/Object
	i32 21822006, ; 1: 0x14cfa36 => com/feyz/netbyte/MainActivity
	i32 74282880, ; 2: 0x46d7780 => android/view/ViewGroup
	i32 176697843, ; 3: 0xa8831f3 => java/lang/IllegalArgumentException
	i32 279693177, ; 4: 0x10abc779 => android/content/SharedPreferences$Editor
	i32 393371378, ; 5: 0x17725ef2 => mono/java/lang/RunnableImplementor
	i32 412771173, ; 6: 0x189a6365 => java/lang/Long
	i32 419359493, ; 7: 0x18feeb05 => java/util/Iterator
	i32 467220734, ; 8: 0x1bd938fe => android/widget/AbsSpinner
	i32 531198748, ; 9: 0x1fa9731c => mono/android/runtime/OutputStreamAdapter
	i32 581097368, ; 10: 0x22a2d798 => java/nio/channels/FileChannel
	i32 584231583, ; 11: 0x22d2aa9f => java/lang/IllegalStateException
	i32 591810476, ; 12: 0x23464fac => android/os/Bundle
	i32 599303248, ; 13: 0x23b8a450 => com/feyz/netbyte/MainActivity_ThemedSpinnerAdapter
	i32 624297898, ; 14: 0x253607aa => mono/android/widget/SeekBar_OnSeekBarChangeListenerImplementor
	i32 692920175, ; 15: 0x294d1f6f => java/util/ArrayList
	i32 780408360, ; 16: 0x2e841628 => java/lang/CharSequence
	i32 780987551, ; 17: 0x2e8cec9f => java/io/PrintWriter
	i32 793918146, ; 18: 0x2f523ac2 => java/lang/Integer
	i32 806800039, ; 19: 0x3016caa7 => java/lang/Thread
	i32 838682992, ; 20: 0x31fd4970 => java/lang/NullPointerException
	i32 885223365, ; 21: 0x34c36fc5 => android/content/ContentResolver
	i32 893363610, ; 22: 0x353fa59a => java/lang/Short
	i32 1008962460, ; 23: 0x3c238b9c => android/graphics/Color
	i32 1018791985, ; 24: 0x3cb98831 => android/widget/EditText
	i32 1030707578, ; 25: 0x3d6f597a => android/database/DataSetObserver
	i32 1035992969, ; 26: 0x3dbfff89 => android/content/res/Resources
	i32 1077629184, ; 27: 0x403b5100 => java/util/function/Consumer
	i32 1281062668, ; 28: 0x4c5b770c => android/widget/SeekBar$OnSeekBarChangeListener
	i32 1298454265, ; 29: 0x4d64d6f9 => java/lang/Throwable
	i32 1335098580, ; 30: 0x4f93fcd4 => java/util/Collection
	i32 1368421702, ; 31: 0x51907546 => java/lang/ClassCastException
	i32 1459844378, ; 32: 0x5703751a => android/widget/ProgressBar
	i32 1475682991, ; 33: 0x57f522af => java/util/HashMap
	i32 1489594546, ; 34: 0x58c968b2 => java/nio/channels/spi/AbstractInterruptibleChannel
	i32 1506774891, ; 35: 0x59cf8f6b => android/widget/Button
	i32 1573833883, ; 36: 0x5dcecc9b => android/app/AlertDialog
	i32 1586851388, ; 37: 0x5e956e3c => android/os/Handler
	i32 1646348278, ; 38: 0x622147f6 => android/view/View
	i32 1649695927, ; 39: 0x62545cb7 => java/lang/RuntimeException
	i32 1657134862, ; 40: 0x62c5df0e => java/lang/IndexOutOfBoundsException
	i32 1680835779, ; 41: 0x642f84c3 => java/lang/Byte
	i32 1687579136, ; 42: 0x64966a00 => android/widget/CheckBox
	i32 1699467861, ; 43: 0x654bd255 => android/widget/CompoundButton
	i32 1718265030, ; 44: 0x666aa4c6 => java/lang/Character
	i32 1740814247, ; 45: 0x67c2b7a7 => android/widget/FrameLayout
	i32 1758490869, ; 46: 0x68d070f5 => android/os/BaseBundle
	i32 1761245836, ; 47: 0x68fa7a8c => android/content/ClipData
	i32 1775355160, ; 48: 0x69d1c518 => android/content/res/ColorStateList
	i32 1807220671, ; 49: 0x6bb7ffbf => android/view/View$OnClickListener
	i32 1851730788, ; 50: 0x6e5f2b64 => java/lang/Runnable
	i32 1859010077, ; 51: 0x6ece3e1d => android/widget/LinearLayout
	i32 1944129628, ; 52: 0x73e1105c => java/io/OutputStream
	i32 1985929388, ; 53: 0x765ee0ac => android/app/Activity
	i32 1987841337, ; 54: 0x767c0d39 => java/lang/Boolean
	i32 2008064836, ; 55: 0x77b0a344 => android/content/Intent
	i32 2027782872, ; 56: 0x78dd82d8 => android/view/ContextThemeWrapper
	i32 2031450615, ; 57: 0x791579f7 => android/widget/AdapterView
	i32 2036556174, ; 58: 0x7963618e => android/content/DialogInterface
	i32 2064723667, ; 59: 0x7b112ed3 => android/widget/SpinnerAdapter
	i32 2073337312, ; 60: 0x7b949de0 => android/app/AlertDialog$Builder
	i32 2096401987, ; 61: 0x7cf48e43 => android/widget/AbsSeekBar
	i32 2104284586, ; 62: 0x7d6cd5aa => android/content/ClipboardManager
	i32 2284656609, ; 63: 0x882d17e1 => android/app/Application
	i32 2411404453, ; 64: 0x8fbb1ca5 => java/lang/UnsupportedOperationException
	i32 2502314358, ; 65: 0x95264976 => mono/android/view/View_OnLongClickListenerImplementor
	i32 2532846927, ; 66: 0x96f82d4f => android/content/SharedPreferences$OnSharedPreferenceChangeListener
	i32 2555007104, ; 67: 0x984a5080 => android/view/View$OnLongClickListener
	i32 2558143838, ; 68: 0x987a2d5e => java/io/FileInputStream
	i32 2594241228, ; 69: 0x9aa0facc => android/widget/BaseAdapter
	i32 2681209703, ; 70: 0x9fd00367 => android/widget/Adapter
	i32 2687778660, ; 71: 0xa0343f64 => android/widget/TextView
	i32 2762684487, ; 72: 0xa4ab3847 => java/lang/Float
	i32 2836478263, ; 73: 0xa9113937 => android/widget/ScrollView
	i32 2918613155, ; 74: 0xadf680a3 => android/content/DialogInterface$OnClickListener
	i32 2933762856, ; 75: 0xaeddab28 => android/util/AttributeSet
	i32 2942792700, ; 76: 0xaf6773fc => java/lang/Exception
	i32 2983720033, ; 77: 0xb1d7f461 => mono/android/TypeManager
	i32 2983793634, ; 78: 0xb1d913e2 => android/widget/Spinner
	i32 3032808825, ; 79: 0xb4c4fd79 => java/io/StringWriter
	i32 3203260291, ; 80: 0xbeeddf83 => android/widget/SeekBar
	i32 3423467887, ; 81: 0xcc0df96f => java/lang/Number
	i32 3430868172, ; 82: 0xcc7ee4cc => android/content/SharedPreferences
	i32 3576242387, ; 83: 0xd52920d3 => android/runtime/JavaProxyThrowable
	i32 3666243682, ; 84: 0xda867062 => java/lang/String
	i32 3683323802, ; 85: 0xdb8b0f9a => mono/android/runtime/JavaObject
	i32 3702230909, ; 86: 0xdcab8f7d => java/lang/Double
	i32 3823421666, ; 87: 0xe3e4c8e2 => android/net/Uri
	i32 3882570516, ; 88: 0xe76b5314 => java/lang/Class
	i32 3900581163, ; 89: 0xe87e252b => java/io/InputStream
	i32 3931120197, ; 90: 0xea502245 => mono/android/content/DialogInterface_OnClickListenerImplementor
	i32 3960999444, ; 91: 0xec180e14 => android/widget/Toast
	i32 3969984744, ; 92: 0xeca128e8 => mono/android/runtime/InputStreamAdapter
	i32 3993327007, ; 93: 0xee05559f => android/content/ContextWrapper
	i32 4020308495, ; 94: 0xefa10a0f => java/lang/Error
	i32 4030673356, ; 95: 0xf03f31cc => android/app/Dialog
	i32 4051772911, ; 96: 0xf18125ef => android/content/Context
	i32 4098107575, ; 97: 0xf44428b7 => mono/android/view/View_OnClickListenerImplementor
	i32 4101363546, ; 98: 0xf475d75a => java/io/Writer
	i32 4118878202, ; 99: 0xf58117fa => android/os/Looper
	i32 4136260101, ; 100: 0xf68a5205 => android/text/ClipboardManager
	i32 4157808693, ; 101: 0xf7d32035 => java/io/IOException
	i32 4232707919 ; 102: 0xfc49ff4f => java/util/HashSet
], align 4

; java_type_names
@__java_type_names.0 = internal constant [26 x i8] c"android/widget/AbsSeekBar\00", align 1
@__java_type_names.1 = internal constant [26 x i8] c"android/widget/AbsSpinner\00", align 1
@__java_type_names.2 = internal constant [27 x i8] c"android/widget/AdapterView\00", align 1
@__java_type_names.3 = internal constant [27 x i8] c"android/widget/BaseAdapter\00", align 1
@__java_type_names.4 = internal constant [22 x i8] c"android/widget/Button\00", align 1
@__java_type_names.5 = internal constant [24 x i8] c"android/widget/CheckBox\00", align 1
@__java_type_names.6 = internal constant [30 x i8] c"android/widget/CompoundButton\00", align 1
@__java_type_names.7 = internal constant [24 x i8] c"android/widget/EditText\00", align 1
@__java_type_names.8 = internal constant [27 x i8] c"android/widget/FrameLayout\00", align 1
@__java_type_names.9 = internal constant [23 x i8] c"android/widget/Adapter\00", align 1
@__java_type_names.10 = internal constant [30 x i8] c"android/widget/SpinnerAdapter\00", align 1
@__java_type_names.11 = internal constant [28 x i8] c"android/widget/LinearLayout\00", align 1
@__java_type_names.12 = internal constant [27 x i8] c"android/widget/ProgressBar\00", align 1
@__java_type_names.13 = internal constant [26 x i8] c"android/widget/ScrollView\00", align 1
@__java_type_names.14 = internal constant [23 x i8] c"android/widget/SeekBar\00", align 1
@__java_type_names.15 = internal constant [47 x i8] c"android/widget/SeekBar$OnSeekBarChangeListener\00", align 1
@__java_type_names.16 = internal constant [63 x i8] c"mono/android/widget/SeekBar_OnSeekBarChangeListenerImplementor\00", align 1
@__java_type_names.17 = internal constant [23 x i8] c"android/widget/Spinner\00", align 1
@__java_type_names.18 = internal constant [24 x i8] c"android/widget/TextView\00", align 1
@__java_type_names.19 = internal constant [21 x i8] c"android/widget/Toast\00", align 1
@__java_type_names.20 = internal constant [33 x i8] c"android/view/ContextThemeWrapper\00", align 1
@__java_type_names.21 = internal constant [18 x i8] c"android/view/View\00", align 1
@__java_type_names.22 = internal constant [34 x i8] c"android/view/View$OnClickListener\00", align 1
@__java_type_names.23 = internal constant [50 x i8] c"mono/android/view/View_OnClickListenerImplementor\00", align 1
@__java_type_names.24 = internal constant [38 x i8] c"android/view/View$OnLongClickListener\00", align 1
@__java_type_names.25 = internal constant [54 x i8] c"mono/android/view/View_OnLongClickListenerImplementor\00", align 1
@__java_type_names.26 = internal constant [23 x i8] c"android/view/ViewGroup\00", align 1
@__java_type_names.27 = internal constant [26 x i8] c"android/util/AttributeSet\00", align 1
@__java_type_names.28 = internal constant [30 x i8] c"android/text/ClipboardManager\00", align 1
@__java_type_names.29 = internal constant [22 x i8] c"android/os/BaseBundle\00", align 1
@__java_type_names.30 = internal constant [18 x i8] c"android/os/Bundle\00", align 1
@__java_type_names.31 = internal constant [19 x i8] c"android/os/Handler\00", align 1
@__java_type_names.32 = internal constant [18 x i8] c"android/os/Looper\00", align 1
@__java_type_names.33 = internal constant [16 x i8] c"android/net/Uri\00", align 1
@__java_type_names.34 = internal constant [23 x i8] c"android/graphics/Color\00", align 1
@__java_type_names.35 = internal constant [33 x i8] c"android/database/DataSetObserver\00", align 1
@__java_type_names.36 = internal constant [21 x i8] c"android/app/Activity\00", align 1
@__java_type_names.37 = internal constant [24 x i8] c"android/app/AlertDialog\00", align 1
@__java_type_names.38 = internal constant [32 x i8] c"android/app/AlertDialog$Builder\00", align 1
@__java_type_names.39 = internal constant [24 x i8] c"android/app/Application\00", align 1
@__java_type_names.40 = internal constant [19 x i8] c"android/app/Dialog\00", align 1
@__java_type_names.41 = internal constant [33 x i8] c"android/content/ClipboardManager\00", align 1
@__java_type_names.42 = internal constant [25 x i8] c"android/content/ClipData\00", align 1
@__java_type_names.43 = internal constant [32 x i8] c"android/content/ContentResolver\00", align 1
@__java_type_names.44 = internal constant [24 x i8] c"android/content/Context\00", align 1
@__java_type_names.45 = internal constant [31 x i8] c"android/content/ContextWrapper\00", align 1
@__java_type_names.46 = internal constant [48 x i8] c"android/content/DialogInterface$OnClickListener\00", align 1
@__java_type_names.47 = internal constant [64 x i8] c"mono/android/content/DialogInterface_OnClickListenerImplementor\00", align 1
@__java_type_names.48 = internal constant [32 x i8] c"android/content/DialogInterface\00", align 1
@__java_type_names.49 = internal constant [23 x i8] c"android/content/Intent\00", align 1
@__java_type_names.50 = internal constant [41 x i8] c"android/content/SharedPreferences$Editor\00", align 1
@__java_type_names.51 = internal constant [67 x i8] c"android/content/SharedPreferences$OnSharedPreferenceChangeListener\00", align 1
@__java_type_names.52 = internal constant [34 x i8] c"android/content/SharedPreferences\00", align 1
@__java_type_names.53 = internal constant [35 x i8] c"android/content/res/ColorStateList\00", align 1
@__java_type_names.54 = internal constant [30 x i8] c"android/content/res/Resources\00", align 1
@__java_type_names.55 = internal constant [40 x i8] c"mono/android/runtime/InputStreamAdapter\00", align 1
@__java_type_names.56 = internal constant [21 x i8] c"java/util/Collection\00", align 1
@__java_type_names.57 = internal constant [18 x i8] c"java/util/HashMap\00", align 1
@__java_type_names.58 = internal constant [20 x i8] c"java/util/ArrayList\00", align 1
@__java_type_names.59 = internal constant [32 x i8] c"mono/android/runtime/JavaObject\00", align 1
@__java_type_names.60 = internal constant [35 x i8] c"android/runtime/JavaProxyThrowable\00", align 1
@__java_type_names.61 = internal constant [18 x i8] c"java/util/HashSet\00", align 1
@__java_type_names.62 = internal constant [41 x i8] c"mono/android/runtime/OutputStreamAdapter\00", align 1
@__java_type_names.63 = internal constant [19 x i8] c"java/util/Iterator\00", align 1
@__java_type_names.64 = internal constant [28 x i8] c"java/util/function/Consumer\00", align 1
@__java_type_names.65 = internal constant [30 x i8] c"java/nio/channels/FileChannel\00", align 1
@__java_type_names.66 = internal constant [51 x i8] c"java/nio/channels/spi/AbstractInterruptibleChannel\00", align 1
@__java_type_names.67 = internal constant [18 x i8] c"java/lang/Boolean\00", align 1
@__java_type_names.68 = internal constant [15 x i8] c"java/lang/Byte\00", align 1
@__java_type_names.69 = internal constant [20 x i8] c"java/lang/Character\00", align 1
@__java_type_names.70 = internal constant [16 x i8] c"java/lang/Class\00", align 1
@__java_type_names.71 = internal constant [29 x i8] c"java/lang/ClassCastException\00", align 1
@__java_type_names.72 = internal constant [17 x i8] c"java/lang/Double\00", align 1
@__java_type_names.73 = internal constant [16 x i8] c"java/lang/Error\00", align 1
@__java_type_names.74 = internal constant [20 x i8] c"java/lang/Exception\00", align 1
@__java_type_names.75 = internal constant [16 x i8] c"java/lang/Float\00", align 1
@__java_type_names.76 = internal constant [23 x i8] c"java/lang/CharSequence\00", align 1
@__java_type_names.77 = internal constant [35 x i8] c"java/lang/IllegalArgumentException\00", align 1
@__java_type_names.78 = internal constant [32 x i8] c"java/lang/IllegalStateException\00", align 1
@__java_type_names.79 = internal constant [36 x i8] c"java/lang/IndexOutOfBoundsException\00", align 1
@__java_type_names.80 = internal constant [18 x i8] c"java/lang/Integer\00", align 1
@__java_type_names.81 = internal constant [19 x i8] c"java/lang/Runnable\00", align 1
@__java_type_names.82 = internal constant [15 x i8] c"java/lang/Long\00", align 1
@__java_type_names.83 = internal constant [31 x i8] c"java/lang/NullPointerException\00", align 1
@__java_type_names.84 = internal constant [17 x i8] c"java/lang/Number\00", align 1
@__java_type_names.85 = internal constant [17 x i8] c"java/lang/Object\00", align 1
@__java_type_names.86 = internal constant [27 x i8] c"java/lang/RuntimeException\00", align 1
@__java_type_names.87 = internal constant [16 x i8] c"java/lang/Short\00", align 1
@__java_type_names.88 = internal constant [17 x i8] c"java/lang/String\00", align 1
@__java_type_names.89 = internal constant [17 x i8] c"java/lang/Thread\00", align 1
@__java_type_names.90 = internal constant [35 x i8] c"mono/java/lang/RunnableImplementor\00", align 1
@__java_type_names.91 = internal constant [20 x i8] c"java/lang/Throwable\00", align 1
@__java_type_names.92 = internal constant [40 x i8] c"java/lang/UnsupportedOperationException\00", align 1
@__java_type_names.93 = internal constant [24 x i8] c"java/io/FileInputStream\00", align 1
@__java_type_names.94 = internal constant [20 x i8] c"java/io/InputStream\00", align 1
@__java_type_names.95 = internal constant [20 x i8] c"java/io/IOException\00", align 1
@__java_type_names.96 = internal constant [21 x i8] c"java/io/OutputStream\00", align 1
@__java_type_names.97 = internal constant [20 x i8] c"java/io/PrintWriter\00", align 1
@__java_type_names.98 = internal constant [21 x i8] c"java/io/StringWriter\00", align 1
@__java_type_names.99 = internal constant [15 x i8] c"java/io/Writer\00", align 1
@__java_type_names.100 = internal constant [25 x i8] c"mono/android/TypeManager\00", align 1
@__java_type_names.101 = internal constant [30 x i8] c"com/feyz/netbyte/MainActivity\00", align 1
@__java_type_names.102 = internal constant [51 x i8] c"com/feyz/netbyte/MainActivity_ThemedSpinnerAdapter\00", align 1

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
], align 4

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/release/7.0.1xx @ 8f1d9a47205ead80132661f68b0cee9ed0e0220b"}
