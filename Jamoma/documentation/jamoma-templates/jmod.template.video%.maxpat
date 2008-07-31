{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 99.0, 73.0, 1147.0, 626.0 ],
		"bglocked" : 0,
		"defrect" : [ 99.0, 73.0, 1147.0, 626.0 ],
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
					"maxclass" : "comment",
					"text" : "for jcom.return only",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-50",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 485.0, 510.0, 113.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@enable",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-42",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 515.0, 530.0, 77.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1/0 : enables the send of data (on by default)",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-49",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 630.0, 530.0, 302.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"id" : "obj-28",
					"presentation_rect" : [ 235.0, 22.0, 60.0, 45.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 240.0, 23.0, 60.0, 45.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@ramp/function",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 515.0, 380.0, 105.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "scheduler/queue...",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 630.0, 400.0, 308.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ParameterA[1]",
					"triangle" : 0,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"presentation_rect" : [ 190.0, 35.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 560.0, 80.0, 40.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Message",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"presentation_rect" : [ 125.0, 35.0, 62.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 80.0, 77.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[1]",
					"text" : "jcom.message this_message @repetitions/allow 0 @type msg_float @range/bounds 0. 1. @range/clipmode none @description \"Document what this message does...\"",
					"linecount" : 2,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 610.0, 75.0, 457.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@description",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-43",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 515.0, 480.0, 75.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@repetitions/allow",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-44",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 515.0, 420.0, 105.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@ramp/drive",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-45",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 515.0, 400.0, 76.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@range/clipmode",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-46",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 515.0, 460.0, 101.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@range/bounds",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-47",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 515.0, 440.0, 91.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@type",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-48",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 515.0, 360.0, 44.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 200.0, 315.0, 57.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 200.0, 290.0, 95.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ParameterA",
					"triangle" : 0,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"presentation_rect" : [ 80.0, 35.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 560.0, 35.0, 40.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you need to return messages from your algorithm to the rest of the world. you can specify type, range... etc as in jcom.parameter or jcom.message",
					"linecount" : 3,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 515.0, 280.0, 370.0, 43.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.return:",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 260.0, 380.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you need to send messages to or within the patch, but it's not required that they be stored or retrieveable, use jcom.message.",
					"linecount" : 2,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 515.0, 215.0, 342.0, 31.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.message:",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 195.0, 366.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Use this for any parameters that you'd like to be able to store and retrieve.",
					"linecount" : 2,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 515.0, 150.0, 363.0, 31.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.parameter:",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 130.0, 293.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "for html autodoc of module",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 630.0, 480.0, 303.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1 (default)/0 --- 1 means that repetitions are allowed",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 630.0, 420.0, 328.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "none/linear/cosine/power/tanh/lowpass...",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 630.0, 380.0, 308.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "none, low, high, both (default)",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 630.0, 460.0, 306.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "minimum and maximum values for this parameter/message",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 630.0, 440.0, 314.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "generic (default), msg_int, msg_float, menu, toggle",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 630.0, 360.0, 305.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attributes for jcom.parameter and jcom.message:",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 340.0, 295.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 170.0, 110.0, 198.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return return_c @range/bounds 0. 1. @description \"Document what this return does...\"",
					"linecount" : 3,
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 35.0, 470.0, 237.0, 43.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out 1",
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 175.0, 400.0, 73.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"id" : "obj-26",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 175.0, 265.0, 66.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Parameter",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"presentation_rect" : [ 15.0, 35.0, 62.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 35.0, 77.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle",
					"text" : "jcom.parameter this_parameter @repetitions/allow 0 @type msg_float @range/bounds 0. 1. @range/clipmode none @description \"Document what this parameter does...\"",
					"linecount" : 2,
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 610.0, 30.0, 476.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"id" : "obj-30",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 190.0, 130.0, 140.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.hub",
					"text" : "jcom.hub @module_type video @algorithm_type jitter @description \"This module doesn't do much yet.\"",
					"linecount" : 2,
					"id" : "obj-31",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 10.0, 155.0, 428.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 210.0, 425.0, 86.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-33",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 175.0, 425.0, 27.0, 27.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-34",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 175.0, 235.0, 27.0, 27.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-35",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 210.0, 240.0, 76.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.template.video%",
					"id" : "obj-36",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 36.0, 355.0, 161.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "jit_matrix" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"id" : "obj-37",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 340.0, 130.0, 41.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-38",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 105.0, 99.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-39",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 195.0, 27.0, 27.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-40",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 10.0, 100.0, 27.0, 27.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- substitute for desired algorithm",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-41",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 205.0, 355.0, 222.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"prefix" : "video",
					"id" : "obj-16",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"has_bypass" : 1,
					"has_freeze" : 1,
					"numinlets" : 1,
					"has_mute" : 1,
					"numoutlets" : 1,
					"presentation" : 1,
					"has_preview" : 1,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 199.5, 151.0, 19.5, 151.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 349.5, 151.0, 19.5, 151.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 179.5, 133.0, 19.5, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
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
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 209.5, 341.0, 45.5, 341.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 285.5, 341.0, 45.5, 341.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
