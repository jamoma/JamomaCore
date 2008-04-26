{
	"patcher" : 	{
		"rect" : [ 470.0, 63.0, 609.0, 448.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 470.0, 63.0, 609.0, 448.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"id" : "obj-48",
					"presentation_rect" : [ 424.0, 376.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 424.0, 376.0, 80.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"id" : "obj-49",
					"presentation_rect" : [ 423.0, 395.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 423.0, 395.0, 80.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"id" : "obj-46",
					"presentation_rect" : [ 30.0, 286.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 30.0, 286.0, 80.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"id" : "obj-47",
					"presentation_rect" : [ 29.0, 305.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 29.0, 305.0, 80.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"id" : "obj-45",
					"numinlets" : 1,
					"patching_rect" : [ 297.0, 399.0, 80.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"id" : "obj-44",
					"numinlets" : 1,
					"patching_rect" : [ 296.0, 418.0, 80.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 54 100",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "int" ],
					"id" : "obj-1",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 347.0, 219.0, 68.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1, loop 1, modout 1",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"numinlets" : 2,
					"patching_rect" : [ 173.0, 217.0, 127.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "bang" ],
					"id" : "obj-3",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 347.0, 197.0, 54.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mixed and gained output",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 1,
					"patching_rect" : [ 317.0, 151.0, 139.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "wet input",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 1,
					"patching_rect" : [ 406.0, 106.0, 78.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"id" : "obj-6",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 402.0, 102.0, 71.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dumpout",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 1,
					"patching_rect" : [ 465.0, 152.0, 56.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dry input",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 1,
					"patching_rect" : [ 322.0, 107.0, 77.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.gain~ 4",
					"fontsize" : 9.0,
					"numoutlets" : 5,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "signal", "signal", "" ],
					"id" : "obj-9",
					"numinlets" : 8,
					"patching_rect" : [ 316.0, 127.0, 195.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"id" : "obj-10",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 316.0, 103.0, 71.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "N channels of processed (mixed and gained) signal",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 1,
					"patching_rect" : [ 32.0, 166.0, 303.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Outlets:",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 1,
					"patching_rect" : [ 11.0, 152.0, 56.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the number of channels (default 1)",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 1,
					"patching_rect" : [ 32.0, 85.0, 272.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If number of channels is N, the first N inlets are raw input, and the next N inlets are for wet signal",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 1,
					"patching_rect" : [ 32.0, 121.0, 264.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "wet",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"patching_rect" : [ 439.0, 304.0, 26.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-16",
					"numinlets" : 2,
					"patching_rect" : [ 97.0, 385.0, 33.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "startwindow",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"numinlets" : 2,
					"patching_rect" : [ 14.0, 385.0, 80.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 2,
					"patching_rect" : [ 133.0, 415.0, 49.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p vertigo",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal" ],
					"id" : "obj-19",
					"numinlets" : 2,
					"patching_rect" : [ 181.0, 299.0, 56.0, 18.0 ],
					"patcher" : 					{
						"rect" : [ 317.0, 264.0, 493.0, 278.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 317.0, 264.0, 493.0, 278.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~ 0.35",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "signal" ],
									"id" : "obj-1",
									"numinlets" : 2,
									"patching_rect" : [ 57.0, 64.0, 49.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~ 0.35",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "signal" ],
									"id" : "obj-2",
									"numinlets" : 2,
									"patching_rect" : [ 154.0, 63.0, 49.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tapout~ 500",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "signal" ],
									"id" : "obj-3",
									"numinlets" : 1,
									"patching_rect" : [ 200.0, 111.0, 71.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tapin~ 1000",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "tapconnect" ],
									"id" : "obj-4",
									"numinlets" : 1,
									"patching_rect" : [ 200.0, 87.0, 70.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tapout~ 750",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "signal" ],
									"id" : "obj-5",
									"numinlets" : 1,
									"patching_rect" : [ 35.0, 111.0, 71.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tapin~ 1000",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "tapconnect" ],
									"id" : "obj-6",
									"numinlets" : 1,
									"patching_rect" : [ 35.0, 87.0, 70.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-7",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"triscale" : 0.9,
									"numinlets" : 1,
									"patching_rect" : [ 349.0, 119.0, 35.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-8",
									"numinlets" : 1,
									"patching_rect" : [ 200.0, 217.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-9",
									"numinlets" : 1,
									"patching_rect" : [ 35.0, 217.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-10",
									"numinlets" : 0,
									"patching_rect" : [ 200.0, 65.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-11",
									"numinlets" : 0,
									"patching_rect" : [ 35.0, 65.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess -200",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"numinlets" : 1,
									"patching_rect" : [ 349.0, 93.0, 82.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "freqshift~ -50",
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "signal", "signal" ],
									"id" : "obj-13",
									"numinlets" : 2,
									"patching_rect" : [ 200.0, 179.0, 78.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "freqshift~ -50",
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "signal", "signal" ],
									"id" : "obj-14",
									"numinlets" : 2,
									"patching_rect" : [ 35.0, 179.0, 78.0, 18.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 66.5, 85.0, 44.5, 85.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 209.5, 208.0, 121.0, 208.0, 121.0, 55.0, 66.5, 55.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 44.5, 203.0, 132.0, 203.0, 132.0, 56.0, 163.5, 56.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 163.5, 84.0, 209.5, 84.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.gain~",
					"fontsize" : 15.799999,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-20",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 11.0, 13.0, 108.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Control level as well as dry\/wet mix",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-21",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 11.0, 39.0, 446.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"id" : "obj-22",
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 6.0, 9.0, 400.0, 50.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-23",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 467.0, 286.0, 35.0, 18.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numoutlets" : 1,
					"size" : 101.0,
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"orientation" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 321.0, 286.0, 144.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mix $1",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"numinlets" : 2,
					"patching_rect" : [ 504.0, 286.0, 51.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-26",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 467.0, 259.0, 35.0, 18.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numoutlets" : 1,
					"size" : 158.0,
					"outlettype" : [ "" ],
					"id" : "obj-27",
					"orientation" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 321.0, 259.0, 144.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "gain_midi $1",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-28",
					"numinlets" : 2,
					"patching_rect" : [ 504.0, 259.0, 80.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-29",
					"numinlets" : 1,
					"patching_rect" : [ 488.0, 315.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bypass $1",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-30",
					"numinlets" : 2,
					"patching_rect" : [ 504.0, 315.0, 66.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-31",
					"numinlets" : 2,
					"patching_rect" : [ 133.0, 217.0, 33.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "processed",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-32",
					"numinlets" : 1,
					"patching_rect" : [ 226.0, 334.0, 63.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"id" : "obj-33",
					"numinlets" : 1,
					"patching_rect" : [ 189.0, 414.0, 100.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"id" : "obj-34",
					"numinlets" : 1,
					"patching_rect" : [ 189.0, 391.0, 100.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfplay~ 2",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "bang" ],
					"id" : "obj-35",
					"numinlets" : 2,
					"patching_rect" : [ 133.0, 250.0, 65.0, 18.0 ],
					"save" : [ "#N", "sfplay~", "", 2, 120960, 0, "", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.gain~ 2",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "" ],
					"id" : "obj-36",
					"numinlets" : 4,
					"patching_rect" : [ 133.0, 367.0, 91.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "raw",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-37",
					"numinlets" : 1,
					"patching_rect" : [ 110.0, 311.0, 32.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Argument:",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-38",
					"numinlets" : 1,
					"patching_rect" : [ 11.0, 70.0, 268.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dry",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-39",
					"numinlets" : 1,
					"patching_rect" : [ 322.0, 304.0, 25.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"id" : "obj-40",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 316.0, 248.0, 271.0, 91.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Inlets:",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-41",
					"numinlets" : 1,
					"patching_rect" : [ 11.0, 103.0, 126.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"id" : "obj-42",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 461.0, 148.0, 56.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"id" : "obj-43",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 316.0, 148.0, 135.0, 20.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [ 513.5, 303.0, 571.0, 303.0, 571.0, 362.0, 142.5, 362.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [ 513.5, 276.0, 571.0, 276.0, 571.0, 362.0, 142.5, 362.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [ 513.5, 362.0, 142.5, 362.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 23.5, 408.0, 142.5, 408.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 106.5, 408.0, 142.5, 408.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-36", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-19", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-36", 3 ],
					"hidden" : 0,
					"midpoints" : [ 227.5, 324.0, 214.5, 324.0 ]
				}

			}
 ]
	}

}
