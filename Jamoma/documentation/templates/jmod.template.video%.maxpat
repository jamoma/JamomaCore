{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 7.0, 44.0, 963.0, 475.0 ],
		"bglocked" : 0,
		"defrect" : [ 7.0, 44.0, 963.0, 475.0 ],
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
					"maxclass" : "comment",
					"text" : "@ramp/scheduler",
					"fontsize" : 10.0,
					"patching_rect" : [ 480.0, 385.0, 105.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-20",
					"fontname" : "Verdana",
					"presentation_rect" : [ 480.0, 385.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "none/linear/linear.q (none)",
					"fontsize" : 10.0,
					"patching_rect" : [ 587.0, 384.0, 308.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-21",
					"fontname" : "Verdana",
					"presentation_rect" : [ 572.0, 383.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ParameterA[1]",
					"triscale" : 0.9,
					"fontsize" : 9.873845,
					"patching_rect" : [ 435.0, 81.0, 35.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"numinlets" : 1,
					"triangle" : 0,
					"numoutlets" : 2,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation_rect" : [ 435.0, 81.0, 35.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Message",
					"fontsize" : 9.873845,
					"patching_rect" : [ 367.0, 83.0, 77.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"presentation_rect" : [ 367.0, 83.0, 62.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[1]",
					"text" : "jcom.parameter this_parameter @repetitions 0 @type msg_float @range/bounds 0. 360. @range/clipmode none @description \"Document what this parameter does...\"",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 471.0, 75.0, 445.0, 30.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"presentation_rect" : [ 471.0, 75.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@description",
					"fontsize" : 9.873845,
					"patching_rect" : [ 480.0, 450.0, 75.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-43",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@repetitions",
					"fontsize" : 9.873845,
					"patching_rect" : [ 480.0, 405.0, 73.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-44",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@ramp/drive",
					"fontsize" : 10.0,
					"patching_rect" : [ 480.0, 364.0, 76.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-45",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@range/clipmode",
					"fontsize" : 9.873845,
					"patching_rect" : [ 480.0, 435.0, 98.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-46",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@range/bounds",
					"fontsize" : 9.873845,
					"patching_rect" : [ 480.0, 420.0, 89.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-47",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@type",
					"fontsize" : 10.0,
					"patching_rect" : [ 480.0, 347.0, 44.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-48",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 9.873845,
					"patching_rect" : [ 197.0, 260.0, 57.0, 18.0 ],
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
					"text" : "jcom.pass open",
					"fontsize" : 9.873845,
					"patching_rect" : [ 197.0, 238.0, 93.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ParameterA",
					"triscale" : 0.9,
					"fontsize" : 9.873845,
					"patching_rect" : [ 433.0, 44.0, 35.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"numinlets" : 1,
					"triangle" : 0,
					"numoutlets" : 2,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation_rect" : [ 83.0, 32.0, 35.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you need to return messages from your algorithm to the rest of the world. you can specify type, range... etc as in jcom.parameter or jcom.message",
					"linecount" : 3,
					"fontsize" : 10.0,
					"patching_rect" : [ 478.0, 277.0, 370.0, 43.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-4",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.return:",
					"fontsize" : 10.0,
					"patching_rect" : [ 456.0, 257.0, 380.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-5",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you need to send messages to or within the patch, but it's not required that they be stored or retrieveable, use jcom.message.",
					"linecount" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 473.0, 222.0, 342.0, 31.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-6",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.message:",
					"fontsize" : 10.0,
					"patching_rect" : [ 454.0, 207.0, 366.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-7",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Use this for any parameters that you'd like to be able to store and retrieve.",
					"linecount" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 473.0, 159.0, 363.0, 31.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-8",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.parameter:",
					"fontsize" : 10.0,
					"patching_rect" : [ 454.0, 139.0, 293.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-9",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "for html autodoc of module",
					"fontsize" : 9.873845,
					"patching_rect" : [ 587.0, 451.0, 298.0, 18.0 ],
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
					"text" : "1 (default)/0 --- 1 means that repetitions are allowed",
					"fontsize" : 9.873845,
					"patching_rect" : [ 587.0, 406.0, 323.0, 18.0 ],
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
					"text" : "none/linear/linear.q (none)",
					"fontsize" : 10.0,
					"patching_rect" : [ 587.0, 363.0, 308.0, 19.0 ],
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
					"text" : "none, low, high, both (default)",
					"fontsize" : 9.873845,
					"patching_rect" : [ 587.0, 436.0, 302.0, 18.0 ],
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
					"text" : "minimum and maximum values for this parameter/message",
					"fontsize" : 9.873845,
					"patching_rect" : [ 587.0, 421.0, 309.0, 18.0 ],
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
					"text" : "generic (default), msg_int, msg_float, menu, toggle",
					"fontsize" : 10.0,
					"patching_rect" : [ 587.0, 348.0, 305.0, 19.0 ],
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
					"text" : "Attributes for jcom.parameter and jcom.message:",
					"fontsize" : 10.0,
					"patching_rect" : [ 457.0, 332.0, 295.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-22",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontsize" : 9.873845,
					"patching_rect" : [ 102.0, 93.0, 243.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-23",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return return_c @range/bounds 0. 1.",
					"fontsize" : 9.873845,
					"patching_rect" : [ 36.0, 386.0, 221.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-24",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out 1",
					"fontsize" : 9.873845,
					"patching_rect" : [ 176.0, 325.0, 71.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-25",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontsize" : 9.873845,
					"patching_rect" : [ 174.0, 213.0, 64.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-26",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Parameter",
					"fontsize" : 9.873845,
					"patching_rect" : [ 365.0, 46.0, 77.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-27",
					"fontname" : "Verdana",
					"presentation_rect" : [ 18.0, 32.0, 62.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle",
					"text" : "jcom.parameter this_parameter @repetitions 0 @type msg_float @range/bounds 0. 360. @range/clipmode none @description \"Document what this parameter does...\"",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 469.0, 38.0, 445.0, 30.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-29",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 9.873845,
					"patching_rect" : [ 122.0, 112.0, 137.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-30",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.hub",
					"text" : "jcom.hub jmod.video.template @module_type video @algorithm_type jitter @description \"This module doesn't do much yet.\"",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 6.0, 138.0, 417.0, 30.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-31",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"fontsize" : 9.873845,
					"patching_rect" : [ 193.0, 358.0, 85.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-32",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 178.0, 358.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-33",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 176.0, 192.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"fontsize" : 9.873845,
					"patching_rect" : [ 191.0, 192.0, 75.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-35",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.template.video%",
					"fontsize" : 9.873845,
					"patching_rect" : [ 36.0, 299.0, 159.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"id" : "obj-36",
					"fontname" : "Verdana",
					"outlettype" : [ "", "jit_matrix" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontsize" : 9.873845,
					"patching_rect" : [ 261.0, 112.0, 41.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-37",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontsize" : 9.873845,
					"patching_rect" : [ 23.0, 110.0, 97.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-38",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 8.0, 195.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-39",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 8.0, 108.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-40",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- substitute for desired algorithm",
					"fontsize" : 9.873845,
					"patching_rect" : [ 195.0, 299.0, 218.0, 18.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.976471, 0.960784, 0.960784, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-41",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"fontsize" : 12.068032,
					"patching_rect" : [ 3.0, 1.0, 300.0, 70.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
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
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-24", 0 ],
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
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 206.5, 285.0, 45.5, 285.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 280.5, 285.0, 45.5, 285.0 ]
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
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
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
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"midpoints" : [ 131.5, 133.0, 15.5, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 270.5, 133.0, 15.5, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 111.5, 133.0, 15.5, 133.0 ]
				}

			}
 ]
	}

}
