max v2;#N vpatcher 191 54 1134 535;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P hidden newex 690 161 81 196617 pvar MIDIOUT 2;#P hidden newex 489 161 72 196617 pvar MIDIIN 2;#P hidden newex 525 104 48 196617 loadbang;#P user umenu 79 21 100 196647 1 64 37 1;#X add "to MaxMSP 1";#X add "to MaxMSP 2";#P objectname MIDIIN;#P user umenu 79 41 100 196647 1 64 57 1;#X add "AU DLS Synth 1";#X add "from MaxMSP 1";#X add "from MaxMSP 2";#P objectname MIDIOUT;#P hidden newex 761 186 76 196617 s $0__outport;#P hidden newex 551 186 70 196617 s $0__inport;#P hidden newex 489 138 46 196617 midiinfo;#P hidden newex 690 137 46 196617 midiinfo;#P window setfont "Sans Serif" 18.;#N vpatcher 30 49 745 731;#P window setfont "Sans Serif" 9.;#N thispatcher;#Q end;#P hidden newobj 71 451 61 196617 thispatcher;#P window linecount 1;#P hidden newex 71 409 32 196617 sel 1;#P hidden newex 71 388 151 196617 jcom.oscroute /open_inspector;#P window linecount 0;#P hidden newex 71 430 40 196617 t front;#P hidden inlet 71 367 15 0;#P hidden newex 71 532 88 196617 bgcolor 48 48 48;#P bpatcher 378 8 51 316 0 0 jalg.bcf2000.mxt 0 $0_ 8;#P objectname jalg.bcf2000.mxt[7];#P bpatcher 325 8 51 316 0 0 jalg.bcf2000.mxt 0 $0_ 7;#P objectname jalg.bcf2000.mxt[6];#P bpatcher 272 8 51 316 0 0 jalg.bcf2000.mxt 0 $0_ 6;#P objectname jalg.bcf2000.mxt[5];#P bpatcher 219 8 51 316 0 0 jalg.bcf2000.mxt 0 $0_ 5;#P objectname jalg.bcf2000.mxt[4];#P bpatcher 166 8 51 316 0 0 jalg.bcf2000.mxt 0 $0_ 4;#P objectname jalg.bcf2000.mxt[3];#P bpatcher 113 8 51 316 0 0 jalg.bcf2000.mxt 0 $0_ 3;#P objectname jalg.bcf2000.mxt[2];#P bpatcher 60 8 51 316 0 0 jalg.bcf2000.mxt 0 $0_ 2;#P objectname jalg.bcf2000.mxt[1];#P bpatcher 7 8 51 316 0 0 jalg.bcf2000.mxt 0 $0_ 1;#P objectname jalg.bcf2000.mxt;#P hidden connect 9 0 11 0;#P hidden connect 11 0 12 0;#P hidden connect 12 0 10 0;#P hidden connect 10 0 13 0;#P pop;#P hidden newobj 295 245 103 196626 p bcf2000;#P objectname inspector;#P window setfont "Sans Serif" 9.;#P hidden message 49 72 191 196617 /preset/store 1 default \, /preset/write;#B color 3;#P hidden newex 119 303 167 196617 jcom.return return_c @range 0. 1.;#P hidden newex 119 173 43 196617 jcom.in;#P comment 4 43 65 196617 MIDI out:;#B frgb 149 149 149;#P hidden newex 119 221 45 196617 pcontrol;#P hidden newex 119 197 78 196617 jcom.pass open;#P window linecount 2;#P hidden newex 690 211 184 196617 jcom.message midi_out @description "Port to send MIDI messages to.";#P hidden message 23 364 65 196617 \; max refresh;#P window linecount 1;#P hidden message 185 89 31 196617 /init;#N vpatcher 585 154 1134 690;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 70 90 180 196617 jcom.oscroute /param_a /message_b;#P outlet 70 474 15 0;#P inlet 70 50 15 0;#P window setfont "Sans Serif" 18.;#P window linecount 1;#P comment 70 155 398 196626 Substitute this patch for your algorithm;#B frgb 100 103 230;#P connect 1 0 3 0;#P pop;#P hidden newobj 119 278 88 196617 p your_algorithm;#P comment 4 21 65 196617 MIDI in:;#B frgb 149 149 149;#P window linecount 2;#P hidden newex 16 114 406 196617 jcom.hub jmod.bcf2000.mxt @size 1U-half @module_type control @inspector 1 @description "A module interfacing with the Behringer BCF2000 motorized MIDI fader.";#P objectname jcom.hub;#P hidden inlet 16 90 13 0;#P hidden outlet 16 316 13 0;#P hidden newex 489 211 184 196617 jcom.parameter midi_in @description "Port to receive MIDI messages on.";#P objectname midi_in;#P window linecount 1;#P hidden message 225 279 153 196617 /open_inspector 0;#P hidden newex 225 258 61 196617 prepend set;#P hidden message 56 89 125 196617 /documentation/generate;#B color 3;#P bpatcher 0 0 256 62 0 0 jcom.gui.mxt 0 $0_;#P objectname jcom.gui.audio-component.mxt;#P hidden fasten 18 0 7 0 54 110 21 110;#P hidden fasten 1 0 7 0 61 110 21 110;#P hidden connect 6 0 7 0;#P hidden fasten 10 0 7 0 190 110 21 110;#P hidden connect 7 0 5 0;#P hidden connect 16 0 13 0;#P hidden connect 13 0 14 0;#P hidden fasten 13 1 9 0 192 269 124 269;#P hidden connect 14 0 9 0;#P hidden connect 9 0 17 0;#P hidden fasten 13 1 2 0 192 249 230 249;#P hidden connect 2 0 3 0;#P hidden fasten 13 1 19 0 192 229 300 229;#P hidden connect 21 0 27 0;#P hidden fasten 4 0 27 0 494 249 482 249 482 158 494 158;#P hidden connect 27 0 4 0;#P hidden connect 26 0 21 1;#P hidden connect 27 1 22 0;#P hidden fasten 26 0 20 0 530 129 695 129;#P hidden connect 20 0 28 0;#P hidden fasten 12 0 28 0 695 247 684 247 684 158 695 158;#P hidden connect 28 0 12 0;#P hidden connect 28 1 23 0;#P pop;