max v2;#N vpatcher 79 132 1392 865;#P origin -282 -414;#P window setfont "Sans Serif" 9.;#P user ubumenu 33 43 103 196617 0 0 1 0;#X add /editing_this_module;#X prefix_set 0 0 <none> 0;#X pattrmode 1;#P objectname module_out;#P user ubumenu 33 20 103 196617 0 0 1 0;#X add /editing_this_module;#X prefix_set 0 0 <none> 0;#X pattrmode 1;#P objectname module_in;#P window setfont "Sans Serif" 10.;#P number 116 43 20 10 1 2 99 3 0 0 0 221 221 221 222 222 222 0 0 0;#P objectname module_out#;#P window setfont "Sans Serif" 9.;#P user ubumenu 104 43 15 196617 0 0 1 0;#X add .;#X prefix_set 0 0 <none> 0;#X pattrmode 1;#P objectname out_slash;#P window setfont "Sans Serif" 10.;#P number 116 20 20 10 1 2 99 3 0 0 0 221 221 221 222 222 222 0 0 0;#P objectname module_in#;#P window setfont "Sans Serif" 9.;#P user ubumenu 104 20 15 196617 0 0 1 0;#X add .;#X prefix_set 0 0 <none> 0;#X pattrmode 1;#P objectname in_slash;#P hidden newex 108 183 43 196617 jcom.in;#P hidden newex 1092 492 79 196617 r mappers_edit;#P hidden newex 148 418 45 196617 pvar vu;#P user multiSlider 207 1 260 16 0. 1. 1 2936 15 0 0 2 0 0 0;#M frgb 0 0 0;#M brgb 255 255 255;#M rgb2 127 127 127;#M rgb3 0 0 0;#M rgb4 37 52 91;#M rgb5 74 105 182;#M rgb6 112 158 18;#M rgb7 149 211 110;#M rgb8 187 9 201;#M rgb9 224 62 37;#M rgb10 7 114 128;#P objectname vu;#P comment 382 49 10 196617 |;#P comment 382 41 10 196617 |;#P comment 382 33 10 196617 |;#P comment 382 25 10 196617 |;#P comment 382 16 10 196617 |;#P comment 315 50 10 196617 |;#P comment 315 42 10 196617 |;#P comment 315 34 10 196617 |;#P comment 315 26 10 196617 |;#P comment 315 17 10 196617 |;#P user multiSlider 500 29 10 31 -0.53 0.5 1 2681 47 0 0 2 0 0 1;#M frgb 0 0 0;#M brgb 255 255 255;#M rgb2 127 127 127;#M rgb3 0 0 0;#M rgb4 37 52 91;#M rgb5 74 105 182;#M rgb6 112 158 18;#M rgb7 149 211 110;#M rgb8 187 9 201;#M rgb9 224 62 37;#M rgb10 7 114 128;#P objectname curve_slid;#P hidden newex 1021 492 72 196617 jcom.init;#P hidden newex 297 368 86 196617 pvar module_in#;#P hidden newex 166 347 88 196617 pvar module_out#;#N thispatcher;#Q end;#P hidden newobj 212 420 61 196617 thispatcher;#P comment 0 31 322 196617 ____________________________________________________;#P flonum 478 16 32 9 0 0 8224 3 255 255 255 221 221 221 222 222 222 0 0 0;#P objectname curve;#P user ubumenu 468 1 42 196617 0 0 1 0;#X add edit;#X add active;#X add bypass;#X prefix_set 0 0 <none> 0;#X pattrmode 1;#P objectname edit;#P hidden newex 1033 409 34 196617 * -1.;#P hidden newex 939 409 34 196617 * -1.;#P window linecount 3;#P hidden newex 944 656 287 196617 jcom.parameter slide_down @repetitions 1 @ramp linear.sched @type msg_float @description "Smoothing coef when value decreases";#P objectname slide_down[1];#P window linecount 1;#P hidden newex 944 633 84 196617 pvar slide_down;#P window linecount 2;#P hidden newex 552 659 312 196617 jcom.parameter slide_up @repetitions 1 @ramp linear.sched @type msg_float @description "Smoothing coef when value raises";#P objectname slide_up[1];#P window linecount 1;#P hidden newex 552 636 71 196617 pvar slide_up;#P window linecount 2;#P hidden newex 552 585 312 196617 jcom.parameter ramp @repetitions 1 @ramp linear.sched @type msg_int @description "Ramp time";#P objectname ramp[1];#P window linecount 1;#P hidden newex 552 562 57 196617 pvar ramp;#P number 417 20 30 9 0 0 8225 3 255 255 255 221 221 221 222 222 222 0 0 0;#P objectname ramp;#P comment 390 22 34 196617 Ramp;#B frgb 255 255 255;#P objectname ramp_com;#P comment 324 45 39 196617 /down;#B frgb 255 255 255;#P flonum 357 20 28 9 0. 0 8225 3 255 255 255 221 221 221 222 222 222 0 0 0;#P objectname slide_up;#P flonum 357 43 28 9 0. 0 8225 3 255 255 255 221 221 221 222 222 222 0 0 0;#P objectname slide_down;#P comment 320 22 45 196617 Slide up;#B frgb 255 255 255;#P hidden newex 268 390 73 196617 pvar clipmode;#P window linecount 2;#P hidden newex 943 583 312 196617 jcom.message clipmode @repetitions 1 @type msg_symbol @description "Choose the clipping mode (none\\\, low\\\, high\\\, both)";#P objectname jcom.parameter[12];#P window linecount 1;#P hidden newex 944 560 82 196617 pvar clipmode 2;#P user ubumenu 435 42 29 196617 0 0 1 0;#X add none;#X add low;#X add high;#X add both;#X prefix_set 0 0 <none> 0;#X pattrmode 1;#P objectname clipmode;#P hidden newex 128 391 79 196617 pvar curve_disp;#P user multiSlider 468 29 33 31 0. 1. 32 2681 15 0 0 2 0 0 0;#M frgb 0 0 0;#M brgb 255 255 255;#M rgb2 127 127 127;#M rgb3 0 0 0;#M rgb4 37 52 91;#M rgb5 74 105 182;#M rgb6 112 158 18;#M rgb7 149 211 110;#M rgb8 187 9 201;#M rgb9 224 62 37;#M rgb10 7 114 128;#P objectname curve_disp;#P comment 449 18 36 196617 Curve;#B frgb 255 255 255;#P window linecount 3;#P hidden newex 939 432 312 196617 jcom.parameter curve @repetitions 1 @ramp linear.sched @type msg_float @description "Curve applied on the output value (<0 exponential\\\, 0 linear\\\, >0 logarithmic";#P objectname curve[1];#P window linecount 1;#P hidden newex 973 409 60 196617 pvar curve;#P window linecount 2;#P hidden newex 941 515 312 196617 jcom.message edit @repetitions 1 @type msg_symbol @description "Choose operation mode (active\\\, edit\\\, bypass)";#P objectname jcom.parameter[10];#P window linecount 1;#P hidden newex 942 492 73 196617 pvar edit 2;#P hidden newex 308 328 64 196617 pvar in_max;#P hidden newex 308 307 64 196617 pvar in_min;#P hidden newex 171 326 73 196617 pvar out_max;#P hidden newex 171 306 73 196617 pvar out_min;#P window linecount 2;#P hidden newex 939 359 312 196617 jcom.parameter out_max @repetitions 1 @ramp linear.sched @type msg_float @description "Maximum output value";#P objectname out_max[1];#P window linecount 1;#P hidden newex 939 336 73 196617 pvar out_max;#P window linecount 2;#P hidden newex 939 286 312 196617 jcom.parameter out_min @repetitions 1 @ramp linear.sched @type msg_float @description "Minimum output value";#P objectname out_min[1];#P window linecount 1;#P hidden newex 939 263 70 196617 pvar out_min;#P window linecount 2;#P hidden newex 937 213 312 196617 jcom.parameter in_max @repetitions 1 @ramp linear.sched @type msg_float @description "Maximum input value";#P objectname in_max[1];#P window linecount 1;#P hidden newex 937 190 64 196617 pvar in_max;#P window linecount 2;#P hidden newex 937 140 312 196617 jcom.parameter in_min @repetitions 1 @ramp linear.sched @type msg_float @description "Minimum input value";#P objectname in_min[1];#P window linecount 1;#P hidden newex 937 117 64 196617 pvar in_min;#P comment 273 45 14 196617 /;#B frgb 255 255 255;#P flonum 246 43 33 9 0 0 8224 3 255 255 255 221 221 221 222 222 222 0 0 0;#P objectname out_min;#P flonum 278 43 40 9 0 0 8224 3 255 255 255 221 221 221 222 222 222 0 0 0;#P objectname out_max;#P comment 210 45 36 196617 Range;#B frgb 255 255 255;#P comment 272 22 14 196617 /;#B frgb 255 255 255;#P flonum 246 20 33 9 0 0 8224 3 255 255 255 221 221 221 222 222 222 0 0 0;#P objectname in_min;#P flonum 277 20 41 9 0 0 8224 3 255 255 255 221 221 221 222 222 222 0 0 0;#P objectname in_max;#P comment 210 22 36 196617 Range;#B frgb 255 255 255;#P hidden newex 297 348 95 196617 pvar module_in_fct;#P hidden newex 156 366 104 196617 pvar module_out_fct;#P hidden newex 554 493 107 196617 pvar module_in_fct 2;#P window linecount 2;#P hidden newex 554 518 347 196617 jcom.parameter module_in_function @repetitions 1 @type msg_symbol @description "Source module function of the mapping" @priority 6;#P objectname module_in_function;#P window linecount 1;#P hidden newex 551 265 113 196617 pvar module_out_fct 2;#P window linecount 2;#P hidden newex 551 290 353 196617 jcom.parameter module_out_function @repetitions 1 @type msg_symbol @description "Destination function of the mapping" @priority 5;#P objectname module_out_function;#P user ubumenu 135 20 72 196617 0 0 1 0;#X add;#X prefix_set 0 0 <none> 0;#X pattrmode 1;#P objectname module_in_fct;#P user ubumenu 135 43 72 196617 0 0 1 0;#X add;#X prefix_set 0 0 <none> 0;#X pattrmode 1;#P objectname module_out_fct;#P window linecount 1;#P hidden newex 402 326 88 196617 pvar module_in;#P hidden newex 552 412 88 196617 pvar module_in#;#P window linecount 2;#P hidden newex 552 435 340 196617 jcom.parameter module_in_nr @repetitions 1 @type msg_int @description "Source module instance of the mapping" @priority 2;#P objectname module_in_nr;#P window linecount 1;#P hidden newex 552 340 94 196617 pvar module_in 2;#P window linecount 2;#P hidden newex 552 365 312 196617 jcom.parameter module_in @repetitions 1 @type msg_symbol @description "Source module of the mapping" @priority 1;#P objectname module_in[1];#P window linecount 1;#P hidden newex 552 186 88 196617 pvar module_out#;#P window linecount 2;#P hidden newex 552 209 340 196617 jcom.parameter module_out_nr @repetitions 1 @type msg_int @description "Destination module instance of the mapping" @priority 4;#P objectname module_out_nr;#P window linecount 1;#P hidden newex 552 116 94 196617 pvar module_out 2;#P comment 388 45 53 196617 Clip mode;#B frgb 255 255 255;#P hidden newex 411 305 88 196617 pvar module_out;#P comment 8 45 23 196617 Out;#B frgb 255 255 255;#P hidden newex 108 226 45 196617 pcontrol;#P hidden newex 108 202 78 196617 jcom.pass open;#P hidden message 39 112 125 196617 /init;#P window linecount 2;#P hidden message 17 429 65 196617 \; max refresh;#P hidden message 17 392 75 196617 \; jcom.init bang;#P window linecount 1;#N vpatcher 612 161 1423 796;#P origin 0 3;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 592 467 73 196617 prepend append;#P window linecount 0;#P newex 592 446 110 196617 jcom.modules_dumper;#P newex 15 541 161 196617 jcom.send jcom.remote.module.to;#P objectname mapping_object_dst_0[1];#P newex 15 507 138 196617 prepend /module/parameter;#P objectname mapping_object_prepend_0[1];#P newex 113 409 29 196617 t b f;#P newex 193 368 29 196617 t b f;#P newex 113 437 27 196617 f;#P newex 256 368 29 196617 t b f;#P newex 119 459 421 196617 scale 0. 1. 0. 1.;#N comlet to curve display;#P outlet 119 484 15 0;#N comlet to in #;#P outlet 477 129 15 0;#N vpatcher 501 44 1075 714;#P origin 0 -15;#P window setfont "Sans Serif" 9.;#P window linecount 1;#N vpatcher 98 82 415 255;#P origin 0 -177;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 26 77 126 196617 jcom.parameters_dumper;#P newex 26 46 139 196617 t s <separator> s;#P window linecount 1;#P newex 154 77 126 196617 jcom.returns_dumper;#P outlet 90 113 15 0;#P inlet 26 26 15 0;#P connect 0 0 3 0;#P connect 3 0 4 0;#P fasten 2 0 1 0 159 104 95 104;#P fasten 4 0 1 0 31 104 95 104;#P fasten 3 1 1 0 95 89 95 89;#P connect 3 2 2 0;#P pop;#P newobj 28 442 58 196617 p adresses;#P newex 331 447 64 196617 fromsymbol;#P newex 225 406 252 196617 jcom.attributes_dumper;#P window linecount 2;#P newex 392 540 125 196617 jcom.receive jcom.remote.module.from;#P objectname mapping_object_src_0;#P window linecount 1;#P newex 392 574 138 196617 jcom.oscroute;#P objectname mapping_object_route_0;#P newex 353 289 67 196617 prepend set;#P newex 271 163 60 196617 loadmess -1;#P message 294 546 31 196617 0. 1.;#P newex 28 393 47 196617 gate 1 1;#P newex 28 414 119 196617 t s 0 clear;#P newex 151 72 65 196617 jcom.change;#P outlet 392 598 15 0;#P newex 353 188 32 196617 sel 1;#P newex 241 185 40 196617 change;#N comlet to thispatcher;#P outlet 291 264 15 0;#N vpatcher 214 154 710 327;#P window setfont "Sans Serif" 9.;#P newex 69 45 50 196617 loadbang;#P outlet 28 111 15 0;#P message 218 63 234 196617 script size module_in 72 16 \, script bringtofront in_slash \, script bringtofront module_in#;#P inlet 218 36 15 0;#P inlet 28 44 15 0;#P message 28 67 151 196617 script size module_in 103 16 \, script bringtofront module_in;#P connect 5 0 0 0;#P connect 1 0 0 0;#P connect 0 0 4 0;#P fasten 3 0 4 0 223 100 33 100;#P connect 2 0 3 0;#P pop;#P newobj 291 239 45 196617 p script;#N comlet to nr;#P outlet 353 329 15 0;#P newex 382 253 67 196617 prepend max;#P newex 382 232 25 196617 i;#P newex 291 212 44 196617 sel 0 1;#P newex 65 260 96 196617 gate 2 1;#P newex 151 94 191 196617 t s s 1;#P newex 241 116 80 196617 prepend symbol;#N coll jcom.modules_instances 1;#P newobj 241 138 144 196617 coll jcom.modules_instances 1;#P newex 65 340 96 196617 switch 2 1;#P newex 241 210 27 196617 + 1;#P newex 65 295 58 196617 sprintf %s;#P newex 185 260 42 196617 t b i;#P newex 241 163 27 196617 > 0;#P newex 151 294 76 196617 sprintf %s.%s;#P inlet 185 242 13 0;#P newex 353 211 39 196617 t 1 b;#P inlet 294 460 15 0;#P newex 294 480 47 196617 gate 1 0;#P newex 294 523 64 196617 route default;#N comlet to in_max;#P outlet 346 595 15 0;#N comlet to in_min;#P outlet 294 596 15 0;#P newex 294 572 62 196617 unpack 0. 0.;#P newex 294 502 62 196617 route range;#P inlet 225 386 15 0;#P newex 136 498 50 196617 jcom.thru;#P newex 65 367 412 196617 t s s;#P newex 28 471 78 196617 prepend append;#N comlet to module in function msg_menu;#P outlet 136 521 15 0;#P inlet 151 53 15 0;#P window linecount 10;#P comment 35 44 55 196617 this is to avoid the function msg_menu to change when only the instance number changes;#P fasten 24 2 37 0 336 120 354 120 354 43 33 43;#P connect 36 1 37 0;#P connect 37 0 36 0;#P connect 36 0 45 0;#P connect 45 0 3 0;#P connect 20 0 25 0;#P connect 25 0 19 0;#P fasten 20 0 21 0 246 328 70 328;#P connect 21 0 4 0;#P connect 4 0 37 1;#P connect 19 0 21 1;#P fasten 3 0 5 0 33 493 141 493;#P connect 36 2 5 0;#P connect 5 0 2 0;#P connect 1 0 35 0;#P connect 35 0 24 0;#P connect 24 0 25 1;#P connect 25 1 16 0;#P connect 18 0 16 0;#P connect 16 0 21 2;#P connect 15 0 18 0;#P fasten 14 0 16 1 358 282 222 282;#P connect 18 1 16 1;#P connect 6 0 43 0;#P connect 24 1 23 0;#P connect 23 0 22 0;#P connect 22 0 17 0;#P connect 17 0 32 0;#P fasten 39 0 32 0 276 182 246 182;#P connect 32 0 20 0;#P fasten 32 0 26 0 246 206 296 206;#P connect 26 0 30 0;#P connect 30 0 31 0;#P connect 13 0 12 0;#P connect 12 0 7 0;#P connect 7 0 11 0;#P connect 11 0 38 0;#P connect 38 0 8 0;#P fasten 11 1 8 0 353 565 299 565;#P connect 8 0 9 0;#P connect 26 1 30 1;#P connect 43 0 44 0;#P fasten 44 0 12 1 336 470 336 470;#P connect 8 1 10 0;#P fasten 17 0 33 0 246 182 358 182;#P connect 33 0 14 0;#P connect 14 0 40 0;#P connect 40 0 29 0;#P fasten 28 0 29 0 387 314 358 314;#P connect 14 1 27 0;#P connect 27 0 28 0;#P connect 42 0 41 0;#P connect 41 0 34 0;#P fasten 22 0 27 1 246 159 402 159;#P connect 4 1 43 1;#P fasten 43 1 41 1 472 498 525 498;#P pop;#P newobj 289 102 245 196617 p adress_in;#N comlet to thispatcher;#P outlet 336 129 15 0;#N comlet to module out instance number;#P outlet 226 126 15 0;#N comlet to thispatcher;#P outlet 109 128 15 0;#N comlet to thispatcher;#P outlet 174 321 15 0;#N vpatcher 712 65 912 238;#P window setfont "Sans Serif" 9.;#P newex 98 69 65 196617 jcom.change;#P outlet 98 112 15 0;#N vpatcher 350 57 681 246;#P button 166 62 15 0;#P outlet 36 126 15 0;#P window setfont "Sans Serif" 9.;#P window linecount 2;#P message 153 89 110 196617 script show ramp \, script show ramp_com;#P window linecount 0;#P message 36 89 103 196617 script hide ramp \, script hide ramp_com;#P newex 36 61 127 196617 sel none;#P inlet 36 36 15 0;#P connect 0 0 1 0;#P connect 1 0 2 0;#P connect 2 0 4 0;#P fasten 3 0 4 0 158 121 41 121;#P connect 5 0 3 0;#P connect 1 1 5 0;#P pop;#P newobj 98 90 50 196617 p hide;#N vpatcher 219 195 366 366;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 78 78 21 196617 t 2;#P newex 38 79 21 196617 t 1;#P window linecount 0;#P newex 38 56 50 196617 sel none;#P outlet 38 106 15 0;#P inlet 38 34 15 0;#P connect 0 0 2 0;#P connect 2 0 3 0;#P connect 3 0 1 0;#P connect 4 0 1 0;#P connect 2 1 4 0;#P pop;#P newobj 26 67 27 196617 p rp;#P newex 26 31 68 196617 r $0_ramp;#P newex 26 89 50 196617 gate 2 2;#P outlet 66 110 15 0;#P outlet 26 110 15 0;#P inlet 66 69 13 0;#P connect 4 0 5 0;#P connect 5 0 3 0;#P connect 3 0 1 0;#P connect 0 0 3 1;#P connect 3 1 2 0;#P connect 4 0 8 0;#P connect 8 0 6 0;#P connect 6 0 7 0;#P pop;#P newobj 108 320 62 196617 p ramp_gate;#P newex 134 345 445 196617 pack 0. ramp 0;#P newex 108 298 418 196617 slide 0. 0.;#N vpatcher 50 120 788 520;#P origin 0 -22;#P inlet 530 180 15 0;#P inlet 491 180 15 0;#P inlet 574 21 15 0;#P window setfont "Sans Serif" 9.;#P newex 357 73 72 196617 route int float;#P number 50 188 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P inlet 357 46 15 0;#P window linecount 1;#P newex 356 270 61 196617 clip 0. 127.;#P newex 243 270 73 196617 minimum 127.;#P window linecount 0;#P newex 130 270 64 196617 maximum 0.;#P outlet 685 366 15 0;#P newex 17 187 27 196617 + 1;#P newex 17 215 350 196617 gate 4 1;#P newex 17 135 79 196617 prepend symbol;#P user umenu 17 158 100 196647 1 64 174 1;#X add none;#X add low;#X add high;#X add both;#P comment 435 76 185 196617 Only int and float can be scaled/clipped;#P fasten 12 0 2 0 579 40 22 40;#P connect 2 0 1 0;#P connect 1 0 4 0;#P connect 4 0 3 0;#P connect 4 0 10 0;#P connect 3 1 6 0;#P fasten 13 0 6 1 496 240 189 240;#P connect 3 2 7 0;#P fasten 14 0 7 1 535 251 311 251;#P connect 3 3 8 0;#P connect 9 0 11 0;#P connect 11 0 3 1;#P fasten 11 1 3 1 393 108 362 108;#P fasten 13 0 8 1 496 240 386 240;#P fasten 14 0 8 2 535 251 411 251;#P fasten 3 0 5 0 22 326 690 326;#P fasten 6 0 5 0 135 326 690 326;#P fasten 7 0 5 0 248 326 690 326;#P fasten 11 2 5 0 424 99 690 99;#P fasten 8 0 5 0 361 326 690 326;#P pop;#P newobj 109 275 314 196617 p clip_range;#N comlet to curve display;#P outlet 42 244 15 0;#N vpatcher 9 62 330 449;#P window setfont "Sans Serif" 9.;#P window linecount 1;#N vpatcher 30 89 586 571;#P window setfont "Bell MT" 9.;#P window linecount 0;#P comment 221 394 221 133365769 email : tmays@free.fr - web : http://www.tommays.net;#P comment 221 383 86 133365769 made by Tom Mays;#N comlet output 0. to 1.;#P outlet 100 393 15 0;#N comlet input 0. to 1.;#P inlet 100 98 15 0;#P window setfont "Sans Serif" 9.;#P flonum 283 214 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 70 284 100 196617 expr pow($f1\\\,$f2);#P newex 283 157 35 196617 abs 0.;#P newex 244 135 49 196617 t f f;#P newex 244 180 27 196617 + 2;#P newex 244 159 27 196617 < 0.;#P newex 211 135 27 196617 1;#P newex 211 114 43 196617 sel 0.;#P newex 100 340 28 196617 !- 1.;#P newex 100 260 28 196617 !- 1.;#P flonum 100 120 61 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 40 220 26 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 40 239 70 196617 gate 3;#P flonum 100 369 64 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#N comlet curve (-1. <= x <= 1.);#P inlet 211 54 15 0;#P flonum 211 96 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 190 268 46 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 190 247 132 196617 expr pow(2\\\,($f1*15)/2.);#P newex 100 319 100 196617 expr pow($f1\\\,$f2);#P comment 118 304 72 196617 log/exp curve;#P comment 214 234 65 196617 scale control;#P window linecount 3;#P comment 227 54 125 196617 0<x<=1 = exponential \; -1<=x<0 = logarithmic \; 0 = linear;#P window setfont Times 9.;#P window linecount 1;#P comment 290 305 100 1310729 arg 1 : initial curve value;#P connect 18 0 11 0;#P connect 16 0 11 0;#P connect 11 0 10 0;#P connect 10 1 21 0;#P connect 23 0 12 0;#P connect 12 0 10 1;#P connect 10 2 13 0;#P connect 13 0 4 0;#P connect 4 0 14 0;#P fasten 21 0 9 0 75 364 105 364;#P fasten 10 0 9 0 45 364 105 364;#P connect 14 0 9 0;#P connect 9 0 24 0;#P connect 6 0 21 1;#P fasten 22 0 5 0 288 232 195 232;#P connect 5 0 6 0;#P connect 6 0 4 1;#P connect 8 0 7 0;#P connect 7 0 15 0;#P connect 15 0 16 0;#P connect 15 1 19 0;#P connect 19 0 17 0;#P connect 17 0 18 0;#P connect 19 1 20 0;#P connect 20 0 22 0;#P pop;#P newobj 60 193 101 196617 p explinlog;#N comlet curve (-1. <= x <= 1.);#P inlet 214 14 15 0;#P newex 151 58 47 196617 gate 1 0;#P window setfont "Bell MT" 9.;#P comment 24 338 221 133365769 email : tmays@free.fr - web : http://www.tommays.net;#P comment 24 327 86 133365769 made by Tom Mays;#N comlet curve (-1. <= x <= 1.);#P inlet 191 38 15 0;#P window setfont "Sans Serif" 9.;#P window linecount 3;#P comment 19 38 125 196617 0<x<=1 = exponential \; -1<=x<0 = logarithmic \; 0 = linear;#N comlet out to multislider;#P outlet 60 258 15 0;#P window linecount 1;#P newex 60 236 59 196617 zl group 32;#P button 30 107 15 0;#P newex 30 129 40 196617 Uzi 32;#P flonum 60 172 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 60 150 79 196617 scale 0 32 0. 1.;#P flonum 60 216 64 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 151 81 80 9 -1. 1. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P window linecount 5;#P comment 80 259 100 196617 attacher un multislider float avec range de 0. � 1. pour visualiser la courbe;#P fasten 1 0 6 0 156 101 35 101;#P connect 6 0 5 0;#P connect 5 2 3 0;#P connect 3 0 4 0;#P connect 4 0 15 0;#P connect 15 0 2 0;#P connect 2 0 7 0;#P connect 7 0 8 0;#P fasten 14 0 13 0 219 32 156 32;#P connect 13 0 1 0;#P connect 1 0 15 1;#P connect 10 0 13 1;#P pop;#P newobj 42 221 50 196617 p display;#P newex 109 250 229 196617 scale 0. 1. 0. 1.;#P newex 152 184 480 196617 jcom.oscroute /in_min /in_max /out_min /out_max /curve /clipmode /slide_up /slide_down /ramp;#P newex 93 182 43 196617 gate 1 0;#N vpatcher 10 59 210 241;#P outlet 85 119 15 0;#P outlet 17 115 15 0;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 83 85 21 196617 t 0;#P newex 48 85 32 196617 t 0 1;#P window linecount 0;#P newex 17 84 21 196617 t 1;#P newex 17 62 108 196617 sel edit active bypass;#P inlet 17 38 15 0;#P connect 0 0 1 0;#P connect 1 0 2 0;#P connect 4 0 5 0;#P connect 3 0 5 0;#P connect 2 0 5 0;#P connect 1 1 3 0;#P connect 1 2 4 0;#P connect 3 1 6 0;#P connect 2 0 6 0;#P connect 4 0 6 0;#P pop;#P newobj 547 75 35 196617 p edit;#N comlet to in_max;#P outlet 430 129 15 0;#N comlet to in_min;#P outlet 383 129 15 0;#N comlet to module out function msg_menu;#P outlet 187 127 15 0;#N comlet to module out function msg_menu;#P outlet 148 127 15 0;#N comlet to module out function msg_menu;#P outlet 70 128 15 0;#N comlet to module out function msg_menu;#P outlet 31 127 15 0;#N vpatcher 208 93 714 754;#P origin 11 -15;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 280 443 64 196617 fromsymbol;#P newex 207 411 219 196617 jcom.attributes_dumper;#N vpatcher 98 82 415 255;#P origin 0 -177;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 26 77 117 196617 jcom.messages_dumper;#P newex 26 46 130 196617 t s <separator> s;#P window linecount 1;#P newex 146 77 126 196617 jcom.parameters_dumper;#P outlet 86 113 15 0;#P inlet 26 26 15 0;#P connect 0 0 3 0;#P connect 3 0 4 0;#P fasten 2 0 1 0 151 104 91 104;#P fasten 4 0 1 0 31 104 91 104;#P fasten 3 1 1 0 91 89 91 89;#P connect 3 2 2 0;#P pop;#P newobj 17 437 58 196617 p adresses;#P newex 342 290 67 196617 prepend set;#P newex 260 163 60 196617 loadmess -1;#P newex 159 562 60 196617 route ramp;#P window linecount 2;#P newex 299 519 45 196617 prepend symbol;#P window linecount 1;#P newex 159 581 68 196617 s $0_ramp;#P outlet 299 552 15 0;#P newex 231 499 147 196617 route range clipmode;#P message 231 544 31 196617 0. 1.;#P newex 17 393 47 196617 gate 1 1;#P newex 17 414 84 196617 t s 0 clear;#P newex 140 72 65 196617 jcom.change;#P outlet 416 462 15 0;#P newex 416 440 62 196617 prepend set;#P newex 342 188 32 196617 sel 1;#P newex 230 185 40 196617 change;#P outlet 281 262 15 0;#N vpatcher 335 79 831 252;#P window setfont "Sans Serif" 9.;#P newex 69 45 50 196617 loadbang;#P outlet 28 111 15 0;#P message 218 63 234 196617 script size module_out 72 16 \, script bringtofront out_slash \, script bringtofront module_out#;#P inlet 218 36 15 0;#P inlet 28 44 15 0;#P message 28 67 151 196617 script size module_out 103 16 \, script bringtofront module_out;#P connect 1 0 0 0;#P connect 5 0 0 0;#P fasten 3 0 4 0 223 100 33 100;#P connect 0 0 4 0;#P connect 2 0 3 0;#P pop;#P newobj 281 237 45 196617 p script;#P outlet 342 323 15 0;#P newex 371 253 67 196617 prepend max;#P newex 371 232 25 196617 i;#P newex 281 210 44 196617 sel 0 1;#P newex 54 260 96 196617 gate 2;#P newex 140 94 191 196617 t s s 1;#P newex 230 116 80 196617 prepend symbol;#N coll jcom.modules_instances 1;#P newobj 230 138 144 196617 coll jcom.modules_instances 1;#P newex 54 339 96 196617 switch 2 1;#P newex 230 210 27 196617 + 1;#P newex 54 295 58 196617 sprintf %s;#P newex 174 260 42 196617 t b i;#P newex 230 163 27 196617 > 0;#P newex 140 294 76 196617 sprintf %s.%s;#P inlet 174 242 13 0;#P newex 342 211 39 196617 t 1 b;#P inlet 231 447 15 0;#P newex 231 473 59 196617 gate 1 0;#P newex 231 521 64 196617 route default;#P outlet 283 593 15 0;#P outlet 231 594 15 0;#P newex 231 570 62 196617 unpack 0. 0.;#P inlet 207 393 15 0;#P newex 91 489 50 196617 jcom.thru;#P newex 54 372 236 196617 t s s;#P newex 17 461 78 196617 prepend append;#P outlet 91 511 15 0;#P inlet 140 53 15 0;#P window linecount 11;#P comment 24 44 46 196617 this is to avoid the function msg_menu to change when only the instance number changes;#P connect 36 1 37 0;#P fasten 23 2 37 0 325 120 343 120 343 43 22 43;#P connect 37 0 36 0;#P connect 36 0 46 0;#P connect 46 0 3 0;#P connect 19 0 24 0;#P connect 24 0 18 0;#P fasten 19 0 20 0 235 328 59 328;#P connect 20 0 4 0;#P connect 4 0 37 1;#P fasten 3 0 5 0 22 483 96 483;#P connect 36 2 5 0;#P connect 5 0 2 0;#P connect 18 0 20 1;#P connect 1 0 35 0;#P connect 35 0 23 0;#P connect 23 0 24 1;#P connect 17 0 15 0;#P connect 24 1 15 0;#P connect 15 0 20 2;#P fasten 11 0 43 0 236 495 164 495;#P connect 43 0 41 0;#P connect 14 0 17 0;#P fasten 13 0 15 1 347 283 211 283;#P connect 17 1 15 1;#P connect 6 0 47 0;#P connect 23 1 22 0;#P connect 22 0 21 0;#P connect 21 0 16 0;#P connect 16 0 31 0;#P fasten 44 0 31 0 265 182 235 182;#P connect 31 0 19 0;#P connect 12 0 11 0;#P connect 11 0 39 0;#P connect 39 0 10 0;#P connect 10 0 38 0;#P connect 38 0 7 0;#P fasten 10 1 7 0 290 563 236 563;#P connect 7 0 8 0;#P connect 47 0 48 0;#P connect 48 0 11 1;#P fasten 31 0 25 0 235 206 286 206;#P connect 25 0 29 0;#P connect 29 0 30 0;#P connect 7 1 9 0;#P connect 39 1 42 0;#P connect 42 0 40 0;#P connect 25 1 29 1;#P fasten 16 0 32 0 235 183 347 183;#P connect 32 0 13 0;#P connect 13 0 45 0;#P connect 45 0 28 0;#P fasten 27 0 28 0 376 313 347 313;#P connect 13 1 26 0;#P connect 26 0 27 0;#P fasten 21 0 26 1 235 159 391 159;#P connect 4 1 47 1;#P connect 47 1 33 0;#P connect 33 0 34 0;#P pop;#P newobj 31 102 245 196617 p adress_out;#N comlet to module in function msg_menu;#P outlet 289 129 15 0;#P outlet 592 497 15 0;#N vpatcher 30 89 586 571;#P window setfont "Bell MT" 9.;#P window linecount 0;#P comment 221 394 221 133365769 email : tmays@free.fr - web : http://www.tommays.net;#P comment 221 383 86 133365769 made by Tom Mays;#N comlet output 0. to 1.;#P outlet 100 393 15 0;#N comlet input 0. to 1.;#P inlet 100 98 15 0;#P window setfont "Sans Serif" 9.;#P flonum 283 214 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 70 284 100 196617 expr pow($f1\\\,$f2);#P newex 283 157 35 196617 abs 0.;#P newex 244 135 49 196617 t f f;#P newex 244 180 27 196617 + 2;#P newex 244 159 27 196617 < 0.;#P newex 211 135 27 196617 1;#P newex 211 114 43 196617 sel 0.;#P newex 100 340 28 196617 !- 1.;#P newex 100 260 28 196617 !- 1.;#P flonum 100 120 61 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 40 220 26 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 40 239 70 196617 gate 3;#P flonum 100 369 64 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#N comlet curve (-1. <= x <= 1.);#P inlet 211 54 15 0;#P flonum 211 96 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 190 268 46 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 190 247 132 196617 expr pow(2\\\,($f1*15)/2.);#P newex 100 319 100 196617 expr pow($f1\\\,$f2);#P comment 118 304 72 196617 log/exp curve;#P comment 214 234 65 196617 scale control;#P window linecount 3;#P comment 227 54 125 196617 0<x<=1 = exponential \; -1<=x<0 = logarithmic \; 0 = linear;#P window setfont Times 9.;#P window linecount 1;#P comment 290 305 100 1310729 arg 1 : initial curve value;#P connect 16 0 11 0;#P connect 18 0 11 0;#P connect 11 0 10 0;#P connect 10 1 21 0;#P connect 23 0 12 0;#P connect 12 0 10 1;#P connect 10 2 13 0;#P connect 13 0 4 0;#P connect 4 0 14 0;#P connect 14 0 9 0;#P fasten 10 0 9 0 45 364 105 364;#P fasten 21 0 9 0 75 364 105 364;#P connect 9 0 24 0;#P connect 6 0 21 1;#P fasten 22 0 5 0 288 232 195 232;#P connect 5 0 6 0;#P connect 6 0 4 1;#P connect 8 0 7 0;#P connect 7 0 15 0;#P connect 15 0 16 0;#P connect 15 1 19 0;#P connect 19 0 17 0;#P connect 17 0 18 0;#P connect 19 1 20 0;#P connect 20 0 22 0;#P pop;#P newobj 93 221 54 196617 p explinlog;#P newex 31 54 615 196617 jcom.oscroute /module_out /module_out_nr /module_out_function /module_in /module_in_nr /module_in_function /edit;#P outlet 3 389 15 0;#P inlet 31 30 15 0;#P connect 22 0 35 0;#P connect 21 0 35 0;#P fasten 6 6 35 0 270 149 20 149;#P connect 35 0 36 0;#P connect 0 0 2 0;#P connect 2 0 6 0;#P connect 6 0 7 0;#P fasten 15 4 17 0 365 210 47 210;#P connect 17 0 18 0;#P connect 6 1 8 0;#P fasten 13 0 17 1 552 176 87 176;#P lcolor 5;#P fasten 13 1 14 0 577 175 98 175;#P lcolor 5;#P connect 14 0 3 0;#P connect 19 0 20 0;#P connect 20 0 22 0;#P connect 2 1 6 1;#P connect 6 2 24 0;#P connect 3 0 16 0;#P connect 16 0 19 0;#P connect 22 0 34 0;#P connect 21 0 34 0;#P connect 34 0 32 0;#P connect 31 0 32 0;#P connect 33 0 32 0;#P connect 32 0 30 0;#P connect 30 0 29 0;#P fasten 27 5 14 1 529 158 131 158;#P connect 34 1 32 1;#P connect 22 1 21 0;#P fasten 15 4 3 1 365 210 142 210;#P connect 6 3 9 0;#P fasten 2 7 15 0 638 180 157 180;#P connect 15 0 16 1;#P connect 22 2 23 0;#P connect 2 2 6 2;#P connect 6 4 10 0;#P connect 15 2 33 0;#P connect 15 1 16 2;#P connect 33 1 30 1;#P connect 15 2 19 1;#P lcolor 7;#P connect 6 5 25 0;#P connect 15 2 16 3;#P lcolor 7;#P connect 15 3 31 0;#P fasten 13 0 6 3 552 96 270 96;#P lcolor 5;#P connect 15 3 16 4;#P lcolor 7;#P connect 31 1 30 2;#P connect 2 3 27 0;#P connect 27 0 5 0;#P connect 15 3 19 2;#P lcolor 7;#P fasten 15 6 20 1 469 294 317 294;#P connect 27 1 26 0;#P connect 2 4 27 1;#P connect 27 2 11 0;#P fasten 15 5 19 3 417 238 417 238;#P connect 27 3 12 0;#P connect 2 5 27 2;#P connect 27 4 28 0;#P fasten 15 7 20 2 521 286 521 286;#P fasten 13 0 27 3 552 96 528 96;#P lcolor 3;#P connect 2 6 13 0;#P connect 15 8 21 2;#P connect 37 0 38 0;#P fasten 37 2 4 0 697 489 597 489;#P connect 38 0 4 0;#P pop;#P hidden newobj 108 283 315 196617 p mapper;#P comment 8 22 16 196617 In;#B frgb 255 255 255;#P window linecount 3;#P hidden newex 17 138 192 196617 jcom.hub jmod.cont_mapper @size 1U @module_type control @description "One-to-one Mapper";#P objectname jcom.hub;#P hidden inlet 17 113 13 0;#P hidden outlet 17 339 13 0;#P window linecount 2;#P hidden newex 552 139 312 196617 jcom.parameter module_out @repetitions 1 @type msg_symbol @description "Destination module of the mapping" @priority 3;#P objectname module_out[1];#P window linecount 1;#P hidden message 194 255 450 196617 /slide_down 0.;#P hidden newex 194 234 61 196617 prepend set;#P bpatcher 0 0 511 61 0 0 jcom.gui.mxt 0;#P objectname jcom.gui.1Uh.a.stereo.mxt;#P hidden connect 5 0 6 0;#P hidden fasten 11 0 6 0 44 131 22 131;#P hidden connect 6 0 4 0;#P hidden connect 99 0 12 0;#P hidden connect 12 0 13 0;#P hidden fasten 12 1 8 0 181 274 113 274;#P hidden connect 13 0 8 0;#P hidden connect 8 2 59 0;#P hidden connect 8 5 97 0;#P hidden connect 8 1 31 0;#P hidden connect 8 9 82 0;#P hidden connect 8 3 49 0;#P hidden connect 8 6 50 0;#P hidden fasten 12 1 1 0 181 224 199 224;#P hidden connect 1 0 2 0;#P hidden fasten 8 7 81 0 253 302 217 302;#P hidden fasten 8 4 81 0 193 303 217 303;#P hidden fasten 8 11 81 0 333 412 217 412;#P hidden connect 8 8 63 0;#P hidden fasten 8 10 32 0 313 302 302 302;#P hidden connect 8 14 83 0;#P hidden connect 8 12 51 0;#P hidden connect 8 13 52 0;#P hidden connect 8 15 24 0;#P hidden connect 8 15 15 0;#P hidden connect 85 0 79 0;#P hidden fasten 27 0 28 0 556 324 538 324 538 260 556 260;#P hidden fasten 28 1 27 0 659 286 556 286;#P hidden fasten 3 0 17 0 557 174 539 174 539 111 557 111;#P hidden fasten 17 1 3 0 641 137 557 137;#P hidden fasten 18 0 19 0 557 244 539 244 539 179 557 179;#P hidden connect 19 0 18 0;#P hidden fasten 20 0 21 0 557 397 539 397 539 335 557 335;#P hidden fasten 21 1 20 0 641 361 557 361;#P hidden fasten 22 0 23 0 557 469 539 469 539 405 557 405;#P hidden connect 23 0 22 0;#P hidden fasten 71 0 70 0 557 621 541 621 541 555 557 555;#P hidden connect 70 0 71 0;#P hidden fasten 73 0 72 0 557 695 541 695 541 629 557 629;#P hidden connect 72 0 73 0;#P hidden fasten 29 0 30 0 559 551 541 551 541 488 559 488;#P hidden fasten 30 1 29 0 656 514 559 514;#P hidden fasten 42 0 41 0 942 174 924 174 924 110 942 110;#P hidden connect 41 0 42 0;#P hidden fasten 44 0 43 0 942 247 924 247 924 183 942 183;#P hidden connect 43 0 44 0;#P hidden fasten 46 0 45 0 944 320 926 320 926 256 944 256;#P hidden connect 45 0 46 0;#P hidden fasten 48 0 47 0 944 393 926 393 926 329 944 329;#P hidden connect 47 0 48 0;#P hidden connect 55 0 76 0;#P hidden connect 76 0 56 0;#P hidden fasten 53 1 54 0 1010 512 946 512;#P hidden fasten 54 0 53 0 946 549 929 549 929 485 947 485;#P hidden connect 98 0 53 0;#P hidden connect 84 0 53 0;#P hidden fasten 61 1 62 0 1021 580 948 580;#P hidden fasten 62 0 61 0 948 616 928 616 928 555 949 555;#P hidden fasten 75 0 74 0 949 704 933 704 933 626 949 626;#P hidden connect 74 0 75 0;#P hidden connect 77 0 55 0;#P hidden fasten 56 0 77 0 944 477 928 477 928 404 1038 404;#P pop;