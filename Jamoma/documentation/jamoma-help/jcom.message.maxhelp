{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 256.0, 58.0, 701.0, 679.0 ],
		"bglocked" : 0,
		"defrect" : [ 256.0, 58.0, 701.0, 679.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
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
					"maxclass" : "comment",
					"text" : "This helps keeping the patch tidy",
					"fontsize" : 10,
					"patching_rect" : [ 332.0, 323.0, 175.0, 18.0 ],
					"id" : "obj-1",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_menu",
					"text" : "jcom.message my_menu @type msg_symbol @repetitions 0 @description \"My menu\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10,
					"patching_rect" : [ 330.0, 493.0, 272.0, 30.0 ],
					"id" : "obj-2",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_toggle",
					"text" : "jcom.message my_toggle @repetitions 0 @type msg_toggle @description \"My toggle\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10,
					"patching_rect" : [ 330.0, 457.0, 254.0, 30.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_int",
					"text" : "jcom.message my_int @range/clipmode none @type msg_int @ramp/drive scheduler @repetitions 0 @description \"My int\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10,
					"patching_rect" : [ 330.0, 420.0, 315.0, 30.0 ],
					"id" : "obj-4",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_float",
					"text" : "jcom.message my_float @range/clipmode none @type msg_float @ramp/drive scheduler @description \"My float\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10,
					"patching_rect" : [ 330.0, 384.0, 297.0, 30.0 ],
					"id" : "obj-5",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_slider",
					"text" : "jcom.message my_slider @type msg_int @range/bounds 0 127 @range/clipmode both @ramp/drive scheduler @repetitions 0 @description \"My slider\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10,
					"patching_rect" : [ 330.0, 348.0, 415.0, 30.0 ],
					"id" : "obj-6",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you want to use menu text item instead of index numbers, this is how to do it.",
					"linecount" : 2,
					"fontsize" : 10,
					"patching_rect" : [ 944.0, 407.0, 219.0, 30.0 ],
					"id" : "obj-7",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "pvar is used for wireless communication between the GUI interface and jcom.parameter.",
					"linecount" : 2,
					"fontsize" : 10,
					"patching_rect" : [ 332.0, 294.0, 303.0, 30.0 ],
					"id" : "obj-8",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "MyMessage",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10,
					"patching_rect" : [ 111.0, 229.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-9",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10,
					"patching_rect" : [ 418.0, 230.0, 37.0, 18.0 ],
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mymessage $1",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 418.0, 250.0, 101.0, 16.0 ],
					"id" : "obj-11",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"outlettype" : [ "bang" ],
					"fontsize" : 10,
					"patching_rect" : [ 238.0, 566.0, 54.0, 18.0 ],
					"id" : "obj-12",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.parameter.gain",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 118.0, 580.0, 127.0, 16.0 ],
					"id" : "obj-13",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 238.0, 615.0, 79.0, 28.0 ],
					"id" : "obj-14",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.parameter",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 34.0, 580.0, 100.0, 16.0 ],
					"id" : "obj-15",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend help",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"hidden" : 1,
					"patching_rect" : [ 34.0, 603.0, 78.0, 18.0 ],
					"id" : "obj-16",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"hidden" : 1,
					"patching_rect" : [ 34.0, 623.0, 55.0, 18.0 ],
					"id" : "obj-17",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 238.0, 588.0, 60.0, 18.0 ],
					"id" : "obj-18",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s incomming",
					"fontsize" : 10,
					"patching_rect" : [ 418.0, 270.0, 78.0, 18.0 ],
					"id" : "obj-19",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"hidden" : 1,
					"patching_rect" : [ 196.0, 406.0, 78.0, 18.0 ],
					"id" : "obj-20",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message mymessage @type msg_int",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10,
					"patching_rect" : [ 388.0, 203.0, 240.0, 18.0 ],
					"id" : "obj-21",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar MyMessage",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 388.0, 175.0, 100.0, 18.0 ],
					"id" : "obj-22",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r incomming",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 132.0, 336.0, 79.0, 18.0 ],
					"id" : "obj-23",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dumpout",
					"fontsize" : 10,
					"patching_rect" : [ 125.0, 451.0, 207.0, 18.0 ],
					"id" : "obj-24",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/ui/freeze 0",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 49.0, 506.0, 182.0, 16.0 ],
					"id" : "obj-25",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 49.0, 481.0, 68.0, 18.0 ],
					"id" : "obj-26",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 126.0, 431.0, 187.0, 16.0 ],
					"id" : "obj-27",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 126.0, 406.0, 74.0, 18.0 ],
					"id" : "obj-28",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.hub",
					"fontsize" : 13.482065,
					"patching_rect" : [ 36.0, 307.0, 84.0, 23.0 ],
					"id" : "obj-29",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jcom.parameter_help @size 1U-half @module_type control",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 10,
					"patching_rect" : [ 36.0, 357.0, 240.0, 30.0 ],
					"id" : "obj-30",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontsize" : 10,
					"patching_rect" : [ 48.0, 338.0, 97.0, 18.0 ],
					"id" : "obj-31",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"patching_rect" : [ 36.0, 338.0, 13.0, 13.0 ],
					"id" : "obj-32",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 36.0, 421.0, 13.0, 13.0 ],
					"id" : "obj-33",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "my_message",
					"fontsize" : 10,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 41.0, 229.0, 74.0, 18.0 ],
					"id" : "obj-34",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.gui",
					"fontsize" : 13.482065,
					"patching_rect" : [ 35.0, 177.0, 79.0, 23.0 ],
					"id" : "obj-35",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Reporting to the rest of the world",
					"fontsize" : 10,
					"patching_rect" : [ 49.0, 527.0, 175.0, 18.0 ],
					"id" : "obj-36",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 17.0, 285.0, 300.0, 263.0 ],
					"id" : "obj-37",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.message behaves the same as jcom.parameter and takes the same attributes. The only differences is that it is not stored as part of the state in jcom.hub, and it is not pattr-aware.",
					"linecount" : 3,
					"fontsize" : 10,
					"patching_rect" : [ 16.0, 117.0, 401.0, 42.0 ],
					"id" : "obj-38",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.message",
					"fontsize" : 17.334082,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 19.0, 20.0, 189.0, 28.0 ],
					"id" : "obj-39",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Handling messages in the modules",
					"fontsize" : 10,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 20.0, 46.0, 266.0, 18.0 ],
					"id" : "obj-40",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 13.0, 14.0, 389.0, 51.0 ],
					"id" : "obj-41",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.message can be used to handle all kinds of messages in the module that you do not want to store as part of the state of the module.",
					"linecount" : 2,
					"fontsize" : 10,
					"patching_rect" : [ 16.0, 87.0, 385.0, 30.0 ],
					"id" : "obj-42",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "See also",
					"fontsize" : 10,
					"patching_rect" : [ 34.0, 563.0, 115.0, 18.0 ],
					"id" : "obj-43",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jcom.gui.1Uh.a.stereo.mxt",
					"patching_rect" : [ 35.0, 204.0, 256.0, 60.0 ],
					"args" : [ "2610_" ],
					"id" : "obj-44",
					"numinlets" : 0,
					"name" : "jcom.gui.mxt",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 16.0, 159.0, 300.0, 119.0 ],
					"id" : "obj-45",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 397.5, 227.0, 376.0, 227.0, 376.0, 167.0, 397.5, 167.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [ 205.5, 427.0, 135.5, 427.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 266.5, 402.0, 135.5, 402.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 45.5, 406.0, 58.5, 406.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 141.5, 354.0, 45.5, 354.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
