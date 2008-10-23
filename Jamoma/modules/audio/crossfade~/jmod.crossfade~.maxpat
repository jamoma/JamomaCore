{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 192.0, 44.0, 936.0, 746.0 ],
		"bglocked" : 0,
		"defrect" : [ 192.0, 44.0, 936.0, 746.0 ],
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
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 575.0, 310.0, 141.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"numinlets" : 0,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 575.0, 265.0, 141.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 0,
					"presentation_rect" : [ 150.0, 10.0, 80.0, 4.0 ],
					"patching_rect" : [ 575.0, 335.0, 80.0, 4.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-4",
					"numoutlets" : 0,
					"presentation_rect" : [ 150.0, 5.0, 80.0, 4.0 ],
					"patching_rect" : [ 575.0, 290.0, 80.0, 4.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-57",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 278.0, 283.0, 25.0, 25.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-56",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 250.0, 283.0, 25.0, 25.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-55",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 222.0, 283.0, 25.0, 25.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "control input",
					"numinlets" : 1,
					"id" : "obj-38",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 48.0, 500.0, 72.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/dump",
					"numinlets" : 2,
					"id" : "obj-50",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 246.0, 556.0, 78.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"id" : "obj-49",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 101.0, 556.0, 138.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numinlets" : 2,
					"id" : "obj-48",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 51.0, 536.0, 196.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numinlets" : 2,
					"id" : "obj-47",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 66.0, 556.0, 29.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/sr_ratio:ramp/function cosine",
					"numinlets" : 2,
					"id" : "obj-45",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 353.0, 556.0, 163.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/sr_ratio 0.4",
					"numinlets" : 2,
					"id" : "obj-44",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 339.0, 536.0, 72.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 4",
					"numinlets" : 4,
					"id" : "obj-42",
					"fontname" : "Verdana",
					"numoutlets" : 6,
					"outlettype" : [ "signal", "signal", "signal", "signal", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 194.0, 316.0, 96.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"numinlets" : 2,
					"id" : "obj-41",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 221.0, 433.0, 71.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.crossfade~.maxpat",
					"numinlets" : 5,
					"id" : "obj-39",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 166.0, 403.0, 128.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-37",
					"numoutlets" : 0,
					"patching_rect" : [ 249.0, 471.0, 25.0, 25.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-36",
					"numoutlets" : 0,
					"patching_rect" : [ 221.0, 471.0, 25.0, 25.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-46",
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 654.0, 25.0, 25.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-51",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 194.0, 283.0, 25.0, 25.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-53",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.0, 497.0, 25.0, 25.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.hub @module_type audio @description \"Allows crossfades between 2 stereo sources. The first two inputs are the first source while the second 2 inputs are the second source\"",
					"linecount" : 2,
					"numinlets" : 1,
					"id" : "obj-54",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 21.0, 600.0, 537.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "calc_mode:",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-35",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"presentation_rect" : [ 122.0, 49.0, 67.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 122.0, 48.0, 67.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p formating",
					"numinlets" : 1,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 85.0, 155.0, 67.0, 19.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 14.0, 59.0, 198.0, 241.0 ],
						"bglocked" : 0,
						"defrect" : [ 14.0, 59.0, 198.0, 241.0 ],
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
									"text" : "prepend 1",
									"numinlets" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 95.0, 105.0, 60.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 170.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"numinlets" : 2,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 50.0, 135.0, 60.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"numinlets" : 2,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 50.0, 75.0, 60.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-5",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 35.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mode[1]",
					"text" : "jcom.parameter mode @type msg_symbol @description \"choose the calculation mode for the crossfade: fast uses a lookup table while precisision performs trig calculations\"",
					"linecount" : 2,
					"numinlets" : 1,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 300.0, 115.0, 446.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "shape[1]",
					"text" : "jcom.parameter shape @type msg_symbol @description \"Choose the shape of the crossfade: linear or equal-power\"",
					"linecount" : 2,
					"numinlets" : 1,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 300.0, 75.0, 307.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "position",
					"text" : "jcom.parameter position @type msg_float @range/bounds 1. 2. @ramp/drive scheduler @description \"set the position of the crossfade.  1 is entirely source 1 - 2 is entirely source 2 - positions in the middle are a location between source one and two.\"",
					"linecount" : 3,
					"numinlets" : 1,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 300.0, 155.0, 447.0, 43.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "shape:",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"presentation_rect" : [ 146.0, 24.0, 43.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 146.0, 23.0, 43.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "mode",
					"presentation" : 1,
					"items" : [ "FastMode", ",", "PrecisionMode" ],
					"numinlets" : 1,
					"id" : "obj-14",
					"prefix" : "0",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"pattrmode" : 1,
					"presentation_rect" : [ 192.0, 49.0, 101.0, 19.0 ],
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 10.0,
					"types" : [  ],
					"patching_rect" : [ 85.0, 115.0, 101.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "shape",
					"presentation" : 1,
					"items" : [ "EqualPowerFade", ",", "LinearFade" ],
					"numinlets" : 1,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"pattrmode" : 1,
					"presentation_rect" : [ 192.0, 24.0, 101.0, 19.0 ],
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 10.0,
					"types" : [  ],
					"patching_rect" : [ 85.0, 75.0, 101.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "curpos",
					"presentation" : 1,
					"orientation" : 0,
					"numinlets" : 1,
					"id" : "obj-16",
					"numoutlets" : 2,
					"presentation_rect" : [ 7.0, 51.0, 107.0, 14.0 ],
					"outlettype" : [ "", "" ],
					"setstyle" : 1,
					"setminmax" : [ 1.0, 2.0 ],
					"patching_rect" : [ 85.0, 180.0, 107.0, 14.0 ],
					"contdata" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "position_float",
					"presentation" : 1,
					"maximum" : 2.0,
					"ignoreclick" : 1,
					"numinlets" : 1,
					"triangle" : 0,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 101.0, 24.0, 35.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"cantchange" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 85.0, 210.0, 35.0, 19.0 ],
					"minimum" : 1.0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Current Position:",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"presentation_rect" : [ 5.0, 24.0, 97.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 5.0, 23.0, 97.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The number box is only used for display",
					"numinlets" : 1,
					"id" : "obj-33",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 300.0, 210.0, 210.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation" : 1,
					"has_bypass" : 1,
					"numinlets" : 1,
					"id" : "obj-34",
					"prefix" : "audio",
					"numoutlets" : 1,
					"has_gain" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"has_mute" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-42", 4 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 1 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 1 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 2 ],
					"destination" : [ "obj-41", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 1 ],
					"destination" : [ "obj-39", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-39", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-42", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-42", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 2 ],
					"destination" : [ "obj-39", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 3 ],
					"destination" : [ "obj-39", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 60.5, 578.0, 30.5, 578.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 110.5, 584.0, 30.5, 584.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 255.5, 587.0, 30.5, 587.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 75.5, 581.0, 30.5, 581.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 348.5, 590.0, 30.5, 590.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 362.5, 593.0, 30.5, 593.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
