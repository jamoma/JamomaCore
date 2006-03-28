max v2;#N vpatcher 64 89 917 551;#P window setfont "Sans Serif" 9.;#P window linecount 3;#P hidden newex 419 252 396 196617 jmod.message.mxt $0_ /update @description "If you have made changes in the viewer (or an external text editor) then you will need to send this /update message in order for them to take effect.  This done automatically when you open a fresh file.";#P window linecount 1;#P hidden newex 419 233 93 196617 pvar UpdateButten;#P user jsui 102 41 51 19 1 0 0 jsui_textbutton.js Update;#P objectname UpdateButton;#P user jsui 156 28 93 19 1 0 0 jsui_textbutton.js "Save Mappings";#P objectname SaveMappingsButton;#P window linecount 3;#P hidden newex 419 319 310 196617 jmod.message.mxt $0_ /save_mappings @description "Save mappings to a file.  An argument determines the file path and name.  If no argument is given then a file dialog will be presented.";#P window linecount 1;#P hidden newex 419 300 126 196617 pvar SaveMappingsButton;#P window linecount 2;#P hidden newex 419 129 209 196617 jmod.message.mxt $0_ /clear @description "Reset by removing all existing mappings. ";#P window linecount 1;#P hidden message 151 298 81 196617 /load_mappings;#P hidden newex 419 208 405 196617 jmod.message.mxt $0_ /view @description "View current mappings in a text window.";#P hidden newex 419 189 84 196617 pvar OpenButten;#P user jsui 102 20 51 19 1 0 0 jsui_textbutton.js View;#P objectname OpenButten;#P user jsui 6 28 93 19 1 0 0 jsui_textbutton.js "Load Mappings";#P objectname LoadMappingsButton;#P hidden newex 419 368 124 196617 pvar LoadMappingsButton;#P window linecount 4;#P hidden newex 419 387 347 196617 jmod.message.mxt $0_ /load_mappings @description "Load mappings from file. <br/>NOTE: jmod.mappings will be watching the file and automatically update if the content of the file is changed. This way you can use an external editor to work on the cue script while Jamoma is running.";#P window linecount 2;#P hidden newex 419 91 298 196617 jmod.message.mxt $0_ /modify @description "Remove an existing mapping.  the required argument is the mapping_name.";#P hidden newex 419 54 298 196617 jmod.message.mxt $0_ /remove @description "Remove an existing mapping.  the required argument is the mapping_name.";#P window linecount 1;#P hidden newex 101 215 68 196617 prepend open;#P hidden newex 101 239 45 196617 pcontrol;#P hidden newex 101 191 103 196617 jmod.oscroute /open;#P hidden message 43 83 50 196617 /autodoc;#P window linecount 3;#P hidden newex 419 5 311 196617 jmod.message.mxt $0_ /create @description "Create a new mapping. Arguments are: [mapping_name] [mapping_source (OSC)] [optional algorithm to apply][ ->][mapping_destination (OSC)].";#P window linecount 2;#P hidden message 21 400 65 196617 \; max refresh;#P hidden message 21 363 75 196617 \; jmod.init bang;#P window linecount 1;#P hidden newex 101 272 87 196617 jmod.mapping.alg;#P window linecount 4;#P hidden newex 21 108 170 196617 jmod.hub $0_ jmod.mappings $1 @size 1U-half @module_type control @description "Create and manage mappings of parameters";#P objectname jmod.hub;#P hidden inlet 21 84 13 0;#P hidden outlet 21 310 13 0;#P bpatcher 0 0 256 62 0 0 jmod.gui.mxt 0 $0_;#P objectname jmod.gui.1Uh.a.stereo.mxt;#P window linecount 3;#P hidden newex 196 114 79 196617 pattrstorage @autorestore 0 @savemode 0;#X client_rect 14 59 654 299;#X storage_rect 0 0 640 240;#P objectname jmod.mappings;#P window linecount 1;#P hidden message 207 273 153 196617 /disable_ui_updates 0;#P hidden newex 207 252 61 196617 prepend set;#P hidden connect 5 0 6 0;#P hidden fasten 11 0 6 0 48 102 26 102;#P hidden fasten 7 0 4 0 106 303 26 303;#P hidden connect 6 0 4 0;#P hidden connect 6 1 12 0;#P hidden connect 12 0 14 0;#P hidden connect 14 0 13 0;#P hidden fasten 12 1 7 0 199 263 106 263;#P hidden connect 13 0 7 0;#P hidden connect 23 0 7 0;#P hidden connect 2 0 6 1;#P hidden connect 6 2 2 0;#P hidden fasten 12 1 0 0 199 243 212 243;#P hidden connect 0 0 1 0;#P hidden connect 21 0 22 0;#P connect 29 0 30 0;#P hidden connect 25 0 26 0;#P hidden connect 18 0 17 0;#P pop;