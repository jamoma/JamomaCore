{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 7.0, 73.0, 921.0, 687.0 ],
		"bglocked" : 0,
		"defrect" : [ 7.0, 73.0, 921.0, 687.0 ],
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
					"numinlets" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-51",
					"fontname" : "Verdana",
					"patching_rect" : [ 635.0, 50.0, 141.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"patching_rect" : [ 640.0, 10.0, 141.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 152.0, 10.0, 80.0, 4.0 ],
					"id" : "obj-50",
					"patching_rect" : [ 635.0, 75.0, 80.0, 4.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 152.0, 5.0, 80.0, 4.0 ],
					"id" : "obj-49",
					"patching_rect" : [ 640.0, 35.0, 80.0, 4.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tt.limiter~",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"patching_rect" : [ 380.0, 120.0, 72.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"patching_rect" : [ 510.0, 60.0, 26.0, 26.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"patching_rect" : [ 380.0, 55.0, 26.0, 26.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"patching_rect" : [ 380.0, 150.0, 71.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "", "" ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"patching_rect" : [ 380.0, 90.0, 147.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"patching_rect" : [ 155.0, 120.0, 137.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Mode",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"items" : [ "exponential", ",", "linear" ],
					"types" : [  ],
					"labelclick" : 1,
					"outlettype" : [ "int", "", "" ],
					"presentation_rect" : [ 203.0, 49.0, 87.0, 19.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"patching_rect" : [ 70.0, 605.0, 87.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Preamp",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"presentation_rect" : [ 64.0, 19.0, 48.0, 19.0 ],
					"id" : "obj-9",
					"triangle" : 0,
					"fontname" : "Verdana",
					"patching_rect" : [ 70.0, 250.0, 48.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mode",
					"text" : "jcom.parameter mode @repetitions/allow 0 @type msg_symbol @description \"Set the function to be used for calculating the scaling. Possible values: exponential | linear\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"patching_rect" : [ 70.0, 630.0, 446.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "release",
					"text" : "jcom.parameter release @type msg_float @range/bounds 0 500 @range/clipmode low @dataspace time @dataspace/unit/native ms @dataspace/unit/active ms @ramp/drive scheduler @description \"The release time (ms).\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"patching_rect" : [ 70.0, 565.0, 610.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "lookahead",
					"text" : "jcom.parameter lookahead @type msg_int @range/bounds 0 256 @range/clipmode both @ramp/drive scheduler @repetitions/allow 0 @dataspace time @dataspace/unit/native sample @dataspace/unit/active sample @description \"The number of samples (up to 256) to look ahead into the signal to see what is coming.\"",
					"linecount" : 3,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"patching_rect" : [ 70.0, 485.0, 659.0, 43.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "threshold",
					"text" : "jcom.parameter threshold @type msg_float @range/bounds -48 6 @range/clipmode none @ramp/drive scheduler @dataspace gain @dataspace/unit/native dB @dataspace/unit/active dB @description \"The limiter threshold (in dB below full scale). When the input signal level exceeds this threshold, it will be attenuated as necessary to keep the level below the threshold.\"",
					"linecount" : 3,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"patching_rect" : [ 70.0, 400.0, 656.0, 43.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "postamp",
					"text" : "jcom.parameter postamp @type msg_float @range/bounds -6 48 @range/clipmode none @dataspace gain @dataspace/unit/native dB @dataspace/unit/active dB @ramp/drive scheduler @description \"The gain in dB applied to the signal after limiting. \"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"patching_rect" : [ 70.0, 340.0, 674.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "preamp",
					"text" : "jcom.parameter preamp @type msg_float @range/bounds -6 48 @range/clipmode none @ramp/drive scheduler @dataspace gain @dataspace/unit/active dB @dataspace/unit/native dB @ramp/function linear @description \"The gain in dB applied to the signal before limiting.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"patching_rect" : [ 70.0, 275.0, 739.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Lookahead",
					"numinlets" : 1,
					"minimum" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"maximum" : 256,
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9,
					"presentation_rect" : [ 203.0, 19.0, 35.0, 19.0 ],
					"id" : "obj-22",
					"triangle" : 0,
					"fontname" : "Verdana",
					"patching_rect" : [ 70.0, 460.0, 35.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Release",
					"numinlets" : 1,
					"minimum" : 0.0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"presentation_rect" : [ 203.0, 33.0, 36.0, 19.0 ],
					"id" : "obj-23",
					"triangle" : 0,
					"fontname" : "Verdana",
					"patching_rect" : [ 70.0, 540.0, 36.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Threshold",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"presentation_rect" : [ 64.0, 49.0, 48.0, 19.0 ],
					"id" : "obj-24",
					"triangle" : 0,
					"fontname" : "Verdana",
					"patching_rect" : [ 70.0, 375.0, 48.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dB",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 109.0, 49.0, 22.0, 19.0 ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"patching_rect" : [ 114.0, 49.0, 22.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Postamp",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"presentation_rect" : [ 64.0, 34.0, 48.0, 19.0 ],
					"id" : "obj-26",
					"triangle" : 0,
					"fontname" : "Verdana",
					"patching_rect" : [ 70.0, 315.0, 48.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dB",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 109.0, 34.0, 22.0, 19.0 ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"patching_rect" : [ 114.0, 34.0, 22.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dB",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 109.0, 19.0, 22.0, 19.0 ],
					"id" : "obj-28",
					"fontname" : "Verdana",
					"patching_rect" : [ 114.0, 19.0, 22.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ms",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 239.0, 33.0, 53.0, 19.0 ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"patching_rect" : [ 239.0, 34.0, 53.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "samples",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 239.0, 19.0, 54.0, 19.0 ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"patching_rect" : [ 239.0, 19.0, 54.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Mode",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 142.0, 50.0, 52.0, 19.0 ],
					"id" : "obj-31",
					"fontname" : "Verdana",
					"patching_rect" : [ 142.0, 49.0, 52.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Release",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 142.0, 34.0, 53.0, 19.0 ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"patching_rect" : [ 142.0, 34.0, 53.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Lookahead",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 142.0, 19.0, 63.0, 19.0 ],
					"id" : "obj-33",
					"fontname" : "Verdana",
					"patching_rect" : [ 142.0, 19.0, 63.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Threshold",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 4.0, 49.0, 58.0, 19.0 ],
					"id" : "obj-34",
					"fontname" : "Verdana",
					"patching_rect" : [ 4.0, 49.0, 58.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Postamp",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 4.0, 34.0, 51.0, 19.0 ],
					"id" : "obj-35",
					"fontname" : "Verdana",
					"patching_rect" : [ 4.0, 34.0, 51.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Preamp",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 4.0, 19.0, 51.0, 19.0 ],
					"id" : "obj-36",
					"fontname" : "Verdana",
					"patching_rect" : [ 4.0, 19.0, 51.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-37",
					"fontname" : "Verdana",
					"patching_rect" : [ 65.0, 120.0, 87.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-38",
					"patching_rect" : [ 35.0, 115.0, 26.0, 26.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-39",
					"fontname" : "Verdana",
					"patching_rect" : [ 295.0, 120.0, 37.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-40",
					"patching_rect" : [ 380.0, 175.0, 26.0, 26.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type audio @description \"A stereo limiter\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-41",
					"fontname" : "Verdana",
					"patching_rect" : [ 35.0, 155.0, 274.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----signal inputs----",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-42",
					"fontname" : "Verdana",
					"patching_rect" : [ 405.0, 60.0, 115.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-43",
					"patching_rect" : [ 35.0, 195.0, 26.0, 26.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-44",
					"patching_rect" : [ 410.0, 175.0, 26.0, 26.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-45",
					"fontname" : "Verdana",
					"patching_rect" : [ 440.0, 180.0, 106.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numinlets" : 1,
					"has_bypass" : 1,
					"numoutlets" : 1,
					"has_gain" : 1,
					"outlettype" : [ "" ],
					"has_mix" : 1,
					"prefix" : "audio",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-46",
					"has_mute" : 1,
					"presentation" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 164.5, 146.0, 44.5, 146.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 304.5, 148.0, 44.5, 148.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 79.5, 306.0, 54.0, 306.0, 54.0, 246.0, 79.5, 246.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 79.5, 591.0, 54.0, 591.0, 54.0, 536.0, 79.5, 536.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 79.5, 666.0, 54.0, 666.0, 54.0, 601.0, 79.5, 601.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 2 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 474.833344, 111.0, 389.5, 111.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 79.5, 531.0, 54.0, 531.0, 54.0, 455.0, 79.5, 455.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 79.5, 444.0, 54.0, 444.0, 54.0, 375.0, 79.5, 375.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 79.5, 371.0, 54.0, 371.0, 54.0, 312.0, 79.5, 312.0 ]
				}

			}
 ]
	}

}
