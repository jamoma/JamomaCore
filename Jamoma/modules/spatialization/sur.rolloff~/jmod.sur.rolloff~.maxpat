{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 43.0, 57.0, 1004.0, 573.0 ],
		"bglocked" : 0,
		"defrect" : [ 43.0, 57.0, 1004.0, 573.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
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
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 90.0, 98.0, 212.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 229.0, 120.0, 34.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Roll-off (dB)",
					"numoutlets" : 0,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"patching_rect" : [ 103.0, 40.0, 80.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RollOff",
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triangle" : 0,
					"triscale" : 0.9,
					"id" : "obj-4",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 1.0,
					"patching_rect" : [ 185.0, 38.0, 40.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"maximum" : 6.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "meters_per_unit[1]",
					"text" : "jcom.parameter roll_off @type msg_float @repetitions 0 @range 1. 6. @range/clipmode both @description \"Roll-off in dB per doubling of distance.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"id" : "obj-5",
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 556.0, 240.0, 397.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar RollOff",
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 556.0, 218.0, 71.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numoutlets" : 2,
					"id" : "obj-7",
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 146.0, 199.0, 48.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "meters_per_unit",
					"text" : "jcom.parameter reference_distance @type msg_float @repetitions 0 @range 0.15 10. @range/clipmode low @description \"Reference distance used to calculate roll-off.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"id" : "obj-8",
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 556.0, 154.0, 445.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ReferenceDistance",
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 556.0, 131.0, 130.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ReferenceDistance",
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triangle" : 0,
					"triscale" : 0.9,
					"id" : "obj-10",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 0.0,
					"patching_rect" : [ 185.0, 20.0, 40.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"maximum" : 10.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Reference dist.",
					"numoutlets" : 0,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"patching_rect" : [ 103.0, 22.0, 80.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"numoutlets" : 2,
					"id" : "obj-12",
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 146.0, 220.0, 93.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numoutlets" : 1,
					"id" : "obj-13",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 146.0, 245.0, 52.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "$2",
					"numoutlets" : 1,
					"id" : "obj-14",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 236.0, 241.0, 21.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route mute",
					"numoutlets" : 2,
					"id" : "obj-15",
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 236.0, 220.0, 80.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mute~",
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 236.0, 260.0, 43.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 101.0, 120.0, 139.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "audio/mute",
					"text" : "jcom.parameter audio/mute @type msg_toggle @description \"When active, this attribute turns off the module's processingorithm to save CPU\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"id" : "obj-18",
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 556.0, 80.0, 388.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter",
					"text" : "pvar Mute",
					"numoutlets" : 1,
					"id" : "obj-19",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 556.0, 58.0, 62.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictctrl",
					"varname" : "Mute",
					"numoutlets" : 1,
					"tracking" : 1,
					"id" : "obj-20",
					"outlettype" : [ "int" ],
					"multiplier" : 1,
					"name" : "jcom.button.mute.pct",
					"mode" : 1,
					"trackvertical" : 1,
					"snap" : 1,
					"trackhorizontal" : 1,
					"patching_rect" : [ 238.0, 4.0, 11.0, 11.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-21",
					"hidden" : 1,
					"patching_rect" : [ 236.0, 384.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 359.0, 320.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message aed @type msg_list @description \"List describing index (counting from 1), azimuth, elevation, distance for one speaker.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"id" : "obj-23",
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 556.0, 373.0, 387.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voices",
					"numoutlets" : 0,
					"id" : "obj-24",
					"fontname" : "Verdana",
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"patching_rect" : [ 4.0, 22.0, 41.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Voices",
					"numoutlets" : 1,
					"id" : "obj-25",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 556.0, 295.0, 70.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices",
					"text" : "jcom.parameter voices @type msg_int @repetitions 0 @range 1 16 @range/clipmode both @description \"The number of audio channels that the ambisonic signal is diffused to. Changes only take effect when audio is off.\"",
					"linecount" : 3,
					"numoutlets" : 3,
					"id" : "obj-26",
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 556.0, 320.0, 405.0, 43.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"numoutlets" : 1,
					"id" : "obj-27",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 25.0, 485.0, 72.0, 29.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numoutlets" : 0,
					"id" : "obj-28",
					"hidden" : 1,
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 14.0, 121.0, 87.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-29",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 0.0, 121.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"numoutlets" : 1,
					"id" : "obj-30",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 25.0, 453.0, 81.0, 29.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sur.rolloff~",
					"numoutlets" : 1,
					"id" : "obj-31",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 236.0, 350.0, 115.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----multicable signal input----",
					"numoutlets" : 0,
					"id" : "obj-32",
					"hidden" : 1,
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 311.0, 304.0, 172.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-33",
					"hidden" : 1,
					"patching_rect" : [ 0.0, 237.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---multicable signal output---",
					"numoutlets" : 0,
					"id" : "obj-34",
					"hidden" : 1,
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 253.0, 384.0, 162.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.sur.rolloff~ @size 1U-half @module_type audio.no_panel @description \"Free-field amplitude roll-of with distance.\"",
					"linecount" : 2,
					"numoutlets" : 2,
					"id" : "obj-35",
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 0.0, 140.0, 375.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Voices",
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triangle" : 0,
					"triscale" : 0.9,
					"id" : "obj-36",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana",
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 1,
					"patching_rect" : [ 46.0, 20.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"maximum" : 16,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numoutlets" : 1,
					"id" : "obj-37",
					"outlettype" : [ "" ],
					"prefix" : "audio",
					"numinlets" : 1,
					"has_mute" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [ 238.5, 137.0, 9.5, 137.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [ 99.5, 137.0, 9.5, 137.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [ 110.5, 137.0, 9.5, 137.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"midpoints" : [ 306.5, 293.0, 245.5, 293.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"midpoints" : [ 155.5, 306.0, 245.5, 306.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-31", 1 ],
					"hidden" : 1,
					"midpoints" : [ 366.0, 340.0, 341.5, 340.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 565.5, 113.0, 550.0, 113.0, 550.0, 53.0, 565.5, 53.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [ 565.5, 187.0, 551.0, 187.0, 551.0, 126.0, 565.5, 126.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [ 565.5, 273.0, 552.0, 273.0, 552.0, 213.0, 565.5, 213.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [ 565.5, 365.0, 551.0, 365.0, 551.0, 288.0, 565.5, 288.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
