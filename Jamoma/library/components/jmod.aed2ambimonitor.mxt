max v2;#N vpatcher 10 59 238 352;#P outlet 58 224 15 0;#P inlet 58 56 15 0;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 58 200 51 196617 zl join;#P newex 99 176 51 196617 zl join;#P newex 99 152 34 196617 * -1.;#P newex 99 128 51 196617 zl slice 1;#P newex 58 104 51 196617 zl slice 2;#P newex 58 80 79 196617 jmod.pass /aed;#P connect 6 0 0 0;#P connect 0 0 1 0;#P connect 1 0 5 0;#P connect 5 0 7 0;#P connect 1 1 2 0;#P connect 2 0 3 0;#P connect 3 0 4 0;#P connect 4 0 5 1;#P connect 2 1 4 1;#P pop;