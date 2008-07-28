{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 52.0, 87.0, 1134.0, 544.0 ],
		"bglocked" : 0,
		"defrect" : [ 52.0, 87.0, 1134.0, 544.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
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
					"text" : "jcom.meter_receive 1",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 480.0, 50.0, 142.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numoutlets" : 0,
					"presentation_rect" : [ 160.0, 5.0, 98.0, 8.0 ],
					"patching_rect" : [ 480.0, 75.0, 80.0, 4.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-49"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "rolloff",
					"text" : "jcom.parameter rolloff @type msg_float @range/bounds -96 0. @range/clipmode high @ramp/drive scheduler @ramp/function linear @description \"Rolloff in dB for the Gaussian windowing function.\"",
					"linecount" : 3,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 480.0, 447.0, 367.0, 43.0 ],
					"numinlets" : 1,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "oscillators",
					"text" : "jcom.parameter oscillators @type msg_int @range/bounds 1 64 @range/clipmode both @ramp/drive none @description \"Maximum number of oscillators to use. Tha actual number of oscillators used might be lower, depending on range and spacing.\"",
					"linecount" : 3,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 480.0, 366.0, 558.0, 43.0 ],
					"numinlets" : 1,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "rate",
					"text" : "jcom.parameter rate @type msg_float @range/bounds -12 12 @range/clipmode none @ramp/drive scheduler @ramp/function linear @description \"Rate of the glissando movement as MIDI pitch difference per second.\"",
					"linecount" : 3,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 480.0, 288.0, 419.0, 43.0 ],
					"numinlets" : 1,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "spacing",
					"text" : "jcom.parameter spacing @type msg_float @range/bounds 0 12 @range/clipmode low @ramp/drive scheduler @ramp/function linear @description \"Spacing between adjecent oscillators (as MIDI values).\"",
					"linecount" : 3,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 480.0, 210.0, 367.0, 43.0 ],
					"numinlets" : 1,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "range",
					"text" : "jcom.parameter range @type msg_list @ramp/drive scheduler @ramp/function linear @description \"The range of the sweeps as MIDI values.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 685.0, 135.0, 424.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Oscillators",
					"numoutlets" : 2,
					"triangle" : 0,
					"maximum" : 64,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"presentation_rect" : [ 241.0, 22.0, 49.0, 19.0 ],
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"patching_rect" : [ 480.0, 341.0, 38.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"minimum" : 1,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Rolloff",
					"numoutlets" : 2,
					"triangle" : 0,
					"maximum" : 0.0,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"presentation_rect" : [ 241.0, 36.0, 49.0, 19.0 ],
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"patching_rect" : [ 480.0, 421.0, 49.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Spacing",
					"numoutlets" : 2,
					"triangle" : 0,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"presentation_rect" : [ 124.0, 36.0, 42.0, 19.0 ],
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"patching_rect" : [ 480.0, 187.0, 48.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"minimum" : 0.0,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Rate",
					"numoutlets" : 2,
					"triangle" : 0,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"presentation_rect" : [ 124.0, 50.0, 41.0, 19.0 ],
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"patching_rect" : [ 480.0, 265.0, 50.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RangeHigh",
					"numoutlets" : 2,
					"triangle" : 0,
					"maximum" : 127.0,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"presentation_rect" : [ 124.0, 22.0, 42.0, 19.0 ],
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"patching_rect" : [ 536.0, 117.0, 49.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"minimum" : 0.0,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rolloff (dB):",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 173.0, 36.0, 81.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 163.0, 36.0, 81.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-17",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Glissando Rate (MIDI):",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 1.0, 50.0, 134.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 1.0, 50.0, 134.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-18",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Oscillators:",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 173.0, 22.0, 80.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 163.0, 22.0, 80.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-19",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 2",
					"numoutlets" : 11,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 479.0, 140.0, 183.0, 19.0 ],
					"numinlets" : 11,
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 0",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 77.0, 251.0, 76.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 208.0, 302.0, 57.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 77.0, 276.0, 150.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 105.0, 125.0, 251.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 1",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 177.0, 377.0, 84.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 120.0, 145.0, 160.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type audio @description \"Audio module generating Risset/Shepard glissando.\"",
					"linecount" : 2,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 175.0, 393.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 50.0, 90.0, 100.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-29",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 85.0, 28.0, 28.0 ],
					"numinlets" : 0,
					"id" : "obj-30",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 290.0, 145.0, 40.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 177.0, 406.0, 28.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-32",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RangeLow",
					"numoutlets" : 2,
					"triangle" : 0,
					"maximum" : 127.0,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"presentation_rect" : [ 83.0, 22.0, 38.0, 19.0 ],
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"patching_rect" : [ 479.0, 117.0, 48.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"minimum" : 0.0,
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Spacing (MIDI):",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 1.0, 36.0, 96.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 1.0, 36.0, 96.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-34",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Range (MIDI):",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 1.0, 22.0, 90.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 1.0, 22.0, 90.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-35",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.rissetGlissando~",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "signal" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 77.0, 347.0, 116.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 213.0, 28.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-37",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 215.0, 410.0, 131.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-38",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_gain" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"has_mute" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"prefix" : "audio",
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-40"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 299.5, 169.0, 24.5, 169.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 168.0, 24.5, 168.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 114.5, 168.0, 24.5, 168.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 217.5, 335.0, 86.5, 335.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 86.5, 335.0, 86.5, 335.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-20", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 10 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"midpoints" : [ 545.5, 137.0, 504.899994, 137.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 488.5, 163.0, 470.0, 163.0, 470.0, 112.0, 488.5, 112.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 504.899994, 167.0, 463.0, 167.0, 463.0, 103.0, 545.5, 103.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 489.5, 411.0, 467.0, 411.0, 467.0, 336.0, 489.5, 336.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 489.5, 255.0, 467.0, 255.0, 467.0, 183.0, 489.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 489.5, 333.0, 467.0, 333.0, 467.0, 261.0, 489.5, 261.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 489.5, 492.0, 467.0, 492.0, 467.0, 417.0, 489.5, 417.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
