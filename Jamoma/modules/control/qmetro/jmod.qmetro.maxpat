{
	"patcher" : 	{
		"rect" : [ 117.0, 44.0, 1052.0, 663.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 117.0, 44.0, 1052.0, 663.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "preset\/store 1 default, preset\/write",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 65.0, 123.0, 184.0, 16.0 ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar TriggerButton",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 64.0, 514.0, 103.0, 18.0 ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "randomness",
					"text" : "jcom.parameter randomness @type msg_int @ramp\/drive scheduler @repetitions 0 @range\/bounds 0 5000 @range\/clipmode low @description \"Defines a range of randomness in milliseconds to be applied to the metro interval\"",
					"linecount" : 3,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 526.0, 254.0, 416.0, 42.0 ],
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 64.0, 394.0, 45.0, 18.0 ],
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "trigger",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 191.0, 21.0, 42.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-5",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"varname" : "TriggerButton",
					"numinlets" : 1,
					"patching_rect" : [ 234.0, 23.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "MetroRandomness",
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 228.0, 43.0, 45.0, 18.0 ],
					"transparent" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-7",
					"triangle" : 0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Randomness (ms)",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 127.0, 42.0, 99.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-8",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar MetroRandomness",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 526.0, 232.0, 126.0, 18.0 ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return trigger @description \"Sent every time the metronome fires.\"",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 64.0, 537.0, 372.0, 18.0 ],
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "MetroTime",
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 62.0, 44.0, 44.0, 18.0 ],
					"transparent" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-11",
					"triangle" : 0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "MetroToggle",
					"numinlets" : 1,
					"patching_rect" : [ 47.0, 23.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you need to send messages to or within the patch, but it's not required that they be stored or retrieveable, use jcom.message.",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 546.0, 456.0, 329.0, 30.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-13",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.message:",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 527.0, 441.0, 300.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-14",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Use this for any parameters that you'd like to be able to store and retrieve.",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 546.0, 387.0, 308.0, 30.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-15",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.parameter:",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 527.0, 372.0, 235.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-16",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Time (ms)",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 4.0, 43.0, 60.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-17",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 64.0, 439.0, 49.0, 18.0 ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 64.0, 416.0, 86.0, 18.0 ],
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/documentation\/generate",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 78.0, 142.0, 135.0, 16.0 ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "for html autodoc of module",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 629.0, 597.0, 241.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-21",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1 (default)\/0",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 629.0, 552.0, 241.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-22",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "none (default), linear",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 629.0, 537.0, 241.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-23",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "none, low, high, both (default)",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 629.0, 582.0, 241.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-24",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 629.0, 567.0, 241.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-25",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "generic (default), msg_int, msg_float, msg_menu, msg_toggle",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 629.0, 522.0, 322.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-26",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 546.0, 597.0, 79.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-27",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 546.0, 552.0, 79.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-28",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 546.0, 537.0, 79.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-29",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 546.0, 582.0, 79.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-30",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 546.0, 567.0, 79.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-31",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 546.0, 522.0, 79.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-32",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar MetroTime",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 527.0, 159.0, 87.0, 18.0 ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "time",
					"text" : "jcom.parameter time @type msg_int @ramp\/drive scheduler @repetitions 0 @range\/bounds 1 5000 @range\/clipmode low @description \"Metro interval (ms)\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 527.0, 181.0, 413.0, 30.0 ],
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/init",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 91.0, 161.0, 37.0, 16.0 ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.qmetro.mod",
					"text" : "jalg.qmetro.maxpat",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 64.0, 491.0, 109.0, 18.0 ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "bang" ],
					"hidden" : 1,
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "On\/Off",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 4.0, 21.0, 65.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-38",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar MetroToggle",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 527.0, 91.0, 95.0, 18.0 ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.qmetro @size 1U-half @module_type control @description \"A queue based metro\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 31.0, 191.0, 273.0, 30.0 ],
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 31.0, 146.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-41",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 31.0, 226.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"id" : "obj-42",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "toggle",
					"text" : "jcom.parameter toggle @type msg_toggle @ramp\/drive none @repetitions 0 @range\/bounds 0 1 @range\/clipmode both @description \"Toggle qmetro on\/off\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 527.0, 113.0, 408.0, 30.0 ],
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/time 1000",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 181.0, 493.0, 118.0, 16.0 ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 181.0, 472.0, 68.0, 18.0 ],
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-45"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attributes for jcom.parameter and jcom.message:",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 527.0, 507.0, 258.0, 18.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-46",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "\/Jamoma",
					"numinlets" : 1,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-47",
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [ 140.5, 482.0, 73.5, 482.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [ 536.5, 214.0, 520.0, 214.0, 520.0, 154.0, 536.5, 154.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [ 536.5, 147.0, 520.0, 147.0, 520.0, 86.0, 536.5, 86.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [ 535.5, 304.0, 519.0, 304.0, 519.0, 225.0, 535.5, 225.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"midpoints" : [ 140.5, 462.0, 190.5, 462.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [ 87.5, 181.0, 40.5, 181.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [ 100.5, 184.0, 40.5, 184.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [ 74.5, 178.0, 40.5, 178.0 ]
				}

			}
 ]
	}

}
