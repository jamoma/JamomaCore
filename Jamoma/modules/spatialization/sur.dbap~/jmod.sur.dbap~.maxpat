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
					"numinlets" : 1,
					"patching_rect" : [ 640.0, 235.0, 221.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-43",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "poly~ jcom.sur.dbap.source_instance 32",
					"numinlets" : 1,
					"patching_rect" : [ 640.0, 210.0, 215.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-41",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "All attributes are set using the inspector.",
					"numinlets" : 1,
					"patching_rect" : [ 645.0, 25.0, 215.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-39",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message info",
					"numinlets" : 1,
					"patching_rect" : [ 645.0, 160.0, 105.0, 19.0 ],
					"numoutlets" : 3,
					"id" : "obj-28",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
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
					"presentation_rect" : [ 245.0, 45.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 585.0, 125.0, 40.0, 18.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"id" : "obj-17",
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices[3]",
					"text" : "jcom.parameter rolloff",
					"numinlets" : 1,
					"patching_rect" : [ 645.0, 125.0, 123.0, 19.0 ],
					"numoutlets" : 3,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"frozen_object_attributes" : 					{
						"type" : "msg_float",
						"dataspace/unit/internal" : "none",
						"dataspace/unit/active" : "none",
						"dataspace" : "none",
						"ramp/drive" : "none",
						"name" : "rolloff",
						"range/bounds" : [ 1.0, 6.0 ],
						"description" : "The relative rolloff of amplitude with distance from speakers, expressed in dB.",
						"priority" : 3,
						"dataspace/unit/native" : "none",
						"range/clipmode" : "low"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"presentation_rect" : [ 245.0, 25.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 585.0, 100.0, 40.0, 18.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"id" : "obj-12",
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices[2]",
					"text" : "jcom.parameter dimensions",
					"numinlets" : 1,
					"patching_rect" : [ 645.0, 100.0, 151.0, 19.0 ],
					"numoutlets" : 3,
					"id" : "obj-13",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"frozen_object_attributes" : 					{
						"type" : "msg_int",
						"dataspace/unit/active" : "none",
						"dataspace" : "none",
						"ramp/drive" : "none",
						"name" : "dimensions",
						"range/bounds" : [ 1.0, 3.0 ],
						"description" : "Dimensions of the virtual space.",
						"priority" : 1,
						"dataspace/unit/native" : "none"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"presentation_rect" : [ 120.0, 45.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 585.0, 75.0, 40.0, 18.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"id" : "obj-10",
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices[1]",
					"text" : "jcom.parameter numSpeakers",
					"numinlets" : 1,
					"patching_rect" : [ 645.0, 75.0, 168.0, 19.0 ],
					"numoutlets" : 3,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"presentation_rect" : [ 120.0, 25.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 585.0, 50.0, 40.0, 18.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"id" : "obj-9",
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numinlets" : 2,
					"patching_rect" : [ 300.0, 105.0, 196.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numinlets" : 1,
					"patching_rect" : [ 350.0, 235.0, 54.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----multicable signal output----",
					"numinlets" : 1,
					"patching_rect" : [ 445.0, 450.0, 206.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-2",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"patching_rect" : [ 135.0, 105.0, 160.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rolloff (dB):",
					"presentation_rect" : [ 170.0, 45.0, 72.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 170.0, 45.0, 72.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-22",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dimensions:",
					"presentation_rect" : [ 170.0, 25.0, 73.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 170.0, 25.0, 73.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-23",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Number of speakers:",
					"presentation_rect" : [ 5.0, 45.0, 116.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 45.0, 116.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-24",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 415.0, 450.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"id" : "obj-25",
					"comment" : "Channel 1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 415.0, 375.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"id" : "obj-26",
					"outlettype" : [ "" ],
					"comment" : "W - omni"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----multicable signal input----",
					"numinlets" : 1,
					"patching_rect" : [ 445.0, 380.0, 207.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-27",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /audio/mute",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 235.0, 315.0, 103.0, 31.0 ],
					"numoutlets" : 2,
					"id" : "obj-29",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mute~",
					"numinlets" : 1,
					"patching_rect" : [ 235.0, 360.0, 49.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-30",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sur.dbap~",
					"numinlets" : 2,
					"patching_rect" : [ 350.0, 415.0, 84.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-31",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"Distance-based amplitude panning. <br>NOTE: The positions of the speakers are not maintained by this module.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 150.0, 379.0, 31.0 ],
					"numoutlets" : 2,
					"id" : "obj-34",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numinlets" : 1,
					"patching_rect" : [ 30.0, 105.0, 100.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-35",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 0.0, 105.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"id" : "obj-36",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Number of sources:",
					"presentation_rect" : [ 5.0, 25.0, 110.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 25.0, 110.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-40",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 245.0, 25.0, 25.0 ],
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
					"numinlets" : 1,
					"patching_rect" : [ 645.0, 50.0, 161.0, 19.0 ],
					"numoutlets" : 3,
					"id" : "obj-44",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"prefix" : "audio",
					"numoutlets" : 1,
					"presentation" : 1,
					"id" : "obj-46",
					"has_mute" : 1,
					"outlettype" : [ "" ],
					"has_gain" : 1
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
					"midpoints" : [ 144.5, 135.0, 12.0, 135.0, 12.0, 147.0, 9.5, 147.0 ]
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
					"midpoints" : [ 309.5, 135.0, 12.0, 135.0, 12.0, 147.0, 9.5, 147.0 ]
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
