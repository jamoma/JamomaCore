max v2;
#N vpatcher 10 44 1024 740;
#P origin 204 0;
#P window setfont "Sans Serif" 9.;
#P newex 775 116 50 196617 tosymbol;
#P newex 102 452 51 196617 route list;
#P newex 774 380 100 196617 sprintf read %s.xml;
#P message 878 599 92 196617 MODULE_TITLE $2;
#P newex 734 657 114 196617 prepend MODULE_TITLE;
#P newex 878 626 93 196617 s $1_FROM_MHUB;
#P newex 767 508 45 196617 sel bang;
#P newex 750 441 45 196617 sel bang;
#N vpatcher 484 194 890 610;
#P origin 0 -110;
#P window setfont "Sans Serif" 9.;
#P newex 107 229 50 196617 tosymbol;
#P newex 232 230 50 196617 tosymbol;
#P inlet 147 34 15 0;
#P inlet 130 34 15 0;
#P outlet 264 139 15 0;
#P newex 177 95 192 196617 jmod.route @searchstring save_settings;
#P newex 232 273 27 196617 t l b;
#P message 249 308 42 196617 store 1;
#P newex 177 225 49 196617 t write b;
#P newex 192 205 50 196617 zl slice 1;
#P newex 232 253 72 196617 prepend write;
#P newex 177 125 50 196617 t l l;
#P newex 192 185 35 196617 zl reg;
#P newex 177 165 40 196617 sel 1 2;
#P newex 177 145 33 196617 zl len;
#P outlet 211 349 15 0;
#P newex 107 273 27 196617 t b l;
#P message 52 307 35 196617 recall 1;
#P newex 52 225 44 196617 t b read;
#P newex 67 205 50 196617 zl slice 1;
#P newex 107 253 65 196617 prepend read;
#P newex 52 125 50 196617 t l l;
#P newex 67 185 35 196617 zl reg;
#P newex 52 165 40 196617 sel 1 2;
#P newex 52 145 33 196617 zl len;
#P newex 52 72 189 196617 jmod.route @searchstring load_settings;
#P outlet 86 349 15 0;
#P inlet 52 45 15 0;
#P connect 0 0 2 0;
#P connect 2 0 6 0;
#P connect 6 0 3 0;
#P connect 3 0 4 0;
#P connect 4 0 9 0;
#P connect 24 0 9 0;
#P connect 11 0 10 0;
#P connect 9 0 10 0;
#P connect 4 1 5 0;
#P connect 5 0 8 0;
#P connect 11 1 1 0;
#P connect 10 0 1 0;
#P connect 9 1 1 0;
#P connect 6 1 5 1;
#P connect 8 1 27 0;
#P connect 27 0 7 0;
#P connect 7 0 11 0;
#P connect 2 1 22 0;
#P connect 22 0 16 0;
#P connect 16 0 13 0;
#P connect 13 0 14 0;
#P connect 14 0 19 0;
#P connect 25 0 19 0;
#P connect 14 1 15 0;
#P connect 15 0 18 0;
#P connect 19 0 12 0;
#P connect 21 0 12 0;
#P connect 20 0 12 0;
#P connect 16 1 15 1;
#P connect 18 1 26 0;
#P connect 26 0 17 0;
#P connect 17 0 21 0;
#P connect 19 1 20 0;
#P connect 21 1 20 0;
#P connect 22 1 23 0;
#P pop;
#P newobj 750 563 53 196617 p settings;
#N vpatcher 227 303 740 708;
#P outlet 326 354 15 0;
#P window setfont "Sans Serif" 9.;
#P newex 299 84 135 196617 jmod.message.mxt $1 force;
#P objectname jmod.parameter.mxb[4];
#P newex 43 257 49 196617 deferlow;
#P newex 93 107 35 196617 t open;
#P button 210 123 15 0;
#P message 107 257 14 196617 1;
#B color 4;
#P message 92 224 14 196617 2;
#B color 4;
#P message 149 257 14 196617 1;
#B color 4;
#P message 134 224 14 196617 3;
#B color 4;
#P message 191 257 14 196617 1;
#B color 4;
#P message 176 224 14 196617 0;
#B color 4;
#P number 92 295 35 9 0 0 0 3 0 0 0 59 62 255 222 222 222 0 0 0;
#P newex 176 202 40 196617 sel 1 0;
#B color 4;
#P newex 134 202 40 196617 sel 1 0;
#B color 4;
#P newex 92 202 40 196617 sel 1 0;
#B color 4;
#P message 92 313 74 196617 outputmode \$1;
#B color 4;
#P comment 69 34 100 196617 'mute' just passes through;
#P newex 18 71 255 196617 route load_setting save_settings restore_defaults view_internals preview bypass freeze mute force help;
#P outlet 304 353 15 0;
#P inlet 20 46 15 0;
#P connect 0 0 2 0;
#P connect 13 0 17 0;
#P connect 11 0 17 0;
#P connect 9 0 17 0;
#P connect 2 5 5 0;
#P connect 5 0 13 0;
#P lcolor 5;
#P connect 10 0 8 0;
#P lcolor 5;
#P connect 12 0 8 0;
#P lcolor 5;
#P connect 14 0 8 0;
#P lcolor 5;
#P connect 17 0 8 0;
#P connect 8 0 4 0;
#P lcolor 5;
#P connect 2 3 16 0;
#P connect 5 1 14 0;
#P lcolor 5;
#P connect 2 6 6 0;
#P connect 6 0 11 0;
#P lcolor 5;
#P connect 6 1 12 0;
#P lcolor 5;
#P connect 2 7 7 0;
#P connect 7 0 9 0;
#P lcolor 5;
#P connect 7 1 10 0;
#P lcolor 5;
#P connect 2 8 15 0;
#P connect 18 0 15 0;
#P connect 2 10 1 0;
#P connect 4 0 1 0;
#P connect 16 0 1 0;
#P connect 15 0 19 0;
#P pop;
#P newobj 331 311 73 196617 p parse_jitter;
#N vpatcher 237 245 753 645;
#P window setfont "Sans Serif" 9.;
#P comment 192 30 100 196617 'mute' just passes through;
#P newex 141 67 328 196617 route load_setting save_settings restore_defaults view_internals help;
#P outlet 269 138 15 0;
#P inlet 143 42 15 0;
#P connect 0 0 2 0;
#P fasten 2 5 1 0 284 142;
#P pop;
#P newobj 306 331 80 196617 p parse_control;
#P message 364 253 14 196617 5;
#P message 342 252 14 196617 4;
#P newex 255 92 49 196617 deferlow;
#P newex 359 582 86 196617 pack 1 half;
#P message 435 561 23 196617 full;
#P newex 435 541 31 196617 sel 0;
#P newex 413 521 50 196617 zl slice 1;
#P newex 359 501 118 196617 regexp (\\\\d)U-?(\\\\S*);
#P newex 359 602 185 196617 prepend set \\\; _MODULE_INSTALL_SIZE;
#P newex 775 137 63 196617 fromsymbol;
#P newex 735 158 50 196617 zl join;
#P newex 736 96 50 196617 zl slice 1;
#P newex 735 182 35 196617 zl reg;
#P newex 258 485 35 196617 t open;
#N vpatcher 231 194 836 674;
#P window setfont "Sans Serif" 9.;
#P newex 171 107 59 196617 jmod.round;
#P newex 307 105 78 196617 prepend mute 0;
#P window setfont "Lucida Grande" 12.;
#P newex 189 193 27 67108876 - 2;
#P window setfont "Sans Serif" 9.;
#P newex 140 167 59 196617 sel setitem;
#P newex 140 136 88 196617 jmod.core.sr.mxt;
#P newex 140 87 72 196617 route int float;
#P newex 326 259 215 196617 jmod.post.mxt "parse_poly: bad sample rate";
#P message 324 280 27 196617 up 4;
#P message 284 281 27 196617 up 2;
#P message 194 323 41 196617 down 4;
#P message 213 305 41 196617 down 2;
#P message 232 281 41 196617 down 1;
#P newex 194 229 119 196617 sel -2 -1 0 1 2;
#P newex 140 45 371 196617 route sr enable bypass gain midigain defeat_meters mute load_setting save_settings restore_defaults view_internals help gain_midi gain_inc gain_dec;
#P outlet 353 368 15 0;
#P inlet 140 25 15 0;
#P connect 0 0 2 0;
#P connect 2 0 10 0;
#P connect 10 0 11 0;
#P connect 15 0 11 0;
#P connect 11 0 12 0;
#P connect 10 1 15 0;
#P connect 12 1 13 0;
#P connect 13 0 3 0;
#P connect 3 0 6 0;
#P connect 3 1 5 0;
#P connect 3 2 4 0;
#P connect 3 3 7 0;
#P connect 2 6 14 0;
#P connect 3 4 8 0;
#P connect 3 5 9 0;
#P connect 4 0 1 0;
#P connect 5 0 1 0;
#P connect 6 0 1 0;
#P connect 8 0 1 0;
#P connect 7 0 1 0;
#P connect 14 0 1 0;
#P connect 2 15 1 0;
#P pop;
#P newobj 222 373 65 196617 p parse_poly;
#N vpatcher 237 245 753 645;
#P window setfont "Sans Serif" 9.;
#P newex 174 124 59 196617 jmod.round;
#P window setfont "Lucida Grande" 12.;
#P newex 143 200 27 67108876 - 2;
#P window setfont "Sans Serif" 9.;
#P newex 143 173 59 196617 sel setitem;
#P newex 143 103 72 196617 route int float;
#P newex 143 152 88 196617 jmod.core.sr.mxt;
#P newex 189 269 214 196617 jmod.post.mxt "parse_blue: bad sample rate";
#P comment 192 30 100 196617 'mute' just passes through;
#P message 143 325 72 196617 downsample 2;
#P message 157 307 72 196617 downsample 1;
#P message 173 289 72 196617 downsample 0;
#P newex 143 230 59 196617 sel -2 -1 0;
#P newex 143 67 331 196617 route sr enable gain midigain defeat_meters load_setting save_settings restore_defaults view_internals help gain_midi gain_inc gain_dec;
#P outlet 338 361 15 0;
#P inlet 143 42 15 0;
#P connect 0 0 2 0;
#P connect 2 0 10 0;
#P connect 10 0 9 0;
#P connect 13 0 9 0;
#P connect 9 0 11 0;
#P connect 11 1 12 0;
#P connect 12 0 3 0;
#P connect 3 0 6 0;
#P connect 3 1 5 0;
#P connect 3 2 4 0;
#P connect 10 1 13 0;
#P connect 3 3 8 0;
#P connect 6 0 1 0;
#P connect 5 0 1 0;
#P connect 4 0 1 0;
#P connect 2 13 1 0;
#P pop;
#P newobj 260 352 65 196617 p parse_blue;
#P message 324 254 14 196617 3;
#P newex 223 277 160 196617 gate 5 1;
#P newex 750 465 105 196617 prepend load_settings;
#P newex 750 419 172 196617 jmod.message.mxt $1 load_settings;
#P newex 766 528 110 196617 prepend save_settings;
#P message 881 320 87 196617 name $2;
#P newex 50 28 90 196617 r $1_FROM_MGUI;
#P message 255 136 149 196617 \; _MODULE_INSTALL_SIZE 1 full;
#P newex 255 113 22 196617 b 1;
#P newex 140 609 22 196617 b 1;
#P newex 140 629 119 196617 jit.obref $2;
#P newex 140 589 130 196617 jmod.message.mxt $1 help;
#P newex 220 438 112 196617 jmod.message.mxt $1 view_internals;
#P newex 766 488 175 196617 jmod.message.mxt $1 save_settings;
#P newex 762 235 188 196617 jmod.message.mxt $1 restore_defaults;
#P comment 874 349 100 196617 load the first preset;
#P message 729 363 44 196617 recall 1;
#P message 774 363 77 196617 $2;
#P comment 787 337 100 196617 read the default preset(s);
#P newex 729 295 29 196617 t b b;
#P message 873 61 72 196617 substitute %0;
#P newex 882 33 45 196617 loadbang;
#P newex 735 59 83 196617 regexp (\\\\S+::);
#P message 811 320 69 196617 outputmode 1;
#P newex 729 216 55 196617 r jmod.init;
#P comment 745 599 100 196617 pattrstorage;
#N comlet connect to pattrstorage;
#P outlet 729 599 15 0;
#N comlet connect to pattrstorage;
#P inlet 735 31 15 0;
#P newex 418 164 44 196617 jit.qball;
#P newex 418 141 35 196617 pipe 5;
#N vpatcher 10 59 610 459;
#P outlet 166 72 15 0;
#P inlet 161 40 15 0;
#P connect 0 0 1 0;
#P pop;
#P newobj 515 52 35 196617 p thru;
#P newex 580 368 101 196617 prepend _FROM_MODULEHUB;
#P newex 318 399 35 196617 zl reg;
#P message 299 252 14 196617 2;
#P newex 223 226 151 196617 sel poly blue none control jitter;
#P message 223 252 14 196617 1;
#P message 192 521 52 196617 target \$1;
#P newex 175 500 27 196617 t b i;
#P newex 175 544 50 196617 zl reg;
#P newex 175 480 50 196617 zl slice 1;
#N vpatcher 10 59 610 459;
#P outlet 166 72 15 0;
#P inlet 161 40 15 0;
#P connect 0 0 1 0;
#P pop;
#P newobj 60 523 35 196617 p thru;
#P window setfont "Sans Serif" 12.;
#P comment 48 427 131 196620 Poly Handling;
#P window setfont "Sans Serif" 9.;
#P newex 454 380 50 196617 pack;
#P newex 454 361 27 196617 i;
#P newex 454 280 27 196617 - 1;
#P newex 454 399 75 196617 sprintf p%i.%i;
#P newex 454 323 27 196617 t b i;
#P newex 454 342 50 196617 uzi;
#P number 454 301 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P message 593 249 81 196617 enableitem 10 0;
#P newex 580 321 72 196617 prepend MENU;
#P message 609 269 82 196617 append PRESETS;
#P message 612 297 95 196617 append <separator>;
#P newex 580 229 75 196617 prepend append;
#N vpatcher 53 203 352 731;
#P window setfont "Sans Serif" 9.;
#P newex 182 203 50 196617 zl slice 1;
#P newex 142 183 50 196617 zl slice 1;
#P newex 102 163 50 196617 zl slice 1;
#P newex 102 384 35 196617 zl join;
#P newex 127 362 35 196617 zl rev;
#P newex 102 336 50 196617 zl slice 1;
#P outlet 176 379 15 0;
#P newex 154 328 50 196617 zl slice 2;
#P newex 176 352 35 196617 zl rev;
#P newex 102 306 59 196617 route name;
#P newex 102 140 35 196617 zl rev;
#P newex 102 262 138 196617 zl join;
#P newex 102 240 35 196617 zl join;
#P newex 25 78 215 196617 zl slice 1;
#P newex 25 110 165 196617 regexp ([p])([\\\\d]*)([.])([\\\\w]*);
#P outlet 102 486 15 0;
#P inlet 25 47 15 0;
#P connect 0 0 3 0;
#P connect 3 0 2 0;
#P connect 2 1 6 0;
#P connect 6 0 14 0;
#P connect 14 0 4 0;
#P connect 4 0 5 0;
#P connect 5 0 7 0;
#P connect 7 0 11 0;
#P connect 11 0 13 0;
#P connect 13 0 1 0;
#P connect 16 0 4 1;
#P connect 11 1 12 0;
#P connect 12 0 13 1;
#P connect 14 1 15 0;
#P connect 7 1 9 0;
#P connect 9 1 8 0;
#P connect 8 0 10 0;
#P connect 15 1 16 0;
#P connect 3 1 5 1;
#P pop;
#P newobj 580 142 42 196617 p parse;
#P number 490 301 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P newex 418 210 85 196617 sprintf p%i.name;
#P newex 418 188 40 196617 uzi;
#P newex 418 122 173 196617 route num_presets num_parameters;
#N vpatcher 20 74 420 374;
#P window setfont "Sans Serif" 9.;
#P newex 121 175 35 196617 zl rev;
#P outlet 121 197 15 0;
#P newex 121 154 107 196617 zl join;
#P newex 218 81 68 196617 route symbol;
#P newex 121 81 68 196617 route symbol;
#P inlet 218 44 15 0;
#P inlet 121 44 15 0;
#P connect 0 0 2 0;
#P connect 2 1 4 0;
#P connect 2 0 4 0;
#P connect 4 0 6 0;
#P connect 6 0 5 0;
#P connect 1 0 3 0;
#P connect 3 0 4 1;
#P connect 3 1 4 1;
#P pop;
#P newobj 515 98 30 196617 p zip;
#P newex 515 32 183 196617 t num_presets num_parameters l b b b;
#P window setfont "Sans Serif" 12.;
#P comment 350 427 131 196620 Attribute Handling;
#P window setfont "Sans Serif" 9.;
#N coll ;
#P newobj 515 78 70 196617 coll;
#P newex 513 502 71 196617 prepend refer;
#N comlet connect to a poly~ object;
#P outlet 318 558 15 0;
#P newex 29 49 214 196617 route _POLY _MGUI_FEEDBACK MENU PRESET _GET_MODULE_INSTALL_SIZE MODULE_TITLE;
#P newex 359 479 321 196617 route size xxxx presets library_type;
#P newex 359 452 243 196617 patcherargs @size 1U @presets @library_type poly;
#P newex 46 178 115 196617 t l l l;
#P newex 46 331 35 196617 zl reg;
#P newex 46 352 84 196617 jmod.post.mxt $2-SyntaxError;
#P newex 46 305 31 196617 sel 0;
#P newex 46 285 27 196617 i;
#P newex -86 301 71 196617 prepend store;
#P newex -86 280 35 196617 zl rev;
#P newex 46 224 44 196617 t b l 0;
#P newex -86 259 35 196617 zl join;
#P newex -86 216 27 196617 t b l;
#N counter;
#X flags 0 0;
#P newobj -86 237 66 196617 counter;
#P newex -87 121 55 196617 t b clear 1;
#P newex 46 202 50 196617 zl slice 1;
#N coll ;
#P newobj 63 254 53 196617 coll;
#P newex -87 196 126 196617 receive $1_register;
#P newex -87 141 96 196617 send $1_query;
#P newex -87 90 55 196617 r jmod.init;
#P newex 112 223 100 196617 send $1_instruction;
#N comlet module feedback - connect to 1st outlet;
#P outlet 175 359 15 0;
#N comlet connect to mgui (1st outlet);
#P inlet 29 29 15 0;
#P window setfont "Sans Serif" 12.;
#P comment 410 25 103 196620 Preset Handling;
#P window setfont "Sans Serif" 9.;
#P comment 416 303 45 196617 preset:;
#P user panel 215 189 192 234;
#X brgb 191 191 191;
#X frgb 0 0 0;
#X border 1;
#X rounded 0;
#X shadow 0;
#X done;
#P comment 752 31 100 196617 pattrstorage;
#P comment 816 281 75 196617 tell pattrstorage to send feedback;
#P comment 825 83 172 196617 filter out the part of the feedback symbol preceeding the double-colon. Then send to the feedback outlet;
#P user panel 409 22 300 400;
#X brgb 191 191 191;
#X frgb 0 0 0;
#X border 1;
#X rounded 0;
#X shadow 0;
#X done;
#P background;
#P user panel 45 424 300 158;
#X brgb 191 191 191;
#X frgb 0 0 0;
#X border 1;
#X rounded 0;
#X shadow 0;
#X done;
#P background;
#P user panel 347 424 362 207;
#X brgb 191 191 191;
#X frgb 0 0 0;
#X border 1;
#X rounded 0;
#X shadow 0;
#X done;
#P background;
#P connect 12 0 17 0;
#P connect 17 0 13 0;
#P connect 14 0 19 0;
#P connect 19 0 18 0;
#P connect 18 0 20 0;
#P connect 20 0 22 0;
#P connect 22 0 23 0;
#P connect 19 1 20 1;
#P connect 17 2 18 2;
#P connect 90 0 31 0;
#P connect 9 0 31 0;
#P connect 56 0 28 0;
#P connect 60 0 28 0;
#P connect 28 0 16 0;
#P connect 16 0 21 0;
#P connect 21 0 24 0;
#P connect 24 0 25 0;
#P connect 25 0 27 0;
#P connect 27 0 26 0;
#P connect 58 0 56 0;
#P connect 122 1 56 0;
#P connect 21 1 15 0;
#P connect 23 0 15 0;
#P connect 17 1 15 0;
#P fasten 21 2 24 1 85 280 68 280;
#P connect 15 0 24 1;
#P fasten 28 1 27 1 103 327 76 327;
#P connect 31 6 122 0;
#P connect 28 2 11 0;
#P connect 42 1 11 0;
#P connect 85 0 87 0;
#P connect 87 0 86 0;
#P connect 100 0 10 0;
#P connect 31 1 10 0;
#P connect 122 0 57 0;
#P connect 57 0 59 0;
#P connect 59 0 58 0;
#P connect 59 1 60 0;
#P connect 57 1 58 1;
#P connect 95 0 98 0;
#P connect 30 3 62 0;
#P connect 62 0 61 0;
#P connect 63 0 95 0;
#P connect 61 0 95 0;
#P connect 96 0 95 0;
#P connect 111 0 95 0;
#P connect 112 0 95 0;
#P connect 31 4 110 0;
#P connect 110 0 88 0;
#P connect 88 0 89 0;
#P connect 104 0 89 0;
#P connect 84 0 99 0;
#P connect 95 1 97 0;
#P connect 62 1 63 0;
#P connect 95 3 113 0;
#P connect 114 0 64 0;
#P connect 113 0 64 0;
#P connect 98 0 64 0;
#P connect 97 0 64 0;
#P connect 95 2 32 0;
#P connect 64 0 32 0;
#P connect 99 0 32 0;
#P connect 114 1 32 0;
#P connect 62 2 96 0;
#P connect 95 4 114 0;
#P connect 62 3 111 0;
#P fasten 29 1 30 0 597 474 364 474;
#P connect 30 0 105 0;
#P connect 106 0 109 0;
#P connect 109 0 104 0;
#P connect 62 4 112 0;
#P connect 100 0 95 1;
#P connect 105 1 106 0;
#P fasten 37 0 38 0 520 118 423 118;
#P connect 38 0 67 0;
#P connect 67 0 68 0;
#P connect 68 0 39 0;
#P connect 39 2 40 0;
#P connect 106 1 107 0;
#P connect 107 0 108 0;
#P connect 108 0 109 1;
#P fasten 107 1 109 1 461 579 440 579;
#P connect 31 2 52 0;
#P connect 52 0 48 0;
#P connect 31 3 48 0;
#P connect 48 0 50 0;
#P connect 50 0 49 0;
#P connect 49 0 53 0;
#P connect 53 0 54 0;
#P connect 54 0 51 0;
#P connect 50 1 53 1;
#P lcolor 2;
#P fasten 38 1 41 0 504 237 495 237;
#P connect 41 0 49 1;
#P connect 49 2 54 1;
#P connect 30 2 33 0;
#P fasten 33 0 36 0 518 530 709 530 709 29 520 29;
#P connect 36 0 66 0;
#P connect 66 0 34 0;
#P fasten 40 0 34 0 423 236 414 236 414 73 520 73;
#P connect 51 0 34 0;
#P connect 36 1 34 0;
#P connect 36 2 34 0;
#P connect 34 0 37 0;
#P connect 34 1 37 1;
#P connect 38 2 42 0;
#P connect 42 0 43 0;
#P connect 43 0 46 0;
#P connect 45 0 46 0;
#P connect 44 0 46 0;
#P connect 47 0 46 0;
#P connect 46 0 65 0;
#P connect 36 3 47 0;
#P connect 36 4 45 0;
#P connect 36 5 44 0;
#P connect 72 0 77 0;
#P connect 82 0 77 0;
#P connect 77 0 80 0;
#P fasten 121 0 70 0 779 400 734 400;
#P connect 115 1 70 0;
#P connect 115 0 70 0;
#P connect 80 0 70 0;
#P fasten 73 0 70 0 816 402 734 402;
#P fasten 91 0 70 0 886 404 734 404;
#P connect 31 5 119 0;
#P connect 69 0 74 0;
#P connect 76 0 74 0;
#P connect 101 0 102 0;
#P connect 102 0 100 0;
#P connect 74 0 101 0;
#P connect 93 0 116 0;
#P connect 116 1 94 0;
#P connect 92 0 115 0;
#P connect 94 0 115 0;
#P connect 117 1 92 0;
#P connect 83 0 117 0;
#P connect 116 0 115 1;
#P fasten 77 1 79 0 753 320 779 320;
#P connect 79 0 121 0;
#P connect 101 1 123 0;
#P connect 123 0 103 0;
#P connect 103 0 102 1;
#P connect 117 0 115 2;
#P connect 75 0 73 0;
#P connect 75 0 76 0;
#P connect 75 0 120 0;
#P connect 119 0 118 0;
#P connect 120 0 118 0;
#P connect 75 0 91 0;
#P pop;
