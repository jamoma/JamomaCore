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
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "TEMP view output",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 49.0, 436.0, 130.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-5",
					"presentation_rect" : [ 25.0, 548.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 148.0, 432.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"id" : "obj-4",
					"comment" : "Channel 1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter.array 32 source weight @type array @range/bounds 0. 1. @description \"Set spatial blur of the nth source.\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 0,
					"patching_rect" : [ 470.0, 335.0, 589.0, 31.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message.array 32 source active @type boolean @description \"Mute or unmute the nth source.\"",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"patching_rect" : [ 470.0, 310.0, 538.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-45"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message.array 32 source gain @type decimal @dataspace gain @dataspace/unit/active linear @description \"Input gain for the nth source.\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 0,
					"patching_rect" : [ 470.0, 275.0, 594.0, 31.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message.array 32 source blur @type decimal @range/bounds 0. 100. @description \"Set spatial blur of the nth source.\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 0,
					"patching_rect" : [ 470.0, 240.0, 589.0, 31.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Speakers:",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 470.0, 385.0, 150.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Source:",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 470.0, 180.0, 150.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message.array 32 speaker position @type array @dataspace position @dataspace/unit/active xyz @priority 1 @description \"Position of the nth source.\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 0,
					"patching_rect" : [ 470.0, 410.0, 599.0, 31.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message.array 32 source position @type array @dataspace position @dataspace/unit/active xyz @priority 1 @description \"Position of the nth source.\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 0,
					"patching_rect" : [ 470.0, 205.0, 603.0, 31.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Global settings:",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 465.0, 20.0, 150.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message info",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 530.0, 145.0, 105.0, 19.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-28",
					"frozen_object_attributes" : 					{
						"description" : "Get info on current positions of sources and speakers",
						"type" : "none",
						"name" : "info"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 470.0, 120.0, 40.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-17",
					"presentation_rect" : [ 245.0, 45.0, 40.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices[3]",
					"text" : "jcom.parameter rolloff",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 530.0, 120.0, 123.0, 19.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-15",
					"frozen_object_attributes" : 					{
						"range/clipmode" : "low",
						"description" : "The relative rolloff of amplitude with distance from speakers, expressed in dB.",
						"dataspace/unit/active" : "none",
						"type" : "decimal",
						"priority" : 3,
						"dataspace" : "none",
						"dataspace/unit/native" : "none",
						"range/bounds" : [ 1.0, 6.0 ],
						"name" : "rolloff",
						"ramp/drive" : "none"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 470.0, 95.0, 40.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-12",
					"presentation_rect" : [ 245.0, 25.0, 40.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices[2]",
					"text" : "jcom.parameter dimensions",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 530.0, 95.0, 151.0, 19.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-13",
					"frozen_object_attributes" : 					{
						"description" : "Dimensions of the virtual space.",
						"dataspace/unit/active" : "none",
						"type" : "integer",
						"priority" : 1,
						"dataspace" : "none",
						"dataspace/unit/native" : "none",
						"range/bounds" : [ 1.0, 3.0 ],
						"name" : "dimensions",
						"ramp/drive" : "none"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 470.0, 70.0, 40.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-10",
					"presentation_rect" : [ 120.0, 45.0, 40.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices[1]",
					"text" : "jcom.parameter numSpeakers",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 530.0, 70.0, 168.0, 19.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 470.0, 45.0, 40.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-9",
					"presentation_rect" : [ 120.0, 25.0, 40.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 70.0, 110.0, 196.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 160.0, 210.0, 54.0, 19.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----multicable signal output----",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 255.0, 425.0, 206.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 40.0, 85.0, 160.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rolloff (dB):",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 170.0, 45.0, 72.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-22",
					"presentation_rect" : [ 170.0, 45.0, 72.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dimensions:",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 170.0, 25.0, 73.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-23",
					"presentation_rect" : [ 170.0, 25.0, 73.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Number of speakers:",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 45.0, 116.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-24",
					"presentation_rect" : [ 5.0, 45.0, 116.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 225.0, 425.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"id" : "obj-25",
					"comment" : "Channel 1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 225.0, 350.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-26",
					"comment" : "W - omni"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----multicable signal input----",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 255.0, 355.0, 207.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /audio/mute",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 45.0, 290.0, 103.0, 31.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mute~",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 45.0, 335.0, 49.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.nd.dbap~",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 160.0, 390.0, 82.0, 19.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"Distance-based amplitude panning. <br>NOTE: The positions of the speakers are not maintained by this module.\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 150.0, 379.0, 31.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 5.0, 105.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-36",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Number of sources:",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 25.0, 110.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-40",
					"presentation_rect" : [ 5.0, 25.0, 110.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 245.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"id" : "obj-42",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices",
					"text" : "jcom.parameter numSources",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 530.0, 45.0, 161.0, 19.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
					"prefix" : "audio",
					"has_mute" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-46",
					"has_gain" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
