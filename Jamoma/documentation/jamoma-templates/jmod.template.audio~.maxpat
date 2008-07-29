{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 0.0, 44.0, 919.0, 559.0 ],
		"bglocked" : 0,
		"defrect" : [ 0.0, 44.0, 919.0, 559.0 ],
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
					"text" : "jcom.meter_receive 2",
					"numoutlets" : 1,
					"id" : "obj-41",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 605.0, 10.0, 121.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"numoutlets" : 1,
					"id" : "obj-52",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 455.0, 10.0, 121.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numoutlets" : 0,
					"id" : "obj-53",
					"presentation_rect" : [ 150.0, 10.0, 80.0, 4.0 ],
					"patching_rect" : [ 605.0, 35.0, 80.0, 4.0 ],
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numoutlets" : 0,
					"id" : "obj-54",
					"presentation_rect" : [ 150.0, 5.0, 80.0, 4.0 ],
					"patching_rect" : [ 455.0, 35.0, 80.0, 4.0 ],
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "for jcom.return only",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-38",
					"fontname" : "Verdana",
					"patching_rect" : [ 400.0, 495.0, 113.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@enable",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-42",
					"fontname" : "Verdana",
					"patching_rect" : [ 413.0, 514.0, 77.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1/0 : enables the send of data (on by default)",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-40",
					"fontname" : "Verdana",
					"patching_rect" : [ 520.0, 515.0, 302.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ParameterA[1]",
					"triangle" : 0,
					"numoutlets" : 2,
					"id" : "obj-17",
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 238.0, 32.0, 35.0, 18.0 ],
					"patching_rect" : [ 415.0, 105.0, 35.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Message",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"presentation_rect" : [ 170.0, 34.0, 62.0, 18.0 ],
					"patching_rect" : [ 350.0, 105.0, 53.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[1]",
					"text" : "jcom.message this_message @repetitions/allow 0 @type msg_float @range/bounds 0. 1. @range/clipmode none @description \"Document what this message does...\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"id" : "obj-19",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 460.0, 105.0, 439.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ParameterA",
					"triangle" : 0,
					"numoutlets" : 2,
					"id" : "obj-3",
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 92.0, 33.0, 35.0, 18.0 ],
					"patching_rect" : [ 415.0, 70.0, 35.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Parameter",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"presentation_rect" : [ 27.0, 33.0, 62.0, 18.0 ],
					"patching_rect" : [ 350.0, 70.0, 62.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle",
					"text" : "jcom.parameter this_parameter @repetitions/allow 0 @type msg_float @range/bounds 0. 1. @range/clipmode none @description \"Document what this parameter does...\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"id" : "obj-29",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 458.0, 68.0, 456.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@ramp/scheduler",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-20",
					"fontname" : "Verdana",
					"patching_rect" : [ 422.0, 400.0, 105.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "scheduler/queue...",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-21",
					"fontname" : "Verdana",
					"patching_rect" : [ 529.0, 399.0, 105.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@description",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"patching_rect" : [ 422.0, 465.0, 75.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@repetitions/allow",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"patching_rect" : [ 422.0, 420.0, 105.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@ramp/function",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"patching_rect" : [ 422.0, 380.0, 92.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@range/clipmode",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-48",
					"fontname" : "Verdana",
					"patching_rect" : [ 422.0, 450.0, 101.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@range/bounds",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-49",
					"fontname" : "Verdana",
					"patching_rect" : [ 422.0, 435.0, 91.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@type",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-50",
					"fontname" : "Verdana",
					"patching_rect" : [ 422.0, 362.0, 44.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you need to return messages from your algorithm to the rest of the world. you can specify type, range... etc as in jcom.parameter or jcom.message",
					"linecount" : 3,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-13",
					"fontname" : "Verdana",
					"patching_rect" : [ 420.0, 292.0, 370.0, 43.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.return:",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-14",
					"fontname" : "Verdana",
					"patching_rect" : [ 398.0, 272.0, 380.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you need to send messages to or within the patch, but it's not required that they be stored or retrieveable, use jcom.message.",
					"linecount" : 2,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"patching_rect" : [ 415.0, 238.0, 342.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.message:",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-16",
					"fontname" : "Verdana",
					"patching_rect" : [ 396.0, 222.0, 366.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Use this for any parameters that you'd like to be able to store and retrieve.",
					"linecount" : 2,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-22",
					"fontname" : "Verdana",
					"patching_rect" : [ 415.0, 174.0, 363.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.parameter:",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-23",
					"fontname" : "Verdana",
					"patching_rect" : [ 395.0, 155.0, 293.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "for html autodoc of module",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-24",
					"fontname" : "Verdana",
					"patching_rect" : [ 529.0, 466.0, 149.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1 (default)/0 --- 1 means that repetitions are allowed",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-25",
					"fontname" : "Verdana",
					"patching_rect" : [ 529.0, 421.0, 282.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "none/linear/cosine/power/tanh/lowpass...",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-26",
					"fontname" : "Verdana",
					"patching_rect" : [ 530.0, 380.0, 221.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "none, low, high, both (default)",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-27",
					"fontname" : "Verdana",
					"patching_rect" : [ 529.0, 451.0, 166.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "minimum and maximum values for this parameter/message",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-28",
					"fontname" : "Verdana",
					"patching_rect" : [ 529.0, 436.0, 314.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "generic (default), msg_int, msg_float, menu, toggle",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-36",
					"fontname" : "Verdana",
					"patching_rect" : [ 529.0, 363.0, 273.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attributes for jcom.parameter and jcom.message:",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-51",
					"fontname" : "Verdana",
					"patching_rect" : [ 399.0, 347.0, 295.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numoutlets" : 1,
					"id" : "obj-37",
					"outlettype" : [ "" ],
					"has_mix" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"prefix" : "audio",
					"has_gain" : 1,
					"has_bypass" : 1,
					"patching_rect" : [ 2.0, 0.0, 300.0, 70.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"has_mute" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 290.0, 345.0, 57.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~",
					"numoutlets" : 2,
					"id" : "obj-2",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 175.0, 320.0, 136.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return return_c @range/bounds 0. 1. @description \"Document what this return does...\"",
					"linecount" : 2,
					"numoutlets" : 2,
					"id" : "obj-5",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 30.0, 475.0, 269.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 35.0, 115.0, 247.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"numoutlets" : 3,
					"id" : "obj-7",
					"outlettype" : [ "signal", "signal", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 90.0, 410.0, 80.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"numoutlets" : 4,
					"id" : "obj-8",
					"outlettype" : [ "signal", "signal", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 88.0, 291.0, 151.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 55.0, 135.0, 140.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type audio @description \"This module doesn't do much yet\"",
					"linecount" : 2,
					"numoutlets" : 2,
					"id" : "obj-30",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 15.0, 170.0, 354.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-31",
					"fontname" : "Verdana",
					"patching_rect" : [ 45.0, 85.0, 99.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-32",
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 85.0, 24.0, 24.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numoutlets" : 1,
					"id" : "obj-33",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 285.0, 115.0, 41.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 264.0, 24.0, 24.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-35",
					"patching_rect" : [ 90.0, 441.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-39",
					"outlettype" : [ "" ],
					"patching_rect" : [ 220.0, 265.0, 24.0, 24.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.template.audio~",
					"numoutlets" : 3,
					"id" : "obj-43",
					"outlettype" : [ "", "signal", "signal" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 30.0, 380.0, 138.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----signal inputs----",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-44",
					"fontname" : "Verdana",
					"patching_rect" : [ 110.0, 265.0, 108.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-45",
					"patching_rect" : [ 15.0, 215.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-46",
					"patching_rect" : [ 120.0, 441.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-47",
					"fontname" : "Verdana",
					"patching_rect" : [ 150.0, 445.0, 106.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 44.5, 156.0, 24.5, 156.0 ]
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
					"midpoints" : [ 64.5, 156.0, 24.5, 156.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 294.5, 156.0, 24.5, 156.0 ]
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
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-8", 0 ],
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
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-46", 0 ],
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
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [ 184.5, 368.0, 39.5, 368.0 ]
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
					"midpoints" : [ 299.5, 368.0, 39.5, 368.0 ]
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
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
