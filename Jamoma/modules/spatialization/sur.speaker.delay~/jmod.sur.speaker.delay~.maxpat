{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 118.0, 94.0, 1004.0, 573.0 ],
		"bglocked" : 0,
		"defrect" : [ 118.0, 94.0, 1004.0, 573.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
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
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 230.0, 121.0, 191.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 74.0, 23.0, 22.330078, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 482.0, 256.0, 22.330078, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-29",
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 155.0, 190.0, 43.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-1",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 155.0, 213.0, 84.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-2",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 155.0, 238.0, 47.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-3",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route /mute",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 254.0, 213.0, 56.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-5",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mute~",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 254.0, 253.0, 38.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "only updated when audio is off.",
					"fontname" : "Arial",
					"presentation_rect" : [ 14.0, 41.0, 134.0, 17.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 4.0, 42.0, 134.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-7",
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 101.0, 120.0, 125.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 254.0, 377.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-12",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 406.0, 318.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-13",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message aed @type msg_list @description \"List describing index (counting from 1), azimuth, elevation, distance for one speaker.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 554.0, 299.0, 349.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-14",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voices",
					"fontname" : "Arial",
					"presentation_rect" : [ 27.0, 23.0, 41.0, 17.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 4.0, 22.0, 41.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-15",
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices",
					"text" : "jcom.parameter voices @type msg_int @repetitions/allow 0 @range/bounds 1 32 @range/clipmode both @description \"The number of audio channels that the ambisonic signal is diffused to. Changes only take effect when audio is off.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 554.0, 246.0, 589.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-18",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 14.0, 121.0, 79.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 0.0, 121.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sur.speaker.delay~",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 254.0, 343.0, 162.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----multicable signal input----",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 332.0, 301.0, 155.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 237.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-25",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---multicable signal output---",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 269.0, 377.0, 151.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"Adjust delay of the loudspeakers to adjust for varying distances.\"",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 0.0, 140.0, 466.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-27",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"prefix" : "audio",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"has_mute" : 1,
					"id" : "obj-30",
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 300.5, 278.0, 263.5, 278.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 164.5, 284.0, 263.5, 284.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 110.5, 137.0, 9.5, 137.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
