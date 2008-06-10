{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 246.0, 119.0, 1052.0, 663.0 ],
		"bglocked" : 0,
		"defrect" : [ 246.0, 119.0, 1052.0, 663.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
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
					"maxclass" : "message",
					"text" : "/preset/read",
					"patching_rect" : [ 250.0, 160.0, 74.0, 17.0 ],
					"outlettype" : [ "" ],
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
					"patching_rect" : [ 65.0, 123.0, 187.0, 17.0 ],
					"outlettype" : [ "" ],
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
					"text" : "pvar TriggerButton",
					"patching_rect" : [ 35.0, 445.0, 106.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "randomness",
					"text" : "jcom.parameter randomness @type msg_int @ramp/drive scheduler @repetitions 0 @range/bounds 0 5000 @range/clipmode low @description \"Defines a range of randomness in milliseconds to be applied to the metro interval\"",
					"linecount" : 3,
					"patching_rect" : [ 526.0, 254.0, 426.0, 43.0 ],
					"outlettype" : [ "", "", "" ],
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
					"patching_rect" : [ 35.0, 325.0, 46.0, 19.0 ],
					"outlettype" : [ "", "" ],
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
					"patching_rect" : [ 191.0, 21.0, 42.0, 19.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"varname" : "TriggerButton",
					"patching_rect" : [ 235.0, 20.0, 18.0, 18.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "MetroRandomness",
					"triscale" : 0.9,
					"patching_rect" : [ 228.0, 43.0, 45.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"triangle" : 0,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Randomness (ms)",
					"patching_rect" : [ 127.0, 42.0, 100.0, 19.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar MetroRandomness",
					"patching_rect" : [ 526.0, 232.0, 129.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return trigger @description \"Sent every time the metronome fires.\"",
					"patching_rect" : [ 35.0, 468.0, 377.0, 19.0 ],
					"outlettype" : [ "", "" ],
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
					"triscale" : 0.9,
					"patching_rect" : [ 62.0, 44.0, 44.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"triangle" : 0,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "MetroToggle",
					"patching_rect" : [ 49.0, 23.0, 15.0, 15.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-12",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Time (ms)",
					"patching_rect" : [ 4.0, 43.0, 61.0, 19.0 ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 35.0, 370.0, 49.0, 19.0 ],
					"outlettype" : [ "" ],
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
					"patching_rect" : [ 35.0, 347.0, 87.0, 19.0 ],
					"outlettype" : [ "", "" ],
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
					"patching_rect" : [ 78.0, 142.0, 137.0, 17.0 ],
					"outlettype" : [ "" ],
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
					"text" : "pvar MetroTime",
					"patching_rect" : [ 527.0, 159.0, 89.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-33",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "time",
					"text" : "jcom.parameter time @type msg_int @ramp/drive scheduler @repetitions 0 @range/bounds 1 5000 @range/clipmode low @description \"Metro interval (ms)\"",
					"linecount" : 2,
					"patching_rect" : [ 527.0, 181.0, 420.0, 31.0 ],
					"outlettype" : [ "", "", "" ],
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
					"patching_rect" : [ 91.0, 161.0, 37.0, 17.0 ],
					"outlettype" : [ "" ],
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
					"patching_rect" : [ 35.0, 422.0, 111.0, 19.0 ],
					"outlettype" : [ "bang" ],
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
					"patching_rect" : [ 4.0, 21.0, 65.0, 19.0 ],
					"id" : "obj-38",
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar MetroToggle",
					"patching_rect" : [ 527.0, 91.0, 97.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-39",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.qmetro @module_type control @description \"A queue based metro\"",
					"patching_rect" : [ 30.0, 190.0, 433.0, 19.0 ],
					"outlettype" : [ "", "" ],
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
					"patching_rect" : [ 30.0, 145.0, 20.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-41",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 30.0, 225.0, 20.0, 20.0 ],
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
					"patching_rect" : [ 527.0, 113.0, 415.0, 31.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-43",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/time 40",
					"patching_rect" : [ 152.0, 424.0, 121.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-44",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"patching_rect" : [ 152.0, 403.0, 68.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-45",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"outlettype" : [ "" ],
					"id" : "obj-47",
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-19", 0 ],
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [ 112.5, 393.0, 161.5, 393.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 535.5, 304.0, 519.0, 304.0, 519.0, 225.0, 535.5, 225.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 536.5, 147.0, 520.0, 147.0, 520.0, 86.0, 536.5, 86.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 536.5, 214.0, 520.0, 214.0, 520.0, 154.0, 536.5, 154.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 112.5, 413.0, 44.5, 413.0 ]
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
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 87.5, 181.0, 39.5, 181.0 ]
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
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 100.5, 184.0, 39.5, 184.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 74.5, 178.0, 39.5, 178.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 259.5, 187.0, 42.0, 187.0, 42.0, 186.0, 39.5, 186.0 ]
				}

			}
 ]
	}

}
