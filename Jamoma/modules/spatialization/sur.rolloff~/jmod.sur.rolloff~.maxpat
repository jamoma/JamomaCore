{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 43.0, 57.0, 1004.0, 573.0 ],
		"bglocked" : 0,
		"defrect" : [ 43.0, 57.0, 1004.0, 573.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"maxclass" : "number",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 49.0, 22.0, 25.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 487.0, 277.0, 25.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-20",
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 189.0, 43.0, 50.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 473.0, 235.0, 50.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-19",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 189.0, 22.0, 50.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 473.0, 155.0, 50.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-14",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 90.0, 98.0, 212.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 229.0, 120.0, 34.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Roll-off (dB)",
					"fontname" : "Verdana",
					"presentation_rect" : [ 103.0, 43.0, 80.0, 17.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 103.0, 40.0, 80.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-3",
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "meters_per_unit[1]",
					"text" : "jcom.parameter roll_off @type msg_float @repetitions/allow 0 @range/bounds 1. 6. @range/clipmode both @description \"Roll-off in dB per doubling of distance.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 531.0, 229.0, 595.0, 31.0 ],
					"numoutlets" : 3,
					"id" : "obj-5",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 146.0, 199.0, 48.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-7",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "meters_per_unit",
					"text" : "jcom.parameter reference_distance @type msg_float @repetitions/allow 0 @range/bounds 0.15 10. @range/clipmode low @description \"Reference distance used to calculate roll-off.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 531.0, 149.0, 601.0, 31.0 ],
					"numoutlets" : 3,
					"id" : "obj-8",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Reference dist.",
					"fontname" : "Verdana",
					"presentation_rect" : [ 103.0, 22.0, 80.0, 17.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 103.0, 22.0, 80.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-11",
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 146.0, 220.0, 93.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-12",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 146.0, 245.0, 52.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-13",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route /mute",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 236.0, 220.0, 71.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-15",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mute~",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 236.0, 260.0, 43.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 101.0, 120.0, 139.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 236.0, 384.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-21",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 359.0, 320.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message aed @type msg_list @description \"List describing index (counting from 1), azimuth, elevation, distance for one speaker.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 556.0, 373.0, 387.0, 31.0 ],
					"numoutlets" : 3,
					"id" : "obj-23",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voices",
					"fontname" : "Verdana",
					"presentation_rect" : [ 4.0, 22.0, 41.0, 17.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 4.0, 22.0, 41.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-24",
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices",
					"text" : "jcom.parameter voices @type msg_int @repetitions/allow 0 @range/bounds 1 16 @range/clipmode both @description \"The number of audio channels that the ambisonic signal is diffused to. Changes only take effect when audio is off.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 520.0, 271.0, 605.0, 31.0 ],
					"numoutlets" : 3,
					"id" : "obj-26",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 14.0, 121.0, 87.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 0.0, 121.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-29",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sur.rolloff~",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 236.0, 350.0, 115.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-31",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----multicable signal input----",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 311.0, 304.0, 172.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 237.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-33",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---multicable signal output---",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 253.0, 384.0, 162.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"Free-field amplitude roll-of with distance.\"",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 0.0, 140.0, 436.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-35",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"prefix" : "audio",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
					"has_mute" : 1,
					"id" : "obj-37",
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 238.5, 137.0, 9.5, 137.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 99.5, 137.0, 9.5, 137.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 110.5, 137.0, 9.5, 137.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 155.5, 306.0, 245.5, 306.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-31", 1 ],
					"hidden" : 0,
					"midpoints" : [ 366.0, 340.0, 341.5, 340.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 297.5, 293.0, 245.5, 293.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
