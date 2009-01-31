{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 78.0, 102.0, 1077.0, 650.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
		"bglocked" : 0,
		"defrect" : [ 78.0, 102.0, 1077.0, 650.0 ],
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
					"maxclass" : "newobj",
					"text" : "jcom.parameter.array 32 source weight @type msg_list @range/bounds 0. 1. @description \"Set spatial blur of the nth source.\"",
					"linecount" : 2,
					"patching_rect" : [ 470.0, 335.0, 589.0, 31.0 ],
					"fontsize" : 10.0,
					"id" : "obj-20",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message.array 32 source active @type msg_toggle @description \"Mute or unmute the nth source.\"",
					"patching_rect" : [ 470.0, 310.0, 538.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-45",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message.array 32 source gain @type msg_float @dataspace gain @dataspace/unit/active linear @description \"Input gain for the nth source.\"",
					"linecount" : 2,
					"patching_rect" : [ 470.0, 275.0, 594.0, 31.0 ],
					"fontsize" : 10.0,
					"id" : "obj-7",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message.array 32 source blur @type msg_float @range/bounds 0. 100. @description \"Set spatial blur of the nth source.\"",
					"linecount" : 2,
					"patching_rect" : [ 470.0, 240.0, 589.0, 31.0 ],
					"fontsize" : 10.0,
					"id" : "obj-14",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Speakers:",
					"patching_rect" : [ 470.0, 385.0, 150.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-16",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Source:",
					"patching_rect" : [ 470.0, 180.0, 150.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-37",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message.array 32 speaker position @type msg_float @dataspace position @dataspace/unit/active xyz @priority 1 @description \"Position of the nth source.\"",
					"linecount" : 2,
					"patching_rect" : [ 470.0, 410.0, 557.0, 31.0 ],
					"fontsize" : 10.0,
					"id" : "obj-18",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message.array 32 source position @type msg_list @dataspace position @dataspace/unit/active xyz @priority 1 @description \"Position of the nth source.\"",
					"linecount" : 2,
					"patching_rect" : [ 470.0, 205.0, 603.0, 31.0 ],
					"fontsize" : 10.0,
					"id" : "obj-19",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Global settings:",
					"patching_rect" : [ 465.0, 20.0, 150.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-6",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message info",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 530.0, 145.0, 105.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-28",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"frozen_object_attributes" : 					{
						"type" : "msg_none",
						"name" : "info",
						"description" : "Get info on current positions of sources and speakers"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 470.0, 120.0, 40.0, 18.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"id" : "obj-17",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"presentation_rect" : [ 245.0, 45.0, 40.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices[3]",
					"text" : "jcom.parameter rolloff",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 530.0, 120.0, 123.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-15",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"frozen_object_attributes" : 					{
						"dataspace/unit/native" : "none",
						"dataspace" : "none",
						"ramp/drive" : "none",
						"range/bounds" : [ 1.0, 6.0 ],
						"type" : "msg_float",
						"dataspace/unit/internal" : "none",
						"name" : "rolloff",
						"range/clipmode" : "low",
						"priority" : 3,
						"dataspace/unit/active" : "none",
						"description" : "The relative rolloff of amplitude with distance from speakers, expressed in dB."
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 470.0, 95.0, 40.0, 18.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"id" : "obj-12",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"presentation_rect" : [ 245.0, 25.0, 40.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices[2]",
					"text" : "jcom.parameter dimensions",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 530.0, 95.0, 151.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-13",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"frozen_object_attributes" : 					{
						"dataspace/unit/native" : "none",
						"dataspace" : "none",
						"ramp/drive" : "none",
						"range/bounds" : [ 1.0, 3.0 ],
						"type" : "msg_int",
						"name" : "dimensions",
						"priority" : 1,
						"dataspace/unit/active" : "none",
						"description" : "Dimensions of the virtual space."
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 470.0, 70.0, 40.0, 18.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"id" : "obj-10",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"presentation_rect" : [ 120.0, 45.0, 40.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices[1]",
					"text" : "jcom.parameter numSpeakers",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 530.0, 70.0, 168.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-11",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 470.0, 45.0, 40.0, 18.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"id" : "obj-9",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"presentation_rect" : [ 120.0, 25.0, 40.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"outlettype" : [ "" ],
					"patching_rect" : [ 70.0, 110.0, 196.0, 17.0 ],
					"fontsize" : 10.0,
					"id" : "obj-8",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 160.0, 210.0, 54.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-1",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----multicable signal output----",
					"patching_rect" : [ 255.0, 425.0, 206.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-2",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"outlettype" : [ "" ],
					"patching_rect" : [ 40.0, 85.0, 160.0, 17.0 ],
					"fontsize" : 10.0,
					"id" : "obj-3",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rolloff (dB):",
					"patching_rect" : [ 170.0, 45.0, 72.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"id" : "obj-22",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 170.0, 45.0, 72.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dimensions:",
					"patching_rect" : [ 170.0, 25.0, 73.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"id" : "obj-23",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 170.0, 25.0, 73.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Number of speakers:",
					"patching_rect" : [ 5.0, 45.0, 116.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"id" : "obj-24",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 5.0, 45.0, 116.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 225.0, 425.0, 25.0, 25.0 ],
					"id" : "obj-25",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : "Channel 1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"patching_rect" : [ 225.0, 350.0, 25.0, 25.0 ],
					"id" : "obj-26",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : "W - omni"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----multicable signal input----",
					"patching_rect" : [ 255.0, 355.0, 207.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-27",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /audio/mute",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 45.0, 290.0, 103.0, 31.0 ],
					"fontsize" : 10.0,
					"id" : "obj-29",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mute~",
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.0, 335.0, 49.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-30",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sur.dbap~",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 160.0, 390.0, 84.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-31",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"Distance-based amplitude panning. <br>NOTE: The positions of the speakers are not maintained by this module.\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 5.0, 150.0, 379.0, 31.0 ],
					"fontsize" : 10.0,
					"id" : "obj-34",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"patching_rect" : [ 5.0, 105.0, 25.0, 25.0 ],
					"id" : "obj-36",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Number of sources:",
					"patching_rect" : [ 5.0, 25.0, 110.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"id" : "obj-40",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 5.0, 25.0, 110.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 5.0, 245.0, 25.0, 25.0 ],
					"id" : "obj-42",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices",
					"text" : "jcom.parameter numSources",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 530.0, 45.0, 161.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-44",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"outlettype" : [ "" ],
					"prefix" : "audio",
					"presentation" : 1,
					"id" : "obj-46",
					"has_gain" : 1,
					"numinlets" : 1,
					"has_mute" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-31", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
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
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 49.5, 135.0, 17.0, 135.0, 17.0, 147.0, 14.5, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 79.5, 135.0, 17.0, 135.0, 17.0, 147.0, 14.5, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
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
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
