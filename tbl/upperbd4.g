#############################################################################
##
#A  upperbd4.g 		        GUAVA library                   Reinald Baart
#A                                                       & Jasper Cramwinckel
#A                                                          & Erik Roijackers
##
##  This file contains a reference and an upper bound on the minimum distance
##  of a linear code over GF(4) of given word length and dimension.
##
#Y  Copyright (C)  1994,  Vakgroep Algemene Wiskunde,  T.U. Delft,  Nederland
##
#H  CJ, 17 May 2006
#H  Updated lower- and upper-bounds of minimum distance for GF(2),
#H  GF(3) and GF(4) codes. (Brouwer's table as of 11 May 2006)
#H
#H  $Log: upperbd4.g,v $
#H  Revision 1.1.1.1  1998/03/19 17:31:45  lea
#H  Initial version of GUAVA for GAP4.  Development still under way. 
#H  Lea Ruscio 19/3/98
#H
#H
#H  Revision 1.2  1997/01/20 15:34:46  werner
#H  Upgrade from Guava 1.2 to Guava 1.3 for GAP release 3.4.4.
#H
#H  Revision 1.1  1994/11/10  14:29:23  rbaart
#H  Initial revision
#H
##
GUAVA_TEMP_VAR := [
[ 10,  3,  6, "GH"],
[ 18,  5, 10, "Liz"],
[ 18, 14,  3, "cap"],
[ 24,  6, 14, "Bou"],
[ 27,  5, 17, "Bou"],
[ 30, 24,  4, "BK"],
[ 31,  5, 20, "Bou"],
[ 32,  4, 22, "GH"],
[ 39, 10, 22, "Gur"],
[ 39, 30,  6, "LP"],
[ 41,  6, 27, "Da"],
[ 42, 37,  3, "EB4"],
[ 45,  5, 31, "Liz"],
[ 45,  6, 30, "Da"],
[ 48, 36,  8, "LP"],
[ 51,  4, 36, "LMH"],
[ 51, 10, 31, "Gur"],
[ 51, 15, 27, "LP"],
[ 52, 35, 12, "LP"],
[ 54,  8, 35, "Gur"],
[ 54,  9, 34, "Gur"],
[ 56,  4, 40, "HLa"],
[ 57,  8, 37, "Gur"],
[ 57, 42, 10, "LP"],
[ 60, 25, 26, "LP"],
[ 60, 29, 23, "LP"],
[ 60, 53,  4, "LP"],
[ 61, 22, 29, "LP"],
[ 61, 35, 19, "LP"],
[ 61, 40, 15, "LP"],
[ 61, 41, 14, "LP"],
[ 61, 51,  6, "LP"],
[ 62, 15, 35, "LP"],
[ 64, 12, 39, "BK"],
[ 64, 39, 18, "LP"],
[ 66,  9, 43, "Gur"],
[ 66, 15, 38, "LP"],
[ 66, 20, 34, "LP"],
[ 66, 28, 28, "LP"],
[ 66, 48, 12, "Jo"],
[ 67, 11, 42, "Gur"],
[ 67, 25, 31, "LP"],
[ 67, 54,  8, "LP"],
[ 68, 18, 37, "LP"],
[ 69, 40, 21, "LP"],
[ 69, 45, 17, "LP"],
[ 70,  9, 46, "Gur"],
[ 70, 42, 20, "LP"],
[ 70, 47, 16, "LP"],
[ 71, 11, 45, "LP"],
[ 71, 12, 44, "Gur"],
[ 71, 26, 33, "LP"],
[ 72, 23, 36, "LP"],
[ 72, 31, 30, "LP"],
[ 72, 35, 27, "LP"],
[ 73, 15, 43, "LP"],
[ 73, 20, 39, "LP"],
[ 74,  7, 51, "BK"],
[ 74,  9, 49, "Gur"],
[ 74, 42, 23, "LP"],
[ 74, 53, 14, "LP"],
[ 75, 12, 47, "BK"],
[ 75, 13, 46, "Gur"],
[ 75, 18, 42, "LP"],
[ 75, 48, 19, "LP"],
[ 75, 59, 10, "LP"],
[ 77,  7, 53, "Gur"],
[ 77, 16, 45, "LP"],
[ 77, 21, 41, "LP"],
[ 77, 25, 38, "LP"],
[ 77, 29, 35, "LP"],
[ 77, 37, 29, "LP"],
[ 77, 41, 26, "LP"],
[ 77, 46, 22, "LP"],
[ 78,  9, 52, "Gur"],
[ 78, 10, 51, "BK"],
[ 78, 34, 32, "LP"],
[ 79, 12, 50, "BK"],
[ 79, 13, 49, "BK"],
[ 79, 53, 18, "LP"],
[ 80, 15, 48, "LP"],
[ 80, 45, 25, "LP"],
[ 81, 21, 44, "LP"],
[ 81, 51, 21, "LP"],
[ 82,  6, 58, "LP"],
[ 82,  9, 55, "Gur"],
[ 82, 10, 54, "BK"],
[ 82, 18, 47, "LP"],
[ 82, 23, 43, "LP"],
[ 82, 27, 40, "LP"],
[ 82, 31, 37, "LP"],
[ 82, 63, 12, "LP"],
[ 83, 12, 53, "BK"],
[ 83, 13, 52, "LP"],
[ 83, 36, 34, "LP"],
[ 83, 44, 28, "LP"],
[ 83, 58, 17, "LP"],
[ 83, 59, 16, "LP"],
[ 84, 15, 51, "LP"],
[ 84, 16, 50, "LP"],
[ 84, 21, 46, "LP"],
[ 84, 41, 31, "LP"],
[ 84, 50, 24, "LP"],
[ 85,  6, 60, "Gur"],
[ 85, 10, 56, "BK"],
[ 86,  5, 62, "Gur"],
[ 86,  8, 59, "LP"],
[ 86,  9, 58, "Gur"],
[ 86, 13, 54, "LP"],
[ 86, 19, 49, "LP"],
[ 86, 57, 20, "LP"],
[ 87, 49, 27, "LP"],
[ 88, 16, 53, "LP"],
[ 88, 26, 45, "LP"],
[ 88, 30, 42, "LP"],
[ 88, 34, 39, "LP"],
[ 88, 38, 36, "LP"],
[ 88, 46, 30, "LP"],
[ 88, 55, 23, "LP"],
[ 89,  7, 62, "BK"],
[ 89, 10, 59, "BK"],
[ 89, 18, 52, "LP"],
[ 89, 43, 33, "LP"],
[ 89, 52, 26, "LP"],
[ 90,  9, 61, "Gur"],
[ 90, 13, 57, "LP"],
[ 90, 24, 48, "LP"],
[ 90, 58, 22, "LP"],
[ 90, 62, 19, "LP"],
[ 90, 68, 14, "LP"],
[ 91, 16, 55, "LP"],
[ 91, 21, 51, "LP"],
[ 91, 30, 44, "LP"],
[ 92, 35, 41, "LP"],
[ 92, 65, 18, "Jo"],
[ 93, 10, 62, "LP"],
[ 93, 19, 54, "LP"],
[ 93, 24, 50, "LP"],
[ 93, 28, 47, "LP"],
[ 93, 40, 38, "LP"],
[ 94,  6, 67, "Gur"],
[ 94, 13, 60, "LP"],
[ 95, 16, 58, "LP"],
[ 95, 22, 53, "LP"],
[ 95, 46, 35, "LP"],
[ 95, 50, 32, "LP"],
[ 96, 10, 64, "Gur"],
[ 96, 82,  8, "sp"],
[ 97,  5, 70, "War"],
[ 97, 13, 62, "LP"],
[ 97, 19, 57, "LP"],
[ 97, 33, 46, "LP"],
[ 97, 37, 43, "LP"],
[ 98,  9, 67, "Gur"],
[ 98, 21, 56, "LP"],
[ 98, 42, 40, "LP"],
[ 99, 16, 61, "LP"],
[ 99, 17, 60, "LP"],
[ 99, 27, 52, "LP"],
[ 99, 31, 49, "LP"],
[ 99, 74, 16, "sp"],
[ 99, 82, 10, "sp"],
[ 99, 88,  6, "sp"],
[100, 10, 67, "BK"],
[100, 19, 59, "LP"],
[100, 24, 55, "LP"],
[100, 48, 37, "LP"],
[100, 52, 34, "LP"],
[100, 56, 31, "LP"],
[100, 59, 29, "LP"],
[101,  7, 71, "LP"],
[101, 13, 65, "LP"],
[101, 71, 20, "sp"],
[102,  5, 74, "Gur"],
[102, 16, 63, "LP"],
[102, 22, 58, "LP"],
[102, 27, 54, "LP"],
[102, 35, 48, "LP"],
[103, 32, 51, "LP"],
[103, 40, 45, "LP"],
[104,  4, 76, "HLa"],
[104, 10, 70, "LP"],
[104, 19, 62, "LP"],
[104, 25, 57, "LP"],
[104, 84, 12, "sp"],
[105,  7, 74, "BK"],
[105, 13, 68, "LP"],
[105, 14, 67, "LP"],
[105, 22, 60, "LP"],
[105, 46, 42, "LP"],
[105, 50, 39, "LP"],
[106, 16, 66, "LP"],
[106, 17, 65, "LP"],
[106, 36, 50, "LP"],
[106, 71, 24, "sp"],
[107, 19, 64, "LP"],
[107, 79, 18, "sp"],
[108, 10, 73, "LP"],
[108, 11, 72, "LP"],
[108, 30, 56, "LP"],
[108, 34, 53, "LP"],
[109, 13, 71, "LP"],
[109, 14, 70, "LP"],
[109, 22, 63, "LP"],
[109, 27, 59, "LP"],
[109, 43, 47, "LP"],
[109, 47, 44, "LP"],
[110, 16, 69, "LP"],
[110, 17, 68, "LP"],
[110, 77, 22, "sp"],
[110, 87, 14, "sp"],
[111, 19, 67, "LP"],
[111, 20, 66, "LP"],
[111, 25, 62, "LP"],
[111, 30, 58, "LP"],
[111, 34, 55, "LP"],
[112, 10, 76, "LP"],
[112, 11, 75, "LP"],
[112, 14, 72, "LP"],
[112, 39, 52, "LP"],
[112, 43, 49, "LP"],
[112, 72, 28, "Jo"],
[113, 13, 74, "LP"],
[113, 16, 71, "LP"],
[113, 17, 70, "LP"],
[113, 23, 65, "LP"],
[114,  9, 79, "LP"],
[114, 25, 64, "LP"],
[114, 29, 61, "LP"],
[115, 20, 69, "LP"],
[115, 39, 54, "LP"],
[115, 77, 26, "sp"],
[115, 84, 20, "Jo"],
[116,  5, 84, "Ma"],
[116, 10, 79, "LP"],
[116, 11, 78, "LP"],
[116, 13, 76, "LP"],
[116, 14, 75, "LP"],
[116, 22, 68, "LP"],
[116, 28, 63, "LP"],
[116, 36, 57, "LP"],
[116, 44, 51, "LP"],
[117,  7, 83, "LP"],
[117,  8, 82, "LP"],
[117, 16, 74, "LP"],
[117, 17, 73, "LP"],
[117, 33, 60, "LP"],
[117, 91, 16, "sp"],
[118, 19, 72, "LP"],
[118, 20, 71, "LP"],
[118, 25, 67, "LP"],
[118, 82, 24, "Jo"],
[119, 11, 80, "LP"],
[119, 14, 77, "LP"],
[120,  7, 85, "BK"],
[120, 10, 82, "BK"],
[120, 13, 79, "LP"],
[120, 17, 75, "LP"],
[120, 23, 70, "LP"],
[120, 28, 66, "LP"],
[120, 33, 62, "LP"],
[120, 37, 59, "LP"],
[120, 41, 56, "LP"],
[121, 78, 30, "sp"],
[121,113,  4, "sp"],
[122, 20, 74, "LP"],
[122, 26, 69, "LP"],
[122, 31, 65, "LP"],
[123, 11, 83, "LP"],
[123, 14, 80, "LP"],
[123, 22, 73, "LP"],
[123, 23, 72, "LP"],
[123, 28, 68, "LP"],
[123, 82, 28, "Jo"],
[124,  7, 88, "LP"],
[124, 10, 85, "LP"],
[124, 13, 82, "LP"],
[124, 17, 78, "LP"],
[124, 42, 58, "LP"],
[124, 90, 22, "sp"],
[124, 95, 18, "Jo"],
[125,  9, 87, "LP"],
[125, 20, 76, "LP"],
[125, 26, 71, "LP"],
[125, 31, 67, "LP"],
[125, 35, 64, "LP"],
[125, 39, 61, "LP"],
[127, 11, 86, "LP"],
[127, 14, 83, "LP"],
[127, 17, 80, "LP"],
[127, 23, 75, "LP"],
[127, 88, 26, "sp"],
[128,  7, 91, "LP"],
[128, 10, 88, "LP"],
[128, 13, 85, "LP"],
[129,  9, 90, "LP"],
[129, 20, 79, "LP"],
[129, 26, 74, "LP"],
[129, 31, 70, "LP"],
[129, 36, 66, "LP"],
[129, 40, 63, "LP"],
[129, 44, 60, "LP"],
[130, 11, 88, "LP"],
[130, 14, 85, "LP"],
[130, 23, 77, "LP"],
[130,109, 12, "sp"],
[130,112, 10, "sp"],
[131, 17, 83, "LP"],
[131, 29, 73, "LP"],
[132,  7, 94, "LP"],
[132, 10, 91, "LP"],
[132, 20, 81, "LP"],
[132, 35, 69, "LP"],
[132, 88, 30, "sp"],
[132, 95, 24, "sp"],
[132,100, 20, "sp"],
[134, 11, 91, "Da1"],
[134, 14, 88, "Da1"],
[134, 23, 80, "Da1"],
[134,110, 14, "sp"],
[135, 17, 86, "Da1"],
[135, 18, 85, "Da1"],
[135,120,  8, "sp"],
[136,  7, 97, "DM3"],
[136, 10, 94, "Da1"],
[136, 20, 84, "Da1"],
[136, 21, 83, "Da1"],
[136, 94, 28, "sp"],
[137, 23, 82, "Da1"],
[138, 11, 94, "Da1"],
[138, 14, 91, "Da1"],
[138, 15, 90, "Da1"],
[138, 89, 34, "sp"],
[139, 17, 89, "Da1"],
[139, 18, 88, "Da1"],
[139,112, 16, "sp"],
[140,  7,100, "DM3"],
[140,  8, 99, "Da1"],
[140, 10, 97, "Da1"],
[140, 20, 87, "Da1"],
[140, 21, 86, "Da1"],
[140, 93, 32, "Jo"],
[140,105, 22, "sp"],
[141, 14, 93, "Da1"],
[141, 23, 85, "Da1"],
[141, 24, 84, "Da1"],
[141,101, 26, "sp"],
[142, 11, 97, "Da1"],
[142, 17, 91, "Da1"],
[142, 18, 90, "Da1"],
[143, 20, 89, "Da1"],
[143, 21, 88, "Da1"],
[144,  7,103, "DM3"],
[144,  8,102, "Da1"],
[144, 10,100, "Da1"],
[144, 99, 30, "sp"],
[144,114, 18, "Jo"],
[145, 11, 99, "Da1"],
[145, 14, 96, "Da1"],
[145, 24, 87, "Da1"],
[145, 91, 38, "sp"],
[146, 17, 94, "Da1"],
[146, 18, 93, "Da1"],
[147, 20, 92, "Da1"],
[147, 21, 91, "Da1"],
[147, 95, 36, "sp"],
[148,  8,105, "Da1"],
[148, 10,103, "Da1"],
[148, 23, 90, "Da1"],
[148, 24, 89, "Da1"],
[148,110, 24, "sp"],
[149,  7,107, "DM3"],
[149, 11,102, "Da1"],
[149, 14, 99, "Da1"],
[149, 15, 98, "Da1"],
[149, 99, 34, "sp"],
[149,106, 28, "sp"],
[150, 17, 97, "Da1"],
[150, 18, 96, "Da1"],
[150, 19, 95, "Da1"],
[150, 21, 93, "Da1"],
[151,118, 20, "sp"],
[152,  8,108, "Da1"],
[152, 10,106, "Da1"],
[152, 22, 93, "Da1"],
[152, 24, 92, "Da1"],
[153, 11,105, "Da1"],
[153, 14,102, "Da1"],
[153, 15,101, "Da1"],
[153, 18, 98, "Da1"],
[153,105, 32, "sp"],
[154,  7,111, "DM3"],
[154, 17,100, "Da1"],
[154, 20, 97, "Da1"],
[154, 21, 96, "Da1"],
[155,100, 38, "sp"],
[156,  7,112, "DM3"],
[156,  8,111, "Da1"],
[156, 10,109, "Da1"],
[156, 15,103, "Da1"],
[156, 18,100, "Da1"],
[156,115, 26, "sp"],
[156,144,  6, "sp"],
[157, 11,108, "Da1"],
[157, 14,105, "Da1"],
[157, 17,102, "Da1"],
[157, 21, 98, "Da1"],
[157,111, 30, "Jo"],
[158,105, 36, "sp"],
[158,122, 22, "sp"],
[159,  8,113, "Da1"],
[159, 24, 97, "Da1"],
[160,  7,115, "DM3"],
[160, 10,112, "Da1"],
[160, 15,106, "Da1"],
[160, 18,103, "Da1"],
[161, 11,111, "Da1"],
[161, 12,110, "Da1"],
[161, 14,108, "Da1"],
[161, 21,101, "Da1"],
[161,110, 34, "sp"],
[162, 24, 99, "Da1"],
[162,102, 42, "sp"],
[162,137, 14, "sp"],
[163,  8,116, "Da1"],
[163,141, 12, "Jo"],
[164,  7,118, "DM3"],
[164, 11,113, "Da1"],
[164, 14,110, "Da1"],
[164, 15,109, "Da1"],
[164, 16,108, "Da1"],
[164, 18,106, "Da1"],
[164, 21,103, "Da1"],
[164,106, 40, "sp"],
[164,120, 28, "sp"],
[164,136, 16, "sp"],
[165,126, 24, "sp"],
[166, 24,102, "Da1"],
[166, 25,101, "Da1"],
[166,110, 38, "sp"],
[166,117, 32, "sp"],
[167,  8,119, "Da1"],
[167, 15,111, "Da1"],
[167, 18,108, "Da1"],
[168,  7,121, "DM3"],
[168, 10,118, "Da1"],
[168, 11,116, "Da1"],
[168, 14,113, "Da1"],
[168, 21,106, "Da1"],
[168,137, 18, "sp"],
[169, 24,104, "Da1"],
[169,104, 46, "sp"],
[170,116, 36, "sp"],
[170,151, 10, "Jo"],
[171,  8,122, "Da1"],
[171, 15,114, "Da1"],
[171, 18,111, "Da1"],
[171,108, 44, "sp"],
[172,  7,124, "DM3"],
[172, 11,119, "Da1"],
[172, 12,118, "Da1"],
[172, 14,116, "Da1"],
[172, 17,113, "Da1"],
[172, 21,109, "Da1"],
[172, 22,108, "Da1"],
[172,111, 42, "Jo"],
[172,125, 30, "sp"],
[173, 25,106, "Da1"],
[173,131, 26, "sp"],
[173,139, 20, "sp"],
[174, 15,116, "Da1"],
[174,122, 34, "sp"],
[175,  8,125, "Da1"],
[175, 18,114, "Da1"],
[175, 19,113, "Da1"],
[175, 21,111, "Da1"],
[175, 22,110, "Da1"],
[175,116, 40, "sp"],
[176,  7,127, "DM3"],
[176, 10,124, "Da1"],
[176, 11,122, "Da1"],
[176, 12,121, "Da1"],
[176, 14,119, "Da1"],
[176, 25,108, "Da1"],
[178, 15,119, "Da1"],
[178, 18,116, "Da1"],
[178,121, 38, "sp"],
[178,141, 22, "Jo"],
[179,  8,128, "Da1"],
[179, 21,114, "Da1"],
[179, 22,113, "Da1"],
[179,113, 46, "sp"],
[180,  7,130, "DM3"],
[180, 10,127, "Da1"],
[180, 11,125, "Da1"],
[180, 12,124, "Da1"],
[180, 14,122, "Da1"],
[180, 24,112, "Da1"],
[180, 25,111, "Da1"],
[180,130, 32, "sp"],
[180,135, 28, "sp"],
[181,117, 44, "sp"],
[182,  8,130, "Da1"],
[182, 15,122, "Da1"],
[182, 18,119, "Da1"],
[182, 19,118, "Da1"],
[182, 22,115, "Da1"],
[182,127, 36, "Jo"],
[183, 12,126, "Da1"],
[183, 21,117, "Da1"],
[183, 25,113, "Da1"],
[184,  7,133, "DM3"],
[184, 11,128, "Da1"],
[184, 14,125, "Da1"],
[184,122, 42, "sp"],
[185, 15,124, "Da1"],
[185,145, 24, "sp"],
[186,  8,133, "Da1"],
[186, 18,122, "Da1"],
[186, 19,121, "Da1"],
[186, 22,118, "Da1"],
[187,  5,138, "Ma"],
[187, 12,129, "Da1"],
[187, 21,120, "Da1"],
[187, 25,116, "Da1"],
[187,127, 40, "sp"],
[188,  7,136, "DM3"],
[188, 11,131, "Da1"],
[188, 14,128, "Da1"],
[188,135, 34, "sp"],
[188,140, 30, "sp"],
[189, 15,127, "Da1"],
[189, 18,124, "Da1"],
[189, 19,123, "Da1"],
[189,122, 46, "Jo"],
[190,  5,140, "LaM"],
[190,  8,136, "Da1"],
[190, 21,122, "Da1"],
[190, 22,121, "Da1"],
[190, 25,118, "Da1"],
[190,174,  8, "Jo"],
[191, 12,132, "Da1"],
[191, 14,130, "Da1"],
[191, 24,120, "Da1"],
[191,133, 38, "sp"],
[191,148, 26, "sp"],
[192, 11,134, "Da1"],
[192,127, 44, "sp"],
[193, 15,130, "Da1"],
[193, 18,127, "Da1"],
[193, 22,123, "Da1"],
[194,  8,139, "Da1"],
[194, 12,134, "Da1"],
[194, 20,126, "Da1"],
[194, 21,125, "Da1"],
[194, 25,121, "Da1"],
[195, 11,136, "Da1"],
[195, 14,133, "Da1"],
[195,132, 42, "sp"],
[195,163, 18, "sp"],
[195,166, 16, "sp"],
[196, 19,128, "Da1"],
[196,124, 50, "sp"],
[196,145, 32, "sp"],
[197,  7,143, "DM3"],
[197, 15,133, "Da1"],
[197, 16,132, "Da1"],
[197, 18,130, "Da1"],
[197, 22,126, "Da1"],
[197, 25,123, "Da1"],
[197,141, 36, "sp"],
[197,171, 14, "sp"],
[198,  8,142, "Da1"],
[198, 12,137, "Da1"],
[198,128, 48, "sp"],
[198,152, 28, "sp"],
[198,163, 20, "sp"],
[199, 11,139, "Da1"],
[199, 14,136, "Da1"],
[199,138, 40, "Jo"],
[200, 15,135, "Da1"],
[200, 19,131, "Da1"],
[200, 22,128, "Da1"],
[201, 18,133, "DM4"],
[201, 21,130, "DM4"],
[201,133, 46, "sp"],
[202,  8,145, "DM4"],
[202, 12,140, "DM4"],
[202,164, 22, "sp"],
[203, 10,144, "DM4"],
[203, 14,139, "DM4"],
[203, 19,133, "DM4"],
[203,126, 54, "sp"],
[204, 15,138, "DM4"],
[204, 16,137, "DM4"],
[204, 22,131, "DM4"],
[204,129, 52, "Jo"],
[204,138, 44, "sp"],
[204,150, 34, "sp"],
[205, 11,144, "DM4"],
[205, 18,136, "DM4"],
[205,146, 38, "sp"],
[205,156, 30, "Jo"],
[205,182, 12, "sp"],
[206,  8,148, "DM4"],
[206, 12,143, "DM4"],
[206,133, 50, "Jo"],
[206,165, 24, "Jo"],
[207, 10,147, "DM4"],
[207, 14,142, "DM4"],
[207, 19,136, "DM4"],
[207, 22,133, "DM4"],
[208, 11,146, "DM4"],
[208, 15,141, "DM4"],
[208, 16,140, "DM4"],
[208, 18,138, "DM4"],
[208,144, 42, "sp"],
[209,  8,150, "DM4"],
[209, 12,145, "DM4"],
[209,138, 48, "sp"],
[211, 11,148, "DM4"],
[211, 19,139, "DM4"],
[211, 22,136, "DM4"],
[212, 15,144, "DM4"],
[212, 16,143, "DM4"],
[212, 18,141, "DM4"],
[212,143, 46, "sp"],
[212,155, 36, "sp"],
[212,168, 26, "sp"],
[213,  8,153, "DM4"],
[213, 12,148, "DM4"],
[213,135, 54, "sp"],
[213,151, 40, "sp"],
[213,161, 32, "sp"],
[214, 19,141, "DM4"],
[215, 11,151, "DM4"],
[215, 16,145, "DM4"],
[215, 22,139, "DM4"],
[215, 23,138, "DM4"],
[215,139, 52, "sp"],
[216, 15,147, "DM4"],
[216, 18,144, "DM4"],
[216,149, 44, "sp"],
[217,  8,156, "DM4"],
[217, 12,151, "DM4"],
[218, 19,144, "DM4"],
[218, 22,141, "DM4"],
[218,144, 50, "sp"],
[218,171, 28, "sp"],
[219, 11,154, "DM4"],
[219, 15,149, "DM4"],
[219, 16,148, "DM4"],
[220, 18,147, "DM4"],
[220,137, 58, "sp"],
[220,160, 38, "sp"],
[220,165, 34, "sp"],
[221,  8,159, "DM4"],
[221, 12,154, "DM4"],
[221,149, 48, "sp"],
[221,156, 42, "Jo"],
[222, 14,153, "DM4"],
[222, 19,147, "DM4"],
[222, 22,144, "DM4"],
[222, 23,143, "DM4"],
[223, 11,157, "DM4"],
[223, 15,152, "DM4"],
[223, 16,151, "DM4"],
[223, 18,149, "DM4"],
[224, 12,156, "DM4"],
[224,145, 54, "sp"],
[224,204, 10, "sp"],
[225,  8,162, "DM4"],
[225, 19,149, "DM4"],
[225,155, 46, "sp"],
[225,175, 30, "sp"],
[226, 16,153, "DM4"],
[226, 22,147, "DM4"],
[226, 23,146, "DM4"],
[226,149, 52, "sp"],
[226,190, 20, "Jo"],
[227, 11,160, "DM4"],
[227, 15,155, "DM4"],
[227, 18,152, "DM4"],
[227,194, 18, "sp"],
[228, 12,159, "DM4"],
[228,165, 40, "sp"],
[228,170, 36, "sp"],
[228,189, 22, "sp"],
[229,  8,165, "DM4"],
[229, 19,152, "DM4"],
[229, 22,149, "DM4"],
[229, 23,148, "DM4"],
[229,154, 50, "sp"],
[230, 16,156, "DM4"],
[230,146, 58, "sp"],
[230,162, 44, "sp"],
[231, 11,163, "DM4"],
[231, 15,158, "DM4"],
[231, 18,155, "DM4"],
[231,178, 32, "sp"],
[231,189, 24, "sp"],
[231,201, 16, "sp"],
[232, 12,162, "DM4"],
[232,150, 56, "sp"],
[233,  8,168, "DM4"],
[233, 16,158, "DM4"],
[233, 19,155, "DM4"],
[233, 20,154, "DM4"],
[233, 22,152, "DM4"],
[233, 23,151, "DM4"],
[233,160, 48, "sp"],
[235, 11,166, "DM4"],
[235, 15,161, "DM4"],
[235,155, 54, "sp"],
[235,190, 26, "sp"],
[236, 12,165, "DM4"],
[236, 19,157, "DM4"],
[236, 23,153, "DM4"],
[236,170, 42, "sp"],
[236,175, 38, "sp"],
[237,  8,171, "DM4"],
[237, 16,161, "DM4"],
[237, 22,155, "DM4"],
[237,148, 62, "sp"],
[238,151, 60, "sp"],
[238,160, 52, "sp"],
[238,167, 46, "sp"],
[238,182, 34, "sp"],
[239,  5,177, "LaM"],
[239, 11,169, "DM4"],
[239, 12,167, "DM4"],
[239, 15,164, "DM4"],
[240, 19,160, "DM4"],
[240, 20,159, "DM4"],
[240, 23,156, "DM4"],
[240,192, 28, "sp"],
[240,213, 14, "sp"],
[241,  8,174, "DM4"],
[241, 16,164, "DM4"],
[241, 22,158, "DM4"],
[241,156, 58, "sp"],
[241,165, 50, "Jo"],
[242, 15,166, "DM4"],
[242, 18,163, "DM4"],
[242,233,  4, "sp"],
[243,  5,180, "Ha"],
[243, 11,172, "DM4"],
[243, 12,170, "DM4"],
[243, 23,158, "DM4"],
[243,160, 56, "sp"],
[243,179, 40, "sp"],
[244, 16,166, "DM4"],
[244, 19,163, "DM4"],
[244, 20,162, "DM4"],
[244, 22,160, "DM4"],
[244,175, 44, "sp"],
[245,  8,177, "DM4"],
[245,  9,176, "DM4"],
[245,186, 36, "Jo"],
[246, 15,169, "DM4"],
[246,165, 54, "sp"],
[246,172, 48, "sp"],
[246,195, 30, "sp"],
[247, 11,175, "DM4"],
[247, 12,173, "DM4"],
[247, 23,161, "DM4"],
[247,157, 62, "sp"],
[247,234,  6, "sp"],
[248,  5,184, "Ha"],
[248, 16,169, "DM4"],
[248, 19,166, "DM4"],
[248, 20,165, "DM4"],
[248, 21,164, "DM4"],
[248, 22,163, "DM4"],
[249,  8,180, "DM4"],
[249,161, 60, "sp"],
[250, 15,172, "DM4"],
[250, 23,163, "DM4"],
[250,171, 52, "sp"],
[251,184, 42, "sp"],
[252,166, 58, "sp"],
[252,180, 46, "sp"],
[252,198, 32, "sp"],
[253,191, 38, "sp"],
[254,159, 66, "sp"],
[255,162, 64, "sp"],
[255,171, 56, "sp"],
[255,178, 50, "sp"]];