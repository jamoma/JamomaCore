{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 86.0, 70.0, 895.0, 771.0 ],
		"bglocked" : 0,
		"defrect" : [ 86.0, 70.0, 895.0, 771.0 ],
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
					"fontsize" : 10.0,
					"patching_rect" : [ 20.0, 395.0, 142.0, 19.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-51"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 350.0, 142.0, 19.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"presentation_rect" : [ 150.0, 10.0, 80.0, 4.0 ],
					"patching_rect" : [ 20.0, 420.0, 80.0, 4.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"presentation_rect" : [ 150.0, 5.0, 80.0, 4.0 ],
					"patching_rect" : [ 15.0, 375.0, 80.0, 4.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-49"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"fontsize" : 10.970939,
					"patching_rect" : [ 115.0, 715.0, 36.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"fontsize" : 10.970939,
					"patching_rect" : [ 705.0, 670.0, 36.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 10.970939,
					"patching_rect" : [ 680.0, 365.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana",
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"fontsize" : 10.0,
					"patching_rect" : [ 539.0, 535.0, 166.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 10.0,
					"patching_rect" : [ 660.0, 610.0, 49.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~",
					"fontsize" : 10.0,
					"patching_rect" : [ 539.0, 587.0, 136.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontsize" : 10.0,
					"patching_rect" : [ 50.0, 610.0, 196.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"fontsize" : 10.0,
					"patching_rect" : [ 430.0, 665.0, 71.0, 19.0 ],
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"fontname" : "Verdana",
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"fontsize" : 10.0,
					"patching_rect" : [ 431.0, 513.0, 173.0, 19.0 ],
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "multi_filter~_inspector",
					"text" : "p equalizer~_inspector",
					"fontsize" : 10.0,
					"patching_rect" : [ 540.0, 560.0, 134.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-7",
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
									"fontsize" : 10.0,
									"patching_rect" : [ 530.0, 320.0, 50.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Verdana",
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"fontsize" : 10.0,
									"patching_rect" : [ 460.0, 305.0, 56.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"fontsize" : 10.0,
									"patching_rect" : [ 330.0, 320.0, 100.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "absolute maximum : 24",
									"presentation_rect" : [ 23.0, 47.0, 171.0, 23.0 ],
									"fontsize" : 13.482065,
									"patching_rect" : [ 23.0, 47.0, 171.0, 23.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-1",
									"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_max_voices",
									"fontsize" : 9.873845,
									"patching_rect" : [ 470.0, 355.0, 96.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"hidden" : 1,
									"fontname" : "Verdana",
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontsize" : 9.873845,
									"patching_rect" : [ 32.0, 120.0, 54.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Verdana",
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 100 100 400 200, window exec",
									"presentation_rect" : [ 28.0, 92.0, 228.0, 16.0 ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 28.0, 92.0, 228.0, 16.0 ],
									"presentation" : 1,
									"numinlets" : 2,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"presentation_rect" : [ 28.0, 59.0, 260.0, 16.0 ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 28.0, 59.0, 260.0, 16.0 ],
									"presentation" : 1,
									"numinlets" : 2,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"presentation_rect" : [ 28.0, 75.0, 171.0, 16.0 ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 28.0, 75.0, 171.0, 16.0 ],
									"presentation" : 1,
									"numinlets" : 2,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "maximum",
									"presentation_rect" : [ 23.0, 25.0, 76.0, 23.0 ],
									"fontsize" : 13.482065,
									"patching_rect" : [ 23.0, 25.0, 76.0, 23.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-7",
									"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "max_bands",
									"text" : "t max_bands @type msg_int @range/bounds 1 24 @range/clipmode both @repetitions/allow 0 @ramp/drive none @description \"Maximum Number of bands of the filter\"",
									"linecount" : 3,
									"fontsize" : 9.873845,
									"patching_rect" : [ 405.0, 238.0, 341.0, 42.0 ],
									"numinlets" : 1,
									"numoutlets" : 14,
									"hidden" : 1,
									"outlettype" : [ "max_bands", "@type", "msg_int", "@range/bounds", "int", "int", "@range/clipmode", "both", "@repetitions/allow", "int", "@ramp/drive", "none", "@description", "Maximum Number of bands of the filter" ],
									"fontname" : "Verdana",
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "max_voices",
									"presentation_rect" : [ 235.0, 25.0, 35.0, 23.0 ],
									"triscale" : 0.9,
									"minimum" : 1,
									"fontsize" : 13.482065,
									"patching_rect" : [ 405.0, 205.0, 35.0, 23.0 ],
									"mouseup" : 1,
									"presentation" : 1,
									"numinlets" : 1,
									"maximum" : 24,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Verdana",
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "number of bands :",
									"presentation_rect" : [ 92.0, 25.0, 140.0, 23.0 ],
									"fontsize" : 13.482065,
									"patching_rect" : [ 92.0, 25.0, 140.0, 23.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-12",
									"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontsize" : 9.873845,
									"patching_rect" : [ 105.0, 155.0, 69.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontsize" : 9.873845,
									"patching_rect" : [ 105.0, 135.0, 40.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "front" ],
									"fontname" : "Verdana",
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 106.0, 113.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-16",
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
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend max",
					"fontsize" : 10.0,
					"patching_rect" : [ 435.0, 90.0, 75.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_max_voices",
					"fontsize" : 10.0,
					"patching_rect" : [ 405.0, 55.0, 96.0, 19.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend nfilters",
					"fontsize" : 10.0,
					"patching_rect" : [ 395.0, 180.0, 88.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "bands",
					"text" : "jcom.parameter bands @type msg_int @repetitions/allow 1 @priority -5 @description \"Number of bands of the filter\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 460.0, 125.0, 315.0, 31.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "filter type :",
					"presentation_rect" : [ 141.0, 23.0, 67.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 135.0, 22.0, 65.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-14",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "voices",
					"presentation_rect" : [ 104.0, 23.0, 35.0, 19.0 ],
					"triscale" : 0.9,
					"minimum" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 405.0, 130.0, 35.0, 19.0 ],
					"mouseup" : 1,
					"presentation" : 1,
					"numinlets" : 1,
					"maximum" : 24,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana",
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message filtergraph @description \"Messages to filtergraph. See the MSP reference for further details\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 379.0, 17.0, 278.0, 31.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "filter_params",
					"text" : "p filter",
					"fontsize" : 10.0,
					"patching_rect" : [ 390.0, 345.0, 114.0, 19.0 ],
					"numinlets" : 6,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-22",
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
									"fontsize" : 10.0,
									"patching_rect" : [ 305.0, 25.0, 50.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Verdana",
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"fontsize" : 10.0,
									"patching_rect" : [ 445.0, 206.0, 64.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"fontname" : "Verdana",
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend target",
									"linecount" : 2,
									"fontsize" : 10.0,
									"patching_rect" : [ 490.0, 235.0, 54.0, 31.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend target",
									"linecount" : 2,
									"fontsize" : 10.0,
									"patching_rect" : [ 85.0, 260.0, 54.0, 31.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s b",
									"fontsize" : 10.0,
									"patching_rect" : [ 195.0, 210.0, 31.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"fontname" : "Verdana",
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"fontsize" : 10.0,
									"patching_rect" : [ 140.0, 237.0, 27.0, 19.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontsize" : 10.0,
									"patching_rect" : [ 390.0, 40.0, 36.0, 19.0 ],
									"mouseup" : 1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Verdana",
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 245.0, 25.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 10.0,
									"patching_rect" : [ 240.0, 347.0, 68.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i",
									"fontsize" : 10.0,
									"patching_rect" : [ 445.0, 176.0, 37.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Verdana",
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0 i",
									"fontsize" : 10.0,
									"patching_rect" : [ 245.0, 60.0, 64.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Verdana",
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend voices",
									"linecount" : 2,
									"fontsize" : 10.0,
									"patching_rect" : [ 290.0, 145.0, 56.0, 31.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend target",
									"linecount" : 2,
									"fontsize" : 10.0,
									"patching_rect" : [ 245.0, 235.0, 54.0, 31.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 240.0, 377.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-17",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 30.0, 382.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-18",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"fontsize" : 10.0,
									"patching_rect" : [ 140.0, 85.0, 30.0, 19.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.thru",
									"fontsize" : 10.0,
									"patching_rect" : [ 390.0, 100.0, 57.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "open $1",
									"fontsize" : 10.0,
									"patching_rect" : [ 390.0, 70.0, 49.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "jalg.filter_params",
									"text" : "poly~ jalg.equalizer~_params 24",
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 317.0, 434.0, 19.0 ],
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend target",
									"linecount" : 2,
									"fontsize" : 10.0,
									"patching_rect" : [ 140.0, 120.0, 54.0, 31.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0. 0. 0.",
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 85.0, 98.0, 19.0 ],
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 195.0, 25.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-25",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 140.0, 25.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-26",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 110.0, 25.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"id" : "obj-27",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 70.0, 25.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"id" : "obj-28",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 30.0, 25.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"id" : "obj-29",
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
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "mode",
					"presentation_rect" : [ 202.0, 23.0, 93.0, 19.0 ],
					"pattrmode" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 520.0, 375.0, 93.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"items" : [ "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "highshelf" ],
					"numoutlets" : 3,
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "filtergraph~",
					"varname" : "filter",
					"presentation_rect" : [ 9.0, 43.0, 284.0, 93.0 ],
					"bgcolor" : [ 0.513726, 0.54902, 0.631373, 1.0 ],
					"markercolor" : [ 0.831373, 0.05098, 0.031373, 1.0 ],
					"fontsize" : 8.998901,
					"bwidthcolor" : [ 0.298039, 0.423529, 0.67451, 1.0 ],
					"patching_rect" : [ 380.0, 220.0, 284.0, 93.0 ],
					"presentation" : 1,
					"numinlets" : 8,
					"domain" : [ 20.0, 22050.0 ],
					"curvecolor" : [ 0.019608, 0.0, 0.690196, 1.0 ],
					"bordercolor" : [ 0.286275, 0.494118, 0.733333, 1.0 ],
					"numoutlets" : 7,
					"hcurvecolor" : [ 0.74902, 0.172549, 0.160784, 1.0 ],
					"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
					"id" : "obj-25",
					"fgcolor" : [ 0.866667, 0.905882, 0.964706, 1.0 ],
					"textcolor" : [  ],
					"autoout" : 1,
					"nfilters" : 2,
					"setfilter" : [ 1, 5, 1, 0, 0, 250.0, 1.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 6, 1, 0, 0, 100.353867, 1.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "number of bands :",
					"presentation_rect" : [ 5.0, 23.0, 102.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 10.0, 22.0, 102.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-26",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 10.0,
					"patching_rect" : [ 70.0, 635.0, 137.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type audio @description \"Multi-band equalizer\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 20.0, 670.0, 209.0, 31.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontsize" : 10.0,
					"patching_rect" : [ 50.0, 475.0, 87.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-30",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 20.0, 475.0, 26.0, 26.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-31",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontsize" : 10.0,
					"patching_rect" : [ 210.0, 635.0, 37.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 430.0, 475.0, 26.0, 26.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-33",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 425.0, 705.0, 26.0, 26.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-34",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 585.0, 475.0, 26.0, 26.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-35",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.equalizer~",
					"fontsize" : 10.0,
					"patching_rect" : [ 380.0, 640.0, 121.0, 19.0 ],
					"numinlets" : 4,
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"fontname" : "Verdana",
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----signal inputs----",
					"fontsize" : 10.0,
					"patching_rect" : [ 465.0, 475.0, 115.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-37",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 20.0, 705.0, 26.0, 26.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-38",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 460.0, 705.0, 26.0, 26.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-39",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"fontsize" : 10.0,
					"patching_rect" : [ 505.0, 705.0, 110.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-40",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"has_mute" : 1,
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"has_bypass" : 1,
					"numoutlets" : 1,
					"has_meters" : 1,
					"has_gain" : 1,
					"prefix" : "audio",
					"outlettype" : [ "" ],
					"id" : "obj-42",
					"has_mix" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-16", 0 ],
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
					"midpoints" : [ 566.5, 403.0, 623.0, 403.0, 623.0, 328.0, 475.5, 328.0 ]
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
					"midpoints" : [ 404.5, 210.0, 389.5, 210.0 ]
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-22", 5 ],
					"hidden" : 0,
					"midpoints" : [ 414.5, 82.0, 789.0, 82.0, 789.0, 337.0, 494.5, 337.0 ]
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
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 399.5, 366.0, 366.0, 366.0, 366.0, 216.0, 389.5, 216.0 ]
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
					"source" : [ "obj-36", 2 ],
					"destination" : [ "obj-5", 1 ],
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
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 669.5, 631.0, 389.5, 631.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-36", 3 ],
					"hidden" : 0,
					"midpoints" : [ 399.5, 627.0, 491.5, 627.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-36", 3 ],
					"hidden" : 0,
					"midpoints" : [ 404.5, 209.0, 366.0, 209.0, 366.0, 627.0, 491.5, 627.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-36", 3 ],
					"hidden" : 0,
					"midpoints" : [ 388.5, 210.0, 366.0, 210.0, 366.0, 627.0, 491.5, 627.0 ]
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 414.5, 156.0, 456.0, 156.0, 456.0, 121.0, 469.5, 121.0 ]
				}

			}
 ]
	}

}
