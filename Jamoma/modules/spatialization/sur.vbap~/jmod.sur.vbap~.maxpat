{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 39.0, 63.0, 1043.0, 439.0 ],
		"bglocked" : 0,
		"defrect" : [ 39.0, 63.0, 1043.0, 439.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/source.1/position 1. 2. 3.",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 314.0, 312.0, 0.0, 0.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 315.0, 310.0, 142.0, 17.0 ],
					"id" : "obj-8",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/source.1/position 1. 2. 3.",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 655.0, 305.0, 142.0, 17.0 ],
					"id" : "obj-7",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"Vector based amplitude panning (VBAP) of multiple sources for multiple speakers.\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 10.0, 140.0, 303.0, 31.0 ],
					"id" : "obj-30",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "destination/dimensions[1]",
					"text" : "jcom.parameter interpolationtime @repetitions/allow 0 @type msg_int @range/bounds 10 2000 @range/clipmode low @description \"sets the interpolation time in [ms] for the maitrix~ object. default value is 10 ms\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 430.0, 135.0, 591.0, 31.0 ],
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"frozen_object_attributes" : 					{
						"dataspace/unit/active" : "millisecond",
						"dataspace" : "time",
						"dataspace/unit/internal" : "millisecond",
						"dataspace/unit/native" : "millisecond"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "poly~ jcom.sur.vbap.speaker_instance 32",
					"fontsize" : 10.0,
					"patching_rect" : [ 430.0, 245.0, 221.0, 19.0 ],
					"id" : "obj-43",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "poly~ jcom.sur.vbap.source_instance 32",
					"fontsize" : 10.0,
					"patching_rect" : [ 430.0, 210.0, 215.0, 19.0 ],
					"id" : "obj-41",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Number of speakers:",
					"presentation_rect" : [ 5.0, 45.0, 116.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 5.0, 45.0, 116.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-4",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 130.0, 190.0, 56.0, 19.0 ],
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"presentation_rect" : [ 125.0, 25.0, 33.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 376.0, 10.0, 34.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-40",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"presentation_rect" : [ 125.0, 45.0, 33.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 376.0, 49.0, 34.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-39",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"presentation_rect" : [ 250.0, 25.0, 32.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 376.0, 87.0, 34.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-38",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 70.0, 105.0, 198.0, 17.0 ],
					"id" : "obj-1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "destination/voices",
					"text" : "jcom.parameter numSpeakers @repetitions/allow 0 @type msg_int @range/bounds 2 32 @range/clipmode both @description \"Number of speakers that signals are distributed to.\" @priority 3",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 430.0, 45.0, 580.0, 31.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Number of sources:",
					"presentation_rect" : [ 5.0, 25.0, 114.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 5.0, 25.0, 114.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"patching_rect" : [ 225.0, 185.0, 25.0, 25.0 ],
					"id" : "obj-11",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "destination/dimensions",
					"text" : "jcom.parameter dimensions @repetitions/allow 0 @type msg_int @range/bounds 2 3 @range/clipmode both @description \"Dimension of the loudspeaker setup (2D or 3D).\" @priority 2",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 430.0, 90.0, 509.0, 31.0 ],
					"id" : "obj-14",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /audio/mute",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 168.0, 218.0, 150.0, 19.0 ],
					"id" : "obj-18",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mute~",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 168.0, 256.0, 49.0, 19.0 ],
					"id" : "obj-19",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 225.0, 355.0, 25.0, 25.0 ],
					"id" : "obj-20",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : "W - omni"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sur.vbap~",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 130.0, 300.0, 83.0, 19.0 ],
					"id" : "obj-21",
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dimensions:",
					"presentation_rect" : [ 175.0, 25.0, 73.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 175.0, 25.0, 73.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-23",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 50.0, 80.0, 160.0, 17.0 ],
					"id" : "obj-24",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 90.0, 25.0, 25.0 ],
					"id" : "obj-31",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 10.0, 315.0, 25.0, 25.0 ],
					"id" : "obj-32",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "source/voices",
					"text" : "jcom.parameter numSources @repetitions/allow 0 @type msg_int @range/bounds 1 32 @range/clipmode both @description \"Number of incomming mono sources to pan.\" @priority 1",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 430.0, 5.0, 574.0, 31.0 ],
					"id" : "obj-33",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"outlettype" : [ "" ],
					"has_mute" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"prefix" : "audio",
					"presentation" : 1,
					"id" : "obj-36",
					"numinlets" : 1,
					"has_gain" : 1,
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 79.5, 132.5, 19.5, 132.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 59.5, 129.0, 19.5, 129.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
