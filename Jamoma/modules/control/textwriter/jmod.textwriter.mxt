max v2;#N vpatcher 384 332 1202 728;#P origin 10 -85;#P hidden inlet 229 150 15 0;#P window setfont "Sans Serif" 14.;#P number 58 27 115 14 0 0 8224 3 231 231 231 221 221 221 222 222 222 0 0 0;#P objectname time;#P window setfont "Sans Serif" 9.;#P hidden newex 139 338 54 196617 pvar time;#P user jsui 199 28 25 16 1 0 0 jsui_textbutton.js open;#P objectname open_buffer;#P user jsui 172 28 25 16 1 0 0 jsui_textbutton.js write;#P objectname write;#P hidden newex 400 250 88 196617 pvar open_buffer;#P window linecount 2;#P hidden newex 400 272 285 196617 jcom.message open_buffer @type msg_generic @clipmode none @description "Open the text buffer to view the content";#P objectname jcom.parameter[2];#P window linecount 1;#P hidden newex 400 180 59 196617 pvar write;#P window linecount 2;#P hidden newex 400 202 242 196617 jcom.message write @type msg_generic @clipmode none @description "Write the text buffer to a file";#P objectname jcom.parameter[1];#P user jsui 226 28 25 16 1 0 0 jsui_textbutton.js clear;#P objectname clear;#P window linecount 1;#P hidden newex 400 114 57 196617 pvar clear;#P window linecount 2;#P hidden newex 400 136 240 196617 jcom.message clear @type msg_generic @clipmode none @description "Clear the text buffer";#P objectname jcom.parameter[3];#P window linecount 1;#P hidden newex 229 177 52 196617 jcom.in 1;#P user jsui 5 23 51 30 1 0 0 jcom.jsui_texttoggle.js off on;#P objectname on;#P hidden newex 400 54 44 196617 pvar on;#P hidden newex 400 76 397 196617 jcom.parameter on @type msg_toggle @clipmode none @description "Turn writing on";#P objectname on[1];#P hidden newex 139 234 45 196617 pcontrol;#P hidden newex 139 213 91 196617 jcom.pass open;#P hidden message 38 69 125 196617 /documentation/generate;#P window linecount 2;#P hidden message 16 229 66 196617 \; max refresh;#P hidden message 16 195 75 196617 \; jcom.init bang;#P window linecount 1;#P hidden newex 139 310 100 196617 jalg.textwriter.mxt;#P window linecount 2;#P hidden newex 16 94 339 196617 jcom.hub jmod.textwriter @size 1U-half @module_type control @description "Write data to a text file with a timestamp for each value.";#P objectname jcom.hub;#P hidden inlet 16 70 13 0;#P hidden outlet 16 132 13 0;#P window linecount 1;#P hidden message 163 287 153 196617 /documentation/generate;#P hidden newex 163 265 61 196617 prepend set;#P bpatcher 0 0 256 62 0 0 jcom.gui.mxt 0;#P objectname jcom.gui.1Uh.a.stereo.mxt;#P hidden connect 4 0 5 0;#P hidden fasten 9 0 5 0 43 88 21 88;#P hidden connect 5 0 3 0;#P hidden connect 15 1 10 0;#P hidden connect 10 0 11 0;#P hidden fasten 10 1 6 0 225 255 144 255;#P hidden connect 11 0 6 0;#P hidden connect 6 0 25 0;#P hidden fasten 10 1 1 0 225 255 168 255;#P hidden connect 1 0 2 0;#P hidden connect 27 0 15 0;#P hidden connect 15 0 6 1;#P hidden fasten 12 0 13 0 405 101 393 101 393 49 405 49;#P hidden connect 13 0 12 0;#P hidden connect 17 0 16 0;#P hidden connect 20 0 19 0;#P hidden connect 22 0 21 0;#P pop;