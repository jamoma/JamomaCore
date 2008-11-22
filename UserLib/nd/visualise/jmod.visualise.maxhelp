{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 86.0, 319.0, 645.0, 437.0 ],
		"bglocked" : 0,
		"defrect" : [ 86.0, 319.0, 645.0, 437.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "autoscale disabled for now, scale is 0-1.",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-15",
					"patching_rect" : [ 370.0, 50.0, 268.0, 23.0 ],
					"fontsize" : 14.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "patch Nicolas Deflache",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-10",
					"patching_rect" : [ 491.0, 402.0, 140.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "modules still needs a bit of calibration work, but you get the idea...",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontname" : "Arial Italic",
					"id" : "obj-4",
					"patching_rect" : [ 364.0, 17.0, 215.0, 34.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"id" : "obj-8",
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 36.0, 187.0, 50.0, 20.0 ],
					"minimum" : 0,
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "scroll-time $1",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"id" : "obj-5",
					"outlettype" : [ "" ],
					"patching_rect" : [ 36.0, 211.0, 82.0, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p drifting_random",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-13",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 523.0, 102.0, 112.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 449.0, 425.0, 485.0, 371.0 ],
						"bglocked" : 0,
						"defrect" : [ 449.0, 425.0, 485.0, 371.0 ],
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
									"text" : "/ 300.",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-8",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 63.0, 232.0, 41.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 5",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-1",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 80.0, 50.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 100",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-2",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 204.0, 92.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "drunk 200 4",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-3",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 132.0, 174.0, 70.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "random 100",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-4",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 175.0, 70.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-6",
									"patching_rect" : [ 50.0, 256.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Random values in the range 0-300",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-7",
									"patching_rect" : [ 265.0, 121.0, 184.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"id" : "obj-14",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 523.0, 82.0, 15.0, 15.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p drifting_random",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-11",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 405.0, 102.0, 112.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 449.0, 425.0, 485.0, 371.0 ],
						"bglocked" : 0,
						"defrect" : [ 449.0, 425.0, 485.0, 371.0 ],
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
									"text" : "metro 50",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-1",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 81.0, 57.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 100",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-2",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 204.0, 92.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "drunk 200 4",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-3",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 132.0, 174.0, 70.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "random 100",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-4",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 175.0, 70.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-6",
									"patching_rect" : [ 50.0, 256.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Random values in the range 0-300",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-7",
									"patching_rect" : [ 265.0, 121.0, 184.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
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
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 405.0, 82.0, 15.0, 15.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "scroll time",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-9",
					"patching_rect" : [ 37.0, 339.0, 96.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "min",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-7",
					"patching_rect" : [ 486.0, 319.0, 30.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "max of scale (not signal)",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-6",
					"patching_rect" : [ 486.0, 252.0, 79.0, 34.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1) generate something to visualise",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-3",
					"patching_rect" : [ 19.0, 108.0, 193.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Window size for autoscale is linked to scroll time.\nTraces gets transparent to indicate autoscaling.",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-2",
					"patching_rect" : [ 174.0, 340.0, 299.0, 34.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2) select an input.\nat the moment, doesn't see multiple instances",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-1",
					"patching_rect" : [ 197.0, 198.0, 269.0, 34.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.mouse",
					"lockeddragscroll" : 1,
					"presentation_rect" : [ 45.0, 45.0, 150.0, 70.0 ],
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "" ],
					"patching_rect" : [ 217.0, 74.0, 150.0, 70.0 ],
					"name" : "jmod.mouse.maxpat",
					"args" : [ "/mouse" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Select and visualize autoscaled Jamoma continuous signals",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-20",
					"patching_rect" : [ 13.0, 30.0, 326.0, 18.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.visualise",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-21",
					"patching_rect" : [ 13.0, 2.0, 313.0, 28.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 17.334082,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"id" : "obj-22",
					"patching_rect" : [ 1.0, 2.0, 339.0, 65.0 ],
					"rounded" : 0,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.visualise",
					"presentation_rect" : [ 15.0, 15.0, 450.0, 105.0 ],
					"numoutlets" : 1,
					"id" : "obj-25",
					"outlettype" : [ "" ],
					"patching_rect" : [ 36.0, 234.0, 450.0, 105.0 ],
					"name" : "jmod.visualise.maxpat",
					"args" : [ "/visualise" ],
					"numinlets" : 2
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-25", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-25", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
