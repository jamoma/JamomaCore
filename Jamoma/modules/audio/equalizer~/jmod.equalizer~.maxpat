{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 105.0, 64.0, 895.0, 771.0 ],
		"bglocked" : 0,
		"defrect" : [ 105.0, 64.0, 895.0, 771.0 ],
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
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-51",
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 395.0, 142.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"patching_rect" : [ 15.0, 350.0, 142.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 150.0, 10.0, 80.0, 4.0 ],
					"id" : "obj-50",
					"patching_rect" : [ 20.0, 420.0, 80.0, 4.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 150.0, 5.0, 80.0, 4.0 ],
					"id" : "obj-49",
					"patching_rect" : [ 15.0, 375.0, 80.0, 4.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_xxx_to_filtergraph",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"patching_rect" : [ 315.0, 590.0, 211.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"numinlets" : 1,
					"fontsize" : 10.970939,
					"numoutlets" : 0,
					"id" : "obj-16",
					"fontname" : "Verdana",
					"patching_rect" : [ 115.0, 715.0, 36.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"numinlets" : 1,
					"fontsize" : 10.970939,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-28",
					"fontname" : "Verdana",
					"patching_rect" : [ 380.0, 430.0, 58.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b l",
					"numinlets" : 1,
					"fontsize" : 10.970939,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"patching_rect" : [ 380.0, 385.0, 32.5, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"numinlets" : 1,
					"fontsize" : 10.970939,
					"numoutlets" : 0,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"patching_rect" : [ 710.0, 655.0, 36.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"fontsize" : 10.970939,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"patching_rect" : [ 680.0, 365.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"patching_rect" : [ 539.0, 535.0, 166.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"patching_rect" : [ 660.0, 610.0, 49.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"patching_rect" : [ 539.0, 587.0, 136.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"patching_rect" : [ 50.0, 610.0, 196.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"patching_rect" : [ 430.0, 665.0, 71.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "", "" ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"patching_rect" : [ 431.0, 513.0, 173.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "multi_filter~_inspector",
					"text" : "p equalizer~_inspector",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"patching_rect" : [ 540.0, 560.0, 134.0, 19.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 495.0, 270.0, 714.0, 372.0 ],
						"bgcolor" : [ 0.196078, 0.196078, 0.196078, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 495.0, 270.0, 714.0, 372.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"patching_rect" : [ 530.0, 320.0, 50.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"patching_rect" : [ 460.0, 305.0, 56.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"id" : "obj-17",
									"fontname" : "Verdana",
									"patching_rect" : [ 330.0, 320.0, 100.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "absolute maximum : 24",
									"numinlets" : 1,
									"fontsize" : 13.482065,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numoutlets" : 0,
									"presentation_rect" : [ 23.0, 47.0, 171.0, 23.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"patching_rect" : [ 23.0, 47.0, 171.0, 23.0 ],
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_max_voices",
									"numinlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"patching_rect" : [ 470.0, 355.0, 96.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numinlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"patching_rect" : [ 32.0, 120.0, 54.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 100 100 400 200, window exec",
									"numinlets" : 2,
									"hidden" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 28.0, 92.0, 228.0, 16.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"patching_rect" : [ 28.0, 92.0, 228.0, 16.0 ],
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"numinlets" : 2,
									"hidden" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 28.0, 59.0, 260.0, 16.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"patching_rect" : [ 28.0, 59.0, 260.0, 16.0 ],
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"numinlets" : 2,
									"hidden" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 28.0, 75.0, 171.0, 16.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"patching_rect" : [ 28.0, 75.0, 171.0, 16.0 ],
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "maximum",
									"numinlets" : 1,
									"fontsize" : 13.482065,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numoutlets" : 0,
									"presentation_rect" : [ 23.0, 25.0, 76.0, 23.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"patching_rect" : [ 23.0, 25.0, 76.0, 23.0 ],
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "max_bands",
									"text" : "t max_bands @type msg_int @range/bounds 1 24 @range/clipmode both @repetitions/allow 0 @ramp/drive none @description \"Maximum Number of bands of the filter\"",
									"linecount" : 3,
									"numinlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 14,
									"outlettype" : [ "max_bands", "@type", "msg_int", "@range/bounds", "int", "int", "@range/clipmode", "both", "@repetitions/allow", "int", "@ramp/drive", "none", "@description", "Maximum Number of bands of the filter" ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"patching_rect" : [ 405.0, 238.0, 341.0, 42.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "max_voices",
									"numinlets" : 1,
									"maximum" : 24,
									"fontsize" : 13.482065,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"triscale" : 0.9,
									"presentation_rect" : [ 235.0, 25.0, 35.0, 23.0 ],
									"mouseup" : 1,
									"id" : "obj-11",
									"fontname" : "Verdana",
									"patching_rect" : [ 405.0, 205.0, 35.0, 23.0 ],
									"minimum" : 1,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "number of bands :",
									"numinlets" : 1,
									"fontsize" : 13.482065,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numoutlets" : 0,
									"presentation_rect" : [ 92.0, 25.0, 140.0, 23.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"patching_rect" : [ 92.0, 25.0, 140.0, 23.0 ],
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"numinlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"patching_rect" : [ 105.0, 155.0, 69.0, 18.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"numinlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "front" ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"patching_rect" : [ 105.0, 135.0, 40.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"hidden" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"patching_rect" : [ 106.0, 113.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend max",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"patching_rect" : [ 435.0, 90.0, 75.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_max_voices",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"patching_rect" : [ 405.0, 55.0, 96.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend nfilters",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"patching_rect" : [ 405.0, 190.0, 88.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "bands",
					"text" : "jcom.parameter bands @type msg_int @repetitions/allow 0 @priority -5 @description \"Number of bands of the filter\"",
					"linecount" : 3,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"patching_rect" : [ 460.0, 125.0, 303.0, 43.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "filter type :",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 141.0, 23.0, 67.0, 19.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"patching_rect" : [ 135.0, 22.0, 65.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "voices",
					"numinlets" : 1,
					"maximum" : 24,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9,
					"presentation_rect" : [ 104.0, 23.0, 35.0, 19.0 ],
					"mouseup" : 1,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"patching_rect" : [ 405.0, 130.0, 35.0, 19.0 ],
					"minimum" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_xxx_to_filtergraph",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"patching_rect" : [ 570.0, 190.0, 211.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message filtergraph @description \"Messages to filtergraph. See the MSP reference for further details\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"patching_rect" : [ 379.0, 17.0, 278.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "filter_params",
					"text" : "p filter",
					"numinlets" : 6,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"patching_rect" : [ 425.0, 350.0, 114.0, 19.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 811.0, 323.0, 581.0, 424.0 ],
						"bglocked" : 0,
						"defrect" : [ 811.0, 323.0, 581.0, 424.0 ],
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
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"patching_rect" : [ 305.0, 25.0, 50.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"patching_rect" : [ 445.0, 206.0, 64.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend target",
									"linecount" : 2,
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"patching_rect" : [ 490.0, 235.0, 54.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend target",
									"linecount" : 2,
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"patching_rect" : [ 85.0, 260.0, 54.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s b",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"patching_rect" : [ 195.0, 210.0, 31.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"patching_rect" : [ 140.0, 237.0, 27.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"triscale" : 0.9,
									"mouseup" : 1,
									"id" : "obj-6",
									"fontname" : "Verdana",
									"patching_rect" : [ 390.0, 40.0, 36.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"patching_rect" : [ 245.0, 25.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"patching_rect" : [ 240.0, 347.0, 68.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"patching_rect" : [ 445.0, 176.0, 37.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0 i",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"patching_rect" : [ 245.0, 60.0, 64.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend voices",
									"linecount" : 2,
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"patching_rect" : [ 290.0, 145.0, 56.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend target",
									"linecount" : 2,
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"patching_rect" : [ 245.0, 235.0, 54.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-17",
									"patching_rect" : [ 240.0, 377.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-18",
									"patching_rect" : [ 30.0, 382.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"patching_rect" : [ 140.0, 85.0, 30.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.thru",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"patching_rect" : [ 390.0, 100.0, 57.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "open $1",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"patching_rect" : [ 390.0, 70.0, 49.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "jalg.filter_params",
									"text" : "poly~ jalg.equalizer~_params 24",
									"numinlets" : 3,
									"fontsize" : 10.0,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"patching_rect" : [ 30.0, 317.0, 434.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend target",
									"linecount" : 2,
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"patching_rect" : [ 140.0, 120.0, 54.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0. 0. 0.",
									"numinlets" : 3,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-24",
									"fontname" : "Verdana",
									"patching_rect" : [ 30.0, 85.0, 98.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-25",
									"patching_rect" : [ 195.0, 25.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-26",
									"patching_rect" : [ 140.0, 25.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"id" : "obj-27",
									"patching_rect" : [ 110.0, 25.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"id" : "obj-28",
									"patching_rect" : [ 70.0, 25.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"id" : "obj-29",
									"patching_rect" : [ 30.0, 25.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-22", 2 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 454.5, 351.0, 455.0, 351.0, 455.0, 351.0, 554.0, 351.0, 554.0, 172.0, 454.5, 172.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-22", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 0,
									"midpoints" : [ 204.5, 284.0, 247.0, 284.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 94.5, 305.0, 39.5, 305.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 191.0, 39.5, 191.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 299.5, 191.0, 39.5, 191.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 399.5, 192.0, 39.5, 192.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 499.5, 306.0, 39.5, 306.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 254.5, 305.0, 39.5, 305.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-24", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 257.0, 94.5, 257.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-24", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 216.5, 234.0, 176.0, 234.0, 176.0, 234.0, 149.5, 234.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 472.5, 201.0, 157.5, 201.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "mode",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"pattrmode" : 1,
					"numoutlets" : 3,
					"items" : [ "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "highshelf" ],
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"presentation_rect" : [ 202.0, 23.0, 93.0, 19.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"patching_rect" : [ 520.0, 375.0, 93.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "filtergraph~",
					"varname" : "filter",
					"numinlets" : 8,
					"autoout" : 1,
					"fontsize" : 8.998901,
					"markercolor" : [ 0.831373, 0.05098, 0.031373, 1.0 ],
					"numoutlets" : 7,
					"domain" : [ 20.0, 22050.0 ],
					"bordercolor" : [ 0.286275, 0.494118, 0.733333, 1.0 ],
					"bwidthcolor" : [ 0.298039, 0.423529, 0.67451, 1.0 ],
					"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
					"textcolor" : [  ],
					"presentation_rect" : [ 9.0, 43.0, 284.0, 93.0 ],
					"id" : "obj-25",
					"fgcolor" : [ 0.866667, 0.905882, 0.964706, 1.0 ],
					"curvecolor" : [ 0.019608, 0.0, 0.690196, 1.0 ],
					"patching_rect" : [ 380.0, 220.0, 284.0, 93.0 ],
					"bgcolor" : [ 0.513726, 0.54902, 0.631373, 1.0 ],
					"hcurvecolor" : [ 0.74902, 0.172549, 0.160784, 1.0 ],
					"presentation" : 1,
					"nfilters" : 5,
					"setfilter" : [ 4, 7, 1, 0, 0, 5000.0, 1.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3, 5, 1, 0, 0, 1000.0, 1.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2, 5, 1, 0, 0, 500.0, 1.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1, 5, 1, 0, 0, 250.0, 1.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 6, 1, 0, 0, 100.353867, 1.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "number of bands :",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 5.0, 23.0, 102.0, 19.0 ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"patching_rect" : [ 10.0, 22.0, 102.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"patching_rect" : [ 70.0, 635.0, 137.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type audio @description \"Multi-band equalizer\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 670.0, 209.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-30",
					"fontname" : "Verdana",
					"patching_rect" : [ 50.0, 475.0, 87.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-31",
					"patching_rect" : [ 20.0, 475.0, 26.0, 26.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"patching_rect" : [ 210.0, 635.0, 37.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-33",
					"patching_rect" : [ 430.0, 475.0, 26.0, 26.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-34",
					"patching_rect" : [ 425.0, 705.0, 26.0, 26.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-35",
					"patching_rect" : [ 585.0, 475.0, 26.0, 26.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.equalizer~",
					"numinlets" : 3,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"id" : "obj-36",
					"fontname" : "Verdana",
					"patching_rect" : [ 380.0, 640.0, 121.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----signal inputs----",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-37",
					"fontname" : "Verdana",
					"patching_rect" : [ 465.0, 475.0, 115.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-38",
					"patching_rect" : [ 20.0, 705.0, 26.0, 26.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-39",
					"patching_rect" : [ 460.0, 705.0, 26.0, 26.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-40",
					"fontname" : "Verdana",
					"patching_rect" : [ 505.0, 705.0, 110.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numinlets" : 1,
					"has_meters" : 1,
					"has_mute" : 1,
					"numoutlets" : 1,
					"prefix" : "audio",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"has_bypass" : 1,
					"id" : "obj-42",
					"has_gain" : 1,
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"presentation" : 1,
					"has_mix" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 403.0, 627.0, 389.5, 627.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 403.0, 413.0, 366.0, 413.0, 366.0, 216.0, 389.5, 216.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 2 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"color" : [ 0.803922, 0.803922, 0.803922, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-22", 4 ],
					"hidden" : 0,
					"midpoints" : [ 566.5, 403.0, 623.0, 403.0, 623.0, 328.0, 510.5, 328.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 2 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 3 ],
					"destination" : [ "obj-22", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 6 ],
					"destination" : [ "obj-22", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 695.5, 579.0, 548.5, 579.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-25", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-22", 5 ],
					"hidden" : 0,
					"midpoints" : [ 414.5, 82.0, 789.0, 82.0, 789.0, 346.0, 529.5, 346.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 669.5, 631.0, 389.5, 631.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-36", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 2 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 548.5, 631.0, 389.5, 631.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 219.5, 660.0, 29.5, 660.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 79.5, 658.0, 29.5, 658.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 59.5, 656.0, 29.5, 656.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 414.5, 210.0, 366.0, 210.0, 366.0, 627.0, 389.5, 627.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 388.5, 207.0, 366.0, 207.0, 366.0, 627.0, 389.5, 627.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 414.5, 156.0, 456.0, 156.0, 456.0, 121.0, 469.5, 121.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 469.5, 160.0, 444.0, 160.0, 444.0, 123.0, 414.5, 123.0 ]
				}

			}
 ]
	}

}
