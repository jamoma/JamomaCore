max v2;
#N vpatcher 18 49 790 309;
#P window setfont "Sans Serif" 9.;
#P hidden message 226 129 72 196617 \; jmod.init bang;
#P hidden newex 81 128 81 196617 pattrstorage @autorestore 0 @savemode 0;
#X client_rect 0 0 640 240;
#X storage_rect 0 0 640 240;
#P objectname filter;
#P hidden message 276 0 38 196617 set \$1;
#P hidden message 276 44 38 196617 set \$1;
#P hidden message 276 22 38 196617 set \$1;
#P hidden newex 352 10 145 196617 jmod.message $0_ filtergraph;
#P flonum 113 32 40 9 0. 100. 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P hidden newex 352 34 205 196617 jmod.parameter $0_ filtertype @type menu;
#P objectname jmod.parameter.mxb;
#P hidden newex 352 94 300 196617 jmod.parameter $0_ filtergain @ramp_enable 1 @filter_dupes 1;
#P objectname jmod.parameter.mxb[3];
#P hidden newex 352 74 263 196617 jmod.parameter $0_ q @ramp_enable 1 @filter_dupes 1;
#P objectname jmod.parameter.mxb[2];
#P hidden newex 352 54 265 196617 jmod.parameter $0_ cf @ramp_enable 1 @filter_dupes 1;
#P objectname jmod.parameter.mxb[1];
#P user ubumenu 5 22 62 196617 0 1 1 0;
#X add lowpass;
#X add highpass;
#X add bandpass;
#X add bandstop;
#X add peaknotch;
#X add lowshelf;
#X add highshelf;
#X prefix_set 0 0 0 0;
#P comment 90 34 27 196617 Q/S;
#B frgb 172 172 172;
#P flonum 113 45 40 9 0. 0 8225 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P flonum 113 19 40 9 0. 0 8225 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P comment 98 21 18 196617 cf;
#B frgb 172 172 172;
#P comment 90 47 25 196617 gain;
#B frgb 172 172 172;
#P hidden newex 211 178 108 196617 poly~ jmod.filter~.alg;
#P window setfont Helvetica 9.;
#P user filtergraph~ 166 20 88 39 21 9 20. 22050. 0.0625 16. 0 1 1 0 0 1 1;
#X frgb 99 99 99;
#X brgb 173 173 173;
#X rgb2 0 0 0;
#X rgb3 84 84 84;
#X rgb4 0 0 0;
#X rgb5 118 121 166;
#X rgb6 122 74 74;
#X rgb7 255 22 22;
#X linmarkers 5512.5 11025. 16537.5;
#X logmarkers 50. 500. 5000.;
#X nfilters 1;
#X setfilter 0 1 0 0 0 30. 1. 0.5 30. 11025. 0.0625 16. 0.5 25.;
#X done;
#P window setfont "Sans Serif" 9.;
#P hidden comment 175 81 101 196617 ---signal outputs---;
#P hidden comment 14 109 79 196617 command input;
#P hidden newex 0 128 77 196617 jmod.hub $0_ jmod.filter~ @size 1U-half;
#P hidden outlet 244 67 13 0;
#P hidden inlet 59 -21 13 0;
#P hidden comment 58 -35 105 196617 ----signal inputs----;
#P hidden outlet 0 177 13 0;
#P hidden inlet 82 -21 13 0;
#P hidden outlet 183 67 13 0;
#P hidden inlet 0 109 13 0;
#P bpatcher 0 0 256 60 0 0 jmod.gui.1U.a.stereo.mxt 0 $0_;
#P objectname jmod.gui.1Uh.a.stereo.mxb;
#P hidden connect 6 0 0 0;
#P hidden connect 1 0 8 0;
#P hidden connect 8 0 4 0;
#P hidden connect 22 0 18 0;
#P hidden connect 28 0 8 1;
#P hidden connect 8 2 28 0;
#P hidden connect 3 0 0 1;
#P hidden connect 19 0 15 0;
#P hidden connect 27 0 15 0;
#P hidden connect 25 0 23 0;
#P hidden connect 20 0 23 0;
#P hidden connect 26 0 16 0;
#P hidden connect 21 0 16 0;
#P hidden fasten 12 0 0 2 216 205 665 205 665 -12 169 -12;
#P hidden connect 18 1 11 0;
#P hidden connect 24 0 11 0;
#P lcolor 6;
#P hidden connect 0 2 2 0;
#P hidden fasten 8 1 12 0 38 173 216 173;
#P hidden fasten 0 0 12 0 5 105 216 105;
#P lcolor 6;
#P hidden connect 11 0 12 0;
#P hidden connect 15 0 11 5;
#P hidden connect 16 0 11 6;
#P hidden connect 23 0 11 7;
#P hidden connect 0 3 7 0;
#P hidden fasten 12 1 0 3 314 200 659 200 659 -6 251 -6;
#P hidden connect 11 1 27 0;
#P hidden connect 11 3 25 0;
#P hidden connect 11 2 26 0;
#P lcolor 6;
#P hidden fasten 0 1 12 1 87 102 314 102;
#P lcolor 6;
#P hidden connect 18 1 22 0;
#P hidden connect 15 0 19 0;
#P hidden connect 11 1 19 0;
#P hidden connect 11 3 20 0;
#P hidden connect 23 0 20 0;
#P hidden connect 11 2 21 0;
#P hidden connect 16 0 21 0;
#P pop;
