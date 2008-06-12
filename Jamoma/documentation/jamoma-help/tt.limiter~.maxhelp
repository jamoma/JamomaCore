{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 30.0, 47.0, 743.0, 661.0 ],
		"bglocked" : 0,
		"defrect" : [ 30.0, 47.0, 743.0, 661.0 ],
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
					"maxclass" : "message",
					"text" : "set $1",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"hidden" : 1,
					"patching_rect" : [ 545.0, 339.0, 39.0, 16.0 ],
					"id" : "obj-1",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 17.0, 334.0, 15.0, 15.0 ],
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bypass $1",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 17.0, 351.0, 59.0, 16.0 ],
					"id" : "obj-3",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bypass the limiter",
					"fontsize" : 10,
					"patching_rect" : [ 163.0, 339.0, 175.0, 18.0 ],
					"id" : "obj-4",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 8.0, 332.0, 402.0, 36.0 ],
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 17.0, 371.0, 15.0, 15.0 ],
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bypass_dcblocker $1",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 17.0, 388.0, 112.0, 16.0 ],
					"id" : "obj-7",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 505.0, 324.0, 27.0, 55.0 ],
					"id" : "obj-8",
					"numinlets" : 2,
					"orientation" : 2,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This object is currently in use in the open source Jamoma project on sourceforge.",
					"linecount" : 2,
					"fontsize" : 10,
					"patching_rect" : [ 12.0, 568.0, 357.0, 30.0 ],
					"id" : "obj-9",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This object was initially an off-shoot from jhno's limi~ object for MaxMSP. This variant supports attributes, gain-related values specified in decibels, and a built in DC Blocker.",
					"linecount" : 3,
					"fontsize" : 10,
					"patching_rect" : [ 12.0, 526.0, 369.0, 42.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Description",
					"fontsize" : 17.334082,
					"patching_rect" : [ 10.0, 491.0, 253.0, 28.0 ],
					"id" : "obj-11",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 8.0, 489.0, 402.0, 29.0 ],
					"id" : "obj-12",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.501961, 0.54902, 0.733333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 8.0, 521.0, 402.0, 77.0 ],
					"id" : "obj-13",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "reset the history kept by the object internally",
					"linecount" : 2,
					"fontsize" : 10,
					"patching_rect" : [ 56.0, 449.0, 177.0, 30.0 ],
					"id" : "obj-14",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 17.0, 454.0, 38.0, 16.0 ],
					"id" : "obj-15",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the threshold, preamp, and postamp attributes are specified in decibels (0 dB = full scale).",
					"linecount" : 2,
					"fontsize" : 10,
					"patching_rect" : [ 163.0, 264.0, 246.0, 30.0 ],
					"id" : "obj-16",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the release attribute is specified in milliseconds.",
					"linecount" : 2,
					"fontsize" : 10,
					"patching_rect" : [ 163.0, 301.0, 134.0, 30.0 ],
					"id" : "obj-17",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 1000.",
					"outlettype" : [ "float" ],
					"fontsize" : 10,
					"patching_rect" : [ 88.0, 314.0, 47.0, 18.0 ],
					"id" : "obj-18",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10,
					"hbgcolor" : [ 0.0, 0.721569, 0.007843, 1.0 ],
					"patching_rect" : [ 88.0, 297.0, 68.0, 18.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"htextcolor" : [ 0.835294, 0.019608, 0.372549, 1.0 ],
					"id" : "obj-19",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10,
					"triangle" : 0,
					"patching_rect" : [ 17.0, 297.0, 48.0, 18.0 ],
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-20",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "release $1",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 17.0, 314.0, 60.0, 16.0 ],
					"id" : "obj-21",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 8.0, 295.0, 402.0, 36.0 ],
					"id" : "obj-22",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "lookahead $1",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 18.0, 167.0, 75.0, 16.0 ],
					"id" : "obj-23",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend mode",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 17.0, 129.0, 80.0, 18.0 ],
					"id" : "obj-24",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The number of samples (up to 256) to look ahead into the signal to see what is coming.",
					"linecount" : 2,
					"fontsize" : 10,
					"patching_rect" : [ 163.0, 151.0, 240.0, 30.0 ],
					"id" : "obj-25",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "gain",
					"fontsize" : 10,
					"patching_rect" : [ 547.0, 206.0, 30.0, 18.0 ],
					"id" : "obj-26",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p sound_player",
					"outlettype" : [ "signal" ],
					"fontsize" : 10,
					"patching_rect" : [ 454.0, 181.0, 91.0, 18.0 ],
					"id" : "obj-27",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 374.0, 251.0, 400.0, 326.0 ],
						"bglocked" : 0,
						"defrect" : [ 374.0, 251.0, 400.0, 326.0 ],
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
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10,
									"patching_rect" : [ 60.0, 105.0, 35.0, 18.0 ],
									"triscale" : 0.9,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-1",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"outlettype" : [ "bang" ],
									"fontsize" : 10,
									"patching_rect" : [ 278.0, 47.0, 54.0, 18.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "replace",
									"outlettype" : [ "" ],
									"fontsize" : 10,
									"patching_rect" : [ 224.0, 90.0, 44.0, 16.0 ],
									"id" : "obj-3",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "loop 1, startloop",
									"outlettype" : [ "" ],
									"fontsize" : 10,
									"patching_rect" : [ 278.0, 90.0, 90.0, 16.0 ],
									"id" : "obj-4",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sig~ 1.5",
									"outlettype" : [ "signal" ],
									"fontsize" : 10,
									"patching_rect" : [ 60.0, 123.0, 50.0, 18.0 ],
									"id" : "obj-5",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "groove~ foo",
									"outlettype" : [ "signal", "signal" ],
									"fontsize" : 10,
									"patching_rect" : [ 60.0, 170.0, 69.0, 18.0 ],
									"id" : "obj-6",
									"numinlets" : 3,
									"fontname" : "Verdana",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "replace drumLoop.aif",
									"outlettype" : [ "" ],
									"fontsize" : 10,
									"patching_rect" : [ 120.0, 90.0, 113.0, 16.0 ],
									"id" : "obj-7",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "buffer~ foo 500",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10,
									"patching_rect" : [ 120.0, 110.0, 87.0, 18.0 ],
									"id" : "obj-8",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 60.0, 59.0, 15.0, 15.0 ],
									"id" : "obj-9",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 60.0, 213.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 233.5, 107.0, 129.5, 107.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
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
					"maxclass" : "message",
					"text" : "startwindow",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 470.0, 421.0, 80.0, 16.0 ],
					"id" : "obj-28",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print dumpout",
					"fontsize" : 10,
					"patching_rect" : [ 632.0, 312.0, 88.0, 18.0 ],
					"id" : "obj-29",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "atodb",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 88.0, 277.0, 37.0, 18.0 ],
					"id" : "obj-30",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"patching_rect" : [ 470.0, 387.0, 33.0, 33.0 ],
					"id" : "obj-31",
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-> ->",
					"fontsize" : 10,
					"patching_rect" : [ 462.0, 71.0, 37.0, 18.0 ],
					"id" : "obj-32",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10,
					"patching_rect" : [ 454.0, 163.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-33",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "preset",
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"fontsize" : 12.754706,
					"bubblesize" : 8,
					"spacing" : 2,
					"patching_rect" : [ 454.0, 84.0, 56.0, 27.0 ],
					"margin" : 4,
					"id" : "obj-34",
					"numinlets" : 1,
					"numoutlets" : 4,
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 30, "<invalid>", 488, "flonum", "float", 11.0, ";", 31, 150, 18, "number", "int", 10, ";", 52, 297, 88, "flonum", "float", 3.0, ";", 32, 260, 88, "flonum", "float", 0.5, ";", 34, 252, 471, "<invalid>", "float", 5.30237, ";", 36, 463, 454, "flonum", "float", 0.31405, ";", 38, 163, 454, "flonum", "float", 2.3, ";" ]
						}
, 						{
							"number" : 2,
							"data" : [ 30, "<invalid>", 488, "flonum", "float", 11.0, ";", 31, 150, 18, "number", "int", 441, ";", 52, 297, 88, "flonum", "float", 0.56, ";", 32, 260, 88, "flonum", "float", 0.5, ";", 34, 252, 471, "<invalid>", "float", 3.12, ";", 36, 463, 454, "flonum", "float", 0.5, ";", 38, 163, 454, "flonum", "float", 1.5, ";" ]
						}
, 						{
							"number" : 3,
							"data" : [ 30, "<invalid>", 488, "flonum", "float", 300.0, ";", 31, 150, 18, "number", "int", 100, ";", 52, 297, 88, "flonum", "float", 12.0, ";", 32, 260, 88, "flonum", "float", 0.5, ";", 34, 252, 471, "<invalid>", "float", 234.863205, ";", 36, 463, 454, "flonum", "float", 0.5, ";", 38, 163, 454, "flonum", "float", 0.85, ";" ]
						}
, 						{
							"number" : 4,
							"data" : [ 30, "<invalid>", 488, "flonum", "float", 111111.0, ";", 31, 150, 18, "number", "int", 441, ";", 52, 297, 88, "flonum", "float", 48.0, ";", 32, 260, 88, "flonum", "float", 0.5, ";", 34, 252, 471, "<invalid>", "float", 15754.263672, ";", 36, 463, 454, "flonum", "float", 0.5, ";", 38, 163, 454, "flonum", "float", 0.5, ";" ]
						}
, 						{
							"number" : 5,
							"data" : [ 30, "<invalid>", 488, "flonum", "float", 11111111.0, ";", 31, 150, 18, "number", "int", 441, ";", 52, 297, 88, "flonum", "float", 87.0, ";", 32, 260, 88, "flonum", "float", 0.5, ";", 34, 252, 471, "<invalid>", "float", 2087046.375, ";", 36, 463, 454, "flonum", "float", 0.5, ";", 38, 163, 454, "flonum", "float", 0.35, ";" ]
						}
, 						{
							"number" : 6,
							"data" : [ 30, "<invalid>", 488, "flonum", "float", 11.0, ";", 31, 150, 18, "number", "int", 10, ";", 52, 297, 88, "flonum", "float", 3.0, ";", 32, 260, 88, "flonum", "float", 0.5, ";", 34, 252, 471, "<invalid>", "float", 0.723294, ";", 36, 463, 454, "flonum", "float", 0.12817, ";", 38, 163, 454, "flonum", "float", 2.3, ";" ]
						}
, 						{
							"number" : 7,
							"data" : [ 30, "<invalid>", 488, "flonum", "float", 11.0, ";", 31, 150, 18, "number", "int", 441, ";", 52, 297, 88, "flonum", "float", 0.56, ";", 32, 260, 88, "flonum", "float", 0.5, ";", 34, 252, 471, "<invalid>", "float", 0.00434, ";", 36, 463, 454, "flonum", "float", 0.004212, ";", 38, 163, 454, "flonum", "float", 1.5, ";" ]
						}
, 						{
							"number" : 8,
							"data" : [ 30, "<invalid>", 488, "flonum", "float", 300.0, ";", 31, 150, 18, "number", "int", 100, ";", 52, 297, 88, "flonum", "float", 12.0, ";", 32, 260, 88, "flonum", "float", 0.5, ";", 34, 252, 471, "<invalid>", "float", 115.008751, ";", 36, 463, 454, "flonum", "float", 0.272838, ";", 38, 163, 454, "flonum", "float", 0.85, ";" ]
						}
, 						{
							"number" : 9,
							"data" : [ 30, "<invalid>", 488, "flonum", "float", 111111.0, ";", 31, 150, 18, "number", "int", 441, ";", 52, 297, 88, "flonum", "float", 48.0, ";", 32, 260, 88, "flonum", "float", 0.5, ";", 34, 252, 471, "<invalid>", "float", 17612.173828, ";", 36, 463, 454, "flonum", "float", 0.5, ";", 38, 163, 454, "flonum", "float", 0.5, ";" ]
						}
, 						{
							"number" : 10,
							"data" : [ 30, "<invalid>", 488, "flonum", "float", 11111111.0, ";", 31, 150, 18, "number", "int", 441, ";", 52, 297, 88, "flonum", "float", 87.0, ";", 32, 260, 88, "flonum", "float", 0.5, ";", 34, 252, 471, "<invalid>", "float", 1290360.5, ";", 36, 463, 454, "flonum", "float", 0.5, ";", 38, 163, 454, "flonum", "float", 0.35, ";" ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10,
					"patching_rect" : [ 454.0, 463.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-35",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numleds" : 20,
					"patching_rect" : [ 454.0, 448.0, 80.0, 13.0 ],
					"id" : "obj-36",
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"interval" : 100,
					"numoutlets" : 1,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10,
					"patching_rect" : [ 471.0, 252.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-37",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numleds" : 20,
					"patching_rect" : [ 471.0, 237.0, 80.0, 13.0 ],
					"id" : "obj-38",
					"numinlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"interval" : 100,
					"numoutlets" : 1,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10,
					"hbgcolor" : [ 0.0, 0.721569, 0.007843, 1.0 ],
					"patching_rect" : [ 88.0, 260.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"htextcolor" : [ 0.356863, 0.019608, 0.372549, 1.0 ],
					"id" : "obj-39",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10,
					"hbgcolor" : [ 0.0, 0.721569, 0.007843, 1.0 ],
					"triangle" : 0,
					"patching_rect" : [ 18.0, 150.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"minimum" : 1,
					"htextcolor" : [ 0.835294, 0.019608, 0.372549, 1.0 ],
					"id" : "obj-40",
					"numinlets" : 1,
					"maximum" : 441,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10,
					"hbgcolor" : [ 0.0, 0.721569, 0.007843, 1.0 ],
					"patching_rect" : [ 488.0, 204.0, 57.0, 18.0 ],
					"triscale" : 0.9,
					"htextcolor" : [ 0.356863, 0.019608, 0.372549, 1.0 ],
					"id" : "obj-41",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 1.",
					"outlettype" : [ "signal" ],
					"fontsize" : 10,
					"patching_rect" : [ 454.0, 204.0, 43.0, 18.0 ],
					"id" : "obj-42",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tt.limiter~ @preamp 0. @postamp 0.",
					"outlettype" : [ "signal", "signal", "" ],
					"fontsize" : 10,
					"patching_rect" : [ 454.0, 289.0, 233.0, 18.0 ],
					"id" : "obj-43",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 471.0, 324.0, 27.0, 55.0 ],
					"id" : "obj-44",
					"numinlets" : 2,
					"orientation" : 2,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Demo Presets",
					"fontsize" : 10,
					"patching_rect" : [ 447.0, 59.0, 82.0, 18.0 ],
					"id" : "obj-45",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "playback speed",
					"fontsize" : 10,
					"patching_rect" : [ 492.0, 164.0, 102.0, 18.0 ],
					"id" : "obj-46",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Messages",
					"fontsize" : 17.334082,
					"patching_rect" : [ 10.0, 414.0, 253.0, 28.0 ],
					"id" : "obj-47",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 8.0, 412.0, 402.0, 29.0 ],
					"id" : "obj-48",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.501961, 0.54902, 0.733333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 8.0, 444.0, 402.0, 36.0 ],
					"id" : "obj-49",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10,
					"triangle" : 0,
					"patching_rect" : [ 17.0, 260.0, 48.0, 18.0 ],
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-50",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "threshold $1",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 17.0, 277.0, 71.0, 16.0 ],
					"id" : "obj-51",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 8.0, 258.0, 402.0, 36.0 ],
					"id" : "obj-52",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A gain control that is applied (in decibels) after the limiting process is complete.",
					"linecount" : 2,
					"fontsize" : 10,
					"patching_rect" : [ 163.0, 226.0, 227.0, 30.0 ],
					"id" : "obj-53",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A gain control that is applied (in decibels) prior to the signal being limited.",
					"linecount" : 2,
					"fontsize" : 10,
					"patching_rect" : [ 163.0, 188.0, 229.0, 30.0 ],
					"id" : "obj-54",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "preamp $1",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 17.0, 204.0, 62.0, 16.0 ],
					"id" : "obj-55",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 10,
					"items" : [ "exponential", ",", "linear" ],
					"patching_rect" : [ 17.0, 110.0, 88.0, 18.0 ],
					"id" : "obj-56",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Set the function to be used for calculating the scaling.",
					"linecount" : 2,
					"fontsize" : 10,
					"patching_rect" : [ 163.0, 116.0, 153.0, 30.0 ],
					"id" : "obj-57",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10,
					"triangle" : 0,
					"patching_rect" : [ 17.0, 223.0, 48.0, 18.0 ],
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-58",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "postamp $1",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 17.0, 240.0, 67.0, 16.0 ],
					"id" : "obj-59",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10,
					"triangle" : 0,
					"patching_rect" : [ 17.0, 187.0, 48.0, 18.0 ],
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-60",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attributes",
					"fontsize" : 17.334082,
					"patching_rect" : [ 10.0, 80.0, 253.0, 28.0 ],
					"id" : "obj-61",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Look-ahead limiter with built-in DC blocking and Overdrive",
					"fontsize" : 10,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 13.0, 51.0, 382.0, 18.0 ],
					"id" : "obj-62",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tt.limiter~",
					"fontsize" : 23.11211,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 13.0, 14.0, 309.0, 35.0 ],
					"id" : "obj-63",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 8.0, 78.0, 402.0, 29.0 ],
					"id" : "obj-64",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.501961, 0.54902, 0.733333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 8.0, 110.0, 402.0, 36.0 ],
					"id" : "obj-65",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 8.0, 147.0, 402.0, 36.0 ],
					"id" : "obj-66",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 8.0, 184.0, 402.0, 36.0 ],
					"id" : "obj-67",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 8.0, 221.0, 402.0, 36.0 ],
					"id" : "obj-68",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bypass the internal DC Blocking component",
					"linecount" : 2,
					"fontsize" : 10,
					"patching_rect" : [ 163.0, 375.0, 127.0, 30.0 ],
					"id" : "obj-69",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 8.0, 369.0, 402.0, 36.0 ],
					"id" : "obj-70",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 8.0, 9.0, 402.0, 60.0 ],
					"id" : "obj-71",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-43", 2 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [ 463.5, 283.0, 463.5, 283.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-31", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 570.5, 315.0, 514.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
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
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [ 463.5, 229.0, 480.5, 229.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 463.5, 315.0, 480.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 2 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [ 97.5, 332.0, 26.5, 295.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 61.0, 127.0, 26.5, 127.0 ]
				}

			}
 ]
	}

}
