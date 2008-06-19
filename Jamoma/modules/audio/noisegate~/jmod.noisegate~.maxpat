{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 249.0, 377.0, 1113.0, 595.0 ],
		"bglocked" : 0,
		"defrect" : [ 249.0, 377.0, 1113.0, 595.0 ],
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
					"fontname" : "Verdana",
					"id" : "obj-51",
					"numinlets" : 0,
					"fontsize" : 10.970939,
					"numoutlets" : 1,
					"patching_rect" : [ 412.0, 38.0, 152.0, 20.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 0,
					"fontsize" : 10.970939,
					"numoutlets" : 1,
					"patching_rect" : [ 412.0, 7.0, 152.0, 20.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"id" : "obj-50",
					"numinlets" : 1,
					"presentation_rect" : [ 152.0, 10.0, 80.0, 4.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 317.0, 68.0, 80.0, 4.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"id" : "obj-49",
					"numinlets" : 1,
					"presentation_rect" : [ 152.0, 5.0, 80.0, 4.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 317.0, 37.0, 80.0, 4.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 380.0, 473.0, 49.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~.maxpat",
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 247.0, 451.0, 173.0, 18.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0__monitor",
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 0,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 247.0, 520.0, 82.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 113.0, 539.0, 77.0, 18.0 ],
					"outlettype" : [ "signal", "signal", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 4,
					"patching_rect" : [ 113.0, 428.0, 212.0, 18.0 ],
					"outlettype" : [ "signal", "signal", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-6",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 315.0, 408.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 113.0, 565.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 127.0, 629.0, 135.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(ms)",
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"presentation_rect" : [ 235.0, 46.0, 37.0, 19.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 221.0, 45.0, 37.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(dB)",
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"presentation_rect" : [ 97.0, 46.0, 42.0, 19.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 95.0, 45.0, 42.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(samps)",
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"presentation_rect" : [ 97.0, 25.0, 52.0, 19.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 95.0, 25.0, 52.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "THRESHOLD",
					"maximum" : 24,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"id" : "obj-12",
					"numinlets" : 1,
					"presentation_rect" : [ 63.0, 46.0, 37.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 27.0, 163.0, 35.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"presentation" : 1,
					"minimum" : -90
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "threshold",
					"text" : "jcom.parameter threshold @type msg_int @ramp/drive scheduler @repetitions/allow 0 @range/bounds -90 24 @range/clipmode both @description \"The threshold sets the level at which the Noise Gate opens and closes..\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 27.0, 186.0, 413.0, 42.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Threshold",
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"presentation_rect" : [ 1.0, 46.0, 61.0, 19.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 1.0, 45.0, 61.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "release",
					"text" : "jcom.parameter release @type msg_int @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0 1000 @range/clipmode both @description \"When the gate closes, this parameter sets how many milliseconds it will take to fade out.\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 27.0, 350.0, 421.0, 42.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "RELEASE",
					"maximum" : 1000,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"id" : "obj-18",
					"numinlets" : 1,
					"presentation_rect" : [ 201.350494, 46.0, 37.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 27.0, 325.0, 37.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"presentation" : 1,
					"minimum" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Release",
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"presentation_rect" : [ 156.350494, 46.0, 49.0, 19.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 144.0, 45.0, 49.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(ms)",
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"presentation_rect" : [ 235.350494, 25.0, 37.0, 19.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 221.0, 25.0, 37.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "attack",
					"text" : "jcom.parameter attack @type msg_int @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0 1000 @range/clipmode low @description \"When the gate opens, this parameter sets how many milliseconds it will take to fade in.\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 27.0, 270.0, 416.0, 42.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p visualize",
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 247.0, 543.0, 60.0, 18.0 ],
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 880.0, 181.0, 407.0, 381.0 ],
						"bglocked" : 0,
						"defrect" : [ 880.0, 181.0, 407.0, 381.0 ],
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
									"text" : "== 0",
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 77.0, 34.0, 18.0 ],
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 176.0, 30.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "brgb 100 100 100",
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 225.0, 195.0, 98.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 225.0, 166.0, 32.0, 18.0 ],
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dspstate~",
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 4,
									"patching_rect" : [ 225.0, 141.0, 59.0, 18.0 ],
									"outlettype" : [ "int", "float", "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 104.0, 149.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0__freeze_display",
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 0,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 54.0, 115.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"patching_rect" : [ 50.0, 198.0, 42.0, 18.0 ],
									"outlettype" : [ "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "brgb 0 220 0",
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 65.0, 253.0, 73.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "brgb 200 20 20",
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 231.0, 86.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-11",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 189.0, 34.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 290.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-9", 0 ],
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 0 ],
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
					"maxclass" : "panel",
					"varname" : "ACTIVE",
					"rounded" : 20,
					"id" : "obj-25",
					"numinlets" : 1,
					"presentation_rect" : [ 270.0, 32.0, 22.0, 22.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 250.0, 568.0, 22.0, 22.0 ],
					"bgcolor" : [ 0.784314, 0.078431, 0.078431, 1.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "ATTACK",
					"maximum" : 1000,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"id" : "obj-26",
					"numinlets" : 1,
					"presentation_rect" : [ 201.350494, 25.0, 37.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 27.0, 247.0, 35.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"presentation" : 1,
					"minimum" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.noisegate~ @size 1U-half @module_type audio @description \"noise gate.\"",
					"fontname" : "Verdana",
					"id" : "obj-28",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 14.0, 656.0, 459.0, 18.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Verdana",
					"id" : "obj-29",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"patching_rect" : [ 33.0, 629.0, 86.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-30",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 14.0, 630.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Verdana",
					"id" : "obj-31",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 254.0, 629.0, 37.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-32",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 113.0, 408.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-33",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 146.0, 565.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "lookahead",
					"text" : "jcom.parameter lookahead @type msg_int @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0 100 @range/clipmode low @description \"How many samples to look ahead while monitoring incoming signal.\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-34",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 27.0, 103.0, 403.0, 42.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attack",
					"fontname" : "Verdana",
					"id" : "obj-35",
					"numinlets" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"presentation_rect" : [ 156.350494, 25.0, 50.0, 19.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 144.0, 25.0, 50.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "LOOKAHEAD",
					"maximum" : 1000,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"id" : "obj-36",
					"numinlets" : 1,
					"presentation_rect" : [ 63.0, 25.0, 37.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 27.0, 81.0, 35.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"presentation" : 1,
					"minimum" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Lookahead",
					"fontname" : "Verdana",
					"id" : "obj-37",
					"numinlets" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"presentation_rect" : [ 1.0, 25.0, 63.0, 19.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 1.0, 25.0, 63.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.noisegate~ #0_",
					"fontname" : "Verdana",
					"id" : "obj-38",
					"numinlets" : 3,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 46.0, 506.0, 145.0, 18.0 ],
					"outlettype" : [ "", "signal", "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----signal inputs----",
					"fontname" : "Verdana",
					"id" : "obj-39",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"patching_rect" : [ 182.0, 407.0, 107.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-40",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 683.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal output---",
					"fontname" : "Verdana",
					"id" : "obj-41",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"patching_rect" : [ 113.0, 582.0, 103.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_gain" : 1,
					"id" : "obj-42",
					"numinlets" : 1,
					"has_bypass" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numoutlets" : 1,
					"has_mute" : 1,
					"outlettype" : [ "" ],
					"presentation" : 1,
					"has_mix" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 36.5, 147.0, 12.0, 147.0, 12.0, 78.0, 36.5, 78.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 36.5, 228.0, 12.0, 228.0, 12.0, 159.0, 36.5, 159.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 36.5, 312.0, 12.0, 312.0, 12.0, 243.0, 36.5, 243.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 36.5, 393.0, 12.0, 393.0, 12.0, 321.0, 36.5, 321.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-16", 0 ],
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 2 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 2 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-38", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-38", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [ 256.5, 498.0, 55.5, 498.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [ 389.5, 498.0, 55.5, 498.0 ]
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
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 136.5, 649.0, 23.5, 649.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 263.5, 649.0, 23.5, 649.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
