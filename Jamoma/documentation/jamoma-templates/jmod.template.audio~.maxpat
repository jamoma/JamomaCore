{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 0.0, 44.0, 919.0, 559.0 ],
		"bglocked" : 0,
		"defrect" : [ 0.0, 44.0, 919.0, 559.0 ],
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
					"fontname" : "Verdana",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 735.0, 20.0, 142.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-41",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 475.0, 15.0, 142.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-52",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"presentation_rect" : [ 150.0, 10.0, 80.0, 4.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 640.0, 50.0, 80.0, 4.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-53"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"presentation_rect" : [ 150.0, 5.0, 80.0, 4.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 380.0, 45.0, 80.0, 4.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-54"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "for jcom.return only",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 400.0, 495.0, 110.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@enable",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 413.0, 514.0, 75.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1/0 : enables the send of data (on by default)",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 520.0, 515.0, 298.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ParameterA[1]",
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"presentation_rect" : [ 238.0, 32.0, 35.0, 18.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 0.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 416.0, 108.0, 35.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-17",
					"outlettype" : [ "float", "bang" ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Message",
					"fontname" : "Verdana",
					"presentation_rect" : [ 170.0, 34.0, 62.0, 18.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 348.0, 110.0, 77.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-18",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[1]",
					"text" : "jcom.message this_message @repetitions/allow 0 @type msg_float @range/bounds 0. 1. @range/clipmode none @description \"Document what this message does...\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 452.0, 102.0, 432.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-19",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ParameterA",
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"presentation_rect" : [ 92.0, 33.0, 35.0, 18.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 0.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 414.0, 71.0, 35.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-3",
					"outlettype" : [ "float", "bang" ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Parameter",
					"fontname" : "Verdana",
					"presentation_rect" : [ 27.0, 33.0, 62.0, 18.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 346.0, 73.0, 77.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-4",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle",
					"text" : "jcom.parameter this_parameter @repetitions/allow 0 @type msg_float @range/bounds 0. 1. @range/clipmode none @description \"Document what this parameter does...\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 450.0, 65.0, 449.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-29",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@ramp/scheduler",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 422.0, 400.0, 105.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "scheduler/queue...",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 529.0, 399.0, 105.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@description",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 422.0, 465.0, 75.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@repetitions/allow",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 422.0, 420.0, 103.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@ramp/function",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 422.0, 380.0, 92.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@range/clipmode",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 422.0, 450.0, 98.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-48"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@range/bounds",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 422.0, 435.0, 89.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-49"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@type",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 422.0, 362.0, 44.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you need to return messages from your algorithm to the rest of the world. you can specify type, range... etc as in jcom.parameter or jcom.message",
					"linecount" : 3,
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 420.0, 292.0, 370.0, 43.0 ],
					"numoutlets" : 0,
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.return:",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 398.0, 272.0, 380.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you need to send messages to or within the patch, but it's not required that they be stored or retrieveable, use jcom.message.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 415.0, 238.0, 342.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.message:",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 396.0, 222.0, 366.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Use this for any parameters that you'd like to be able to store and retrieve.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 415.0, 174.0, 363.0, 31.0 ],
					"numoutlets" : 0,
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.parameter:",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 396.0, 154.0, 293.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "for html autodoc of module",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 529.0, 466.0, 146.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1 (default)/0 --- 1 means that repetitions are allowed",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 529.0, 421.0, 277.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "none/linear/cosine/power/tanh/lowpass...",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 530.0, 380.0, 221.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "none, low, high, both (default)",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 529.0, 451.0, 163.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "minimum and maximum values for this parameter/message",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 529.0, 436.0, 309.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "generic (default), msg_int, msg_float, menu, toggle",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 529.0, 363.0, 273.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attributes for jcom.parameter and jcom.message:",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 399.0, 347.0, 295.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-51"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_bypass" : 1,
					"prefix" : "audio",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"has_gain" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 2.0, 0.0, 300.0, 70.0 ],
					"has_mix" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
					"has_mute" : 1,
					"id" : "obj-37",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 280.0, 344.0, 57.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 165.0, 317.0, 134.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-2",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return return_c @range/bounds 0. 1. @description \"Document what this return does...\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 29.0, 462.0, 264.0, 30.0 ],
					"numoutlets" : 2,
					"id" : "obj-5",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 20.0, 115.0, 243.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 88.0, 411.0, 78.0, 18.0 ],
					"numoutlets" : 3,
					"id" : "obj-7",
					"outlettype" : [ "signal", "signal", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 88.0, 291.0, 134.0, 18.0 ],
					"numoutlets" : 4,
					"id" : "obj-8",
					"outlettype" : [ "signal", "signal", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 130.0, 135.0, 137.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type audio @description \"This module doesn't do much yet\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 14.0, 169.0, 349.0, 30.0 ],
					"numoutlets" : 2,
					"id" : "obj-30",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 30.0, 136.0, 97.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 16.0, 136.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-32",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 260.0, 115.0, 41.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-33",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 90.0, 264.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 90.0, 441.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-35",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 206.0, 263.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-39",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.template.audio~",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"fontsize" : 9.873845,
					"patching_rect" : [ 29.0, 380.0, 136.0, 18.0 ],
					"numoutlets" : 3,
					"id" : "obj-43",
					"outlettype" : [ "", "signal", "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----signal inputs----",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 102.0, 261.0, 107.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 212.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-45",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 441.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-46",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 135.0, 436.0, 105.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-47"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-17", 0 ],
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-29", 0 ],
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
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-43", 2 ],
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
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-43", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [ 289.5, 368.0, 38.5, 368.0 ]
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [ 174.5, 368.0, 38.5, 368.0 ]
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
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 289.5, 336.0, 289.5, 336.0 ]
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
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 269.5, 157.0, 23.5, 157.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 139.5, 156.0, 23.5, 156.0 ]
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 29.5, 156.0, 23.5, 156.0 ]
				}

			}
 ]
	}

}
