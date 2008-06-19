{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 75.0, 348.0, 1049.0, 619.0 ],
		"bglocked" : 0,
		"defrect" : [ 75.0, 348.0, 1049.0, 619.0 ],
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
					"varname" : "rolloff",
					"text" : "jcom.parameter rolloff @type msg_float @range -96 0. @range/clipmode high @ramp/drive scheduler @ramp/function linear @description \"Rolloff in dB for the Gaussian windowing function.\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 412.0, 462.0, 367.0, 43.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "oscillators",
					"text" : "jcom.parameter oscillators @type msg_int @range/bounds 1 64 @range/clipmode both @ramp/drive none @description \"Maximum number of oscillators to use. Tha actual number of oscillators used might be lower, depending on range and spacing.\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 412.0, 381.0, 558.0, 43.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "rate",
					"text" : "jcom.parameter rate @type msg_float @range -12 12 @range/clipmode none @ramp/drive scheduler @ramp/function linear @description \"Rate of the glissando movement as MIDI pitch difference per second.\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 412.0, 303.0, 376.0, 43.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "spacing",
					"text" : "jcom.parameter spacing @type msg_float @range 0 12 @range/clipmode low @ramp/drive scheduler @ramp/function linear @description \"Spacing between adjecent oscillators (as MIDI values).\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 412.0, 225.0, 367.0, 43.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "range",
					"text" : "jcom.parameter range @type msg_list @ramp/drive scheduler @ramp/function linear @description \"The range of the sweeps as MIDI values.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 611.0, 85.0, 424.0, 31.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Oscillators",
					"maximum" : 64,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"id" : "obj-12",
					"numinlets" : 1,
					"presentation_rect" : [ 241.0, 22.0, 48.795212, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 412.0, 356.0, 38.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"presentation" : 1,
					"minimum" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Rolloff",
					"maximum" : 0.0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"id" : "obj-13",
					"numinlets" : 1,
					"presentation_rect" : [ 241.0, 36.0, 49.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 412.0, 436.0, 49.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Spacing",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"id" : "obj-14",
					"numinlets" : 1,
					"presentation_rect" : [ 124.0, 36.0, 41.156631, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 412.0, 202.0, 48.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1,
					"minimum" : 0.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Rate",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"id" : "obj-15",
					"numinlets" : 1,
					"presentation_rect" : [ 124.0, 50.0, 41.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 412.0, 280.0, 50.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RangeHigh",
					"maximum" : 127.0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"id" : "obj-16",
					"numinlets" : 1,
					"presentation_rect" : [ 124.0, 22.0, 41.313259, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"bordercolor" : [ 0.94902, 0.94902, 0.94902, 0.0 ],
					"patching_rect" : [ 452.0, 67.0, 49.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1,
					"minimum" : 0.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rolloff (dB):",
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 1,
					"presentation_rect" : [ 173.0, 36.0, 81.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 163.0, 36.0, 81.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Glissando Rate (MIDI):",
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 1,
					"presentation_rect" : [ 1.0, 50.0, 134.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 1.0, 50.0, 134.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Oscillators:",
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 1,
					"presentation_rect" : [ 173.0, 22.0, 80.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 163.0, 22.0, 80.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 2",
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 11,
					"fontsize" : 10.0,
					"numoutlets" : 11,
					"patching_rect" : [ 405.0, 90.0, 183.0, 19.0 ],
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 0",
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 77.0, 251.0, 76.0, 19.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 208.0, 302.0, 57.0, 19.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~",
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 77.0, 276.0, 150.0, 19.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 101.0, 251.0, 17.0 ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 1",
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 192.0, 377.0, 84.0, 19.0 ],
					"outlettype" : [ "signal", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"id" : "obj-26",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 121.0, 123.0, 160.0, 17.0 ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.rissetGlissando~ @size 1U-half @module_type audio @description \"Audio module generating Risset/Shepard glissando.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-28",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 15.0, 157.0, 393.0, 31.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Verdana",
					"id" : "obj-29",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 29.0, 124.0, 100.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-30",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 15.0, 124.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Verdana",
					"id" : "obj-31",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 282.0, 124.0, 40.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-32",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 192.0, 406.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RangeLow",
					"maximum" : 127.0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"id" : "obj-33",
					"numinlets" : 1,
					"presentation_rect" : [ 83.0, 22.0, 38.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"bordercolor" : [ 0.94902, 0.94902, 0.94902, 0.0 ],
					"patching_rect" : [ 405.0, 67.0, 48.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1,
					"minimum" : 0.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Spacing (MIDI):",
					"fontname" : "Verdana",
					"id" : "obj-34",
					"numinlets" : 1,
					"presentation_rect" : [ 1.0, 36.0, 96.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 1.0, 36.0, 96.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Range (MIDI):",
					"fontname" : "Verdana",
					"id" : "obj-35",
					"numinlets" : 1,
					"presentation_rect" : [ 1.0, 22.0, 90.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 1.0, 22.0, 90.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.rissetGlissando~",
					"fontname" : "Verdana",
					"id" : "obj-36",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 77.0, 347.0, 167.0, 19.0 ],
					"outlettype" : [ "", "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-37",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 200.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"fontname" : "Arial",
					"id" : "obj-38",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 174.0, 424.0, 101.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"prefix" : "audio",
					"has_gain" : 1,
					"id" : "obj-40",
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numoutlets" : 1,
					"has_mute" : 1,
					"outlettype" : [ "" ],
					"presentation" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 421.5, 507.0, 399.0, 507.0, 399.0, 432.0, 421.5, 432.0 ]
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
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 421.5, 426.0, 399.0, 426.0, 399.0, 351.0, 421.5, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 421.5, 348.0, 399.0, 348.0, 399.0, 276.0, 421.5, 276.0 ]
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
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 421.5, 270.0, 399.0, 270.0, 399.0, 198.0, 421.5, 198.0 ]
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
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 430.899994, 117.0, 389.0, 117.0, 389.0, 53.0, 461.5, 53.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 414.5, 113.0, 396.0, 113.0, 396.0, 62.0, 414.5, 62.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"midpoints" : [ 461.5, 87.0, 430.899994, 87.0 ]
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
					"source" : [ "obj-20", 10 ],
					"destination" : [ "obj-9", 0 ],
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
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-22", 0 ],
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
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 217.5, 335.0, 86.5, 335.0 ]
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
					"midpoints" : [ 291.5, 145.0, 24.5, 145.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 130.5, 144.0, 24.5, 144.0 ]
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
					"midpoints" : [ 114.5, 144.0, 24.5, 144.0 ]
				}

			}
 ]
	}

}
