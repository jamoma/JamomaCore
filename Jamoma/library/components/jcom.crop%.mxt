max v2;#N vpatcher 688 187 1137 433;#P origin 0 11;#N comlet Outgoing cropped size;#P outlet 282 206 15 0;#P window setfont "Sans Serif" 9.;#P window linecount 1;#N vpatcher 499 426 953 695;#P window setfont "Sans Serif" 9.;#P newex 29 51 40 196617 change;#P newex 269 122 91 196617 scale -240 0 3. 1.;#P flonum 329 196 31 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 329 144 55 196617 clip 0 240;#P newex 329 167 85 196617 scale 240 0 0. 1.;#P newex 269 96 70 196617 split -2000 0;#P newex 329 216 40 196617 s zoom;#P number 206 196 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 168 171 27 196617 int;#P newex 185 144 27 196617 +;#P newex 206 216 55 196617 s offset-y;#P number 115 196 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 29 73 31 196617 sel 1;#P inlet 29 31 15 0;#P newex 77 166 27 196617 int;#P newex 94 139 27 196617 +;#P message 269 74 20 196617 \$6;#P message 94 83 35 196617 \$5 \$6;#P newex 94 107 39 196617 unpack;#P newex 94 56 51 196617 route 3 6;#P inlet 94 31 15 0;#P newex 115 216 55 196617 s offset-x;#P connect 8 0 21 0;#P connect 21 0 9 0;#P connect 9 0 7 0;#P connect 1 0 2 0;#P connect 2 0 4 0;#P connect 4 0 3 0;#P connect 3 0 6 0;#P connect 6 0 7 1;#P connect 7 0 6 1;#P connect 6 0 10 0;#P connect 10 0 0 0;#P fasten 3 1 12 0 128 127 190 127;#P connect 12 0 13 1;#P fasten 13 0 12 1 173 191 216 191 216 139 207 139;#P connect 12 0 14 0;#P connect 14 0 11 0;#P connect 2 1 5 0;#P connect 5 0 16 0;#P connect 16 0 20 0;#P connect 16 1 18 0;#P connect 18 0 17 0;#P connect 17 0 19 0;#P connect 20 0 19 0;#P connect 19 0 15 0;#P pop;#P newobj 301 94 72 196617 p zoom-offset;#N vpatcher 60 74 558 567;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P user com 212 433 204 196617 20;#K set 0 16748 25976 24942 25701 29216 21093 26227 30061 8266 25966 29541 28265 30067 8237 8311 30583 11873 29290 11886 28416;#K end;#N comlet Mouse-click;#P outlet 160 418 15 0;#P message 160 397 20 196617 \$3;#P outlet 114 416 15 0;#P inlet 114 37 15 0;#P window linecount 3;#P comment 24 175 84 196617 Routing values only when mouse is clicked.;#P window linecount 1;#P newex 114 341 263 196617 pack 0 0 0 0 0 0 0;#P newex 114 194 42 196617 route 1;#P message 114 176 35 196617 \$2 \$1;#P newex 114 150 51 196617 listfunnel;#P comment 122 367 301 196617 start x/y position \, end x/y position \, difference in x/y position;#P newex 184 122 150 196617 buddy 3;#P window linecount 5;#P comment 353 165 108 196617 The initial position of the cursor is selected on mouse-down \, and subsequent positions are subtracted.;#P window linecount 1;#P newex 366 319 27 196617 -;#P newex 324 319 27 196617 -;#P newex 184 143 40 196617 change;#P newex 184 164 40 196617 sel 1 0;#P newex 213 212 27 196617 int;#P newex 184 212 27 196617 int;#P newex 183 88 98 196617 unpack 0 0 0;#P newex 114 63 110 196617 route mouse mouseidle;#P connect 16 0 0 0;#P connect 0 0 11 0;#P connect 11 0 12 0;#P connect 12 0 13 0;#P connect 13 0 14 0;#P connect 14 0 17 0;#P connect 2 0 14 1;#P fasten 0 0 18 0 119 89 20 89 20 454 195 454 195 390 165 390;#P connect 18 0 19 0;#P fasten 0 1 1 0 169 84 188 84;#P fasten 0 0 1 0 119 84 188 84;#P connect 1 2 9 0;#P connect 9 0 5 0;#P connect 5 0 4 0;#P connect 4 0 2 0;#P connect 3 0 14 2;#P connect 9 1 2 1;#P connect 4 0 3 0;#P connect 9 2 3 1;#P connect 9 1 14 3;#P connect 1 0 9 1;#P connect 9 2 14 4;#P connect 1 1 9 2;#P connect 2 0 6 0;#P connect 9 1 6 0;#P connect 6 0 14 5;#P connect 2 0 6 1;#P connect 3 0 7 0;#P connect 9 2 7 0;#P connect 7 0 14 6;#P connect 3 0 7 1;#P pop;#P newobj 282 51 73 196617 p mouse-stuff;#N comlet Outgoing cropped video;#P outlet 208 203 15 0;#N comlet Outgoing video + rectangle;#P outlet 38 203 15 0;#N comlet Incoming mouse-data (320x240);#P inlet 282 30 15 0;#N comlet Incoming video;#P inlet 38 24 15 0;#P newex 65 88 65 196617 v draw-rect;#N vpatcher 118 99 1046 511;#P origin -79 0;#P window setfont "Sans Serif" 9.;#P newex 571 67 64 196617 r draw-rect;#P newex 600 320 31 196617 print;#P button 593 226 15 0;#P message 475 131 20 196617 \$6;#P message 438 131 20 196617 \$5;#P newex 475 153 23 196617 abs;#P newex 438 153 23 196617 abs;#P message 341 156 20 196617 \$1;#P message 341 117 35 196617 \$2 \$4;#P newex 341 136 31 196617 lsort;#P message 304 156 20 196617 \$1;#P message 304 117 35 196617 \$1 \$3;#P newex 304 136 31 196617 lsort;#P newex 656 198 39 196617 unpack;#P newex 607 198 39 196617 unpack;#P message 656 157 35 196617 \$2 \$4;#P newex 656 176 31 196617 lsort;#P message 607 157 35 196617 \$1 \$3;#P newex 607 176 31 196617 lsort;#P newex 304 68 42 196617 route 7;#P newex 704 176 49 196617 deferlow;#P message 704 198 26 196617 120;#P newex 704 155 45 196617 loadbang;#P newex 341 260 27 196617 * 1.;#P newex 304 260 27 196617 * 1.;#P newex 475 260 27 196617 * 1.;#P newex 438 260 27 196617 * 1.;#P newex 209 182 39 196617 / 240.;#P newex 156 138 52 196617 route dim;#P newex 156 160 63 196617 unpack 0. 0.;#P newex 156 118 71 196617 jit.matrixinfo;#P inlet 156 32 15 0;#P newex 156 182 39 196617 / 320.;#P comment 255 168 45 196617 clicked x \, y pos;#P outlet 466 372 15 0;#P outlet 333 372 15 0;#P newex 608 280 65 196617 v draw-rect;#P inlet 304 32 15 0;#P newex 608 257 109 196617 pak framerect 0 0 0 0;#P newex 466 345 85 196617 pak size 0 0;#P number 341 174 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 304 174 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 267 301 85 196617 pak offset 0 0;#P number 475 174 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 438 174 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 401 301 85 196617 pak dim 0 0;#P user panel 601 248 129 56;#X brgb 191 191 191;#X frgb 0 0 0;#X border 0;#X rounded 0;#X shadow 0;#X done;#P comment 739 256 136 196617 This is what draws the rectangle in the movie. Using a patcher-variable to send the information.;#P comment 387 167 45 196617 diff x \, y pos;#P comment 7 123 148 196617 This step is necessary to compensate if the incoming video has a different size than 320 x 240 (the size of the drawing window).;#P comment 347 71 194 196617 Routing values when ctrl-key is pressed;#P connect 19 0 20 0;#P connect 20 0 22 0;#P connect 22 0 21 0;#P connect 21 0 18 0;#P connect 21 1 23 0;#P connect 13 0 31 0;#P fasten 31 0 39 0 309 96 309 96;#P connect 50 0 39 0;#P connect 39 0 38 0;#P connect 38 0 40 0;#P connect 40 0 9 0;#P connect 9 0 26 0;#P connect 26 0 8 1;#P connect 18 0 26 1;#P connect 8 0 15 0;#P connect 5 0 15 0;#P fasten 31 0 42 0 309 103 346 103;#P connect 50 0 42 0;#P connect 42 0 41 0;#P connect 41 0 43 0;#P connect 43 0 10 0;#P connect 10 0 27 0;#P connect 27 0 8 2;#P connect 23 0 27 1;#P fasten 31 0 46 0 309 103 443 103;#P connect 50 0 46 0;#P connect 46 0 44 0;#P connect 44 0 6 0;#P connect 6 0 24 0;#P connect 24 0 5 1;#P connect 18 0 24 1;#P connect 11 0 16 0;#P fasten 31 0 47 0 309 103 480 103;#P connect 50 0 47 0;#P connect 47 0 45 0;#P connect 45 0 7 0;#P connect 7 0 25 0;#P connect 25 0 5 2;#P connect 23 0 25 1;#P connect 24 0 11 1;#P connect 25 0 11 2;#P connect 14 0 49 0;#P fasten 31 0 33 0 309 103 612 103;#P connect 33 0 32 0;#P connect 32 0 36 0;#P connect 48 0 12 0;#P connect 12 0 14 0;#P connect 36 0 12 1;#P fasten 31 0 35 0 309 103 661 103;#P connect 35 0 34 0;#P connect 34 0 37 0;#P connect 29 0 12 2;#P connect 37 0 12 2;#P connect 36 1 12 3;#P connect 28 0 30 0;#P connect 30 0 29 0;#P connect 37 1 12 4;#P connect 29 0 12 4;#P pop;#P newobj 208 94 84 196617 p crop-rectangle;#P newex 38 53 40 196617 t b b l;#P newex 38 117 110 196617 jit.lcd 4 char 320 240;#P newex 208 123 205 196617 jit.submatrix @dim 10 10 @offset 100 100;#B color 5;#P window linecount 2;#P comment 51 141 123 196617 Click and drag inside this window to crop image.;#P connect 6 0 3 0;#P connect 3 0 2 0;#P connect 3 2 2 0;#P connect 5 0 2 0;#P connect 2 0 8 0;#P connect 3 1 5 0;#P connect 6 0 4 0;#P connect 6 0 1 0;#P connect 4 0 1 0;#P connect 1 0 9 0;#P connect 7 0 10 0;#P connect 10 0 4 1;#P connect 4 1 12 0;#P connect 10 1 11 0;#P connect 10 0 11 1;#P pop;