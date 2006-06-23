max v2;#N vpatcher 10 59 551 753;#P window setfont "Sans Serif" 9.;#P window linecount 2;#P comment 14 59 388 196617 This ensures that we can use standard mathematical functions for mappings between cartesian and spherical coordinates.;#P window linecount 1;#P comment 88 173 120 196617 angle increases upwards;#P comment 88 146 148 196617 angle increases anti-clockwise;#P comment 339 455 81 196617 front view (x/z);#P comment 363 634 30 196617 down;#P comment 279 558 24 196617 left;#P comment 448 558 33 196617 right;#P comment 369 480 18 196617 up;#P comment 423 558 20 196617 -y;#B frgb 255 255 255;#P comment 310 558 19 196617 +y;#B frgb 255 255 255;#P comment 369 615 18 196617 -z;#B frgb 255 255 255;#P comment 369 498 19 196617 +z;#B frgb 255 255 255;#P user panel 306 493 140 140;#X brgb 132 132 132;#X frgb 0 0 0;#X border 0;#X rounded 140;#X shadow 0;#X done;#P comment 339 241 78 196617 top view (x/y);#P comment 365 420 30 196617 rear;#P comment 279 344 24 196617 left;#P comment 448 344 33 196617 right;#P comment 362 266 33 196617 front;#P comment 423 344 20 196617 -y;#B frgb 255 255 255;#P comment 310 344 19 196617 +y;#B frgb 255 255 255;#P comment 369 402 19 196617 -x;#B frgb 255 255 255;#P comment 369 285 20 196617 +x;#B frgb 255 255 255;#P user panel 306 279 140 140;#X brgb 132 132 132;#X frgb 0 0 0;#X border 0;#X rounded 140;#X shadow 0;#X done;#P comment 76 455 105 196617 front view (elevation);#P comment 108 634 30 196617 down;#P comment 24 558 24 196617 left;#P comment 193 558 33 196617 right;#P comment 114 480 18 196617 up;#P comment 171 558 19 196617 0�;#B frgb 255 255 255;#P comment 55 558 19 196617 0�;#B frgb 255 255 255;#P comment 108 615 32 196617 -90�;#B frgb 255 255 255;#P comment 108 498 33 196617 +90�;#B frgb 255 255 255;#P user panel 51 493 140 140;#X brgb 132 132 132;#X frgb 0 0 0;#X border 0;#X rounded 140;#X shadow 0;#X done;#P comment 76 241 95 196617 top view (azimuth);#P hidden newex 268 207 106 196617 bgcolor 250 250 250;#P comment 297 178 79 196617 from -1. to +1.;#P comment 297 162 79 196617 from -1. to +1.;#P comment 297 146 79 196617 from -1. to +1.;#P comment 88 189 141 196617 in meters (from 0. to 10.);#P comment 88 162 126 196617 in degrees \, 0� horizontal \,;#P comment 88 135 122 196617 in degrees \, 0� due front \,;#P comment 19 189 52 196617 Distance:;#P comment 19 162 55 196617 Elevation:;#P comment 19 135 51 196617 Azimuth:;#P comment 274 178 17 196617 z:;#P comment 274 162 18 196617 y:;#P window setfont "Sans Serif" 12.;#P comment 14 105 155 196620 Polar Coordinates (AED);#P window setfont "Sans Serif" 9.;#P comment 110 420 30 196617 rear;#P comment 24 344 24 196617 left;#P comment 193 344 33 196617 right;#P comment 107 266 33 196617 front;#P comment 159 344 33 196617 -90�;#B frgb 255 255 255;#P comment 55 344 32 196617 +90�;#B frgb 255 255 255;#P comment 99 401 50 196617 +/-180�;#B frgb 255 255 255;#P comment 114 284 20 196617 0�;#B frgb 255 255 255;#P user panel 51 279 140 140;#X brgb 132 132 132;#X frgb 0 0 0;#X border 0;#X rounded 140;#X shadow 0;#X done;#P comment 274 146 18 196617 x:;#P window setfont "Sans Serif" 12.;#P comment 269 105 179 196620 Cartesian Coordinates (XYZ);#P window setfont "Sans Serif" 9.;#P comment 14 47 380 196617 Jamoma use a right-handed coordinate system \, with x axis (azimuth 0) due front.;#P comment 19 212 217 196617 angles can take any positive or negative value;#P window setfont "Sans Serif" 18.;#P comment 14 9 342 196626 Jamoma Coordinate System;#P user panel 15 240 218 15;#X brgb 240 240 240;#X frgb 0 0 0;#X border 0;#X rounded 0;#X shadow 0;#X done;#P background;#P objectname arg.2.bg[1];#P user panel 14 239 220 208;#X brgb 255 255 255;#X frgb 191 191 191;#X border 1;#X rounded 0;#X shadow 0;#X done;#P background;#P user panel 15 454 218 15;#X brgb 240 240 240;#X frgb 0 0 0;#X border 0;#X rounded 0;#X shadow 0;#X done;#P background;#P objectname arg.2.bg[2];#P user panel 14 453 220 208;#X brgb 255 255 255;#X frgb 191 191 191;#X border 1;#X rounded 0;#X shadow 0;#X done;#P background;#P user panel 270 240 218 15;#X brgb 240 240 240;#X frgb 0 0 0;#X border 0;#X rounded 0;#X shadow 0;#X done;#P background;#P objectname arg.2.bg[3];#P user panel 269 239 220 208;#X brgb 255 255 255;#X frgb 191 191 191;#X border 1;#X rounded 0;#X shadow 0;#X done;#P background;#P user panel 270 454 218 15;#X brgb 240 240 240;#X frgb 0 0 0;#X border 0;#X rounded 0;#X shadow 0;#X done;#P background;#P objectname arg.2.bg[4];#P user panel 269 453 220 208;#X brgb 255 255 255;#X frgb 191 191 191;#X border 1;#X rounded 0;#X shadow 0;#X done;#P background;#P pop;