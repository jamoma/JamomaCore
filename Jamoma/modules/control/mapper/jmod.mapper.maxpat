{
	"patcher" : 	{
		"rect" : [ 454.0, 131.0, 929.0, 721.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 454.0, 131.0, 929.0, 721.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"patching_rect" : [ 66.0, 574.0, 62.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"patching_rect" : [ 106.0, 240.0, 38.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-2",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar clear",
					"patching_rect" : [ 482.0, 631.0, 57.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message clear @description \"Reset by removing all existing mappings. \"",
					"linecount" : 2,
					"patching_rect" : [ 482.0, 653.0, 323.0, 28.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-4",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "clear",
					"patching_rect" : [ 200.0, 21.0, 40.0, 18.0 ],
					"nofsaa" : 1,
					"id" : "obj-5",
					"numinlets" : 1,
					"jsarguments" : [ "Clear" ],
					"filename" : "jsui_textbutton.js",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"patching_rect" : [ 106.0, 262.0, 78.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 106.0, 284.0, 45.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "mapCreate",
					"patching_rect" : [ 7.0, 96.0, 75.0, 18.0 ],
					"nofsaa" : 1,
					"id" : "obj-8",
					"numinlets" : 1,
					"jsarguments" : [ "Create mapping" ],
					"filename" : "jsui_textbutton.js",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mapToReturn[1]",
					"text" : "jcom.parameter mapToReturn @type msg_generic @description \"Displays the currently active parameter\"",
					"linecount" : 2,
					"patching_rect" : [ 66.0, 442.0, 263.0, 28.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-9",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar mapToReturn",
					"patching_rect" : [ 66.0, 419.0, 93.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mapFromReturn[1]",
					"text" : "jcom.parameter mapFromReturn @type msg_generic @description \"Displays the currently active parameter\"",
					"linecount" : 2,
					"patching_rect" : [ 66.0, 381.0, 263.0, 28.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-11",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar mapFromReturn",
					"patching_rect" : [ 66.0, 361.0, 105.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-12",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[6]",
					"text" : "jcom.message mapCreate @description \"Bang to create new mapping.\"",
					"patching_rect" : [ 482.0, 608.0, 326.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-13",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar mapCreate",
					"patching_rect" : [ 482.0, 585.0, 82.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-14",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mapAlgorithm[1]",
					"text" : "jcom.parameter mapAlgorithm @type msg_generic @description \"algorithm to use when mapping. \"",
					"linecount" : 2,
					"patching_rect" : [ 66.0, 542.0, 239.0, 28.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-15",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mapTo[1]",
					"text" : "jcom.parameter mapTo @type msg_toggle @description \"Turn on the listen function for values that you want to map to.\"",
					"linecount" : 2,
					"patching_rect" : [ 482.0, 541.0, 294.0, 28.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-16",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar mapTo",
					"patching_rect" : [ 482.0, 518.0, 63.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-17",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mapFrom[1]",
					"text" : "jcom.parameter mapFrom @type msg_toggle @description \"Turn on the listen function for values that you want to map from.\"",
					"linecount" : 2,
					"patching_rect" : [ 482.0, 478.0, 306.0, 28.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-18",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar mapFrom",
					"patching_rect" : [ 482.0, 455.0, 75.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-19",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Algorithm",
					"patching_rect" : [ 111.0, 100.0, 55.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-20",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "mapAlgorithm",
					"text" : "* 1.3",
					"patching_rect" : [ 166.0, 98.0, 82.0, 17.0 ],
					"wordwrap" : 0,
					"fontname" : "Geneva",
					"clickmode" : 1,
					"id" : "obj-21",
					"numinlets" : 1,
					"keymode" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"lines" : 1,
					"outlettype" : [ "", "int", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"varname" : "mapToReturn",
					"text" : "0",
					"patching_rect" : [ 133.0, 79.0, 115.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "mapTo",
					"patching_rect" : [ 133.0, 61.0, 15.0, 15.0 ],
					"id" : "obj-23",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Map to",
					"patching_rect" : [ 150.0, 62.0, 40.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-24",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"varname" : "mapFromReturn",
					"text" : "0",
					"patching_rect" : [ 7.0, 79.0, 116.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "mapFrom",
					"patching_rect" : [ 7.0, 61.0, 15.0, 15.0 ],
					"id" : "obj-26",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Map from",
					"patching_rect" : [ 24.0, 63.0, 53.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-27",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message update @description \"If you have made changes in the viewer (or an external text editor) then you will need to send this \/update message in order for them to take effect.  This done automatically when you open a fresh file.\"",
					"linecount" : 3,
					"patching_rect" : [ 482.0, 249.0, 381.0, 38.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-28",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar UpdateButton",
					"patching_rect" : [ 482.0, 227.0, 93.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-29",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "UpdateButton",
					"patching_rect" : [ 156.0, 21.0, 40.0, 18.0 ],
					"nofsaa" : 1,
					"id" : "obj-30",
					"numinlets" : 1,
					"jsarguments" : [ "Update" ],
					"filename" : "jsui_textbutton.js",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "SaveMappingsButton",
					"patching_rect" : [ 56.0, 21.0, 40.0, 18.0 ],
					"nofsaa" : 1,
					"id" : "obj-31",
					"numinlets" : 1,
					"jsarguments" : [ "Save" ],
					"filename" : "jsui_textbutton.js",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message save_mappings @description \"Save mappings to a file.  An argument determines the file path and name.  If no argument is given then a file dialog will be presented.\"",
					"linecount" : 2,
					"patching_rect" : [ 482.0, 320.0, 442.0, 28.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-32",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar SaveMappingsButton",
					"patching_rect" : [ 482.0, 297.0, 126.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-33",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message clear @description \"Reset by removing all existing mappings. \"",
					"patching_rect" : [ 482.0, 130.0, 364.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-34",
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/load_mappings",
					"patching_rect" : [ 8.0, 283.0, 81.0, 15.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-35",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message view @description \"View current mappings in a text window.\"",
					"patching_rect" : [ 482.0, 198.0, 362.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-36",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ViewButton",
					"patching_rect" : [ 482.0, 176.0, 84.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-37",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "ViewButton",
					"patching_rect" : [ 112.0, 21.0, 40.0, 18.0 ],
					"nofsaa" : 1,
					"id" : "obj-38",
					"numinlets" : 1,
					"jsarguments" : [ "View" ],
					"filename" : "jsui_textbutton.js",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "LoadMappingsButton",
					"patching_rect" : [ 12.0, 21.0, 40.0, 18.0 ],
					"nofsaa" : 1,
					"id" : "obj-39",
					"numinlets" : 1,
					"jsarguments" : [ "Load" ],
					"filename" : "jsui_textbutton.js",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar LoadMappingsButton",
					"patching_rect" : [ 482.0, 369.0, 124.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-40",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message load_mappings @description \"Load mappings from file. <br\/>NOTE: jcom.mappings will be watching the file and automatically update if the content of the file is changed. This way you can use an external editor to work on the cue script while Jamoma is running.\"",
					"linecount" : 4,
					"patching_rect" : [ 482.0, 391.0, 332.0, 49.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-41",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message modify @description \"Remove an existing mapping.  the required argument is the mapping_name.\"",
					"linecount" : 2,
					"patching_rect" : [ 482.0, 92.0, 268.0, 28.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-42",
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message remove @description \"Remove an existing mapping.  the required argument is the mapping_name.\"",
					"linecount" : 2,
					"patching_rect" : [ 482.0, 55.0, 270.0, 28.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-43",
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/documentation\/generate",
					"patching_rect" : [ 32.0, 151.0, 125.0, 15.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-44",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message create @description \"Create a new mapping. Arguments are: [mapping_name] [mapping_source (OSC)] [optionalorithm to apply][ ->][mapping_destination (OSC)].\"",
					"linecount" : 2,
					"patching_rect" : [ 482.0, 6.0, 425.0, 28.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-45",
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"patching_rect" : [ 216.0, 149.0, 65.0, 26.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-46",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/init",
					"patching_rect" : [ 159.0, 151.0, 37.0, 15.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-47",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.mapper",
					"patching_rect" : [ 66.0, 330.0, 91.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-48",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.mapper @size 2U-half @module_type control @description \"Create and manage mappings of parameters\"",
					"linecount" : 2,
					"patching_rect" : [ 10.0, 184.0, 286.0, 28.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-49",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 10.0, 152.0, 13.0, 13.0 ],
					"hidden" : 1,
					"id" : "obj-50",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 12.0, 217.0, 13.0, 13.0 ],
					"hidden" : 1,
					"id" : "obj-51",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/mapToReturn 0",
					"patching_rect" : [ 189.0, 308.0, 232.0, 15.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-52",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"patching_rect" : [ 189.0, 287.0, 61.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-53",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"patching_rect" : [ 66.0, 522.0, 51.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-54",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"patching_rect" : [ 66.0, 502.0, 56.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-55",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "\/Jamoma",
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"id" : "obj-56",
					"numinlets" : 1,
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"midpoints" : [ 41.5, 174.0, 19.5, 174.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"midpoints" : [ 168.5, 177.0, 19.5, 177.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 1,
					"midpoints" : [ 174.5, 318.0, 75.5, 318.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [ 75.5, 412.0, 61.0, 412.0, 61.0, 357.0, 75.5, 357.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [ 75.5, 473.0, 63.0, 473.0, 63.0, 415.0, 75.5, 415.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
