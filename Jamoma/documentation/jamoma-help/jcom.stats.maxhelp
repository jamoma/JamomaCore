{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 22.0, 46.0, 623.0, 810.0 ],
		"bglocked" : 0,
		"defrect" : [ 22.0, 46.0, 623.0, 810.0 ],
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
					"text" : "set size of window. Limited to Max window size",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 125.0, 175.0, 246.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "window_size:",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 35.0, 175.0, 77.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "add new value to stream, but do not output",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 125.0, 155.0, 229.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set:",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 35.0, 155.0, 30.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "calculate and output",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 125.0, 135.0, 112.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "converted to float",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 125.0, 115.0, 99.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "int:",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 35.0, 115.0, 28.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "interpreted as new value of data stream. Statistics are calculated and output",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 125.0, 95.0, 396.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "float:",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 35.0, 95.0, 37.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "flag indicating if calculations are windowed or run infinitively (default = 1)",
					"linecount" : 2,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 125.0, 310.0, 266.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(int):",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 35.0, 250.0, 37.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Current window size (default = max window size)",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 125.0, 250.0, 259.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(int):",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 35.0, 230.0, 37.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attribute:",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 15.0, 285.0, 59.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Optional arguments:",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 15.0, 210.0, 113.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "autoscaled to (0, 1)",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 70.0, 600.0, 108.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"maximum" : 500,
					"fontsize" : 10.0,
					"patching_rect" : [ 270.0, 370.0, 35.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"minimum" : 20
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "window_size $1",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 270.0, 395.0, 100.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 175.0, 370.0, 19.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-19",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "windowed $1",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 175.0, 395.0, 83.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 320.0, 520.0, 47.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "max",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 320.0, 545.0, 35.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "min",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 265.0, 545.0, 35.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 430.0, 520.0, 47.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 375.0, 520.0, 47.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p autoscale",
					"outlettype" : [ "float" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 55.0, 565.0, 72.0, 19.0 ],
					"numinlets" : 3,
					"id" : "obj-26",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 200.0, 201.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 200.0, 201.0 ],
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
									"text" : "scale 0. 127. 0. 1.",
									"outlettype" : [ "float" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 48.0, 110.0, 100.0, 19.0 ],
									"numinlets" : 6,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 2.",
									"outlettype" : [ "float" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 110.0, 56.0, 29.0, 19.0 ],
									"numinlets" : 2,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 0.",
									"outlettype" : [ "float" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 93.0, 83.0, 30.0, 19.0 ],
									"numinlets" : 2,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 0.",
									"outlettype" : [ "float" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 64.0, 83.0, 27.0, 19.0 ],
									"numinlets" : 2,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 110.0, 33.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"id" : "obj-5",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 64.0, 33.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"id" : "obj-6",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 48.0, 33.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"id" : "obj-7",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 48.0, 132.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"id" : "obj-8",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-8", 0 ],
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
					"text" : "t f f",
					"outlettype" : [ "float", "float" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 55.0, 450.0, 34.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-27",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"setstyle" : 2,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 55.0, 620.0, 141.0, 93.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-28",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"setminmax" : [ 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p display",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"hidden" : 1,
					"patching_rect" : [ 260.0, 590.0, 60.0, 19.0 ],
					"numinlets" : 2,
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
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
									"text" : "* 2.",
									"outlettype" : [ "float" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 122.0, 57.0, 29.0, 19.0 ],
									"numinlets" : 2,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 0.",
									"outlettype" : [ "float" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 106.0, 89.0, 30.0, 19.0 ],
									"numinlets" : 2,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 0.",
									"outlettype" : [ "float" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 50.0, 89.0, 27.0, 19.0 ],
									"numinlets" : 2,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0. 0. 0.",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 50.0, 126.0, 72.0, 19.0 ],
									"numinlets" : 3,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 50.0, 28.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"id" : "obj-5",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 122.0, 30.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"id" : "obj-6",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 50.0, 148.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 59.0, 66.0, 115.5, 66.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [ 59.0, 72.0, 86.0, 72.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
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
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 55.0, 370.0, 19.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-30",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 20",
					"outlettype" : [ "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 55.0, 400.0, 63.0, 19.0 ],
					"numinlets" : 2,
					"id" : "obj-31",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 130.0, 370.0, 33.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-32",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mean - 2*standardDeviation",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 240.0, 740.0, 196.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-33",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mean + 2*standardDeviation",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 240.0, 780.0, 196.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-34",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mean",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 240.0, 760.0, 40.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-35",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 205.0, 780.0, 30.0, 10.0 ],
					"numinlets" : 1,
					"id" : "obj-36",
					"numoutlets" : 0,
					"bgcolor" : [ 0.290196, 0.411765, 0.713726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 205.0, 760.0, 30.0, 10.0 ],
					"numinlets" : 1,
					"id" : "obj-37",
					"numoutlets" : 0,
					"bgcolor" : [ 0.145098, 0.203922, 0.356863, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.stats",
					"fontsize" : 17.334082,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 15.0, 15.0, 155.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-38",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "calculate statistics on running data",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 15.0, 40.0, 233.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-39",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 15,
					"patching_rect" : [ 10.0, 10.0, 317.0, 56.0 ],
					"numinlets" : 1,
					"id" : "obj-40",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"setstyle" : 1,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 205.0, 620.0, 30.0, 93.0 ],
					"candycane" : 3,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-41",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"setminmax" : [ 0.0, 127.0 ],
					"size" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"setstyle" : 2,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 235.0, 620.0, 141.0, 93.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-42",
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"setminmax" : [ 0.0, 127.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "drunk 128 2",
					"outlettype" : [ "int" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 55.0, 425.0, 80.0, 19.0 ],
					"numinlets" : 3,
					"id" : "obj-43",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 265.0, 520.0, 47.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"id" : "obj-44",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 210.0, 520.0, 47.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"id" : "obj-45",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "count",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 210.0, 545.0, 36.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-46",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mean",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 375.0, 545.0, 37.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-47",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "standard deviation",
					"linecount" : 2,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 430.0, 545.0, 56.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-48",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.stats 500 200 @windowed 1",
					"outlettype" : [ "int", "float", "float", "float", "float", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 210.0, 480.0, 294.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-49",
					"fontname" : "Verdana",
					"numoutlets" : 6
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 205.0, 740.0, 30.0, 10.0 ],
					"numinlets" : 1,
					"id" : "obj-50",
					"numoutlets" : 0,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "drunk",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 240.0, 600.0, 100.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-51",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Input:",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 15.0, 75.0, 42.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-52",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "windowed:",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 35.0, 305.0, 64.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-53",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Max window size (default = 500)",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 125.0, 230.0, 174.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-54",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bang:",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 35.0, 135.0, 39.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-55",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-49", 4 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 3 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 2 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 1 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 139.5, 449.0, 219.5, 449.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 184.5, 449.0, 219.5, 449.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 279.5, 449.0, 219.5, 449.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 79.5, 473.0, 219.5, 473.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 4 ],
					"destination" : [ "obj-26", 2 ],
					"hidden" : 0,
					"color" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
					"midpoints" : [ 439.5, 507.0, 117.5, 507.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 3 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"color" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
					"midpoints" : [ 384.5, 502.0, 91.0, 502.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 1,
					"midpoints" : [ 439.5, 589.0, 310.5, 589.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [ 384.5, 586.0, 269.5, 586.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-28", 0 ],
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
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
