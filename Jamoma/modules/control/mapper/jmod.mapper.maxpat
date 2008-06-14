{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 586.0, 182.0, 929.0, 721.0 ],
		"bglocked" : 0,
		"defrect" : [ 586.0, 182.0, 929.0, 721.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.970939,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 66.0, 574.0, 68.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 106.0, 240.0, 45.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message clear @description \"Reset by removing all existing mappings. \"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 441.0, 651.0, 323.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "clear",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"jsarguments" : [ "Clear" ],
					"nofsaa" : 1,
					"presentation_rect" : [ 200.0, 21.0, 40.0, 18.0 ],
					"id" : "obj-5",
					"filename" : "jsui_textbutton.js",
					"numinlets" : 1,
					"patching_rect" : [ 441.0, 629.0, 40.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 106.0, 262.0, 86.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 106.0, 284.0, 49.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "mapCreate",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"jsarguments" : [ "Create mapping" ],
					"nofsaa" : 1,
					"presentation_rect" : [ 7.0, 96.0, 75.0, 18.0 ],
					"id" : "obj-8",
					"filename" : "jsui_textbutton.js",
					"numinlets" : 1,
					"patching_rect" : [ 441.0, 584.0, 75.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mapToReturn[1]",
					"text" : "jcom.parameter mapToReturn @type msg_generic @description \"Displays the currently active parameter\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 66.0, 442.0, 282.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mapFromReturn[1]",
					"text" : "jcom.parameter mapFromReturn @type msg_generic @description \"Displays the currently active parameter\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 66.0, 381.0, 282.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[6]",
					"text" : "jcom.message mapCreate @description \"Bang to create new mapping.\"",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 441.0, 606.0, 364.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mapAlgorithm[1]",
					"text" : "jcom.parameter mapAlgorithm @type msg_generic @description \"algorithm to use when mapping. \"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 66.0, 542.0, 263.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mapTo[1]",
					"text" : "jcom.parameter mapTo @type msg_toggle @description \"Turn on the listen function for values that you want to map to.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 441.0, 539.0, 320.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mapFrom[1]",
					"text" : "jcom.parameter mapFrom @type msg_toggle @description \"Turn on the listen function for values that you want to map from.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 441.0, 476.0, 333.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Algorithm",
					"presentation" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 110.0, 100.0, 57.0, 19.0 ],
					"id" : "obj-20",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 111.0, 100.0, 57.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "mapAlgorithm",
					"text" : "* 1.3",
					"presentation" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "" ],
					"clickmode" : 1,
					"fontname" : "Verdana",
					"presentation_rect" : [ 165.0, 98.0, 93.0, 17.0 ],
					"id" : "obj-21",
					"wordwrap" : 0,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"lines" : 1,
					"keymode" : 1,
					"patching_rect" : [ 66.0, 481.0, 93.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"varname" : "mapToReturn",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 133.0, 79.0, 115.0, 17.0 ],
					"id" : "obj-22",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 67.0, 422.0, 115.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "mapTo",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 133.0, 61.0, 15.0, 15.0 ],
					"id" : "obj-23",
					"numinlets" : 1,
					"patching_rect" : [ 441.0, 518.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Map to",
					"presentation" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 149.0, 62.0, 43.0, 19.0 ],
					"id" : "obj-24",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 150.0, 62.0, 43.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"varname" : "mapFromReturn",
					"text" : "0",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 6.0, 79.0, 116.0, 17.0 ],
					"id" : "obj-25",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 67.0, 362.0, 116.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "mapFrom",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 7.0, 61.0, 15.0, 15.0 ],
					"id" : "obj-26",
					"numinlets" : 1,
					"patching_rect" : [ 441.0, 455.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Map from",
					"presentation" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 23.0, 63.0, 56.0, 19.0 ],
					"id" : "obj-27",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 24.0, 63.0, 56.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message update @description \"If you have made changes in the viewer (or an external text editor) then you will need to send this /update message in order for them to take effect.  This done automatically when you open a fresh file.\"",
					"linecount" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-28",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 441.0, 247.0, 413.0, 42.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "UpdateButton",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"jsarguments" : [ "Update" ],
					"nofsaa" : 1,
					"presentation_rect" : [ 156.0, 21.0, 40.0, 18.0 ],
					"id" : "obj-30",
					"filename" : "jsui_textbutton.js",
					"numinlets" : 1,
					"patching_rect" : [ 441.0, 224.0, 40.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "SaveMappingsButton",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"jsarguments" : [ "Save" ],
					"nofsaa" : 1,
					"presentation_rect" : [ 56.0, 21.0, 40.0, 18.0 ],
					"id" : "obj-31",
					"filename" : "jsui_textbutton.js",
					"numinlets" : 1,
					"patching_rect" : [ 441.0, 296.0, 40.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message save_mappings @description \"Save mappings to a file.  An argument determines the file path and name.  If no argument is given then a file dialog will be presented.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-32",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 441.0, 318.0, 487.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message clear @description \"Reset by removing all existing mappings. \"",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-34",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 482.0, 130.0, 396.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/load_mappings",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-35",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 8.0, 283.0, 88.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message view @description \"View current mappings in a text window.\"",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-36",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 441.0, 182.0, 390.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "ViewButton",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"jsarguments" : [ "View" ],
					"nofsaa" : 1,
					"presentation_rect" : [ 112.0, 21.0, 40.0, 18.0 ],
					"id" : "obj-38",
					"filename" : "jsui_textbutton.js",
					"numinlets" : 1,
					"patching_rect" : [ 441.0, 160.0, 40.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "LoadMappingsButton",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"jsarguments" : [ "Load" ],
					"nofsaa" : 1,
					"presentation_rect" : [ 12.0, 21.0, 40.0, 18.0 ],
					"id" : "obj-39",
					"filename" : "jsui_textbutton.js",
					"numinlets" : 1,
					"patching_rect" : [ 441.0, 368.0, 40.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message load_mappings @description \"Load mappings from file. <br/>NOTE: jcom.mappings will be watching the file and automatically update if the content of the file is changed. This way you can use an external editor to work on the cue script while Jamoma is running.\"",
					"linecount" : 4,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-41",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 441.0, 389.0, 363.0, 54.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message modify @description \"Remove an existing mapping.  the required argument is the mapping_name.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-42",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 482.0, 92.0, 294.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message remove @description \"Remove an existing mapping.  the required argument is the mapping_name.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-43",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 482.0, 55.0, 294.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-44",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 32.0, 151.0, 135.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message create @description \"Create a new mapping. Arguments are: [mapping_name] [mapping_source (OSC)] [optionalorithm to apply][ ->][mapping_destination (OSC)].\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-45",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 482.0, 6.0, 477.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-46",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 216.0, 149.0, 68.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-47",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 159.0, 151.0, 37.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.mapper",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-48",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 66.0, 330.0, 91.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.mapper @module_type control @description \"Create and manage mappings of parameters\"",
					"linecount" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-49",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 8.0, 185.0, 382.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-50",
					"numinlets" : 0,
					"patching_rect" : [ 10.0, 152.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-51",
					"numinlets" : 1,
					"patching_rect" : [ 11.0, 230.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mapToReturn /editing_this_module/mapTo",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-52",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 189.0, 308.0, 232.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-53",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 189.0, 287.0, 68.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-54",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 66.0, 522.0, 54.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-55",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 66.0, 502.0, 58.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"id" : "obj-56",
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-48", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 75.5, 474.0, 51.0, 474.0, 51.0, 417.0, 76.5, 417.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 75.5, 411.0, 51.0, 411.0, 51.0, 357.0, 76.5, 357.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 41.5, 174.0, 17.5, 174.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 168.5, 177.0, 17.5, 177.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 75.5, 594.0, 51.0, 594.0, 51.0, 477.0, 75.5, 477.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [ 182.5, 318.0, 75.5, 318.0 ]
				}

			}
 ]
	}

}
