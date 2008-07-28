{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ -1250.0, 164.0, 1106.0, 523.0 ],
		"bglocked" : 0,
		"defrect" : [ -1250.0, 164.0, 1106.0, 523.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 16",
					"fontname" : "Arial",
					"numinlets" : 16,
					"numoutlets" : 17,
					"patching_rect" : [ 361.0, 441.0, 270.0, 18.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the  funny looking connection is due to a bug in jcom.out~",
					"linecount" : 3,
					"fontname" : "Arial",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 238.0, 428.0, 109.0, 41.0 ],
					"fontsize" : 10.0,
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.multi.out~ 0",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 32,
					"patching_rect" : [ 367.0, 412.0, 500.5, 18.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.multi.in~",
					"fontname" : "Arial",
					"numinlets" : 32,
					"numoutlets" : 1,
					"patching_rect" : [ 362.0, 472.0, 496.5, 18.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 182.0, 197.0, 48.0, 18.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Arial",
					"presentation_rect" : [ 126.0, 21.0, 20.0, 18.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 376.0, 10.0, 23.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Arial",
					"presentation_rect" : [ 126.0, 42.0, 20.0, 18.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 372.0, 48.0, 23.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Arial",
					"presentation_rect" : [ 214.0, 42.0, 19.0, 18.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 365.0, 75.0, 18.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"hidden" : 1,
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 171.0, 111.0, 191.0, 15.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "destination/voices",
					"text" : "jcom.parameter destination/voices @repetitions/allow 0 @type msg_int @range/bounds 1 16 @range/clipmode both @description \"Number of speakers that signals are distributed to.\" @priority 3",
					"linecount" : 2,
					"hidden" : 1,
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 406.0, 44.0, 579.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message source/spread @type msg_list @description \"List describing spreading of the nth virtual source: index, spread.\"",
					"linecount" : 2,
					"hidden" : 1,
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 519.0, 295.0, 325.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message destination/aed @type msg_list \"List describing position of nth loudspeaker: index, azimuth, elevation, distance.\"",
					"linecount" : 2,
					"hidden" : 1,
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 519.0, 377.0, 342.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voices",
					"fontname" : "Verdana",
					"presentation_rect" : [ 87.0, 42.0, 51.0, 19.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 77.0, 42.0, 51.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Destination:",
					"fontname" : "Verdana",
					"presentation_rect" : [ 8.0, 42.0, 81.0, 19.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 42.0, 81.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Source:",
					"fontname" : "Verdana",
					"presentation_rect" : [ 8.0, 22.0, 54.0, 19.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 22.0, 54.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hidden" : 1,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 366.0, 190.0, 22.0, 22.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message source/aed @type msg_list @description \"List describing position of nth virual source: index, azimuth, elevation, distance.\"",
					"linecount" : 2,
					"hidden" : 1,
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 519.0, 337.0, 377.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "destination/dimensions",
					"text" : "jcom.parameter destination/dimensions @repetitions/allow 0 @type msg_int @range/bounds 2 3 @range/clipmode both @description \"Dimension of the loudspeaker setup (2D or 3D).\" @priority 2",
					"linecount" : 2,
					"hidden" : 1,
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 405.0, 73.0, 604.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"hidden" : 1,
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 153.0, 236.0, 78.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"hidden" : 1,
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 153.0, 258.0, 47.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route /audio/mute",
					"hidden" : 1,
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 211.0, 300.0, 81.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mute~",
					"hidden" : 1,
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 211.0, 338.0, 38.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 366.0, 502.0, 20.0, 20.0 ],
					"id" : "obj-20",
					"comment" : "W - omni"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sur.vbap~",
					"hidden" : 1,
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 280.0, 383.0, 105.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dimensions",
					"fontname" : "Verdana",
					"presentation_rect" : [ 149.0, 42.0, 73.0, 19.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 157.0, 42.0, 73.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"hidden" : 1,
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 36.0, 110.0, 125.0, 15.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voices",
					"fontname" : "Verdana",
					"presentation_rect" : [ 87.0, 22.0, 51.0, 19.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 79.0, 22.0, 51.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"Vector based amplitude panning (VBAP) of multiple sources for multiple speakers.\"",
					"hidden" : 1,
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 14.0, 135.0, 503.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hidden" : 1,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 14.0, 111.0, 20.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-31",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 371.0, 20.0, 20.0 ],
					"id" : "obj-32",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "source/voices",
					"text" : "jcom.parameter source/voices @repetitions/allow 0 @type msg_int @range/bounds 1 16 @range/clipmode both @description \"Number of incomming mono sources to pan.\" @priority 1",
					"linecount" : 2,
					"hidden" : 1,
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 408.0, 6.0, 562.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_gain" : 1,
					"presentation_rect" : [ -1.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"prefix" : "audio",
					"numoutlets" : 1,
					"has_mute" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-36"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-15", 0 ],
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
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-14", 0 ],
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
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-3", 0 ],
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
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
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
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [ 162.5, 280.0, 289.5, 280.0 ]
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-25", 0 ],
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
					"hidden" : 1,
					"midpoints" : [ 45.5, 129.0, 23.5, 129.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 2 ],
					"destination" : [ "obj-22", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 3 ],
					"destination" : [ "obj-22", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 4 ],
					"destination" : [ "obj-22", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 5 ],
					"destination" : [ "obj-22", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 6 ],
					"destination" : [ "obj-22", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 7 ],
					"destination" : [ "obj-22", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 8 ],
					"destination" : [ "obj-22", 8 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 9 ],
					"destination" : [ "obj-22", 9 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 10 ],
					"destination" : [ "obj-22", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 11 ],
					"destination" : [ "obj-22", 11 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 12 ],
					"destination" : [ "obj-22", 12 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 13 ],
					"destination" : [ "obj-22", 13 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 14 ],
					"destination" : [ "obj-22", 14 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 15 ],
					"destination" : [ "obj-22", 15 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 2 ],
					"destination" : [ "obj-4", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 3 ],
					"destination" : [ "obj-4", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 4 ],
					"destination" : [ "obj-4", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 5 ],
					"destination" : [ "obj-4", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 6 ],
					"destination" : [ "obj-4", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 7 ],
					"destination" : [ "obj-4", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 8 ],
					"destination" : [ "obj-4", 8 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 9 ],
					"destination" : [ "obj-4", 9 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 10 ],
					"destination" : [ "obj-4", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 11 ],
					"destination" : [ "obj-4", 11 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 12 ],
					"destination" : [ "obj-4", 12 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 13 ],
					"destination" : [ "obj-4", 13 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 14 ],
					"destination" : [ "obj-4", 14 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 15 ],
					"destination" : [ "obj-4", 15 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
