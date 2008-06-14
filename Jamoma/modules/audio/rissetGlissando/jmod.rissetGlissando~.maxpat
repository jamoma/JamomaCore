{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 104.0, 83.0, 1049.0, 619.0 ],
		"bglocked" : 0,
		"defrect" : [ 104.0, 83.0, 1049.0, 619.0 ],
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
					"id" : "obj-2",
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"patching_rect" : [ 412.0, 462.0, 367.0, 43.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "oscillators",
					"text" : "jcom.parameter oscillators @type msg_int @range/bounds 1 64 @range/clipmode both @ramp/drive none @description \"Maximum number of oscillators to use. Tha actual number of oscillators used might be lower, depending on range and spacing.\"",
					"linecount" : 3,
					"id" : "obj-4",
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"patching_rect" : [ 412.0, 381.0, 558.0, 43.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "rate",
					"text" : "jcom.parameter rate @type msg_float @range -12 12 @range/clipmode none @ramp/drive scheduler @ramp/function linear @description \"Rate of the glissando movement as MIDI pitch difference per second.\"",
					"linecount" : 3,
					"id" : "obj-6",
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"patching_rect" : [ 412.0, 303.0, 376.0, 43.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "spacing",
					"text" : "jcom.parameter spacing @type msg_float @range 0 12 @range/clipmode low @ramp/drive scheduler @ramp/function linear @description \"Spacing between adjecent oscillators (as MIDI values).\"",
					"linecount" : 3,
					"id" : "obj-8",
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"patching_rect" : [ 412.0, 225.0, 367.0, 43.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "range",
					"text" : "jcom.parameter range @type msg_list @ramp/drive scheduler @ramp/function linear @description \"The range of the sweeps as MIDI values.\"",
					"linecount" : 2,
					"id" : "obj-9",
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"patching_rect" : [ 611.0, 85.0, 424.0, 31.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Oscillators",
					"id" : "obj-12",
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 412.0, 356.0, 38.0, 19.0 ],
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"presentation" : 1,
					"outlettype" : [ "int", "bang" ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"triangle" : 0,
					"minimum" : 1,
					"fontname" : "Verdana",
					"maximum" : 64,
					"presentation_rect" : [ 232.0, 22.0, 38.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Rolloff",
					"id" : "obj-13",
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 412.0, 436.0, 49.0, 19.0 ],
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"triangle" : 0,
					"fontname" : "Verdana",
					"maximum" : 0.0,
					"presentation_rect" : [ 232.0, 36.0, 49.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Spacing",
					"id" : "obj-14",
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 412.0, 202.0, 48.0, 19.0 ],
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"minimum" : 0.0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 122.0, 36.0, 40.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Rate",
					"id" : "obj-15",
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 412.0, 280.0, 50.0, 19.0 ],
					"hbgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 122.0, 50.0, 41.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RangeHigh",
					"id" : "obj-16",
					"bgcolor" : [ 0.101961, 0.101961, 0.101961, 0.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 452.0, 67.0, 49.0, 19.0 ],
					"bordercolor" : [ 0.94902, 0.94902, 0.94902, 0.0 ],
					"triscale" : 0.9,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"minimum" : 0.0,
					"fontname" : "Verdana",
					"maximum" : 127.0,
					"presentation_rect" : [ 122.0, 22.0, 39.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rolloff (dB):",
					"id" : "obj-17",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 163.0, 36.0, 81.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 168.0, 36.0, 81.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Glissando Rate (MIDI):",
					"id" : "obj-18",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 1.0, 50.0, 134.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 1.0, 50.0, 134.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Oscillators:",
					"id" : "obj-19",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 163.0, 22.0, 80.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 168.0, 22.0, 80.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 2",
					"id" : "obj-20",
					"numoutlets" : 11,
					"fontsize" : 10.0,
					"patching_rect" : [ 405.0, 90.0, 183.0, 19.0 ],
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 0",
					"id" : "obj-21",
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 77.0, 251.0, 76.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"id" : "obj-22",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 208.0, 302.0, 57.0, 19.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~",
					"id" : "obj-23",
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 77.0, 276.0, 150.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"id" : "obj-24",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 105.0, 101.0, 251.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 1",
					"id" : "obj-25",
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 192.0, 377.0, 84.0, 19.0 ],
					"outlettype" : [ "signal", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"id" : "obj-26",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 121.0, 123.0, 160.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.rissetGlissando~ @size 1U-half @module_type audio @description \"Audio module generating Risset/Shepard glissando.\"",
					"linecount" : 2,
					"id" : "obj-28",
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 157.0, 393.0, 31.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"id" : "obj-29",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 29.0, 124.0, 100.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-30",
					"numoutlets" : 1,
					"patching_rect" : [ 15.0, 124.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"id" : "obj-31",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 282.0, 124.0, 40.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-32",
					"numoutlets" : 0,
					"patching_rect" : [ 192.0, 406.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RangeLow",
					"id" : "obj-33",
					"bgcolor" : [ 0.101961, 0.101961, 0.101961, 0.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 405.0, 67.0, 48.0, 19.0 ],
					"bordercolor" : [ 0.94902, 0.94902, 0.94902, 0.0 ],
					"triscale" : 0.9,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"minimum" : 0.0,
					"fontname" : "Verdana",
					"maximum" : 127.0,
					"presentation_rect" : [ 81.0, 22.0, 38.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Spacing (MIDI):",
					"id" : "obj-34",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 1.0, 36.0, 96.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 1.0, 36.0, 96.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Range (MIDI):",
					"id" : "obj-35",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 1.0, 22.0, 90.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 1.0, 22.0, 90.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.rissetGlissando~",
					"id" : "obj-36",
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 77.0, 347.0, 167.0, 19.0 ],
					"outlettype" : [ "", "signal" ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-37",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 200.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"id" : "obj-38",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 174.0, 424.0, 101.0, 17.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"id" : "obj-40",
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"has_gain" : 1,
					"prefix" : "audio",
					"has_mute" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 114.5, 144.0, 24.5, 144.0 ]
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
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 130.5, 144.0, 24.5, 144.0 ]
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
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"midpoints" : [ 461.5, 87.0, 430.899994, 87.0 ]
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
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 430.899994, 117.0, 389.0, 117.0, 389.0, 53.0, 461.5, 53.0 ]
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
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 421.5, 270.0, 399.0, 270.0, 399.0, 198.0, 421.5, 198.0 ]
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 421.5, 348.0, 399.0, 348.0, 399.0, 276.0, 421.5, 276.0 ]
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
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 421.5, 507.0, 399.0, 507.0, 399.0, 432.0, 421.5, 432.0 ]
				}

			}
 ]
	}

}
