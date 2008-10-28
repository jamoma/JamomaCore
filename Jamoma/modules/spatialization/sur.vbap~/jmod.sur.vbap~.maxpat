{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 125.0, 372.0, 867.0, 385.0 ],
		"bglocked" : 0,
		"defrect" : [ 125.0, 372.0, 867.0, 385.0 ],
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
					"maxclass" : "newobj",
					"text" : "poly~ jcom.sur.vbap.speaker_instance 32",
					"numinlets" : 1,
					"patching_rect" : [ 385.0, 250.0, 221.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-43",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "poly~ jcom.sur.vbap.source_instance 32",
					"numinlets" : 1,
					"patching_rect" : [ 385.0, 225.0, 215.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-41",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Number of speakers:",
					"presentation_rect" : [ 6.0, 42.0, 116.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 60.0, 116.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-4",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numinlets" : 1,
					"patching_rect" : [ 133.0, 178.0, 48.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-2",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"presentation_rect" : [ 127.0, 21.0, 20.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 376.0, 10.0, 23.0, 18.0 ],
					"numoutlets" : 2,
					"triangle" : 0,
					"presentation" : 1,
					"id" : "obj-40",
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"presentation_rect" : [ 127.0, 42.0, 20.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 371.0, 49.0, 23.0, 18.0 ],
					"numoutlets" : 2,
					"triangle" : 0,
					"presentation" : 1,
					"id" : "obj-39",
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"presentation_rect" : [ 233.0, 42.0, 19.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 375.0, 87.0, 18.0, 18.0 ],
					"numoutlets" : 2,
					"triangle" : 0,
					"presentation" : 1,
					"id" : "obj-38",
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
					"patching_rect" : [ 171.0, 111.0, 191.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-1",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "destination/voices",
					"text" : "jcom.parameter numSpeakers @repetitions/allow 0 @type msg_int @range/bounds 1 16 @range/clipmode both @description \"Number of speakers that signals are distributed to.\" @priority 3",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 405.0, 45.0, 446.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-3",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Number of sources:",
					"linecount" : 3,
					"presentation_rect" : [ 6.0, 20.0, 114.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 8.0, 22.0, 54.0, 43.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-10",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 218.0, 263.0, 22.0, 22.0 ],
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "destination/dimensions",
					"text" : "jcom.parameter dimensions @repetitions/allow 0 @type msg_int @range/bounds 2 3 @range/clipmode both @description \"Dimension of the loudspeaker setup (2D or 3D).\" @priority 2",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 405.0, 85.0, 444.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-14",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /audio/mute",
					"numinlets" : 1,
					"patching_rect" : [ 168.0, 218.0, 116.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-18",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mute~",
					"numinlets" : 1,
					"patching_rect" : [ 168.0, 256.0, 38.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-19",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 220.0, 330.0, 20.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-20",
					"comment" : "W - omni"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sur.vbap~",
					"numinlets" : 2,
					"patching_rect" : [ 133.0, 301.0, 105.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-21",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dimensions",
					"presentation_rect" : [ 168.0, 42.0, 73.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 157.0, 42.0, 73.0, 19.0 ],
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
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"patching_rect" : [ 36.0, 110.0, 125.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-24",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"Vector based amplitude panning (VBAP) of multiple sources for multiple speakers.\"",
					"numinlets" : 1,
					"patching_rect" : [ 14.0, 135.0, 503.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-30",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 14.0, 111.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-31",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 315.0, 20.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-32",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "source/voices",
					"text" : "jcom.parameter numSources @repetitions/allow 0 @type msg_int @range/bounds 1 16 @range/clipmode both @description \"Number of incomming mono sources to pan.\" @priority 1",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 408.0, 6.0, 441.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-33",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0
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
					"id" : "obj-36",
					"has_mute" : 1,
					"outlettype" : [ "" ],
					"has_gain" : 1
				}

			}
 ],
		"lines" : [ 			{
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-18", 0 ],
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
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-33", 0 ],
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
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 45.5, 129.0, 23.5, 129.0 ]
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
 ]
	}

}
