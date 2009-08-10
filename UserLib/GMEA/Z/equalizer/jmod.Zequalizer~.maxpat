{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 264.0, 59.0, 942.0, 765.0 ],
		"bglocked" : 0,
		"defrect" : [ 264.0, 59.0, 942.0, 765.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"fontsize" : 10.970939,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 155.0, 255.0, 131.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 1",
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"patching_rect" : [ 410.0, 680.0, 79.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"presentation" : 1,
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 145.0, 5.0, 88.0, 9.0 ],
					"patching_rect" : [ 155.0, 285.0, 100.0, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /view/panel",
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 424.0, 585.0, 166.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 610.0, 196.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 1",
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "", "" ],
					"patching_rect" : [ 410.0, 560.0, 75.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "multi_filter~_inspector",
					"text" : "p equalizer~_inspector",
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 425.0, 615.0, 134.0, 19.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 100.0, 100.0, 307.0, 102.0 ],
						"bgcolor" : [ 0.196078, 0.196078, 0.196078, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 100.0, 100.0, 307.0, 102.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 530.0, 320.0, 50.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 460.0, 305.0, 56.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 330.0, 320.0, 100.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "absolute maximum : 24",
									"presentation" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 13.482065,
									"numoutlets" : 0,
									"presentation_rect" : [ 23.0, 47.0, 171.0, 23.0 ],
									"patching_rect" : [ 23.0, 47.0, 171.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_max_voices",
									"id" : "obj-2",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 470.0, 355.0, 107.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"id" : "obj-3",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 32.0, 120.0, 54.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 100 100 400 200, window exec",
									"presentation" : 1,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"presentation_rect" : [ 28.0, 92.0, 228.0, 16.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 28.0, 92.0, 228.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"presentation" : 1,
									"id" : "obj-5",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"presentation_rect" : [ 28.0, 59.0, 260.0, 16.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 28.0, 59.0, 260.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"presentation" : 1,
									"id" : "obj-6",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"presentation_rect" : [ 28.0, 75.0, 171.0, 16.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 28.0, 75.0, 171.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "maximum",
									"presentation" : 1,
									"id" : "obj-7",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 13.482065,
									"numoutlets" : 0,
									"presentation_rect" : [ 23.0, 25.0, 76.0, 23.0 ],
									"patching_rect" : [ 23.0, 25.0, 76.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "max_bands",
									"text" : "t max_bands @type integer @range/bounds 1 24 @range/clipmode both @repetitions/allow 0 @ramp/drive none @description \"Maximum Number of bands of the filter\"",
									"linecount" : 3,
									"id" : "obj-8",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 14,
									"outlettype" : [ "max_bands", "@type", "integer", "@range/bounds", "int", "int", "@range/clipmode", "both", "@repetitions/allow", "int", "@ramp/drive", "none", "@description", "Maximum Number of bands of the filter" ],
									"patching_rect" : [ 405.0, 238.0, 341.0, 42.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "max_voices",
									"presentation" : 1,
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triscale" : 0.9,
									"fontsize" : 13.482065,
									"numoutlets" : 2,
									"minimum" : 1,
									"presentation_rect" : [ 235.0, 25.0, 35.0, 23.0 ],
									"maximum" : 24,
									"outlettype" : [ "int", "bang" ],
									"mouseup" : 1,
									"patching_rect" : [ 405.0, 205.0, 35.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "number of bands :",
									"presentation" : 1,
									"id" : "obj-12",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 13.482065,
									"numoutlets" : 0,
									"presentation_rect" : [ 92.0, 25.0, 140.0, 23.0 ],
									"patching_rect" : [ 92.0, 25.0, 140.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"id" : "obj-14",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 105.0, 155.0, 69.0, 18.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "grow", "close", "zoom", "nofloat", "menu", "minimize", ";", "#Q", "window", "constrain", 2, 2, 32768, 32768, ";", "#Q", "window", "size", 100, 100, 407, 228, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"id" : "obj-15",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "front" ],
									"patching_rect" : [ 105.0, 135.0, 40.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-16",
									"hidden" : 1,
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 106.0, 113.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
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
									"source" : [ "obj-4", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-14", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
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
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-15", 0 ],
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend max",
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 435.0, 90.0, 75.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_max_voices",
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 405.0, 55.0, 107.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend nfilters",
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 275.0, 185.0, 88.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "bands",
					"text" : "jcom.parameter bands @type integer @repetitions/allow 1 @priority 1 @description \"Number of bands of the filter\"",
					"linecount" : 2,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 460.0, 125.0, 315.0, 31.0 ],
					"frozen_object_attributes" : 					{
						"range/bounds" : [ 1.0, 5.0 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "filter type :",
					"presentation" : 1,
					"id" : "obj-14",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 141.0, 23.0, 67.0, 19.0 ],
					"patching_rect" : [ 135.0, 22.0, 65.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "voices",
					"presentation" : 1,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"triscale" : 0.9,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"minimum" : 1,
					"presentation_rect" : [ 104.0, 23.0, 35.0, 19.0 ],
					"maximum" : 24,
					"outlettype" : [ "int", "bang" ],
					"mouseup" : 1,
					"patching_rect" : [ 405.0, 130.0, 35.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message filtergraph @description \"Messages to filtergraph. See the MSP reference for further details\"",
					"linecount" : 2,
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 379.0, 17.0, 278.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "filter_params",
					"text" : "p filter",
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numinlets" : 6,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 390.0, 345.0, 114.0, 19.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 663.0, 360.0, 581.0, 424.0 ],
						"bglocked" : 0,
						"defrect" : [ 663.0, 360.0, 581.0, 424.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 305.0, 25.0, 50.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 445.0, 206.0, 64.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend target",
									"linecount" : 2,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 490.0, 235.0, 54.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend target",
									"linecount" : 2,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 85.0, 260.0, 54.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s b",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 195.0, 210.0, 31.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 140.0, 237.0, 27.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triscale" : 0.9,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"mouseup" : 1,
									"patching_rect" : [ 390.0, 40.0, 36.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-7",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 245.0, 25.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 240.0, 347.0, 68.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i",
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 445.0, 176.0, 37.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0 i",
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 245.0, 60.0, 64.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend voices",
									"linecount" : 2,
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 290.0, 145.0, 56.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend target",
									"linecount" : 2,
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 245.0, 235.0, 54.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-17",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 240.0, 377.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 382.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 140.0, 85.0, 30.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.thru",
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 100.0, 57.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "open $1",
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 70.0, 49.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "jalg.filter_params",
									"text" : "poly~ jalg.Zequalizer~_params 5",
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"fontsize" : 10.0,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 30.0, 315.0, 434.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend target",
									"linecount" : 2,
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 140.0, 120.0, 54.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0. 0. 0.",
									"id" : "obj-24",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 85.0, 98.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-25",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 195.0, 25.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-26",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 140.0, 25.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-27",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 110.0, 25.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-28",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 70.0, 25.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-29",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 30.0, 25.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 254.5, 305.0, 39.5, 305.0 ]
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
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 399.5, 192.0, 39.5, 192.0 ]
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
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 94.5, 305.0, 39.5, 305.0 ]
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-22", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 2 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 454.5, 351.0, 455.0, 351.0, 455.0, 351.0, 554.0, 351.0, 554.0, 172.0, 454.5, 172.0 ]
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 472.5, 201.0, 157.5, 201.0 ]
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
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-23", 0 ],
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
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-24", 2 ],
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
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-24", 1 ],
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
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "mode",
					"presentation" : 1,
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"presentation_rect" : [ 202.0, 23.0, 93.0, 19.0 ],
					"pattrmode" : 1,
					"items" : [ "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "highshelf" ],
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 520.0, 375.0, 93.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "filtergraph~",
					"varname" : "filter",
					"presentation" : 1,
					"id" : "obj-25",
					"curvecolor" : [ 0.019608, 0.0, 0.690196, 1.0 ],
					"fgcolor" : [ 0.866667, 0.905882, 0.964706, 1.0 ],
					"autoout" : 1,
					"bgcolor" : [ 0.513726, 0.54902, 0.631373, 1.0 ],
					"numinlets" : 8,
					"hcurvecolor" : [ 0.74902, 0.172549, 0.160784, 1.0 ],
					"bordercolor" : [ 0.286275, 0.494118, 0.733333, 1.0 ],
					"fontsize" : 8.998901,
					"numoutlets" : 7,
					"presentation_rect" : [ 9.0, 43.0, 284.0, 93.0 ],
					"markercolor" : [ 0.831373, 0.05098, 0.031373, 1.0 ],
					"domain" : [ 20.0, 22050.0 ],
					"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
					"bwidthcolor" : [ 0.298039, 0.423529, 0.67451, 1.0 ],
					"patching_rect" : [ 380.0, 220.0, 284.0, 93.0 ],
					"nfilters" : 5,
					"setfilter" : [ 4, 7, 1, 0, 0, 5000.0, 1.0, 2.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3, 5, 1, 0, 0, 1000.0, 1.0, 2.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2, 5, 1, 0, 0, 500.0, 1.0, 2.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1, 5, 1, 0, 0, 250.0, 1.0, 2.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 6, 1, 0, 0, 100.353867, 1.0, 2.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "number of bands :",
					"presentation" : 1,
					"id" : "obj-26",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 5.0, 23.0, 102.0, 19.0 ],
					"patching_rect" : [ 10.0, 22.0, 102.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"id" : "obj-27",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 70.0, 635.0, 137.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type audio @description \"Multi-band equalizer\"",
					"linecount" : 2,
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 20.0, 670.0, 209.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"id" : "obj-30",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 50.0, 550.0, 87.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-31",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 550.0, 26.0, 26.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"id" : "obj-32",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 210.0, 635.0, 37.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-34",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 410.0, 705.0, 26.0, 26.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-35",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 410.0, 480.0, 26.0, 26.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "poly~ jalg.Zequalizer~ 1",
					"id" : "obj-36",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"patching_rect" : [ 410.0, 645.0, 138.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----signal inputs----",
					"id" : "obj-37",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 444.0, 512.0, 115.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-38",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 705.0, 26.0, 26.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"id" : "obj-40",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 505.0, 705.0, 110.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation" : 1,
					"id" : "obj-42",
					"has_bypass" : 1,
					"has_meters" : 1,
					"numinlets" : 1,
					"has_mix" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"has_gain" : 1,
					"outlettype" : [ "" ],
					"has_mute" : 1,
					"prefix" : "audio",
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ]
				}

			}
 ],
		"lines" : [ 			{
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 388.5, 207.0, 366.0, 207.0, 366.0, 636.0, 419.5, 636.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 284.5, 240.0, 366.0, 240.0, 366.0, 637.0, 419.5, 637.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 59.5, 656.0, 29.5, 656.0 ]
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
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 79.5, 658.0, 29.5, 658.0 ]
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
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 284.5, 210.0, 389.5, 210.0 ]
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
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-25", 0 ],
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
					"source" : [ "obj-25", 3 ],
					"destination" : [ "obj-22", 2 ],
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
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-22", 0 ],
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
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-15", 0 ],
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
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 580.5, 636.0, 519.0, 636.0, 519.0, 636.0, 419.5, 636.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
