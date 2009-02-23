{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 9.0, 44.0, 1163.0, 753.0 ],
		"bglocked" : 0,
		"defrect" : [ 9.0, 44.0, 1163.0, 753.0 ],
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
					"text" : "t dialog_box",
					"id" : "obj-63",
					"fontname" : "Verdana",
					"outlettype" : [ "dialog_box" ],
					"patching_rect" : [ 495.0, 95.0, 72.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"id" : "obj-50",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 255.0, 200.0, 53.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /buffer/replace",
					"id" : "obj-49",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 255.0, 220.0, 130.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_xxx_file_selected",
					"id" : "obj-40",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 255.0, 180.0, 126.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Audio Buffer",
					"id" : "obj-62",
					"fontname" : "Verdana",
					"presentation_rect" : [ 185.0, 25.0, 97.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 185.0, 25.0, 97.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-38",
					"fontname" : "Verdana",
					"presentation_rect" : [ 105.0, 50.0, 45.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 495.0, 630.0, 50.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Onset variation",
					"id" : "obj-55",
					"fontname" : "Verdana",
					"presentation_rect" : [ 10.0, 50.0, 90.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 555.0, 630.0, 150.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Playback Position",
					"id" : "obj-28",
					"fontname" : "Verdana",
					"presentation_rect" : [ 10.0, 30.0, 97.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 555.0, 545.0, 150.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Pitch variation",
					"id" : "obj-26",
					"fontname" : "Verdana",
					"presentation_rect" : [ 160.0, 110.0, 90.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 555.0, 475.0, 150.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Transpose",
					"id" : "obj-24",
					"fontname" : "Verdana",
					"presentation_rect" : [ 160.0, 90.0, 61.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 590.0, 360.0, 150.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Grain duration:",
					"id" : "obj-22",
					"fontname" : "Verdana",
					"presentation_rect" : [ 10.0, 110.0, 90.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 555.0, 280.0, 150.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Grain overlap",
					"id" : "obj-20",
					"fontname" : "Verdana",
					"presentation_rect" : [ 10.0, 90.0, 90.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 555.0, 205.0, 150.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"id" : "obj-27",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 495.0, 380.0, 60.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "0",
					"id" : "obj-48",
					"fontname" : "Verdana",
					"presentation_rect" : [ 220.0, 90.0, 70.0, 18.0 ],
					"outlettype" : [ "", "int", "", "" ],
					"lines" : 1,
					"keymode" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 495.0, 360.0, 87.0, 18.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-42",
					"fontname" : "Verdana",
					"presentation_rect" : [ 105.0, 30.0, 45.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 495.0, 545.0, 50.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-29",
					"fontname" : "Verdana",
					"presentation_rect" : [ 245.0, 110.0, 45.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 495.0, 475.0, 50.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-25",
					"fontname" : "Verdana",
					"presentation_rect" : [ 105.0, 110.0, 45.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 495.0, 280.0, 50.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-23",
					"fontname" : "Verdana",
					"presentation_rect" : [ 105.0, 90.0, 45.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 495.0, 205.0, 50.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/position 0.",
					"id" : "obj-21",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 225.0, 505.0, 162.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter position/onset_variation @type msg_float @dataspace time @dataspace/unit/active millisecond @dataspace/unit/native millisecond @ramp/drive scheduler @range/bounds 0. 200. @range/clipmode low @description \"Variation in grain onset position.\"",
					"linecount" : 3,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 495.0, 650.0, 581.0, 43.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter position @type msg_float @dataspace time @dataspace/unit/active millisecond @dataspace/unit/native millisecond @range/bounds 0. 5000. @range/clipmode low @ramp/drive scheduler @description \"Onset variation.\"",
					"linecount" : 3,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 495.0, 565.0, 556.0, 43.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter pitch/transpose @type msg_list @dataspace pitch @dataspace/unit/active midi @dataspace/unit/native midi @ramp/drive scheduler @range/bounds -1200. 1200. @range/clipmode none @description \"Pitch transposition. If more than one value is given, grains will be distributed between the possible options.\"",
					"linecount" : 4,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 495.0, 400.0, 586.0, 55.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter pitch/variation @type msg_float @dataspace pitch @dataspace/unit/active midi @dataspace/unit/native midi @description \"Pitch variation.\"",
					"linecount" : 2,
					"id" : "obj-16",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 495.0, 495.0, 500.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter grain/duration @type msg_float @dataspace time @dataspace/unit/active millisecond @dataspace/unit/native millisecond @range/bounds 5. 500. @range/clipmode low @description \"Grain duration\"",
					"linecount" : 2,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 495.0, 299.0, 579.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter grain/overlap @type msg_int @dataspace none @ramp/drive none @range/bounds 1 6 @range/clipmode both @description \"Set 2^i number of overlapping grains.\"",
					"linecount" : 2,
					"id" : "obj-14",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 495.0, 225.0, 537.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"id" : "obj-13",
					"fontname" : "Verdana",
					"presentation_rect" : [ 235.0, 50.0, 55.0, 20.0 ],
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 495.0, 145.0, 100.0, 20.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"text" : "View",
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message buffer/view @type msg_none @repetitions/allow 1 @description \"View the content of the audio buffer.\"",
					"linecount" : 2,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 495.0, 170.0, 570.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"id" : "obj-11",
					"fontname" : "Verdana",
					"presentation_rect" : [ 170.0, 50.0, 55.0, 20.0 ],
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 495.0, 70.0, 100.0, 20.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"text" : "Open",
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter buffer/replace @type msg_symbol @repetitions/allow 1 @description \"The sound file used for granulation.\"",
					"linecount" : 2,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 495.0, 120.0, 570.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 2",
					"id" : "obj-41",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 650.0, 10.0, 121.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"id" : "obj-52",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 500.0, 10.0, 121.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"id" : "obj-53",
					"presentation_rect" : [ 150.0, 10.0, 80.0, 4.0 ],
					"patching_rect" : [ 650.0, 35.0, 80.0, 4.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"id" : "obj-54",
					"presentation_rect" : [ 150.0, 5.0, 80.0, 4.0 ],
					"patching_rect" : [ 500.0, 35.0, 80.0, 4.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"id" : "obj-1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 290.0, 445.0, 57.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~",
					"id" : "obj-2",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 175.0, 420.0, 136.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"id" : "obj-6",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 35.0, 215.0, 198.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"id" : "obj-7",
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 90.0, 510.0, 80.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"id" : "obj-8",
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "", "" ],
					"patching_rect" : [ 88.0, 391.0, 151.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"id" : "obj-9",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 55.0, 235.0, 140.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type audio @description \"Smooth overlap granular synthesis.\"",
					"linecount" : 2,
					"id" : "obj-30",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 15.0, 270.0, 252.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"id" : "obj-31",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 45.0, 185.0, 99.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-32",
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 185.0, 24.0, 24.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"id" : "obj-33",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 200.0, 235.0, 41.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-34",
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 364.0, 24.0, 24.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-35",
					"patching_rect" : [ 90.0, 541.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-39",
					"outlettype" : [ "" ],
					"patching_rect" : [ 220.0, 365.0, 24.0, 24.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.imtr.sogs~ #0_",
					"id" : "obj-43",
					"fontname" : "Verdana",
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 30.0, 480.0, 111.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 3,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----signal inputs----",
					"id" : "obj-44",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 110.0, 365.0, 108.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-45",
					"patching_rect" : [ 15.0, 315.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-46",
					"patching_rect" : [ 120.0, 541.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"id" : "obj-47",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 150.0, 545.0, 107.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-58",
					"presentation_rect" : [ 5.0, 25.0, 150.0, 50.0 ],
					"patching_rect" : [ 5.0, 25.0, 150.0, 50.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-59",
					"presentation_rect" : [ 5.0, 85.0, 150.0, 50.0 ],
					"patching_rect" : [ 5.0, 85.0, 150.0, 50.0 ],
					"presentation" : 1,
					"rounded" : 15,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-60",
					"presentation_rect" : [ 160.0, 25.0, 135.0, 50.0 ],
					"patching_rect" : [ 160.0, 25.0, 135.0, 50.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-61",
					"presentation_rect" : [ 160.0, 85.0, 135.0, 50.0 ],
					"patching_rect" : [ 160.0, 85.0, 135.0, 50.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_gain" : 1,
					"id" : "obj-37",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"outlettype" : [ "" ],
					"has_mix" : 1,
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"presentation" : 1,
					"has_mute" : 1,
					"numinlets" : 1,
					"prefix" : "audio",
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [ 504.5, 695.0, 480.0, 695.0, 480.0, 626.0, 504.5, 626.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 504.5, 608.0, 480.0, 608.0, 480.0, 542.0, 504.5, 542.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 504.5, 527.0, 480.0, 527.0, 480.0, 470.0, 504.5, 470.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [ 504.5, 456.0, 480.0, 456.0, 480.0, 357.0, 504.5, 357.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 504.5, 345.0, 480.0, 345.0, 480.0, 276.0, 504.5, 276.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [ 184.5, 468.0, 39.5, 468.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 2 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [ 299.5, 468.0, 39.5, 468.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-43", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-43", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.5, 261.0, 24.5, 261.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 504.5, 258.0, 480.0, 258.0, 480.0, 201.0, 504.5, 201.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 2 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 44.5, 256.0, 24.5, 256.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 64.5, 256.0, 24.5, 256.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 209.5, 256.0, 24.5, 256.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
