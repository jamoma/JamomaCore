{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 0.0, 44.0, 890.0, 518.0 ],
		"bglocked" : 0,
		"defrect" : [ 0.0, 44.0, 890.0, 518.0 ],
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
					"maxclass" : "flonum",
					"varname" : "ParameterA[1]",
					"triscale" : 0.9,
					"fontsize" : 9.873845,
					"patching_rect" : [ 397.0, 67.0, 35.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"numinlets" : 1,
					"triangle" : 0,
					"numoutlets" : 2,
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 0.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation_rect" : [ 238.0, 32.0, 35.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Message",
					"fontsize" : 9.873845,
					"patching_rect" : [ 329.0, 69.0, 77.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"presentation_rect" : [ 170.0, 34.0, 62.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[1]",
					"text" : "jcom.message this_message @repetitions 0 @type msg_float @range/bounds 0. 1. @range/clipmode none @description \"Document what this message does...\"",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 433.0, 61.0, 432.0, 30.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ParameterA",
					"triscale" : 0.9,
					"fontsize" : 9.873845,
					"patching_rect" : [ 395.0, 30.0, 35.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"numinlets" : 1,
					"triangle" : 0,
					"numoutlets" : 2,
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 0.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation_rect" : [ 92.0, 33.0, 35.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Parameter",
					"fontsize" : 9.873845,
					"patching_rect" : [ 327.0, 32.0, 77.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"presentation_rect" : [ 27.0, 33.0, 62.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle",
					"text" : "jcom.parameter this_parameter @repetitions 0 @type msg_float @range/bounds 0. 1. @range/clipmode none @description \"Document what this parameter does...\"",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 431.0, 24.0, 445.0, 30.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-29",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@ramp/scheduler",
					"fontsize" : 10.0,
					"patching_rect" : [ 422.0, 400.0, 105.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-20",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "scheduler/queue...",
					"fontsize" : 10.0,
					"patching_rect" : [ 529.0, 399.0, 105.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-21",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@description",
					"fontsize" : 9.873845,
					"patching_rect" : [ 422.0, 465.0, 75.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-10",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@repetitions",
					"fontsize" : 9.873845,
					"patching_rect" : [ 422.0, 420.0, 73.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-11",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@ramp/function",
					"fontsize" : 10.0,
					"patching_rect" : [ 422.0, 380.0, 92.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-12",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@range/clipmode",
					"fontsize" : 9.873845,
					"patching_rect" : [ 422.0, 450.0, 98.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-48",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@range/bounds",
					"fontsize" : 9.873845,
					"patching_rect" : [ 422.0, 435.0, 89.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-49",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@type",
					"fontsize" : 10.0,
					"patching_rect" : [ 422.0, 362.0, 44.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-50",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you need to return messages from your algorithm to the rest of the world. you can specify type, range... etc as in jcom.parameter or jcom.message",
					"linecount" : 3,
					"fontsize" : 10.0,
					"patching_rect" : [ 420.0, 292.0, 370.0, 43.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-13",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.return:",
					"fontsize" : 10.0,
					"patching_rect" : [ 398.0, 272.0, 380.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-14",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you need to send messages to or within the patch, but it's not required that they be stored or retrieveable, use jcom.message.",
					"linecount" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 415.0, 238.0, 342.0, 31.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-15",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.message:",
					"fontsize" : 10.0,
					"patching_rect" : [ 396.0, 222.0, 366.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-16",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Use this for any parameters that you'd like to be able to store and retrieve.",
					"linecount" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 415.0, 174.0, 363.0, 31.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-22",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.parameter:",
					"fontsize" : 10.0,
					"patching_rect" : [ 396.0, 154.0, 293.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-23",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "for html autodoc of module",
					"fontsize" : 9.873845,
					"patching_rect" : [ 529.0, 466.0, 146.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-24",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1 (default)/0 --- 1 means that repetitions are allowed",
					"fontsize" : 9.873845,
					"patching_rect" : [ 529.0, 421.0, 277.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-25",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "none/linear/cosine/power/tanh/lowpass...",
					"fontsize" : 10.0,
					"patching_rect" : [ 529.0, 378.0, 221.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-26",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "none, low, high, both (default)",
					"fontsize" : 9.873845,
					"patching_rect" : [ 529.0, 451.0, 163.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-27",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "minimum and maximum values for this parameter/message",
					"fontsize" : 9.873845,
					"patching_rect" : [ 529.0, 436.0, 309.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-28",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "generic (default), msg_int, msg_float, menu, toggle",
					"fontsize" : 10.0,
					"patching_rect" : [ 529.0, 363.0, 273.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-36",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attributes for jcom.parameter and jcom.message:",
					"fontsize" : 10.0,
					"patching_rect" : [ 399.0, 347.0, 295.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-51",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module.3",
					"has_gain" : 1,
					"patching_rect" : [ 2.0, 0.0, 300.0, 70.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"prefix" : "audio",
					"has_mute" : 1,
					"numinlets" : 1,
					"has_mix" : 1,
					"numoutlets" : 1,
					"id" : "obj-37",
					"has_bypass" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 9.873845,
					"patching_rect" : [ 280.0, 344.0, 57.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~",
					"fontsize" : 9.873845,
					"patching_rect" : [ 165.0, 317.0, 134.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return return_c @range/bounds 0. 1. @description \"Document what this return does...\"",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 29.0, 462.0, 264.0, 30.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontsize" : 9.873845,
					"patching_rect" : [ 121.0, 114.0, 243.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"fontsize" : 9.873845,
					"patching_rect" : [ 88.0, 411.0, 78.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 3,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"fontsize" : 9.873845,
					"patching_rect" : [ 88.0, 291.0, 134.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 4,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 9.873845,
					"patching_rect" : [ 129.0, 136.0, 155.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.audiotemplate~ @size 1U-half @module_type audio @description \"This module doesn't do much yet\"",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 14.0, 169.0, 344.0, 30.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-30",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontsize" : 9.873845,
					"patching_rect" : [ 30.0, 136.0, 97.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-31",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 16.0, 136.0, 13.0, 13.0 ],
					"numinlets" : 0,
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
					"fontsize" : 9.873845,
					"patching_rect" : [ 260.0, 136.0, 41.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-33",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 90.0, 264.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 90.0, 441.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-35",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 206.0, 263.0, 13.0, 13.0 ],
					"numinlets" : 0,
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
					"fontsize" : 9.873845,
					"patching_rect" : [ 29.0, 380.0, 136.0, 18.0 ],
					"numinlets" : 3,
					"numoutlets" : 3,
					"id" : "obj-43",
					"fontname" : "Verdana",
					"outlettype" : [ "", "signal", "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----signal inputs----",
					"fontsize" : 9.873845,
					"patching_rect" : [ 102.0, 261.0, 107.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-44",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 16.0, 212.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-45",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 120.0, 441.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-46",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"fontsize" : 9.873845,
					"patching_rect" : [ 135.0, 436.0, 105.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-47",
					"fontname" : "Verdana"
				}

			}
 ],
		"lines" : [ 			{
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
					"midpoints" : [ 138.5, 156.0, 23.5, 156.0 ]
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
					"midpoints" : [ 130.5, 156.0, 23.5, 156.0 ]
				}

			}
 ]
	}

}
