{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 107.0, 100.0, 464.0, 714.0 ],
		"bglocked" : 0,
		"defrect" : [ 107.0, 100.0, 464.0, 714.0 ],
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
					"text" : "pcontrol",
					"id" : "obj-1",
					"fontsize" : 9.873845,
					"patching_rect" : [ 380.0, 473.0, 49.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~.maxpat",
					"id" : "obj-2",
					"fontsize" : 9.873845,
					"patching_rect" : [ 247.0, 451.0, 173.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0__monitor",
					"id" : "obj-3",
					"fontsize" : 9.873845,
					"patching_rect" : [ 247.0, 520.0, 82.0, 18.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"id" : "obj-4",
					"fontsize" : 9.873845,
					"patching_rect" : [ 113.0, 539.0, 77.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"id" : "obj-5",
					"fontsize" : 9.873845,
					"patching_rect" : [ 113.0, 428.0, 212.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 4,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-6",
					"patching_rect" : [ 315.0, 408.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-7",
					"patching_rect" : [ 113.0, 565.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"id" : "obj-8",
					"fontsize" : 9.873845,
					"patching_rect" : [ 127.0, 629.0, 135.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(ms)",
					"id" : "obj-9",
					"fontsize" : 9.873845,
					"patching_rect" : [ 221.0, 45.0, 35.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 223.0, 45.0, 35.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(dB)",
					"id" : "obj-10",
					"fontsize" : 9.873845,
					"patching_rect" : [ 95.0, 45.0, 39.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 95.0, 45.0, 39.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(samps)",
					"id" : "obj-11",
					"fontsize" : 9.873845,
					"patching_rect" : [ 95.0, 25.0, 50.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 95.0, 25.0, 50.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "THRESHOLD",
					"id" : "obj-12",
					"minimum" : -90,
					"fontsize" : 9.873845,
					"patching_rect" : [ 27.0, 163.0, 35.0, 18.0 ],
					"maximum" : 24,
					"presentation" : 1,
					"numinlets" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"presentation_rect" : [ 63.0, 45.0, 35.0, 18.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "threshold",
					"text" : "jcom.parameter threshold @type msg_int @ramp/drive scheduler @repetitions 0 @range/bounds -90 24 @range/clipmode both @description \"The threshold sets the level at which the Noise Gate opens and closes..\"",
					"linecount" : 3,
					"id" : "obj-14",
					"fontsize" : 9.873845,
					"patching_rect" : [ 27.0, 186.0, 384.0, 42.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Threshold",
					"id" : "obj-15",
					"fontsize" : 9.873845,
					"patching_rect" : [ 1.0, 45.0, 58.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 1.0, 45.0, 58.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "release",
					"text" : "jcom.parameter release @type msg_int @ramp/drive scheduler @repetitions 0 @range/bounds 0 1000 @range/clipmode both @description \"When the gate closes, this parameter sets how many milliseconds it will take to fade out.\"",
					"linecount" : 3,
					"id" : "obj-16",
					"fontsize" : 9.873845,
					"patching_rect" : [ 27.0, 350.0, 400.0, 42.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "RELEASE",
					"id" : "obj-18",
					"minimum" : 0,
					"fontsize" : 9.873845,
					"patching_rect" : [ 27.0, 325.0, 35.0, 18.0 ],
					"maximum" : 1000,
					"presentation" : 1,
					"numinlets" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"presentation_rect" : [ 189.0, 45.0, 35.0, 18.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Release",
					"id" : "obj-19",
					"fontsize" : 9.873845,
					"patching_rect" : [ 144.0, 45.0, 48.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 144.0, 45.0, 48.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(ms)",
					"id" : "obj-20",
					"fontsize" : 9.873845,
					"patching_rect" : [ 221.0, 25.0, 35.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 223.0, 25.0, 35.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "attack",
					"text" : "jcom.parameter attack @type msg_int @ramp/drive scheduler @repetitions 0 @range/bounds 0 1000 @range/clipmode low @description \"When the gate opens, this parameter sets how many milliseconds it will take to fade in.\"",
					"linecount" : 3,
					"id" : "obj-21",
					"fontsize" : 9.873845,
					"patching_rect" : [ 27.0, 270.0, 395.0, 42.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p visualize",
					"id" : "obj-23",
					"fontsize" : 9.873845,
					"patching_rect" : [ 247.0, 543.0, 60.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana",
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
									"id" : "obj-1",
									"fontsize" : 9.873845,
									"patching_rect" : [ 50.0, 77.0, 34.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"id" : "obj-2",
									"fontsize" : 9.873845,
									"patching_rect" : [ 50.0, 176.0, 30.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "brgb 100 100 100",
									"id" : "obj-3",
									"fontsize" : 9.873845,
									"patching_rect" : [ 225.0, 195.0, 98.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"id" : "obj-4",
									"fontsize" : 9.873845,
									"patching_rect" : [ 225.0, 166.0, 32.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dspstate~",
									"id" : "obj-5",
									"fontsize" : 9.873845,
									"patching_rect" : [ 225.0, 141.0, 59.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "float", "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"id" : "obj-6",
									"fontsize" : 9.873845,
									"patching_rect" : [ 50.0, 104.0, 149.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0__freeze_display",
									"id" : "obj-7",
									"fontsize" : 9.873845,
									"patching_rect" : [ 50.0, 54.0, 115.0, 18.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"id" : "obj-8",
									"fontsize" : 9.873845,
									"patching_rect" : [ 50.0, 198.0, 42.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "brgb 0 220 0",
									"id" : "obj-9",
									"fontsize" : 9.873845,
									"patching_rect" : [ 65.0, 253.0, 73.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "brgb 200 20 20",
									"id" : "obj-10",
									"fontsize" : 9.873845,
									"patching_rect" : [ 50.0, 231.0, 86.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-11",
									"patching_rect" : [ 189.0, 34.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-12",
									"patching_rect" : [ 50.0, 290.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
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
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "ACTIVE",
					"id" : "obj-25",
					"bgcolor" : [ 0.784314, 0.078431, 0.078431, 1.0 ],
					"patching_rect" : [ 250.0, 568.0, 22.0, 22.0 ],
					"presentation" : 1,
					"rounded" : 20,
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 268.0, 32.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "ATTACK",
					"id" : "obj-26",
					"minimum" : 0,
					"fontsize" : 9.873845,
					"patching_rect" : [ 27.0, 247.0, 35.0, 18.0 ],
					"maximum" : 1000,
					"presentation" : 1,
					"numinlets" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"presentation_rect" : [ 189.0, 25.0, 35.0, 18.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.noisegate~ @size 1U-half @module_type audio @description \"noise gate.\"",
					"id" : "obj-28",
					"fontsize" : 9.873845,
					"patching_rect" : [ 14.0, 656.0, 459.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"id" : "obj-29",
					"fontsize" : 9.873845,
					"patching_rect" : [ 33.0, 629.0, 86.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-30",
					"patching_rect" : [ 14.0, 630.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"id" : "obj-31",
					"fontsize" : 9.873845,
					"patching_rect" : [ 254.0, 629.0, 37.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-32",
					"patching_rect" : [ 113.0, 408.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-33",
					"patching_rect" : [ 146.0, 565.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "lookahead",
					"text" : "jcom.parameter lookahead @type msg_int @ramp/drive scheduler @repetitions 0 @range/bounds 0 100 @range/clipmode low @description \"How many samples to look ahead while monitoring incoming signal.\"",
					"linecount" : 3,
					"id" : "obj-34",
					"fontsize" : 9.873845,
					"patching_rect" : [ 27.0, 103.0, 374.0, 42.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attack",
					"id" : "obj-35",
					"fontsize" : 9.873845,
					"patching_rect" : [ 144.0, 25.0, 48.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 144.0, 25.0, 48.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "LOOKAHEAD",
					"id" : "obj-36",
					"minimum" : 0,
					"fontsize" : 9.873845,
					"patching_rect" : [ 27.0, 81.0, 35.0, 18.0 ],
					"maximum" : 1000,
					"presentation" : 1,
					"numinlets" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"presentation_rect" : [ 63.0, 25.0, 35.0, 18.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Lookahead",
					"id" : "obj-37",
					"fontsize" : 9.873845,
					"patching_rect" : [ 1.0, 25.0, 62.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 1.0, 25.0, 62.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.noisegate~ #0_",
					"id" : "obj-38",
					"fontsize" : 9.873845,
					"patching_rect" : [ 46.0, 506.0, 145.0, 18.0 ],
					"numinlets" : 3,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "signal", "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----signal inputs----",
					"id" : "obj-39",
					"fontsize" : 9.873845,
					"patching_rect" : [ 182.0, 407.0, 107.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-40",
					"patching_rect" : [ 14.0, 683.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal output---",
					"id" : "obj-41",
					"fontsize" : 9.873845,
					"patching_rect" : [ 113.0, 582.0, 103.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"id" : "obj-42",
					"has_mix" : 1,
					"presentation" : 1,
					"has_bypass" : 1,
					"numinlets" : 1,
					"has_gain" : 1,
					"numoutlets" : 1,
					"has_mute" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
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
 ]
	}

}
