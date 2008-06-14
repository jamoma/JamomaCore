{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 181.0, 134.0, 964.0, 404.0 ],
		"bglocked" : 0,
		"defrect" : [ 181.0, 134.0, 964.0, 404.0 ],
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
					"maxclass" : "message",
					"text" : "/preset/read",
					"outlettype" : [ "" ],
					"patching_rect" : [ 275.0, 100.0, 74.0, 17.0 ],
					"id" : "obj-48",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "preset/store 1 default, preset/write",
					"outlettype" : [ "" ],
					"patching_rect" : [ 85.0, 100.0, 187.0, 17.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "randomness",
					"text" : "jcom.parameter randomness @type msg_int @ramp/drive scheduler @repetitions 0 @range/bounds 0 5000 @range/clipmode low @description \"Defines a range of randomness in milliseconds to be applied to the metro interval\"",
					"linecount" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 435.0, 155.0, 426.0, 43.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 70.0, 220.0, 46.0, 19.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "trigger",
					"patching_rect" : [ 90.0, 330.0, 42.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"presentation" : 1,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 191.0, 21.0, 42.0, 19.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"varname" : "TriggerButton",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 70.0, 330.0, 18.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-6",
					"numinlets" : 1,
					"presentation_rect" : [ 235.0, 20.0, 18.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "MetroRandomness",
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 385.0, 165.0, 45.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"triangle" : 0,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 228.0, 43.0, 45.0, 19.0 ],
					"numoutlets" : 2,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Randomness (ms)",
					"patching_rect" : [ 440.0, 200.0, 100.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"presentation" : 1,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 127.0, 42.0, 100.0, 19.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return trigger @description \"Sent every time the metronome fires.\"",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 70.0, 360.0, 377.0, 19.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "MetroTime",
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 385.0, 95.0, 44.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"triangle" : 0,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 62.0, 44.0, 44.0, 19.0 ],
					"numoutlets" : 2,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "MetroToggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 410.0, 30.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-12",
					"numinlets" : 1,
					"presentation_rect" : [ 49.0, 23.0, 15.0, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Time (ms)",
					"patching_rect" : [ 440.0, 125.0, 61.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"presentation" : 1,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 4.0, 43.0, 61.0, 19.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"patching_rect" : [ 70.0, 265.0, 49.0, 19.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 70.0, 242.0, 87.0, 19.0 ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"outlettype" : [ "" ],
					"patching_rect" : [ 100.0, 120.0, 137.0, 17.0 ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "time",
					"text" : "jcom.parameter time @type msg_int @ramp/drive scheduler @repetitions 0 @range/bounds 1 5000 @range/clipmode low @dataspace time @unit/native ms @description \"Metro interval (ms)\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 435.0, 90.0, 519.0, 31.0 ],
					"id" : "obj-34",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.0, 100.0, 37.0, 17.0 ],
					"id" : "obj-36",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.qmetro.mod",
					"text" : "jalg.qmetro.maxpat",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 70.0, 302.0, 111.0, 19.0 ],
					"id" : "obj-37",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "On/Off",
					"patching_rect" : [ 440.0, 60.0, 65.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"presentation" : 1,
					"id" : "obj-38",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 4.0, 21.0, 65.0, 19.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.qmetro @module_type control @description \"A queue based metro\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 15.0, 150.0, 256.0, 31.0 ],
					"id" : "obj-40",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 100.0, 20.0, 20.0 ],
					"id" : "obj-41",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 15.0, 180.0, 20.0, 20.0 ],
					"id" : "obj-42",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "toggle",
					"text" : "jcom.parameter toggle @type msg_toggle @ramp/drive none @repetitions 0 @range/bounds 0 1 @range/clipmode both @description \"Toggle qmetro on/off\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 435.0, 25.0, 415.0, 31.0 ],
					"id" : "obj-43",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"outlettype" : [ "" ],
					"presentation" : 1,
					"id" : "obj-47",
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 284.5, 146.0, 27.0, 146.0, 27.0, 146.0, 24.5, 146.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 94.5, 138.0, 24.5, 138.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 54.5, 134.0, 24.5, 134.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 142.0, 24.5, 142.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 147.5, 293.0, 79.5, 293.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
