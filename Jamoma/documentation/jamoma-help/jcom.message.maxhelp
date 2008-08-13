{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 31.0, 52.0, 872.0, 592.0 ],
		"bglocked" : 0,
		"defrect" : [ 31.0, 52.0, 872.0, 592.0 ],
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
					"maxclass" : "newobj",
					"varname" : "my_menu",
					"text" : "jcom.message my_menu @type msg_symbol @repetitions 0 @description \"My menu\"",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"patching_rect" : [ 390.0, 510.0, 455.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_toggle",
					"text" : "jcom.message my_toggle @repetitions 0 @type msg_toggle @description \"My toggle\"",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"patching_rect" : [ 390.0, 480.0, 455.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_int",
					"text" : "jcom.message my_int @range/clipmode none @type msg_int @ramp/drive scheduler @repetitions 0 @description \"My int\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"patching_rect" : [ 390.0, 440.0, 455.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_float",
					"text" : "jcom.message my_float @range/clipmode none @type msg_float @ramp/drive scheduler @description \"My float\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"patching_rect" : [ 390.0, 400.0, 455.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_slider",
					"text" : "jcom.message my_slider @type msg_int @range/bounds 0 127 @range/clipmode both @ramp/drive scheduler @repetitions 0 @description \"My slider\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"patching_rect" : [ 390.0, 360.0, 455.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you want to use menu text item instead of index numbers, this is how to do it.",
					"linecount" : 2,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"patching_rect" : [ 623.0, 537.0, 225.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "MyMessage",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"patching_rect" : [ 145.0, 230.0, 55.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"patching_rect" : [ 388.0, 242.0, 37.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mymessage $1",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"patching_rect" : [ 388.0, 267.0, 101.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.parameter",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"patching_rect" : [ 34.0, 545.0, 100.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend help",
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"patching_rect" : [ 34.0, 568.0, 78.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"patching_rect" : [ 34.0, 588.0, 55.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s incomming",
					"numoutlets" : 0,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"patching_rect" : [ 388.0, 292.0, 78.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"patching_rect" : [ 60.0, 400.0, 78.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message mymessage @type msg_int",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"patching_rect" : [ 388.0, 202.0, 240.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar MyMessage",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"patching_rect" : [ 388.0, 177.0, 100.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r incomming",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"patching_rect" : [ 185.0, 330.0, 79.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"patching_rect" : [ 60.0, 425.0, 182.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.hub",
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"patching_rect" : [ 36.0, 307.0, 84.0, 23.0 ],
					"fontsize" : 13.482065,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jcom.parameter_help @size 1U-half @module_type control",
					"linecount" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"patching_rect" : [ 35.0, 360.0, 243.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-31",
					"fontname" : "Verdana",
					"patching_rect" : [ 60.0, 330.0, 97.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-32",
					"patching_rect" : [ 35.0, 330.0, 22.0, 22.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-33",
					"patching_rect" : [ 36.0, 421.0, 22.0, 22.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "my_message",
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-34",
					"fontname" : "Verdana",
					"patching_rect" : [ 60.0, 230.0, 75.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.gui",
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-35",
					"fontname" : "Verdana",
					"patching_rect" : [ 35.0, 177.0, 79.0, 23.0 ],
					"fontsize" : 13.482065,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Reporting to the rest of the world",
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-36",
					"fontname" : "Verdana",
					"patching_rect" : [ 35.0, 455.0, 177.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"border" : 2,
					"id" : "obj-37",
					"patching_rect" : [ 15.0, 295.0, 340.0, 194.0 ],
					"numinlets" : 1,
					"bgcolor" : [ 1.0, 0.678431, 0.2, 0.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.message behaves the same as jcom.parameter and takes the same attributes. The only differences is that it is not stored as part of the state in jcom.hub, and it is not pattr-aware.",
					"linecount" : 3,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-38",
					"fontname" : "Verdana",
					"patching_rect" : [ 16.0, 117.0, 401.0, 43.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.message",
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-39",
					"fontname" : "Verdana",
					"patching_rect" : [ 19.0, 20.0, 189.0, 28.0 ],
					"fontsize" : 17.334082,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Handling messages in the modules",
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-40",
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 46.0, 266.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"id" : "obj-41",
					"patching_rect" : [ 13.0, 14.0, 389.0, 51.0 ],
					"numinlets" : 1,
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.message can be used to handle all kinds of messages in the module that you do not want to store as part of the state of the module.",
					"linecount" : 2,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-42",
					"fontname" : "Verdana",
					"patching_rect" : [ 16.0, 87.0, 385.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "See also",
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-43",
					"fontname" : "Verdana",
					"patching_rect" : [ 35.0, 515.0, 115.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module.1",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"patching_rect" : [ 35.0, 205.0, 300.0, 70.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"border" : 2,
					"id" : "obj-45",
					"background" : 1,
					"patching_rect" : [ 15.0, 165.0, 340.0, 118.0 ],
					"numinlets" : 1,
					"bgcolor" : [ 1.0, 0.678431, 0.2, 0.0 ],
					"rounded" : 15
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
					"midpoints" : [ 397.5, 226.0, 383.0, 226.0, 383.0, 169.0, 397.5, 169.0 ]
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
					"midpoints" : [ 194.5, 354.0, 44.5, 354.0 ]
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
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-25", 1 ],
					"hidden" : 0,
					"midpoints" : [ 44.5, 397.0, 232.5, 397.0 ]
				}

			}
 ]
	}

}
