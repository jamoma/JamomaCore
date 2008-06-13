{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 148.0, 241.0, 916.0, 533.0 ],
		"bglocked" : 0,
		"defrect" : [ 148.0, 241.0, 916.0, 533.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
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
					"maxclass" : "flonum",
					"varname" : "ParameterA[1]",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 395.0, 67.0, 35.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 0.0 ],
					"presentation_rect" : [ 243.0, 34.0, 35.0, 18.0 ],
					"numoutlets" : 2,
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Message",
					"fontsize" : 9.873845,
					"patching_rect" : [ 327.0, 69.0, 77.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"presentation_rect" : [ 175.0, 36.0, 62.0, 18.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[1]",
					"text" : "jcom.message this_message @repetitions 0 @type msg_float @range/bounds 0. 1. @range/clipmode none @description \"Document what this message does...\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 431.0, 61.0, 451.0, 30.0 ],
					"numinlets" : 1,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ParameterA",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 393.0, 30.0, 35.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 0.0 ],
					"presentation_rect" : [ 97.0, 35.0, 35.0, 18.0 ],
					"numoutlets" : 2,
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Parameter",
					"fontsize" : 9.873845,
					"patching_rect" : [ 325.0, 32.0, 77.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"presentation_rect" : [ 32.0, 35.0, 62.0, 18.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle",
					"text" : "jcom.parameter this_parameter @repetitions 0 @type msg_float @range/bounds 0. 1. @range/clipmode none @description \"Document what this parameter does...\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 429.0, 24.0, 445.0, 30.0 ],
					"numinlets" : 1,
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@ramp/scheduler",
					"fontsize" : 10.0,
					"patching_rect" : [ 420.0, 400.0, 105.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "scheduler/queue...",
					"fontsize" : 10.0,
					"patching_rect" : [ 527.0, 399.0, 105.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@description",
					"fontsize" : 9.873845,
					"patching_rect" : [ 420.0, 465.0, 75.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-45",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@repetitions",
					"fontsize" : 9.873845,
					"patching_rect" : [ 420.0, 420.0, 73.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-46",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@ramp/function",
					"fontsize" : 10.0,
					"patching_rect" : [ 420.0, 380.0, 92.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-47",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@range/clipmode",
					"fontsize" : 9.873845,
					"patching_rect" : [ 420.0, 450.0, 98.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-48",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@range/bounds",
					"fontsize" : 9.873845,
					"patching_rect" : [ 420.0, 435.0, 89.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-49",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@type",
					"fontsize" : 10.0,
					"patching_rect" : [ 420.0, 362.0, 44.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-50",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you need to return messages from your algorithm to the rest of the world. you can specify type, range... etc as in jcom.parameter or jcom.message",
					"linecount" : 3,
					"fontsize" : 10.0,
					"patching_rect" : [ 418.0, 292.0, 370.0, 43.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.return:",
					"fontsize" : 10.0,
					"patching_rect" : [ 396.0, 272.0, 380.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you need to send messages to or within the patch, but it's not required that they be stored or retrieveable, use jcom.message.",
					"linecount" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 413.0, 238.0, 342.0, 31.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.message:",
					"fontsize" : 10.0,
					"patching_rect" : [ 394.0, 222.0, 366.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Use this for any parameters that you'd like to be able to store and retrieve.",
					"linecount" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 413.0, 174.0, 363.0, 31.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.parameter:",
					"fontsize" : 10.0,
					"patching_rect" : [ 394.0, 154.0, 293.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "for html autodoc of module",
					"fontsize" : 9.873845,
					"patching_rect" : [ 527.0, 466.0, 146.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1 (default)/0 --- 1 means that repetitions are allowed",
					"fontsize" : 9.873845,
					"patching_rect" : [ 527.0, 421.0, 277.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "none/linear/cosine/power/tanh/lowpass...",
					"fontsize" : 10.0,
					"patching_rect" : [ 527.0, 378.0, 221.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "none, low, high, both (default)",
					"fontsize" : 9.873845,
					"patching_rect" : [ 527.0, 451.0, 163.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "minimum and maximum values for this parameter/message",
					"fontsize" : 9.873845,
					"patching_rect" : [ 527.0, 436.0, 309.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "generic (default), msg_int, msg_float, menu, toggle",
					"fontsize" : 10.0,
					"patching_rect" : [ 527.0, 363.0, 273.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attributes for jcom.parameter and jcom.message:",
					"fontsize" : 10.0,
					"patching_rect" : [ 397.0, 347.0, 295.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-51",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 49.0, 95.0, 211.0, 16.0 ],
					"numinlets" : 2,
					"id" : "obj-22",
					"fontname" : "Arial",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return return_c @range/bounds 0. 1. @description \"Document what this return does...\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 119.0, 303.0, 246.0, 29.0 ],
					"numinlets" : 1,
					"id" : "obj-23",
					"fontname" : "Arial",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 119.0, 197.0, 47.0, 18.0 ],
					"numinlets" : 1,
					"id" : "obj-24",
					"fontname" : "Arial",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 119.0, 243.0, 49.0, 18.0 ],
					"numinlets" : 1,
					"id" : "obj-26",
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 119.0, 219.0, 86.0, 18.0 ],
					"numinlets" : 1,
					"id" : "obj-27",
					"fontname" : "Arial",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 199.0, 112.0, 33.0, 16.0 ],
					"numinlets" : 2,
					"id" : "obj-32",
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p your_algorithm",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 119.0, 278.0, 97.0, 18.0 ],
					"numinlets" : 1,
					"id" : "obj-33",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 585.0, 154.0, 549.0, 562.0 ],
						"bglocked" : 0,
						"defrect" : [ 585.0, 154.0, 549.0, 562.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
									"text" : "jcom.oscroute /param_a /message_b",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 70.0, 90.0, 180.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-1",
									"fontname" : "Arial",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 70.0, 474.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 70.0, 50.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"id" : "obj-3",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Substitute this patch for your algorithm",
									"fontsize" : 18.0,
									"patching_rect" : [ 70.0, 155.0, 398.0, 27.0 ],
									"textcolor" : [ 0.392157, 0.403922, 0.901961, 1.0 ],
									"frgb" : [ 0.392157, 0.403922, 0.901961, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.template.control.mxt @module_type control @description \"This module doesn't do much yet\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 16.0, 137.0, 282.0, 29.0 ],
					"numinlets" : 1,
					"id" : "obj-37",
					"fontname" : "Arial",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.0, 114.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"id" : "obj-38",
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 18.0, 170.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"id" : "obj-39",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 225.0, 279.0, 169.0, 16.0 ],
					"numinlets" : 2,
					"id" : "obj-41",
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 225.0, 258.0, 67.0, 18.0 ],
					"numinlets" : 1,
					"id" : "obj-42",
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 56.0, 112.0, 138.0, 16.0 ],
					"numinlets" : 2,
					"id" : "obj-43",
					"fontname" : "Arial",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module.4",
					"outlettype" : [ "" ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-16",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numoutlets" : 1,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 195.5, 269.0, 128.5, 269.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 195.5, 249.0, 234.5, 249.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 208.5, 133.0, 25.5, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 65.5, 133.0, 25.5, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 58.5, 133.0, 25.5, 133.0 ]
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
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
