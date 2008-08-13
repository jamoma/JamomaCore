{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 3.0, 44.0, 888.0, 533.0 ],
		"bglocked" : 0,
		"defrect" : [ 3.0, 44.0, 888.0, 533.0 ],
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
					"maxclass" : "newobj",
					"text" : "poly~ jcom.sur.dbap.speaker_instance 32",
					"numoutlets" : 0,
					"id" : "obj-43",
					"fontname" : "Verdana",
					"patching_rect" : [ 640.0, 235.0, 221.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "poly~ jcom.sur.dbap.source_instance 32",
					"numoutlets" : 0,
					"id" : "obj-41",
					"fontname" : "Verdana",
					"patching_rect" : [ 640.0, 210.0, 215.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "All attributes are set using the inspector.",
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-39",
					"fontname" : "Verdana",
					"patching_rect" : [ 645.0, 25.0, 215.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message info",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-28",
					"fontname" : "Verdana",
					"patching_rect" : [ 645.0, 160.0, 105.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"name" : "info",
						"description" : "Get info on current positions of sources and speakers",
						"type" : "msg_none"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-17",
					"fontname" : "Arial",
					"presentation_rect" : [ 245.0, 45.0, 40.0, 18.0 ],
					"patching_rect" : [ 585.0, 125.0, 40.0, 18.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices[3]",
					"text" : "jcom.parameter rolloff",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"patching_rect" : [ 645.0, 125.0, 123.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"ramp/drive" : "none",
						"dataspace/unit/internal" : "none",
						"priority" : 3,
						"range/bounds" : [ 1.0, 6.0 ],
						"dataspace/unit/active" : "none",
						"name" : "rolloff",
						"range/clipmode" : "low",
						"description" : "The relative rolloff of amplitude with distance from speakers, expressed in dB.",
						"dataspace/unit/native" : "none",
						"type" : "msg_float",
						"dataspace" : "none"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-12",
					"fontname" : "Arial",
					"presentation_rect" : [ 245.0, 25.0, 40.0, 18.0 ],
					"patching_rect" : [ 585.0, 100.0, 40.0, 18.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices[2]",
					"text" : "jcom.parameter dimensions",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"patching_rect" : [ 645.0, 100.0, 151.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"ramp/drive" : "none",
						"priority" : 1,
						"range/bounds" : [ 1.0, 3.0 ],
						"dataspace/unit/active" : "none",
						"name" : "dimensions",
						"description" : "Dimensions of the virtual space.",
						"dataspace/unit/native" : "none",
						"type" : "msg_int",
						"dataspace" : "none"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-10",
					"fontname" : "Arial",
					"presentation_rect" : [ 120.0, 45.0, 40.0, 18.0 ],
					"patching_rect" : [ 585.0, 75.0, 40.0, 18.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices[1]",
					"text" : "jcom.parameter num_speakers",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"patching_rect" : [ 645.0, 75.0, 168.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"ramp/drive" : "none",
						"dataspace/unit/internal" : "none",
						"priority" : 2,
						"range/bounds" : [ 1.0, 32.0 ],
						"dataspace/unit/active" : "none",
						"name" : "num_speakers",
						"range/clipmode" : "both",
						"description" : "The number of speakers that sources are diffused to.",
						"dataspace/unit/native" : "none",
						"type" : "msg_int",
						"dataspace" : "none"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"presentation_rect" : [ 120.0, 25.0, 40.0, 18.0 ],
					"patching_rect" : [ 585.0, 50.0, 40.0, 18.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"patching_rect" : [ 300.0, 105.0, 196.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"patching_rect" : [ 160.0, 225.0, 54.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----multicable signal output----",
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"patching_rect" : [ 445.0, 450.0, 206.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"patching_rect" : [ 135.0, 105.0, 160.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"patching_rect" : [ 160.0, 250.0, 94.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"patching_rect" : [ 160.0, 275.0, 57.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rolloff (dB):",
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"presentation_rect" : [ 170.0, 45.0, 72.0, 19.0 ],
					"patching_rect" : [ 170.0, 45.0, 72.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dimensions:",
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"presentation_rect" : [ 170.0, 25.0, 73.0, 19.0 ],
					"patching_rect" : [ 170.0, 25.0, 73.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Number of speakers:",
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"presentation_rect" : [ 5.0, 45.0, 116.0, 19.0 ],
					"patching_rect" : [ 5.0, 45.0, 116.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-25",
					"patching_rect" : [ 415.0, 450.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : "Channel 1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-26",
					"patching_rect" : [ 415.0, 375.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"comment" : "W - omni"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----multicable signal input----",
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"patching_rect" : [ 445.0, 380.0, 207.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route /mute",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"patching_rect" : [ 235.0, 315.0, 73.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mute~",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"patching_rect" : [ 235.0, 360.0, 49.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sur.dbap~",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-31",
					"fontname" : "Verdana",
					"patching_rect" : [ 350.0, 415.0, 84.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"Distance-based amplitude panning. <br>NOTE: The positions of the speakers are not maintained by this module.\"",
					"linecount" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-34",
					"fontname" : "Verdana",
					"patching_rect" : [ 0.0, 150.0, 379.0, 31.0 ],
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
					"id" : "obj-35",
					"fontname" : "Verdana",
					"patching_rect" : [ 30.0, 105.0, 100.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-36",
					"patching_rect" : [ 0.0, 105.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Number of sources:",
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-40",
					"fontname" : "Verdana",
					"presentation_rect" : [ 5.0, 25.0, 110.0, 19.0 ],
					"patching_rect" : [ 5.0, 25.0, 110.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-42",
					"patching_rect" : [ 0.0, 245.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices",
					"text" : "jcom.parameter num_sources",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-44",
					"fontname" : "Verdana",
					"patching_rect" : [ 645.0, 50.0, 161.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"ramp/drive" : "none",
						"dataspace/unit/internal" : "none",
						"priority" : 2,
						"range/bounds" : [ 1.0, 32.0 ],
						"dataspace/unit/active" : "none",
						"name" : "num_sources",
						"range/clipmode" : "both",
						"description" : "The number of mono sources that are to be distributed spatially.",
						"dataspace/unit/native" : "none",
						"type" : "msg_int",
						"dataspace" : "none"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numoutlets" : 1,
					"prefix" : "/audio",
					"has_mute" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-46",
					"presentation_rect" : [ -1.0, -1.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"presentation" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
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
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 309.5, 135.0, 12.0, 135.0, 12.0, 147.0, 9.5, 147.0 ]
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 144.5, 135.0, 12.0, 135.0, 12.0, 147.0, 9.5, 147.0 ]
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
					"source" : [ "obj-13", 0 ],
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
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
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
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 169.5, 300.0, 359.5, 300.0 ]
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
 ]
	}

}
