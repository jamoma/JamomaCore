{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 163.0, 60.0, 1177.0, 723.0 ],
		"bglocked" : 0,
		"defrect" : [ 163.0, 60.0, 1177.0, 723.0 ],
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
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.output~ @description \"A generic module for stereo audio output. Includes saturation , limiter and recording device\"",
					"linecount" : 3,
					"numoutlets" : 2,
					"patching_rect" : [ 15.0, 345.0, 256.0, 43.0 ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numoutlets" : 0,
					"patching_rect" : [ 58.0, 43.0, 125.0, 12.0 ],
					"id" : "obj-3",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numoutlets" : 0,
					"patching_rect" : [ 58.0, 26.0, 125.0, 12.0 ],
					"id" : "obj-2",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/active[1]",
					"text" : "jcom.parameter dcblocker/active @type msg_toggle @description \"DC Blocker: Active or bypassed.\"",
					"numoutlets" : 3,
					"patching_rect" : [ 740.0, 620.0, 519.0, 19.0 ],
					"id" : "obj-98",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"numoutlets" : 0,
					"patching_rect" : [ 805.0, 210.0, 150.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-97",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"linecount" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 210.0, 305.0, 139.0, 29.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"numoutlets" : 2,
					"patching_rect" : [ 346.0, 161.0, 54.0, 19.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 0",
					"linecount" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 210.0, 165.0, 43.0, 31.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"numoutlets" : 4,
					"patching_rect" : [ 143.0, 165.0, 64.0, 19.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.gain",
					"text" : "jcom.parameter.gain audio/gain @description \"master gain\"",
					"numoutlets" : 2,
					"patching_rect" : [ 346.0, 128.0, 320.0, 19.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- record 0: stops recording.",
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 652.0, 271.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- record (filename): starts recording to the sound file specified",
					"linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 623.0, 209.0, 31.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- record 1: starts recording to a previously specified sound file. If no sound file is psecified, it's to bad...",
					"linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 593.0, 275.0, 31.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- open with no argument: bring up the open dialog??? (Or should we forget about this one?)",
					"linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 563.0, 253.0, 31.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- open filename: open the soundfile specified, but do not start recording",
					"linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 534.0, 249.0, 31.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- samptype and filetype can be set beforehand using messages \"samptype $1\" and \"filetype $1\", and is remembered.",
					"linecount" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 492.0, 271.0, 43.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message dsp_status @description \" Open DSP Status window.\"",
					"numoutlets" : 3,
					"patching_rect" : [ 360.0, 635.0, 355.0, 19.0 ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numoutlets" : 1,
					"patching_rect" : [ 30.0, 305.0, 137.0, 17.0 ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numoutlets" : 1,
					"patching_rect" : [ 27.0, 236.0, 49.0, 19.0 ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass /open",
					"numoutlets" : 2,
					"patching_rect" : [ 27.0, 213.0, 92.0, 19.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar gain_master",
					"numoutlets" : 1,
					"patching_rect" : [ 346.0, 106.0, 97.0, 19.0 ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"varname" : "gain_master",
					"numoutlets" : 2,
					"patching_rect" : [ 51.0, 70.0, 161.0, 13.0 ],
					"knobpict" : "jcom.slider.ch.knob.bottom.pct",
					"leftmargin" : 2,
					"id" : "obj-20",
					"outlettype" : [ "int", "int" ],
					"bkgndsize" : 1,
					"inactiveimage" : 0,
					"imagemask" : 1,
					"rightvalue" : 157,
					"rightmargin" : 2,
					"movevertical" : 0,
					"numinlets" : 2,
					"bkgndpict" : "jcom.slider.ch.bg.pct",
					"topvalue" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "record",
					"text" : "jcom.parameter record @type msg_toggle",
					"numoutlets" : 3,
					"patching_rect" : [ 468.0, 356.0, 235.0, 19.0 ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- left channel jcom-meter~ tends to die",
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 473.0, 249.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_xxx_record",
					"numoutlets" : 0,
					"patching_rect" : [ 346.0, 377.0, 94.0, 19.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Release (ms)",
					"numoutlets" : 0,
					"patching_rect" : [ 171.0, 105.0, 75.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Preamp",
					"numoutlets" : 1,
					"patching_rect" : [ 750.0, 233.0, 72.0, 19.0 ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Preamp (dB)",
					"numoutlets" : 0,
					"patching_rect" : [ 171.0, 88.0, 72.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Release",
					"numoutlets" : 1,
					"patching_rect" : [ 750.0, 373.0, 73.0, 19.0 ],
					"id" : "obj-28",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"labelclick" : 1,
					"types" : [  ],
					"numoutlets" : 3,
					"patching_rect" : [ 680.0, 484.0, 66.0, 19.0 ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 10.0,
					"items" : [ "exponential", ",", "linear" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar LimiterToggle",
					"numoutlets" : 1,
					"patching_rect" : [ 750.0, 184.0, 102.0, 19.0 ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/active",
					"text" : "jcom.parameter limiter/active @type msg_toggle @description \"Limiter: Active or bypassed.\"",
					"numoutlets" : 3,
					"patching_rect" : [ 750.0, 205.0, 479.0, 19.0 ],
					"id" : "obj-31",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"patching_rect" : [ 703.0, 443.0, 45.0, 19.0 ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Release",
					"minimum" : 0.0,
					"numoutlets" : 2,
					"patching_rect" : [ 240.0, 103.0, 39.0, 19.0 ],
					"id" : "obj-33",
					"fontname" : "Verdana",
					"maximum" : 10000.0,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"minimum" : 0,
					"numoutlets" : 2,
					"patching_rect" : [ 703.0, 339.0, 45.0, 19.0 ],
					"id" : "obj-34",
					"fontname" : "Verdana",
					"maximum" : 256,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"patching_rect" : [ 704.0, 301.0, 45.0, 19.0 ],
					"id" : "obj-35",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Preamp",
					"minimum" : 0.0,
					"numoutlets" : 2,
					"patching_rect" : [ 240.0, 86.0, 36.0, 19.0 ],
					"id" : "obj-36",
					"fontname" : "Verdana",
					"maximum" : 48.0,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Sound File Record",
					"numoutlets" : 0,
					"patching_rect" : [ 324.0, 183.0, 186.0, 19.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-37",
					"fontname" : "Verdana",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/mode",
					"text" : "jcom.parameter limiter/mode @type msg_symbol @description \"Limiter: Set the function to be used for calculating the scaling.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 750.0, 476.0, 333.0, 31.0 ],
					"id" : "obj-38",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/threshold",
					"text" : "jcom.parameter limiter/threshold @ramp/drive scheduler @range/bounds -24 48 @range/clipmode none @type msg_float @description \"Limiter: Set threshold as dB.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 750.0, 434.0, 440.0, 31.0 ],
					"id" : "obj-39",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/release",
					"text" : "jcom.parameter limiter/release @ramp/drive scheduler @type msg_float @range/bounds 0 3000 @range/clipmode low @description \"Limiter: Set release time as ms.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 750.0, 393.0, 461.0, 31.0 ],
					"id" : "obj-40",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/lookahead",
					"text" : "jcom.parameter limiter/lookahead @ramp/drive scheduler @range/bounds 0 256 @range/clipmode both @type msg_int @description \"Limiter: The number of samples to look ahead.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 750.0, 330.0, 512.0, 31.0 ],
					"id" : "obj-41",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/postamp",
					"text" : "jcom.parameter limiter/postamp @ramp/drive scheduler @range/bounds -24 48 @range/clipmode none @type msg_float @description \"Limiter: Postamp as dB.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 750.0, 293.0, 417.0, 31.0 ],
					"id" : "obj-42",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/preamp",
					"text" : "jcom.parameter limiter/preamp @ramp/drive scheduler @range/bounds 0 48 @range/clipmode none @type msg_float @description \"Limiter: Preamp as dB.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 750.0, 255.0, 411.0, 31.0 ],
					"id" : "obj-43",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Limiter",
					"numoutlets" : 0,
					"patching_rect" : [ 44.0, 105.0, 61.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-44",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Limiter (not all parameters are exposed in the interface)",
					"numoutlets" : 0,
					"patching_rect" : [ 730.0, 158.0, 309.0, 19.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-45",
					"fontname" : "Verdana",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Saturation",
					"numoutlets" : 0,
					"patching_rect" : [ 730.0, 11.0, 188.0, 19.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-46",
					"fontname" : "Verdana",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "saturation/active",
					"text" : "jcom.parameter saturation/active @type msg_toggle @description \"Saturation: Active or bypassed.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 750.0, 122.0, 419.0, 31.0 ],
					"id" : "obj-47",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar SaturationToggle",
					"numoutlets" : 1,
					"patching_rect" : [ 750.0, 100.0, 119.0, 19.0 ],
					"id" : "obj-48",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar SaturationDepth",
					"numoutlets" : 1,
					"patching_rect" : [ 750.0, 35.0, 117.0, 19.0 ],
					"id" : "obj-49",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "saturation/depth",
					"text" : "jcom.parameter saturation/depth @ramp/drive scheduler @repetitions 0 @type msg_float @range/bounds 0 99 @range/clipmode both @description \"Saturation: Depth.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 750.0, 57.0, 460.0, 31.0 ],
					"id" : "obj-50",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "SaturationDepth",
					"minimum" : 0,
					"numoutlets" : 2,
					"patching_rect" : [ 105.0, 86.0, 21.0, 19.0 ],
					"id" : "obj-51",
					"fontname" : "Verdana",
					"maximum" : 99,
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "%",
					"numoutlets" : 0,
					"patching_rect" : [ 125.0, 88.0, 19.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-52",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar SamptypeMenu 2",
					"numoutlets" : 2,
					"patching_rect" : [ 346.0, 294.0, 122.0, 19.0 ],
					"id" : "obj-53",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "record/samptype",
					"text" : "jcom.parameter record/samptype @type msg_symbol @description \"Recording: Set sample type for sound files.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 346.0, 317.0, 304.0, 31.0 ],
					"id" : "obj-54",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "record/filetype",
					"text" : "jcom.parameter record/filetype @type msg_symbol @description \"Recording: Set file type for sound files.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 346.0, 253.0, 283.0, 31.0 ],
					"id" : "obj-55",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p FileTypes",
					"numoutlets" : 1,
					"patching_rect" : [ 346.0, 202.0, 63.0, 19.0 ],
					"id" : "obj-56",
					"fontname" : "Verdana",
					"outlettype" : [ "clear" ],
					"fontsize" : 10.0,
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 14.0, 59.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 14.0, 59.0, 600.0, 426.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 60.0, 265.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"numoutlets" : 1,
									"patching_rect" : [ 60.0, 218.0, 89.0, 18.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r jcom.init",
									"numoutlets" : 1,
									"patching_rect" : [ 60.0, 60.0, 59.0, 18.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "aiff, au, raw, wave",
									"numoutlets" : 1,
									"patching_rect" : [ 111.0, 175.0, 100.0, 16.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "aiff, au, raw, wave, sd2",
									"numoutlets" : 1,
									"patching_rect" : [ 60.0, 192.0, 125.0, 16.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t clear",
									"numoutlets" : 1,
									"patching_rect" : [ 222.0, 164.0, 40.0, 18.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"outlettype" : [ "clear" ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel macintosh windows",
									"numoutlets" : 3,
									"patching_rect" : [ 60.0, 151.0, 122.0, 18.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "bang", "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route os",
									"numoutlets" : 2,
									"patching_rect" : [ 60.0, 130.0, 49.0, 18.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "js jcom.js_systeminfo.js",
									"numoutlets" : 1,
									"patching_rect" : [ 60.0, 99.0, 129.0, 18.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 231.5, 250.0, 69.0, 250.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 69.5, 89.0, 231.5, 89.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "FiletypeMenu",
					"types" : [  ],
					"numoutlets" : 3,
					"bgcolor" : [ 0.266667, 0.266667, 0.266667, 1.0 ],
					"patching_rect" : [ 216.0, 46.0, 61.0, 19.0 ],
					"id" : "obj-57",
					"fontname" : "Verdana",
					"rounded" : 15,
					"outlettype" : [ "int", "", "" ],
					"textcolor" : [ 0.882353, 0.882353, 0.882353, 1.0 ],
					"fontsize" : 10.0,
					"items" : [ "aiff", ",", "au", ",", "raw", ",", "wave", ",", "sd2" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar FiletypeMenu 2",
					"numoutlets" : 2,
					"patching_rect" : [ 346.0, 230.0, 110.0, 19.0 ],
					"id" : "obj-58",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "SamptypeMenu",
					"types" : [  ],
					"numoutlets" : 3,
					"bgcolor" : [ 0.266667, 0.266667, 0.266667, 1.0 ],
					"patching_rect" : [ 216.0, 64.0, 61.0, 19.0 ],
					"id" : "obj-59",
					"fontname" : "Verdana",
					"rounded" : 15,
					"outlettype" : [ "int", "", "" ],
					"textcolor" : [ 0.882353, 0.882353, 0.882353, 1.0 ],
					"fontsize" : 10.0,
					"items" : [ "int8", ",", "int16", ",", "int24", ",", "int32", ",", "float32", ",", "float64", ",", "mulaw", ",", "alaw" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 186.0, 146.0, 15.0, 15.0 ],
					"id" : "obj-60",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 143.0, 146.0, 15.0, 15.0 ],
					"id" : "obj-61",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"patching_rect" : [ 455.0, 536.0, 37.0, 19.0 ],
					"id" : "obj-62",
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"patching_rect" : [ 458.0, 587.0, 37.0, 19.0 ],
					"id" : "obj-63",
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1 0",
					"numoutlets" : 1,
					"patching_rect" : [ 346.0, 86.0, 50.0, 17.0 ],
					"id" : "obj-64",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"patching_rect" : [ 438.0, 108.0, 37.0, 19.0 ],
					"id" : "obj-65",
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "RecordButton",
					"numoutlets" : 2,
					"nofsaa" : 1,
					"patching_rect" : [ 221.0, 24.0, 45.0, 19.0 ],
					"id" : "obj-66",
					"outlettype" : [ "", "" ],
					"filename" : "jcom.jsui_texttoggle.js",
					"numinlets" : 1,
					"jsarguments" : [ "Record", "Record", 68, 68, 68, 225, 225, 225, 255, 40, 40, 0, 0, 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "DSP and dac~ settings",
					"numoutlets" : 0,
					"patching_rect" : [ 337.0, 484.0, 186.0, 19.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-67",
					"fontname" : "Verdana",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Bugs/required fixes:",
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 458.0, 111.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-68",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar DSP_Status",
					"numoutlets" : 1,
					"patching_rect" : [ 360.0, 613.0, 93.0, 19.0 ],
					"id" : "obj-69",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Channel_Right",
					"numoutlets" : 1,
					"patching_rect" : [ 360.0, 586.0, 107.0, 19.0 ],
					"id" : "obj-70",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Channel_Left",
					"numoutlets" : 1,
					"patching_rect" : [ 360.0, 535.0, 100.0, 19.0 ],
					"id" : "obj-71",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ch_2",
					"text" : "jcom.parameter ch_2 @type msg_int @description \" Set logical output for right channel.\"",
					"numoutlets" : 3,
					"patching_rect" : [ 360.0, 564.0, 460.0, 19.0 ],
					"id" : "obj-72",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ch_1",
					"text" : "jcom.parameter ch_1 @type msg_int @description \" Set logical output for left channel.\"",
					"numoutlets" : 3,
					"patching_rect" : [ 360.0, 513.0, 452.0, 19.0 ],
					"id" : "obj-73",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "DSP_Status",
					"numoutlets" : 1,
					"nofsaa" : 1,
					"patching_rect" : [ 221.0, 0.0, 45.0, 19.0 ],
					"id" : "obj-74",
					"outlettype" : [ "" ],
					"filename" : "jsui_textbutton.js",
					"numinlets" : 1,
					"jsarguments" : [ "DSP", 225, 225, 225, 68, 68, 68 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Channel_Right",
					"minimum" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 7.0, 43.0, 30.0, 19.0 ],
					"id" : "obj-75",
					"fontname" : "Verdana",
					"maximum" : 512,
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Channel_Left",
					"minimum" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 7.0, 26.0, 30.0, 19.0 ],
					"id" : "obj-76",
					"fontname" : "Verdana",
					"maximum" : 512,
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"patching_rect" : [ 125.0, 400.0, 17.0, 17.0 ],
					"id" : "obj-77",
					"outlettype" : [ "int" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1 100",
					"numoutlets" : 1,
					"patching_rect" : [ 85.0, 400.0, 37.0, 17.0 ],
					"id" : "obj-78",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0 100",
					"numoutlets" : 1,
					"patching_rect" : [ 45.0, 400.0, 37.0, 17.0 ],
					"id" : "obj-79",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numoutlets" : 1,
					"patching_rect" : [ 170.0, 305.0, 39.0, 17.0 ],
					"id" : "obj-81",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jcom.dsptoggle",
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 430.0, 94.0, 19.0 ],
					"id" : "obj-82",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Volume",
					"numoutlets" : 0,
					"patching_rect" : [ 324.0, 13.0, 191.0, 19.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-83",
					"fontname" : "Verdana",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"numoutlets" : 1,
					"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
					"patching_rect" : [ 441.0, 355.0, 17.0, 17.0 ],
					"offcolor" : [ 0.0, 0.266667, 0.0, 1.0 ],
					"id" : "obj-84",
					"outlettype" : [ "int" ],
					"oncolor" : [ 0.0, 1.0, 0.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Sound_processing",
					"numoutlets" : 2,
					"patching_rect" : [ 101.0, 263.0, 110.0, 19.0 ],
					"id" : "obj-85",
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal" ],
					"fontsize" : 10.0,
					"numinlets" : 3,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 41.0, 276.0, 660.0, 479.0 ],
						"bglocked" : 0,
						"defrect" : [ 41.0, 276.0, 660.0, 479.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /saturation /limiter /audio/gain /record",
									"numoutlets" : 5,
									"patching_rect" : [ 325.0, 119.0, 276.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 131.0, 366.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 111.0, 366.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p dac",
									"numoutlets" : 1,
									"patching_rect" : [ 179.0, 366.0, 157.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 3,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 40.0, 59.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 40.0, 59.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t open",
													"numoutlets" : 1,
													"patching_rect" : [ 230.0, 163.0, 40.0, 18.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"outlettype" : [ "open" ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_xxx_dac",
													"numoutlets" : 1,
													"patching_rect" : [ 30.0, 186.0, 78.0, 18.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.873845,
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 180.0, 55.0, 15.0, 15.0 ],
													"id" : "obj-3",
													"outlettype" : [ "signal" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 107.0, 55.0, 15.0, 15.0 ],
													"id" : "obj-4",
													"outlettype" : [ "signal" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 434.0, 255.0, 15.0, 15.0 ],
													"id" : "obj-5",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"numoutlets" : 1,
													"patching_rect" : [ 366.0, 163.0, 68.0, 18.0 ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"numoutlets" : 1,
													"patching_rect" : [ 298.0, 163.0, 68.0, 18.0 ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 230.0, 55.0, 15.0, 15.0 ],
													"id" : "obj-8",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /dsp_status /ch_1 /ch_2",
													"numoutlets" : 4,
													"patching_rect" : [ 230.0, 135.0, 216.0, 18.0 ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "", "" ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dac~ 1 2",
													"numoutlets" : 0,
													"patching_rect" : [ 107.0, 241.0, 83.0, 18.0 ],
													"id" : "obj-10",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 2 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 3 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p limiter",
									"numoutlets" : 2,
									"patching_rect" : [ 179.0, 198.0, 156.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"outlettype" : [ "signal", "signal" ],
									"fontsize" : 9.873845,
									"numinlets" : 3,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 78.0, 86.0, 674.0, 345.0 ],
										"bglocked" : 0,
										"defrect" : [ 78.0, 86.0, 674.0, 345.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend bypass",
													"numoutlets" : 1,
													"patching_rect" : [ 521.0, 149.0, 87.0, 18.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"numoutlets" : 1,
													"patching_rect" : [ 521.0, 128.0, 34.0, 18.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /active",
													"numoutlets" : 2,
													"patching_rect" : [ 521.0, 107.0, 116.0, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.pass /preamp /postamp /threshold /lookahead /release /mode",
													"numoutlets" : 7,
													"patching_rect" : [ 215.0, 79.0, 348.0, 18.0 ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "", "", "", "", "" ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 215.0, 46.0, 15.0, 15.0 ],
													"id" : "obj-5",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 122.0, 256.0, 15.0, 15.0 ],
													"id" : "obj-6",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 72.0, 256.0, 15.0, 15.0 ],
													"id" : "obj-7",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 172.0, 46.0, 15.0, 15.0 ],
													"id" : "obj-8",
													"outlettype" : [ "signal" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 72.0, 46.0, 15.0, 15.0 ],
													"id" : "obj-9",
													"outlettype" : [ "signal" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tt.limiter~ @bypass_dcblocker 1",
													"linecount" : 2,
													"numoutlets" : 3,
													"patching_rect" : [ 72.0, 202.0, 116.0, 30.0 ],
													"id" : "obj-10",
													"fontname" : "Verdana",
													"outlettype" : [ "signal", "signal", "" ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 3 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 4 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 5 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 6 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p saturation",
									"numoutlets" : 2,
									"patching_rect" : [ 179.0, 169.0, 157.0, 18.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"outlettype" : [ "signal", "signal" ],
									"fontsize" : 9.873845,
									"numinlets" : 3,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 417.0, 152.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 417.0, 152.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend bypass",
													"numoutlets" : 1,
													"patching_rect" : [ 396.0, 209.0, 87.0, 18.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"numoutlets" : 1,
													"patching_rect" : [ 396.0, 186.0, 34.0, 18.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /active",
													"numoutlets" : 2,
													"patching_rect" : [ 396.0, 164.0, 116.0, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr 1./(1. - $f1*0.01)",
													"numoutlets" : 1,
													"patching_rect" : [ 266.0, 121.0, 123.0, 18.0 ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 136.0, 309.0, 15.0, 15.0 ],
													"id" : "obj-5",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 172.0, 309.0, 15.0, 15.0 ],
													"id" : "obj-6",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 208.0, 50.0, 15.0, 15.0 ],
													"id" : "obj-7",
													"outlettype" : [ "signal" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 136.0, 50.0, 15.0, 15.0 ],
													"id" : "obj-8",
													"outlettype" : [ "signal" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend overdrive",
													"numoutlets" : 1,
													"patching_rect" : [ 266.0, 151.0, 99.0, 18.0 ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /depth",
													"numoutlets" : 2,
													"patching_rect" : [ 266.0, 75.0, 140.0, 18.0 ],
													"id" : "obj-10",
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 266.0, 50.0, 15.0, 15.0 ],
													"id" : "obj-11",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.saturation~",
													"numoutlets" : 3,
													"patching_rect" : [ 136.0, 268.0, 94.0, 18.0 ],
													"id" : "obj-12",
													"fontname" : "Verdana",
													"outlettype" : [ "signal", "signal", "" ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-12", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 27.0, 32.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 252.0, 136.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"outlettype" : [ "signal" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 179.0, 136.0, 15.0, 15.0 ],
									"id" : "obj-9",
									"outlettype" : [ "signal" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p smooth_in_out",
									"numoutlets" : 2,
									"patching_rect" : [ 179.0, 290.0, 93.0, 18.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"outlettype" : [ "signal", "signal" ],
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 185.0, 98.0, 623.0, 428.0 ],
										"bglocked" : 0,
										"defrect" : [ 185.0, 98.0, 623.0, 428.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0 10",
													"numoutlets" : 1,
													"patching_rect" : [ 475.0, 163.0, 31.0, 16.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"patching_rect" : [ 410.0, 140.0, 32.0, 18.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "" ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~",
													"numoutlets" : 1,
													"patching_rect" : [ 319.0, 270.0, 27.0, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"outlettype" : [ "signal" ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~",
													"numoutlets" : 1,
													"patching_rect" : [ 284.0, 270.0, 27.0, 18.0 ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"outlettype" : [ "signal" ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0, 1 10",
													"numoutlets" : 1,
													"patching_rect" : [ 410.0, 163.0, 44.0, 16.0 ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "line~",
													"numoutlets" : 2,
													"patching_rect" : [ 410.0, 189.0, 34.0, 18.0 ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"outlettype" : [ "signal", "bang" ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"numoutlets" : 4,
													"patching_rect" : [ 410.0, 112.0, 59.0, 18.0 ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"outlettype" : [ "int", "float", "int", "int" ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "NOTE: This fade is not displayed in the GUI.",
													"numoutlets" : 0,
													"patching_rect" : [ 94.0, 334.0, 228.0, 18.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Quick fade in when audio start",
													"numoutlets" : 0,
													"patching_rect" : [ 24.0, 75.0, 161.0, 18.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 319.0, 91.0, 15.0, 15.0 ],
													"id" : "obj-10",
													"outlettype" : [ "signal" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 284.0, 91.0, 15.0, 15.0 ],
													"id" : "obj-11",
													"outlettype" : [ "signal" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 319.0, 305.0, 15.0, 15.0 ],
													"id" : "obj-12",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 284.0, 305.0, 15.0, 15.0 ],
													"id" : "obj-13",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r jcom.audio.off",
													"numoutlets" : 1,
													"patching_rect" : [ 475.0, 112.0, 87.0, 18.0 ],
													"id" : "obj-14",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.873845,
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Quick fade out when audio stop",
													"numoutlets" : 0,
													"patching_rect" : [ 24.0, 59.0, 166.0, 18.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-15",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "line~ is able to handle this. gain~ and matrix~ is not.",
													"numoutlets" : 0,
													"patching_rect" : [ 24.0, 95.0, 277.0, 18.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-16",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p gain",
									"numoutlets" : 2,
									"patching_rect" : [ 179.0, 227.0, 156.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"outlettype" : [ "signal", "signal" ],
									"fontsize" : 9.873845,
									"numinlets" : 3,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 759.0, 82.0, 313.0, 433.0 ],
										"bglocked" : 0,
										"defrect" : [ 759.0, 82.0, 313.0, 433.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 177.0, 42.0, 15.0, 15.0 ],
													"id" : "obj-1",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 64.0, 318.0, 15.0, 15.0 ],
													"id" : "obj-2",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 93.0, 318.0, 15.0, 15.0 ],
													"id" : "obj-3",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 64.0, 44.0, 15.0, 15.0 ],
													"id" : "obj-4",
													"outlettype" : [ "signal" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 93.0, 44.0, 15.0, 15.0 ],
													"id" : "obj-5",
													"outlettype" : [ "signal" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /midi",
													"numoutlets" : 2,
													"patching_rect" : [ 177.0, 78.0, 108.0, 18.0 ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "gain~",
													"numoutlets" : 2,
													"patching_rect" : [ 65.0, 130.0, 22.0, 122.0 ],
													"id" : "obj-7",
													"outlettype" : [ "signal", "int" ],
													"orientation" : 2,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "gain~",
													"numoutlets" : 2,
													"patching_rect" : [ 94.0, 131.0, 22.0, 122.0 ],
													"id" : "obj-8",
													"outlettype" : [ "signal", "int" ],
													"orientation" : 2,
													"numinlets" : 2
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p record",
									"numoutlets" : 0,
									"patching_rect" : [ 365.0, 366.0, 139.0, 18.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"numinlets" : 3,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 316.0, 274.0, 948.0, 558.0 ],
										"bglocked" : 0,
										"defrect" : [ 316.0, 274.0, 948.0, 558.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"numoutlets" : 1,
													"patching_rect" : [ 453.0, 203.0, 22.0, 18.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"outlettype" : [ "bang" ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"numoutlets" : 2,
													"patching_rect" : [ 453.0, 225.0, 36.0, 18.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.pass /samptype",
													"numoutlets" : 2,
													"patching_rect" : [ 479.0, 132.0, 115.0, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "FROM REMOTE:",
													"numoutlets" : 0,
													"patching_rect" : [ 549.0, 282.0, 86.0, 18.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- record 0: stops recording.",
													"numoutlets" : 0,
													"patching_rect" : [ 549.0, 459.0, 265.0, 18.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- record (filename): starts recording to the sound file specified",
													"linecount" : 2,
													"numoutlets" : 0,
													"patching_rect" : [ 549.0, 430.0, 259.0, 30.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- record 1: starts recording to a previously specified sound file. If no sound file has been specified, it's to bad...",
													"linecount" : 2,
													"numoutlets" : 0,
													"patching_rect" : [ 549.0, 400.0, 305.0, 30.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- open with no argument: bring up the open dialog??? (Or should we forget about this one?)",
													"linecount" : 2,
													"numoutlets" : 0,
													"patching_rect" : [ 549.0, 370.0, 265.0, 30.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- open filename: open the soundfile specified, but do not start recording",
													"linecount" : 2,
													"numoutlets" : 0,
													"patching_rect" : [ 549.0, 341.0, 265.0, 30.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- samptype and filetype can be set beforehand using messages \"samptype $1\" and \"filetype $1\", and is remembered.",
													"linecount" : 3,
													"numoutlets" : 0,
													"patching_rect" : [ 549.0, 299.0, 265.0, 42.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-10",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack open aiff",
													"numoutlets" : 1,
													"patching_rect" : [ 261.0, 147.0, 120.0, 18.0 ],
													"id" : "obj-11",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /filetype",
													"numoutlets" : 2,
													"patching_rect" : [ 371.0, 87.0, 123.0, 18.0 ],
													"id" : "obj-12",
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_xxx_record",
													"numoutlets" : 1,
													"patching_rect" : [ 261.0, 92.0, 92.0, 18.0 ],
													"id" : "obj-13",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.873845,
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"patching_rect" : [ 261.0, 121.0, 32.0, 18.0 ],
													"id" : "obj-14",
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "" ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 371.0, 60.0, 15.0, 15.0 ],
													"id" : "obj-15",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 80.0, 91.0, 15.0, 15.0 ],
													"id" : "obj-16",
													"outlettype" : [ "signal" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 153.0, 91.0, 15.0, 15.0 ],
													"id" : "obj-17",
													"outlettype" : [ "signal" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sfrecord~ 2",
													"numoutlets" : 1,
													"patching_rect" : [ 80.0, 278.0, 83.0, 18.0 ],
													"id" : "obj-18",
													"fontname" : "Verdana",
													"outlettype" : [ "signal" ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "<- required to avoid an error message during initialisation",
													"numoutlets" : 0,
													"patching_rect" : [ 504.0, 214.0, 298.0, 18.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-19",
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-18", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 326.5, 192.0, 257.0, 192.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [ 325.5, 221.0, 257.0, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [ 325.5, 267.0, 262.5, 267.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 36.0, 68.0, 334.5, 68.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-5", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 2 ],
									"destination" : [ "obj-11", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 4 ],
									"destination" : [ "obj-4", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 3 ],
									"destination" : [ "obj-12", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar RecordButton",
					"numoutlets" : 1,
					"patching_rect" : [ 346.0, 355.0, 102.0, 19.0 ],
					"id" : "obj-86",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "fpic",
					"numoutlets" : 0,
					"patching_rect" : [ 51.0, 18.0, 160.0, 52.0 ],
					"pic" : "jcom.bg.hgain.pct",
					"id" : "obj-87",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 396.0, 20.0, 20.0 ],
					"id" : "obj-88",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 5.0, 305.0, 20.0, 20.0 ],
					"id" : "obj-89",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The set message is important to prevent feedback into jcom.parameter.gain from killing ongoing ramps",
					"linecount" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 324.0, 34.0, 217.0, 43.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-90",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-- audio in --",
					"numoutlets" : 0,
					"patching_rect" : [ 171.0, 129.0, 79.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-91",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Saturation",
					"numoutlets" : 0,
					"patching_rect" : [ 44.0, 88.0, 61.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-92",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "SaturationToggle",
					"numoutlets" : 1,
					"patching_rect" : [ 30.0, 85.0, 75.0, 18.0 ],
					"id" : "obj-93",
					"outlettype" : [ "" ],
					"numinlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "LimiterToggle",
					"numoutlets" : 1,
					"patching_rect" : [ 30.0, 102.0, 75.0, 18.0 ],
					"id" : "obj-94",
					"outlettype" : [ "" ],
					"numinlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numoutlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"id" : "obj-95",
					"outlettype" : [ "" ],
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-85", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 2 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"midpoints" : [ 54.5, 421.0, 54.5, 421.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"midpoints" : [ 94.5, 421.0, 54.5, 421.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"midpoints" : [ 134.5, 424.0, 54.5, 424.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [ 36.5, 259.0, 110.5, 259.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-85", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-85", 2 ],
					"hidden" : 0,
					"midpoints" : [ 167.5, 223.0, 201.5, 223.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [ 355.5, 181.0, 338.0, 181.0, 338.0, 75.0, 355.5, 75.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [ 355.5, 285.0, 339.0, 285.0, 339.0, 223.0, 355.5, 223.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 1 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 446.5, 250.0, 355.5, 250.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [ 355.5, 348.0, 339.0, 348.0, 339.0, 290.0, 355.5, 290.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 1 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 458.5, 314.0, 355.5, 314.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [ 369.5, 556.0, 355.0, 556.0, 355.0, 510.0, 369.5, 510.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [ 369.5, 607.0, 355.0, 607.0, 355.0, 560.0, 369.5, 560.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 759.5, 92.0, 745.0, 92.0, 745.0, 32.0, 759.5, 32.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [ 759.5, 154.0, 745.0, 154.0, 745.0, 97.0, 759.5, 97.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 759.5, 227.0, 744.0, 227.0, 744.0, 182.0, 759.5, 182.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 759.5, 289.0, 743.0, 289.0, 743.0, 230.0, 759.5, 230.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 759.5, 428.0, 745.0, 428.0, 745.0, 370.0, 759.5, 370.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 39.5, 342.0, 24.5, 342.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-89", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 179.5, 342.0, 24.5, 342.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 219.5, 342.0, 24.5, 342.0 ]
				}

			}
 ]
	}

}
