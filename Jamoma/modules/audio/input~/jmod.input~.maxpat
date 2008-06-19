{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 53.0, 426.0, 1314.0, 319.0 ],
		"bglocked" : 0,
		"defrect" : [ 53.0, 426.0, 1314.0, 319.0 ],
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
					"maxclass" : "newobj",
					"text" : "print",
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 530.0, 265.0, 100.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/dsp_status",
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 0.0, 295.0, 338.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "loop:/get",
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 180.0, 355.0, 74.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/sf_open Servo:/Applications/Max5/examples/sounds/cello-f2.aif",
					"fontname" : "Verdana",
					"id" : "obj-74",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 30.0, 255.0, 338.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "conformpath slash boot",
					"fontname" : "Verdana",
					"id" : "obj-57",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 1135.0, 90.0, 129.0, 19.0 ],
					"outlettype" : [ "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Channel_Right",
					"maximum" : 512,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"id" : "obj-75",
					"numinlets" : 1,
					"presentation_rect" : [ 15.0, 44.0, 30.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 775.0, 434.0, 30.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"presentation" : 1,
					"minimum" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Channel_Left",
					"maximum" : 512,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"id" : "obj-6",
					"numinlets" : 1,
					"presentation_rect" : [ 15.0, 27.0, 30.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 775.0, 405.0, 30.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"presentation" : 1,
					"minimum" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dial",
					"hint" : "Balance",
					"annotation" : "Balance",
					"size" : 202,
					"id" : "obj-45",
					"numinlets" : 1,
					"presentation_rect" : [ 20.0, 75.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 335.0, 296.0, 36.0, 36.0 ],
					"bgcolor" : [ 0.337255, 0.356863, 0.690196, 0.0 ],
					"outlettype" : [ "float" ],
					"presentation" : 1,
					"vtracking" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"id" : "obj-35",
					"numinlets" : 1,
					"presentation_rect" : [ 45.0, 75.0, 150.0, 20.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 335.0, 130.0, 150.0, 20.0 ],
					"outlettype" : [ "" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Play_button",
					"rounded" : 8.0,
					"fontname" : "Verdana",
					"id" : "obj-84",
					"numinlets" : 1,
					"presentation_rect" : [ 220.0, 46.0, 60.0, 15.0 ],
					"fontsize" : 9.873845,
					"mode" : 1,
					"numoutlets" : 3,
					"texton" : "Play",
					"patching_rect" : [ 828.0, 239.0, 50.0, 18.0 ],
					"outlettype" : [ "int", "", "int" ],
					"text" : "Play",
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Open_button",
					"rounded" : 8.0,
					"fontname" : "Verdana",
					"id" : "obj-83",
					"numinlets" : 1,
					"presentation_rect" : [ 220.0, 29.0, 60.0, 15.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"texton" : "DSP",
					"patching_rect" : [ 830.0, 90.0, 50.0, 18.0 ],
					"outlettype" : [ "int", "", "int" ],
					"text" : "Open",
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "input_menu",
					"rounded" : 15,
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-62",
					"numinlets" : 1,
					"presentation_rect" : [ 95.0, 111.0, 100.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 828.0, 59.0, 100.0, 18.0 ],
					"outlettype" : [ "int", "", "" ],
					"presentation" : 1,
					"items" : [ "none", ",", "live", ",", "soundfile", ",", "1KHz", ",", "pink" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "DSP_Status",
					"rounded" : 8.0,
					"fontname" : "Verdana",
					"id" : "obj-82",
					"numinlets" : 1,
					"presentation_rect" : [ 30.0, 113.0, 57.0, 15.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"texton" : "DSP",
					"patching_rect" : [ 330.0, 501.0, 50.0, 18.0 ],
					"outlettype" : [ "int", "", "int" ],
					"text" : "DSP",
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"id" : "obj-29",
					"numinlets" : 1,
					"presentation_rect" : [ 220.0, 70.0, 60.0, 18.0 ],
					"numoutlets" : 1,
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"patching_rect" : [ 830.0, 320.0, 60.0, 18.0 ],
					"outlettype" : [ "" ],
					"presentation" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"types" : [ "AIFF", "WAVE", "Sd2f" ],
					"id" : "obj-38",
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 20.0, 300.0, 120.0 ],
					"numoutlets" : 2,
					"border" : 0.0,
					"patching_rect" : [ 1135.0, 10.0, 133.0, 68.0 ],
					"outlettype" : [ "", "" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 1050.0, 275.0, 100.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tap.typecheck~",
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 6,
					"patching_rect" : [ 1000.0, 245.0, 100.0, 19.0 ],
					"outlettype" : [ "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ch_2",
					"text" : "jcom.parameter ch.2 @type msg_int @description \" Set logical ointput for right channel.\"",
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 815.0, 435.0, 460.0, 19.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ch_1",
					"text" : "jcom.parameter ch.1 @type msg_int @description \" Set logical intput for left channel.\"",
					"fontname" : "Verdana",
					"id" : "obj-73",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 815.0, 405.0, 452.0, 19.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Verdana",
					"id" : "obj-59",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 335.0, 276.0, 70.0, 19.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"fontname" : "Verdana",
					"id" : "obj-58",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 335.0, 236.0, 56.0, 19.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale -1. 1. 0. 201.",
					"fontname" : "Verdana",
					"id" : "obj-48",
					"numinlets" : 6,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 335.0, 256.0, 107.0, 19.0 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 0. 201. -1. 1.",
					"fontname" : "Verdana",
					"id" : "obj-47",
					"numinlets" : 6,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 335.0, 179.0, 107.0, 19.0 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter balance @range/bounds -1 1 @range/clipmode both @description \"Balance of the stereo signal\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-42",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 335.0, 200.0, 336.0, 31.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "O0:O0:O0",
					"fontname" : "Verdana",
					"id" : "obj-41",
					"numinlets" : 1,
					"presentation_rect" : [ 210.0, 90.0, 85.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 405.0, 150.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "anton.aif",
					"fontname" : "Verdana",
					"id" : "obj-40",
					"numinlets" : 1,
					"presentation_rect" : [ 210.0, 105.0, 85.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 330.0, 570.0, 150.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.input~ @description \"A generic module for audio input\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 9.0, 204.0, 196.0, 31.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 2",
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 335.0, 431.0, 121.0, 19.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 335.0, 386.0, 121.0, 19.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"id" : "obj-3",
					"numinlets" : 1,
					"presentation_rect" : [ 30.0, 46.0, 170.0, 14.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 335.0, 451.0, 123.0, 12.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"id" : "obj-37",
					"numinlets" : 1,
					"presentation_rect" : [ 30.0, 30.0, 170.0, 14.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 335.0, 406.0, 123.0, 12.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 57.0, 158.0, 196.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.gain",
					"text" : "jcom.parameter audio/gain @range/bounds 0 127 @range/clipmode both @dataspace gain @dataspace/unit/active midi @dataspace/unit/native midi @description \"master gain\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 335.0, 80.0, 394.0, 43.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 45.0, 410.0, 73.0, 19.0 ],
					"outlettype" : [ "signal", "signal", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~",
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 45.0, 295.0, 56.0, 19.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 67.0, 177.0, 137.0, 17.0 ],
					"outlettype" : [ "" ]
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
					"patching_rect" : [ 45.0, 347.0, 49.0, 19.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 45.0, 321.0, 87.0, 19.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message dsp_status @type msg_none @description \"Open DSP Status window.\"",
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 330.0, 521.0, 446.0, 19.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_xxx_filename",
					"fontname" : "Verdana",
					"id" : "obj-28",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 330.0, 546.0, 104.0, 19.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_xxx_done",
					"fontname" : "Verdana",
					"id" : "obj-33",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 828.0, 189.0, 86.0, 19.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "DSP settings",
					"fontname" : "Verdana",
					"id" : "obj-39",
					"numinlets" : 1,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 330.0, 481.0, 185.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Verdana",
					"id" : "obj-49",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 195.0, 177.0, 38.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Gain control and metering",
					"fontname" : "Verdana",
					"id" : "obj-50",
					"numinlets" : 1,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 330.0, 45.0, 185.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "loop",
					"fontname" : "Verdana",
					"id" : "obj-51",
					"numinlets" : 1,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 765.0, 302.0, 37.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "play",
					"fontname" : "Verdana",
					"id" : "obj-52",
					"numinlets" : 1,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 765.0, 217.0, 35.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "open",
					"fontname" : "Verdana",
					"id" : "obj-53",
					"numinlets" : 1,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 765.0, 93.0, 39.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "source",
					"fontname" : "Verdana",
					"id" : "obj-54",
					"numinlets" : 1,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 765.0, 24.0, 51.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Sound_sources",
					"fontname" : "Verdana",
					"id" : "obj-56",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 45.0, 376.0, 107.0, 19.0 ],
					"outlettype" : [ "signal", "signal", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 258.0, 113.0, 940.0, 694.0 ],
						"bglocked" : 0,
						"defrect" : [ 258.0, 113.0, 940.0, 694.0 ],
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
									"text" : "prepend symbol",
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 95.0, 90.0, 89.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "input_menu",
									"fontname" : "Verdana",
									"types" : [  ],
									"id" : "obj-2",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 3,
									"patching_rect" : [ 95.0, 115.0, 100.0, 19.0 ],
									"outlettype" : [ "int", "", "" ],
									"items" : [ "none", ",", "live", ",", "soundfile", ",", "1KHz", ",", "pink" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!= 4",
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 544.0, 164.0, 30.0, 19.0 ],
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!= 3",
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 453.0, 164.0, 30.0, 19.0 ],
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!= 2",
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 362.0, 164.0, 30.0, 19.0 ],
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!= 1",
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 271.0, 164.0, 30.0, 19.0 ],
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mute~",
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 362.0, 191.0, 43.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mute~",
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 271.0, 191.0, 43.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mute~",
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 453.0, 191.0, 43.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mute~",
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 544.0, 191.0, 43.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /source_select",
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 95.0, 65.0, 156.0, 19.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p smooth_in_out",
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 20.0, 512.0, 168.0, 19.0 ],
									"outlettype" : [ "signal", "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 185.0, 98.0, 617.0, 390.0 ],
										"bglocked" : 0,
										"defrect" : [ 185.0, 98.0, 617.0, 390.0 ],
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
													"fontname" : "Verdana",
													"id" : "obj-1",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 475.0, 163.0, 33.0, 17.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"fontname" : "Verdana",
													"id" : "obj-2",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 410.0, 140.0, 32.0, 19.0 ],
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~",
													"fontname" : "Verdana",
													"id" : "obj-3",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 319.0, 270.0, 27.0, 19.0 ],
													"outlettype" : [ "signal" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~",
													"fontname" : "Verdana",
													"id" : "obj-4",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 284.0, 270.0, 27.0, 19.0 ],
													"outlettype" : [ "signal" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0, 1 10",
													"fontname" : "Verdana",
													"id" : "obj-5",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 410.0, 163.0, 45.0, 17.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "line~",
													"fontname" : "Verdana",
													"id" : "obj-6",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 410.0, 189.0, 34.0, 19.0 ],
													"outlettype" : [ "signal", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"fontname" : "Verdana",
													"id" : "obj-7",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 4,
													"patching_rect" : [ 410.0, 112.0, 59.0, 19.0 ],
													"outlettype" : [ "int", "float", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "NOTE: This fade is not displayed in the GUI.",
													"fontname" : "Verdana",
													"id" : "obj-8",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 0,
													"patching_rect" : [ 40.0, 350.0, 231.0, 19.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Quick fade in when audio start",
													"fontname" : "Verdana",
													"id" : "obj-9",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 0,
													"patching_rect" : [ 40.0, 35.0, 162.0, 19.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-10",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 319.0, 91.0, 22.0, 22.0 ],
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-11",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 284.0, 91.0, 22.0, 22.0 ],
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-12",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 319.0, 305.0, 22.0, 22.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-13",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 284.0, 305.0, 22.0, 22.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r jcom.audio.off",
													"fontname" : "Verdana",
													"id" : "obj-14",
													"numinlets" : 0,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 475.0, 112.0, 88.0, 19.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Quick fade out when audio stop",
													"fontname" : "Verdana",
													"id" : "obj-15",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 0,
													"patching_rect" : [ 40.0, 15.0, 168.0, 19.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "line~ is able to handle this. gain~ and matrix~ is not.",
													"fontname" : "Verdana",
													"id" : "obj-16",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 0,
													"patching_rect" : [ 40.0, 55.0, 281.0, 19.0 ]
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
										"fontname" : "Verdana",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-13",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 20.0, 22.0, 28.0, 28.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "By using opendialog it's made sure that any opendialog message that's reaching sfplay~ also has a filename argument.",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 400.0, 612.0, 329.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "That way we know for sure that any \"open\" message reaching sfplay~ for sure implies that a new file is to be opened imideately, and hence the Play button can be turned of instantly.",
									"linecount" : 3,
									"fontname" : "Verdana",
									"id" : "obj-15",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 400.0, 640.0, 391.0, 43.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The \"Play\" GUI button should be turned of when a new file is opened.",
									"fontname" : "Verdana",
									"id" : "obj-16",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 400.0, 593.0, 359.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Time marker",
									"fontname" : "Verdana",
									"id" : "obj-17",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 435.0, 555.0, 89.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "signal R",
									"fontname" : "Verdana",
									"id" : "obj-18",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 200.0, 555.0, 56.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "signal L",
									"fontname" : "Verdana",
									"id" : "obj-19",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 555.0, 58.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-20",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 555.0, 28.0, 28.0 ],
									"comment" : "signal L"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-21",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 171.0, 555.0, 28.0, 28.0 ],
									"comment" : "signal R"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-22",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 404.0, 555.0, 28.0, 28.0 ],
									"comment" : "Time marker"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p gain",
									"fontname" : "Verdana",
									"id" : "obj-23",
									"numinlets" : 3,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 20.0, 475.0, 168.0, 19.0 ],
									"outlettype" : [ "signal", "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 45.0, 44.0, 529.0, 535.0 ],
										"bglocked" : 0,
										"defrect" : [ 45.0, 44.0, 529.0, 535.0 ],
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
													"maxclass" : "flonum",
													"fontname" : "Verdana",
													"id" : "obj-23",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 160.0, 145.0, 50.0, 19.0 ],
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"fontname" : "Verdana",
													"id" : "obj-22",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 70.0, 140.0, 50.0, 19.0 ],
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sin",
													"fontname" : "Verdana",
													"id" : "obj-34",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 165.0, 200.0, 25.0, 19.0 ],
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "cos",
													"fontname" : "Verdana",
													"id" : "obj-33",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 130.0, 200.0, 27.0, 19.0 ],
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale -1. 1. 0. 1.570796",
													"fontname" : "Verdana",
													"id" : "obj-30",
													"numinlets" : 6,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 155.0, 170.0, 132.0, 19.0 ],
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 61.0, 24.0, 24.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route /audio/gain /balance",
													"fontname" : "Verdana",
													"id" : "obj-2",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 3,
													"patching_rect" : [ 50.0, 106.0, 171.0, 19.0 ],
													"outlettype" : [ "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0. 127. 0. 7.94321 1.071519",
													"linecount" : 3,
													"fontname" : "Verdana",
													"id" : "obj-3",
													"numinlets" : 6,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 170.0, 93.0, 43.0 ],
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 0.",
													"fontname" : "Verdana",
													"id" : "obj-6",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 125.0, 306.0, 44.0, 19.0 ],
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 0.",
													"fontname" : "Verdana",
													"id" : "obj-7",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 306.0, 44.0, 19.0 ],
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"fontname" : "Verdana",
													"id" : "obj-8",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 20.0, 253.0, 22.0, 19.0 ],
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "MIDI to amplitude",
													"linecount" : 2,
													"fontname" : "Verdana",
													"id" : "obj-9",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 0,
													"patching_rect" : [ 290.0, 170.0, 58.0, 31.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "signal R",
													"fontname" : "Verdana",
													"id" : "obj-10",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 0,
													"patching_rect" : [ 425.0, 440.0, 54.0, 19.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "signal L",
													"fontname" : "Verdana",
													"id" : "obj-11",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 0,
													"patching_rect" : [ 315.0, 440.0, 56.0, 19.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "signal R",
													"fontname" : "Verdana",
													"id" : "obj-12",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 0,
													"patching_rect" : [ 430.0, 40.0, 54.0, 19.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-13",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 397.0, 438.0, 24.0, 24.0 ],
													"comment" : "signal R"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-14",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 365.0, 438.0, 24.0, 24.0 ],
													"comment" : "signal L"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-15",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 430.0, 61.0, 24.0, 24.0 ],
													"outlettype" : [ "signal" ],
													"comment" : "signal R"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-16",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 365.0, 61.0, 24.0, 24.0 ],
													"outlettype" : [ "signal" ],
													"comment" : "signal L"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "matrix~ 2 2 0.",
													"fontname" : "Verdana",
													"id" : "obj-17",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 3,
													"patching_rect" : [ 365.0, 388.0, 83.0, 19.0 ],
													"outlettype" : [ "signal", "signal", "list" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0 0 $1",
													"fontname" : "Verdana",
													"id" : "obj-18",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 329.0, 41.0, 17.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1 1 $1",
													"fontname" : "Verdana",
													"id" : "obj-19",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 125.0, 329.0, 41.0, 17.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "signal L",
													"fontname" : "Verdana",
													"id" : "obj-20",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 0,
													"patching_rect" : [ 365.0, 40.0, 56.0, 19.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-30", 0 ],
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
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 59.5, 354.0, 374.5, 354.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 134.5, 354.0, 374.5, 354.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-17", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "----signal outputs----",
									"fontname" : "Verdana",
									"id" : "obj-24",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 75.0, 595.0, 116.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "selector~ 4",
									"fontname" : "Verdana",
									"id" : "obj-25",
									"numinlets" : 5,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 170.0, 430.0, 70.0, 19.0 ],
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "selector~ 4",
									"fontname" : "Verdana",
									"id" : "obj-26",
									"numinlets" : 5,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 95.0, 430.0, 70.0, 19.0 ],
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p sfplay~",
									"fontname" : "Verdana",
									"id" : "obj-27",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 3,
									"patching_rect" : [ 362.0, 268.0, 56.0, 19.0 ],
									"outlettype" : [ "signal", "signal", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 40.0, 420.0, 731.0, 411.0 ],
										"bglocked" : 0,
										"defrect" : [ 40.0, 420.0, 731.0, 411.0 ],
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
													"text" : "gate",
													"fontname" : "Verdana",
													"id" : "obj-1",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 430.0, 300.0, 31.0, 19.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 2",
													"fontname" : "Verdana",
													"id" : "obj-2",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 430.0, 125.0, 35.0, 19.0 ],
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-3",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 430.0, 25.0, 24.0, 24.0 ],
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return sf_report @description \"Report when sound file reach end point and loop to start point.\"",
													"linecount" : 2,
													"fontname" : "Verdana",
													"id" : "obj-4",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 430.0, 325.0, 263.0, 31.0 ],
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p h:m:s:ms",
													"fontname" : "Verdana",
													"id" : "obj-5",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 266.0, 239.0, 68.0, 19.0 ],
													"outlettype" : [ "", "loop_flag" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 592.0, 57.0, 701.0, 519.0 ],
														"bglocked" : 0,
														"defrect" : [ 592.0, 57.0, 701.0, 519.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t loop_flag",
																	"fontname" : "Verdana",
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 370.0, 255.0, 62.0, 19.0 ],
																	"outlettype" : [ "loop_flag" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-2",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 370.0, 450.0, 26.0, 26.0 ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "edge~",
																	"fontname" : "Verdana",
																	"id" : "obj-3",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 2,
																	"patching_rect" : [ 370.0, 185.0, 41.0, 19.0 ],
																	"outlettype" : [ "bang", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "change~",
																	"fontname" : "Verdana",
																	"id" : "obj-4",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 370.0, 160.0, 53.0, 19.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "change~",
																	"fontname" : "Verdana",
																	"id" : "obj-5",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 370.0, 135.0, 53.0, 19.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "split 0 9",
																	"fontname" : "Verdana",
																	"id" : "obj-6",
																	"numinlets" : 3,
																	"fontsize" : 10.0,
																	"numoutlets" : 2,
																	"patching_rect" : [ 30.0, 320.0, 49.0, 19.0 ],
																	"outlettype" : [ "int", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf O%i",
																	"fontname" : "Verdana",
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 30.0, 345.0, 66.0, 19.0 ],
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "tosymbol",
																	"fontname" : "Verdana",
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 30.0, 370.0, 54.0, 19.0 ],
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf O%i",
																	"fontname" : "Verdana",
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 135.0, 345.0, 66.0, 19.0 ],
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "tosymbol",
																	"fontname" : "Verdana",
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 135.0, 370.0, 54.0, 19.0 ],
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "split 0 9",
																	"fontname" : "Verdana",
																	"id" : "obj-11",
																	"numinlets" : 3,
																	"fontsize" : 10.0,
																	"numoutlets" : 2,
																	"patching_rect" : [ 135.0, 320.0, 49.0, 19.0 ],
																	"outlettype" : [ "int", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf O%i",
																	"fontname" : "Verdana",
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 245.0, 345.0, 66.0, 19.0 ],
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "tosymbol",
																	"fontname" : "Verdana",
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 245.0, 370.0, 54.0, 19.0 ],
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "split 0 9",
																	"fontname" : "Verdana",
																	"id" : "obj-14",
																	"numinlets" : 3,
																	"fontsize" : 10.0,
																	"numoutlets" : 2,
																	"patching_rect" : [ 245.0, 320.0, 49.0, 19.0 ],
																	"outlettype" : [ "int", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 30.0, 450.0, 26.0, 26.0 ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf set %s:%s:%s",
																	"fontname" : "Verdana",
																	"id" : "obj-16",
																	"numinlets" : 3,
																	"fontsize" : 10.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 30.0, 405.0, 123.0, 19.0 ],
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "expr $f1-$i2",
																	"fontname" : "Verdana",
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"fontsize" : 10.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 165.0, 165.0, 71.0, 19.0 ],
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "* 60.",
																	"fontname" : "Verdana",
																	"id" : "obj-19",
																	"numinlets" : 2,
																	"fontsize" : 10.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 245.0, 195.0, 35.0, 19.0 ],
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "expr $f1-$i2",
																	"fontname" : "Verdana",
																	"id" : "obj-20",
																	"numinlets" : 2,
																	"fontsize" : 10.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 45.0, 115.0, 71.0, 19.0 ],
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "s",
																	"fontname" : "Verdana",
																	"id" : "obj-21",
																	"numinlets" : 1,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"fontsize" : 34.668163,
																	"numoutlets" : 0,
																	"patching_rect" : [ 260.0, 260.0, 39.0, 49.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "* 60.",
																	"fontname" : "Verdana",
																	"id" : "obj-22",
																	"numinlets" : 2,
																	"fontsize" : 10.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 135.0, 140.0, 35.0, 19.0 ],
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "m",
																	"fontname" : "Verdana",
																	"id" : "obj-23",
																	"numinlets" : 1,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"fontsize" : 34.668163,
																	"numoutlets" : 0,
																	"patching_rect" : [ 146.0, 260.0, 42.0, 49.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "/ 3600000.",
																	"fontname" : "Verdana",
																	"id" : "obj-24",
																	"numinlets" : 2,
																	"fontsize" : 10.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 30.0, 90.0, 65.0, 19.0 ],
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "snapshot~ 1000",
																	"fontname" : "Verdana",
																	"id" : "obj-25",
																	"numinlets" : 2,
																	"fontsize" : 10.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 30.0, 65.0, 91.0, 19.0 ],
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-26",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 30.0, 15.0, 24.0, 24.0 ],
																	"outlettype" : [ "signal" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "h",
																	"fontname" : "Verdana",
																	"id" : "obj-27",
																	"numinlets" : 1,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"fontsize" : 34.668163,
																	"numoutlets" : 0,
																	"patching_rect" : [ 38.0, 260.0, 39.0, 49.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-16", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-16", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 39.5, 111.0, 54.5, 111.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"midpoints" : [ 39.5, 110.0, 106.5, 110.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 54.5, 135.0, 144.5, 135.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 144.5, 158.0, 174.5, 158.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-18", 1 ],
																	"hidden" : 0,
																	"midpoints" : [ 144.5, 158.0, 226.5, 158.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 174.5, 183.0, 254.5, 183.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 1 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 39.5, 51.0, 379.5, 51.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Verdana",
														"fontface" : 0,
														"default_fontface" : 0,
														"fontsize" : 10.0,
														"globalpatchername" : "",
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "loop $1",
													"fontname" : "Verdana",
													"id" : "obj-6",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 284.0, 89.0, 46.0, 17.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /sf_open /play /direct /loop",
													"fontname" : "Verdana",
													"id" : "obj-7",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 5,
													"patching_rect" : [ 50.0, 50.0, 328.0, 19.0 ],
													"outlettype" : [ "", "", "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "modout 1",
													"fontname" : "Verdana",
													"id" : "obj-8",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 140.0, 139.0, 57.0, 17.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.init",
													"fontname" : "Verdana",
													"id" : "obj-9",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 140.0, 119.0, 52.0, 19.0 ],
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p open_stuff",
													"fontname" : "Verdana",
													"id" : "obj-10",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 78.0, 72.0, 19.0 ],
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 191.0, 93.0, 432.0, 397.0 ],
														"bglocked" : 0,
														"defrect" : [ 191.0, 93.0, 432.0, 397.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r jcom.init",
																	"fontname" : "Verdana",
																	"id" : "obj-1",
																	"numinlets" : 0,
																	"fontsize" : 10.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 270.0, 235.0, 60.0, 19.0 ],
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t set",
																	"fontname" : "Verdana",
																	"id" : "obj-2",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 270.0, 285.0, 33.0, 19.0 ],
																	"outlettype" : [ "set" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s #0_xxx_filename",
																	"fontname" : "Verdana",
																	"id" : "obj-3",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 325.0, 105.0, 19.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend set",
																	"fontname" : "Verdana",
																	"id" : "obj-4",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 165.0, 285.0, 70.0, 19.0 ],
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "strippath",
																	"fontname" : "Verdana",
																	"id" : "obj-5",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 2,
																	"patching_rect" : [ 165.0, 245.0, 53.0, 19.0 ],
																	"outlettype" : [ "", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 60.0, 320.0, 22.0, 22.0 ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-7",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 60.0, 145.0, 22.0, 22.0 ],
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend open",
																	"fontname" : "Verdana",
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 60.0, 255.0, 78.0, 19.0 ],
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "opendialog sound",
																	"fontname" : "Verdana",
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 2,
																	"patching_rect" : [ 60.0, 210.0, 97.0, 19.0 ],
																	"outlettype" : [ "", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel bang",
																	"fontname" : "Verdana",
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 2,
																	"patching_rect" : [ 60.0, 175.0, 117.0, 19.0 ],
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "By using opendialog it's made sure that any opendialog message that's reaching sfplay~ also has a filename argument.",
																	"linecount" : 2,
																	"fontname" : "Verdana",
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"fontsize" : 10.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 35.0, 60.0, 329.0, 31.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "That way we know for certain that any \"open\" message reaching sfplay~ implies that a new file is to be opened imideately. Hence the Play button can be turned of instantly.",
																	"linecount" : 3,
																	"fontname" : "Verdana",
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"fontsize" : 10.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 35.0, 90.0, 338.0, 43.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "The \"Play\" GUI button should be turned of when a new file is opened.",
																	"fontname" : "Verdana",
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"fontsize" : 10.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 35.0, 40.0, 359.0, 19.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 167.5, 195.0, 159.0, 195.0, 159.0, 240.0, 69.5, 240.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Verdana",
														"fontface" : 0,
														"default_fontface" : 0,
														"fontsize" : 10.0,
														"globalpatchername" : "",
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"fontname" : "Verdana",
													"id" : "obj-11",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 333.0, 112.0, 35.0, 19.0 ],
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_xxx_done",
													"fontname" : "Verdana",
													"id" : "obj-12",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 0,
													"patching_rect" : [ 333.0, 203.0, 87.0, 19.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"fontname" : "Verdana",
													"id" : "obj-13",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 333.0, 174.0, 22.0, 19.0 ],
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"fontname" : "Verdana",
													"id" : "obj-14",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 333.0, 147.0, 31.0, 19.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sfplay~ 2 403200 1",
													"fontname" : "Verdana",
													"id" : "obj-15",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 4,
													"patching_rect" : [ 206.0, 117.0, 108.0, 19.0 ],
													"outlettype" : [ "signal", "signal", "signal", "bang" ],
													"save" : [ "#N", "sfplay~", "eple", 2, 403200, 1, "", ";" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-16",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 20.0, 24.0, 24.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-17",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 265.0, 290.0, 24.0, 24.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-18",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 235.0, 290.0, 24.0, 24.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-19",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 205.0, 290.0, 24.0, 24.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 59.5, 106.0, 215.5, 106.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 149.5, 160.0, 202.0, 160.0, 202.0, 110.0, 215.5, 110.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 2 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 136.75, 106.0, 215.5, 106.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 2 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 3 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 3 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 291.25, 77.0, 342.5, 77.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [ 59.5, 171.0, 342.5, 171.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 3 ],
													"destination" : [ "obj-14", 1 ],
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
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p audio_in",
									"fontname" : "Verdana",
									"id" : "obj-28",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 271.0, 268.0, 61.0, 19.0 ],
									"outlettype" : [ "signal", "signal" ],
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
													"fontname" : "Verdana",
													"id" : "obj-1",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 175.0, 115.0, 41.0, 19.0 ],
													"outlettype" : [ "open" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set 2 $1",
													"fontname" : "Verdana",
													"id" : "obj-2",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 115.0, 115.0, 50.0, 17.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set 1 $1",
													"fontname" : "Verdana",
													"id" : "obj-3",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 115.0, 50.0, 17.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /ch.1 /ch.2 /dsp_status",
													"fontname" : "Verdana",
													"id" : "obj-4",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 4,
													"patching_rect" : [ 50.0, 75.0, 207.0, 19.0 ],
													"outlettype" : [ "", "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adc~",
													"fontname" : "Verdana",
													"id" : "obj-5",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 50.0, 265.0, 34.0, 19.0 ],
													"outlettype" : [ "signal", "signal" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-6",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 30.0, 24.0, 24.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-7",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 85.0, 320.0, 24.0, 24.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-8",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 320.0, 24.0, 24.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p 1kHz",
									"fontname" : "Verdana",
									"id" : "obj-29",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 453.0, 268.0, 43.0, 19.0 ],
									"outlettype" : [ "signal" ],
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
													"maxclass" : "inlet",
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 48.0, 35.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "We don't need pass~ as this signal won't be selected~ anyway when it's muted.",
													"linecount" : 2,
													"fontname" : "Verdana",
													"id" : "obj-2",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 9.873845,
													"numoutlets" : 0,
													"patching_rect" : [ 147.0, 87.0, 216.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~ 0.125",
													"fontname" : "Verdana",
													"id" : "obj-3",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"patching_rect" : [ 48.0, 105.0, 55.0, 18.0 ],
													"outlettype" : [ "signal" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "cycle~ 1000",
													"fontname" : "Verdana",
													"id" : "obj-4",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"patching_rect" : [ 48.0, 78.0, 70.0, 18.0 ],
													"outlettype" : [ "signal" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-5",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 48.0, 127.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p pink~",
									"fontname" : "Verdana",
									"id" : "obj-30",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 544.0, 268.0, 48.0, 19.0 ],
									"outlettype" : [ "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 40.0, 59.0, 345.0, 201.0 ],
										"bglocked" : 0,
										"defrect" : [ 40.0, 59.0, 345.0, 201.0 ],
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
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 25.0, 23.0, 23.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pink~",
													"fontname" : "Verdana",
													"id" : "obj-2",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 75.0, 38.0, 19.0 ],
													"outlettype" : [ "signal" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-3",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 140.0, 23.0, 23.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "We don't need pass~ as this signal won't be selected~ anyway when it's muted.",
													"linecount" : 2,
													"fontname" : "Verdana",
													"id" : "obj-4",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 0,
													"patching_rect" : [ 80.0, 135.0, 218.0, 31.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Avoid using more CPU than required",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-31",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 597.0, 174.0, 104.0, 31.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-26", 1 ],
									"hidden" : 0,
									"midpoints" : [ 280.5, 309.0, 117.25, 309.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-26", 2 ],
									"hidden" : 0,
									"midpoints" : [ 371.5, 313.0, 130.0, 313.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-26", 3 ],
									"hidden" : 0,
									"midpoints" : [ 462.5, 318.0, 142.75, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-26", 4 ],
									"hidden" : 0,
									"midpoints" : [ 553.5, 324.0, 155.5, 324.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
									"midpoints" : [ 104.5, 240.0, 179.5, 240.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-23", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 1 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.4, 0.6, 1.0 ],
									"midpoints" : [ 322.5, 357.0, 192.25, 357.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-25", 2 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.4, 0.6, 1.0 ],
									"midpoints" : [ 390.0, 361.0, 205.0, 361.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-25", 3 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.4, 0.6, 1.0 ],
									"midpoints" : [ 462.5, 366.0, 217.75, 366.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-25", 4 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.4, 0.6, 1.0 ],
									"midpoints" : [ 553.5, 371.0, 230.5, 371.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
									"midpoints" : [ 104.5, 141.0, 280.5, 141.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 241.5, 256.0, 280.5, 256.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
									"midpoints" : [ 104.5, 141.0, 371.5, 141.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 241.5, 253.0, 371.5, 253.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
									"midpoints" : [ 104.5, 237.0, 408.5, 237.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 2 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
									"midpoints" : [ 104.5, 141.0, 462.5, 141.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
									"midpoints" : [ 104.5, 141.0, 553.5, 141.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[10]",
					"text" : "jcom.message sf_open @type msg_symbol @description \"Open sound file specified by filename. Without a filename a standard open file dialog allows you to choose a file.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-61",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 830.0, 120.0, 459.0, 31.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "source_select",
					"text" : "jcom.parameter source_select @type msg_symbol @description \"Select what audio source to use.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-64",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 828.0, 24.0, 267.0, 31.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[9]",
					"text" : "jcom.message direct @description container for various messages sent directly to the sfplay~ object. Refer to the MSP documentation for further details.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-65",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 825.0, 360.0, 411.0, 31.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "play",
					"text" : "jcom.parameter play @description \"Play sound file.\"",
					"fontname" : "Verdana",
					"id" : "obj-66",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 828.0, 214.0, 271.0, 19.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop",
					"text" : "jcom.parameter loop @type msg_toggle @description \"Loop soundfile.\"",
					"fontname" : "Verdana",
					"id" : "obj-67",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 828.0, 299.0, 368.0, 19.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"fontname" : "Verdana",
					"id" : "obj-68",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 475.0, 107.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-69",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 446.0, 25.0, 25.0 ],
					"comment" : "(signal) Right Channel"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-70",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 256.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-71",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 446.0, 25.0, 25.0 ],
					"comment" : "(signal) Left Channel"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-72",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 9.0, 177.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "loop",
					"fontname" : "Verdana",
					"id" : "obj-76",
					"numinlets" : 1,
					"presentation_rect" : [ 240.0, 70.0, 30.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 230.0, 65.0, 30.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-27",
					"numinlets" : 1,
					"presentation_rect" : [ 15.0, 105.0, 190.0, 30.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 105.0, 190.0, 30.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-26",
					"numinlets" : 1,
					"presentation_rect" : [ 15.0, 70.0, 190.0, 30.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 70.0, 190.0, 30.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-13",
					"numinlets" : 1,
					"presentation_rect" : [ 15.0, 25.0, 190.0, 40.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 25.0, 190.0, 40.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"background" : 1,
					"id" : "obj-78",
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"outlettype" : [ "" ],
					"has_meters" : 1,
					"presentation" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [ 344.5, 340.0, 320.0, 340.0, 320.0, 175.0, 344.5, 175.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 2 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-62", 1 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [ 878.0, 80.0, 811.0, 80.0, 811.0, 20.0, 837.5, 20.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [ 837.5, 257.0, 815.0, 257.0, 815.0, 209.0, 837.5, 209.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [ 122.5, 370.0, 54.5, 370.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 1 ],
					"destination" : [ "obj-19", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 204.5, 197.0, 18.5, 197.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 76.5, 197.0, 18.5, 197.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 66.5, 197.0, 18.5, 197.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [ 839.5, 340.0, 815.0, 340.0, 815.0, 295.0, 837.5, 295.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 344.5, 156.0, 321.0, 156.0, 321.0, 76.0, 344.5, 76.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 5 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1144.5, 115.0, 840.0, 115.0, 840.0, 117.0, 839.5, 117.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
