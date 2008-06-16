{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 158.0, 50.0, 689.0, 734.0 ],
		"bglocked" : 0,
		"defrect" : [ 158.0, 50.0, 689.0, 734.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.970939,
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
					"text" : "jcom.meter_receive 2",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"id" : "obj-51",
					"hidden" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.970939,
					"outlettype" : [ "" ],
					"patching_rect" : [ 479.0, 373.0, 152.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"id" : "obj-33",
					"hidden" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.970939,
					"outlettype" : [ "" ],
					"patching_rect" : [ 480.0, 302.0, 152.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"id" : "obj-50",
					"presentation_rect" : [ 83.0, 24.0, 50.0, 4.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 479.0, 408.0, 80.0, 4.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"id" : "obj-49",
					"presentation_rect" : [ 14.0, 24.0, 50.0, 4.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 336.0, 80.0, 4.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-1",
					"hidden" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patching_rect" : [ 358.0, 358.0, 49.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~.maxpat",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-2",
					"hidden" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 225.0, 334.0, 173.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-3",
					"hidden" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patching_rect" : [ 113.0, 493.0, 193.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-4",
					"hidden" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 121.0, 426.0, 70.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-5",
					"hidden" : 1,
					"numoutlets" : 4,
					"fontsize" : 9.873845,
					"outlettype" : [ "signal", "signal", "", "" ],
					"patching_rect" : [ 121.0, 308.0, 166.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Right",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-6",
					"presentation_rect" : [ 85.0, 45.0, 45.0, 19.0 ],
					"numoutlets" : 2,
					"minimum" : 0,
					"triangle" : 0,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 140.0, 233.0, 45.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[9]",
					"text" : "jcom.message delay @ramp/drive scheduler @repetitions 1 @range/bounds 0 1000000 @description \"Delay time in samples to be applied to both channels.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-7",
					"hidden" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 201.0, 56.0, 400.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Left",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-8",
					"presentation_rect" : [ 16.0, 45.0, 45.0, 19.0 ],
					"numoutlets" : 2,
					"minimum" : 0,
					"triangle" : 0,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 140.0, 160.0, 45.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "delay right",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-9",
					"presentation_rect" : [ 78.0, 28.0, 65.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 86.0, 28.0, 66.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "delay left",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-10",
					"presentation_rect" : [ 11.0, 28.0, 55.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 14.0, 28.0, 55.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-11",
					"hidden" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patching_rect" : [ 126.0, 510.0, 135.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "delay/right",
					"text" : "jcom.parameter delay/right @type msg_int @ramp/drive scheduler @repetitions 0 @range/bounds 0 1000000 @range/clipmode both @description \"Delay time in samples for right channel.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-13",
					"hidden" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 201.0, 229.0, 505.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.delay~ @module_type audio @description \"Sample-accurate stereo delay.\"",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-15",
					"hidden" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 19.0, 546.0, 464.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-16",
					"hidden" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"patching_rect" : [ 33.0, 510.0, 86.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-17",
					"hidden" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 510.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-18",
					"hidden" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patching_rect" : [ 253.0, 510.0, 37.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-19",
					"hidden" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 121.0, 289.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-20",
					"hidden" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 121.0, 456.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "delay/left",
					"text" : "jcom.parameter delay/left @type msg_int @ramp/drive scheduler @repetitions 0 @range/bounds 0 1000000 @range/clipmode both @description \"Delay time in samples for left channel.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-21",
					"hidden" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 201.0, 156.0, 497.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-22",
					"hidden" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 277.0, 289.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.delay~",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"id" : "obj-23",
					"hidden" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 69.0, 399.0, 114.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----signal inputs----",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-24",
					"hidden" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"patching_rect" : [ 144.0, 289.0, 107.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-25",
					"hidden" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.0, 586.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-26",
					"hidden" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 147.0, 456.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-27",
					"hidden" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"patching_rect" : [ 121.0, 470.0, 105.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_gain" : 1,
					"numinlets" : 1,
					"id" : "obj-34",
					"has_mute" : 1,
					"has_mix" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"has_bypass" : 1,
					"presentation" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 2 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 2 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-23", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 367.5, 387.0, 78.5, 387.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 234.5, 384.0, 78.5, 384.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 135.5, 531.0, 28.5, 531.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 262.5, 533.0, 28.5, 533.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 122.5, 528.0, 28.5, 528.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
