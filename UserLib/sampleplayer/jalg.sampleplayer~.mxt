max v2;#N vpatcher 476 45 1333 519;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 451 246 73 196617 loadmess stop;#N vpatcher 10 59 610 459;#P window setfont "Sans Serif" 9.;#P message 51 197 14 196617 0;#P newex 51 155 43 196617 route 0;#P newex 51 116 40 196617 change;#P newex 50 71 29 196617 t f b;#P newex 51 95 27 196617 - 0.;#P newex 51 136 31 196617 == 0;#P newex 50 50 76 196617 snapshot~ 300;#P inlet 50 30 15 0;#P outlet 51 248 15 0;#P connect 1 0 2 0;#P connect 2 0 5 0;#P connect 5 1 4 0;#P connect 4 0 6 0;#P connect 6 0 3 0;#P connect 3 0 7 0;#P connect 7 0 8 0;#P connect 8 0 0 0;#P connect 5 0 4 1;#P pop;#P newobj 618 297 38 196617 p done;#P newex 619 316 81 196617 s $1_xxx_done;#B color 14;#P newex 113 76 100 196617 sel 0 bang;#P newex 635 99 49 196617 float 1.;#P newex 729 145 40 196617 t b 1.;#P message 756 98 14 196617 0;#P message 741 98 14 196617 1;#P toggle 741 117 15 0;#P newex 714 76 41 196617 sel 1 0;#P newex 616 144 29 196617 gate;#P newex 635 120 29 196617 t b f;#P newex 556 178 35 196617 * 1.;#P message 585 103 23 196617 1.;#P message 556 103 22 196617 -1.;#P newex 556 75 69 196617 sel 1 0;#P outlet 569 421 15 0;#P newex 204 117 72 196617 append 0 -1 2;#P newex 203 97 78 196617 prepend import;#P newex 136 310 142 196617 prepend /sample/buffername;#P message 136 261 136 196617 $0_sample 1;#N vpatcher 10 59 610 459;#P window setfont "Sans Serif" 9.;#P message 104 75 29 196617 stop;#P newex 50 50 41 196617 sel 1 0;#P message 50 75 51 196617 startloop;#P inlet 50 30 15 0;#P outlet 50 167 15 0;#P connect 1 0 3 0;#P connect 3 0 2 0;#P connect 2 0 0 0;#P connect 4 0 0 0;#P fasten 3 1 4 0 70 71 109 71;#P pop;#P newobj 441 100 37 196617 p play;#P newex 283 310 109 196617 prepend /sample/size;#P outlet 394 421 15 0;#P newex 394 310 114 196617 prepend /sample/name;#P newex 283 286 26 196617 int;#P newex 255 237 105 196617 info~ $0_sample;#P newex 508 224 230 196617 jcom.oscroute /start /stop;#P inlet 241 31 14 0;#P outlet 520 421 15 0;#P newex 629 245 104 196617 loadmess loopinterp 1;#P message 374 100 43 196617 loop \$1;#P newex 556 199 35 196617 sig~ 1;#P newex 520 275 109 196617 groove~ $0_sample 2;#P message 113 130 72 196617 import 0 -1 2;#P newex 132 166 133 196617 buffer~ $0_sample 1000 2;#P newex 240 48 563 196617 jcom.oscroute /sf_open /loop /play /sample /reverse /speed/ratio /speed/active;#P newex 394 283 51 196617 tosymbol;#P newex 204 137 173 196617 jcom.post jmod.sampleplayer~.mxt:;#P fasten 2 0 35 0 245 73 118 73;#P connect 35 1 4 0;#P connect 35 0 4 0;#P connect 21 0 3 0;#P connect 4 0 3 0;#P fasten 3 1 18 0 260 188 141 188;#P connect 18 0 19 0;#P connect 35 2 20 0;#P connect 20 0 21 0;#P connect 21 0 0 0;#P connect 10 0 2 0;#P connect 3 1 12 0;#P fasten 12 6 13 0 338 281 288 281;#P connect 13 0 16 0;#P connect 2 1 7 0;#P fasten 12 7 1 0 351 276 399 276;#P connect 1 0 14 0;#P fasten 19 0 15 0 141 374 399 374;#P connect 14 0 15 0;#P fasten 16 0 15 0 288 374 399 374;#P connect 2 2 17 0;#P connect 2 3 11 0;#P fasten 7 0 5 0 379 271 525 271;#P connect 6 0 5 0;#P fasten 8 0 5 0 634 266 525 266;#P fasten 38 0 5 0 456 266 525 266;#P fasten 17 0 5 0 446 266 525 266;#P connect 5 0 9 0;#P connect 2 4 23 0;#P connect 23 0 24 0;#P fasten 33 0 26 0 734 170 561 170;#P fasten 28 0 26 0 621 166 561 166;#P fasten 25 0 26 0 590 145 561 145;#P connect 24 0 26 0;#P connect 26 0 6 0;#P fasten 11 0 5 1 513 243 574 243;#P connect 5 1 22 0;#P fasten 33 1 26 1 764 174 586 174;#P fasten 27 1 26 1 659 172 586 172;#P connect 23 1 25 0;#P fasten 30 0 28 0 746 140 621 140;#P connect 11 1 5 2;#P connect 5 2 37 0;#P connect 37 0 36 0;#P fasten 29 0 34 0 719 96 640 96;#P connect 2 5 34 0;#P connect 34 0 27 0;#P connect 27 0 28 1;#P connect 2 6 29 0;#P connect 29 1 33 0;#P connect 29 0 31 0;#P connect 31 0 30 0;#P connect 32 0 30 0;#P connect 29 1 32 0;#P pop;