max v2;#N vpatcher 280 494 881 874;#P origin -1 0;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P hidden message 56 145 125 196617 /documentation/generate;#P hidden newex 312 295 64 196617 jcom.out~ 2;#P objectname jmod.parameter.mxb[3];#P hidden newex 353 244 58 196617 jcom.in~ 1;#P objectname jmod.parameter.mxb[1];#P hidden newex 329 80 104 196617 jcom.message buffer;#P objectname jmod.parameter.mxb[6];#P hidden message 20 145 31 196617 /init;#P flonum 197 21 57 9 1. 0 8225 3 198 198 198 221 221 221 222 222 222 0 0 0;#P hidden newex 280 41 242 196617 jcom.parameter pan @type msg_float @ramp linear;#P objectname pan;#P flonum 211 40 40 9 0 0 8224 3 198 198 198 221 221 221 222 222 222 0 0 0;#P noclick;#P user multiSlider 121 41 91 14 0. 1. 1 2936 47 0 0 2 0 0 0;#M frgb 254 210 10;#M brgb 107 107 107;#M rgb2 127 127 127;#M rgb3 0 0 0;#M rgb4 37 52 91;#M rgb5 74 105 182;#M rgb6 112 158 18;#M rgb7 149 211 110;#M rgb8 187 9 201;#M rgb9 224 62 37;#M rgb10 7 114 128;#P comment 97 43 25 196617 pan:;#B frgb 172 172 172;#P hidden outlet 312 321 15 0;#P hidden newex 279 13 191 196617 jcom.parameter length @type msg_float;#P objectname length;#P hidden newex 21 92 198 196617 jcom.message normalize @type msg_none;#P objectname jmod.parameter.mxb[2];#P hidden newex 70 69 204 196617 jcom.parameter capture @type msg_toggle;#P objectname capture;#P hidden newex 272 272 91 196617 tap.jalg.grabloop~;#P message 21 42 52 196617 normalize;#P hidden message 272 296 14 196617 0;#P comment 111 22 128 196617 length (to capture);#B frgb 172 172 172;#P user led 6 24 17 17 0 150;#P comment 24 25 54 196617 capture;#B frgb 172 172 172;#P hidden comment 294 337 101 196617 ---signal outputs---;#P hidden comment 19 117 79 196617 command input;#P window linecount 3;#P hidden newex 5 167 295 196617 jcom.hub tap.jmod.grabloop~ @size 1U-half @module_type audio @description "sample for the duration specified by 'length' and then loop through overlapped copies of the sample.";#P hidden outlet 339 321 15 0;#P hidden inlet 353 222 15 0;#P window linecount 1;#P hidden comment 374 222 105 196617 ----signal input----;#P hidden outlet 5 216 15 0;#P hidden inlet 5 117 13 0;#P hidden newex 21 71 22 196617 b 1;#P bpatcher 1 0 256 60 0 0 jcom.gui.mxt 0;#P objectname jmod.gui.1Uh.a.stereo.mxb;#P hidden connect 29 0 7 0;#P hidden connect 25 0 7 0;#P hidden connect 2 0 7 0;#P hidden connect 7 0 3 0;#P hidden connect 16 0 11 0;#P hidden fasten 13 0 11 0 277 351 537 351 537 6 11 6;#P lcolor 1;#P hidden connect 14 0 1 0;#P hidden connect 1 0 17 0;#P hidden connect 11 0 16 0;#P hidden connect 23 0 21 0;#P hidden connect 18 0 24 0;#P hidden connect 21 0 22 0;#P lcolor 6;#P hidden fasten 27 1 15 0 382 265 277 265;#P hidden connect 15 0 13 0;#P hidden connect 24 0 18 0;#P hidden connect 21 0 23 0;#P hidden connect 15 1 28 0;#P hidden connect 28 0 19 0;#P hidden connect 28 1 6 0;#P hidden connect 5 0 27 0;#P hidden connect 27 0 15 1;#P hidden connect 15 2 28 1;#P pop;