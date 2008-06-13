{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 562.0, 51.0, 637.0, 272.0 ],
		"bglocked" : 0,
		"defrect" : [ 562.0, 51.0, 637.0, 272.0 ],
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
					"maxclass" : "newobj",
					"text" : "jcom.pass text size color frgb brgb rgb2",
					"outlettype" : [ "", "", "", "", "", "", "" ],
					"id" : "obj-1",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 360.0, 70.0, 210.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 7
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcherargs 0. @size 150 14 @text <> @frgb 255 255 255 @brgb 45 45 45 @rgb2 75 75 123",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-2",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 300.0, 20.0, 250.0, 31.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"hidden" : 1,
					"numinlets" : 0,
					"patching_rect" : [ 255.0, 5.0, 28.0, 28.0 ],
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text size frgb brgb rgb2",
					"outlettype" : [ "", "", "", "", "", "" ],
					"id" : "obj-4",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 255.0, 100.0, 158.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 6
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-5",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 60.0, 185.0, 28.0, 28.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"outlettype" : [ "", "" ],
					"id" : "obj-6",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 10,
					"patching_rect" : [ 0.0, 150.0, 79.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 217.0, 161.0, 670.0, 577.0 ],
						"bglocked" : 0,
						"defrect" : [ 217.0, 161.0, 670.0, 577.0 ],
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
									"text" : "loadbang",
									"outlettype" : [ "bang" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 163.0, 267.0, 56.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "f",
									"outlettype" : [ "float" ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 597.0, 228.0, 27.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel bang",
									"outlettype" : [ "bang", "" ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 518.0, 81.0, 51.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "rgb",
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"numinlets" : 0,
									"patching_rect" : [ 459.0, 36.0, 26.0, 26.0 ],
									"numoutlets" : 1,
									"comment" : "rgb2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "rgb2",
									"id" : "obj-9",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 457.0, 15.0, 55.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "frgb",
									"id" : "obj-10",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 360.0, 15.0, 29.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "brgb",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 405.0, 15.0, 55.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"numinlets" : 0,
									"patching_rect" : [ 360.0, 36.0, 26.0, 26.0 ],
									"numoutlets" : 1,
									"comment" : "frgb"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"numinlets" : 0,
									"patching_rect" : [ 404.0, 36.0, 26.0, 26.0 ],
									"numoutlets" : 1,
									"comment" : "brgb"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "text",
									"id" : "obj-14",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 250.0, 15.0, 32.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "float",
									"id" : "obj-15",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 72.0, 543.0, 100.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "lcd 4",
									"id" : "obj-16",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 180.0, 15.0, 35.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "lcd 3",
									"id" : "obj-17",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 144.0, 15.0, 35.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "lcd 2",
									"id" : "obj-18",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 108.0, 15.0, 35.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "lcd 1",
									"id" : "obj-19",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 72.0, 15.0, 35.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "size",
									"id" : "obj-20",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 298.0, 15.0, 29.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend patching_size",
									"outlettype" : [ "" ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 305.0, 442.0, 124.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-22",
									"numinlets" : 0,
									"patching_rect" : [ 305.0, 36.0, 26.0, 26.0 ],
									"numoutlets" : 1,
									"comment" : "size"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-23",
									"numinlets" : 0,
									"patching_rect" : [ 256.0, 36.0, 26.0, 26.0 ],
									"numoutlets" : 1,
									"comment" : "text"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "clip 0. 1.",
									"outlettype" : [ "" ],
									"id" : "obj-24",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 75.0, 435.0, 52.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "f",
									"outlettype" : [ "float" ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 510.0, 154.0, 27.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"outlettype" : [ "", "" ],
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 556.0, 102.0, 57.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-27",
									"numinlets" : 0,
									"patching_rect" : [ 518.0, 36.0, 26.0, 26.0 ],
									"numoutlets" : 1,
									"comment" : "float, set"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p value",
									"outlettype" : [ "float" ],
									"id" : "obj-28",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 75.0, 266.0, 45.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 50.0, 119.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 50.0, 119.0, 600.0, 426.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"outlettype" : [ "", "" ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 105.0, 104.0, 51.0, 18.0 ],
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"outlettype" : [ "", "" ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 104.0, 51.0, 18.0 ],
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 1.",
													"outlettype" : [ "float" ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 158.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "list" ],
													"id" : "obj-4",
													"numinlets" : 0,
													"patching_rect" : [ 50.0, 72.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"numinlets" : 0,
													"patching_rect" : [ 105.0, 72.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-6",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 205.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p draw",
									"outlettype" : [ "" ],
									"id" : "obj-29",
									"fontname" : "Verdana",
									"numinlets" : 7,
									"patching_rect" : [ 20.0, 248.0, 55.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 98.0, 100.0, 1024.0, 607.0 ],
										"bglocked" : 0,
										"defrect" : [ 98.0, 100.0, 1024.0, 607.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set paintrect \\$1 0 \\$3 \\$4 $1 $2 $3",
													"linecount" : 3,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 730.0, 218.0, 75.0, 41.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set paintrect 0 0 \\$1 \\$4 $1 $2 $3",
													"linecount" : 3,
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 802.0, 349.0, 75.0, 41.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set frgb $1 $2 $3",
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 641.0, 306.0, 96.0, 17.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"varname" : "rgb",
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"numinlets" : 0,
													"patching_rect" : [ 802.0, 53.0, 23.0, 23.0 ],
													"numoutlets" : 1,
													"comment" : "rgb2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"numinlets" : 0,
													"patching_rect" : [ 641.0, 53.0, 24.0, 24.0 ],
													"numoutlets" : 1,
													"comment" : "frgb"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"patching_rect" : [ 730.0, 53.0, 23.0, 23.0 ],
													"numoutlets" : 1,
													"comment" : "brgb"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"outlettype" : [ "bang" ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 43.0, 367.0, 22.0, 19.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "frgb 255 255 255",
													"outlettype" : [ "" ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 140.0, 405.0, 97.0, 17.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend write",
													"outlettype" : [ "" ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 83.0, 326.0, 78.0, 19.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"outlettype" : [ "", "" ],
													"id" : "obj-10",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 99.0, 405.0, 36.0, 19.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "moveto 3 $1",
													"outlettype" : [ "" ],
													"id" : "obj-11",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 407.0, 195.0, 72.0, 17.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "font Verdana $1",
													"outlettype" : [ "" ],
													"id" : "obj-12",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 489.0, 195.0, 89.0, 17.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"outlettype" : [ "int" ],
													"id" : "obj-13",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 407.0, 173.0, 27.0, 19.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"outlettype" : [ "int" ],
													"id" : "obj-14",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 489.0, 173.0, 27.0, 19.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"outlettype" : [ "bang", "" ],
													"id" : "obj-15",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 66.0, 224.0, 28.0, 19.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"outlettype" : [ "", "" ],
													"id" : "obj-16",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 57.0, 405.0, 36.0, 19.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 0.8",
													"outlettype" : [ "float" ],
													"id" : "obj-17",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 407.0, 148.0, 37.0, 19.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 0.78",
													"outlettype" : [ "float" ],
													"id" : "obj-18",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 489.0, 148.0, 41.0, 19.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack",
													"outlettype" : [ "int", "int" ],
													"id" : "obj-19",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 380.0, 115.0, 45.0, 19.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"id" : "obj-20",
													"numinlets" : 0,
													"patching_rect" : [ 416.0, 53.0, 23.0, 23.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "$1 0",
													"outlettype" : [ "" ],
													"id" : "obj-21",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 272.0, 225.0, 31.0, 17.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 1.",
													"outlettype" : [ "float" ],
													"id" : "obj-22",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 272.0, 203.0, 29.0, 19.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"outlettype" : [ "", "" ],
													"id" : "obj-23",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 291.0, 163.0, 52.0, 19.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "float" ],
													"id" : "obj-24",
													"numinlets" : 0,
													"patching_rect" : [ 272.0, 53.0, 23.0, 23.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim 20",
													"outlettype" : [ "" ],
													"id" : "obj-25",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 248.0, 331.0, 46.0, 19.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "paintrect $1 0 $3 $4 45 45 45",
													"outlettype" : [ "" ],
													"id" : "obj-26",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 278.0, 479.0, 172.0, 17.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "paintrect 0 0 $1 $4 75 75 123",
													"outlettype" : [ "" ],
													"id" : "obj-27",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 248.0, 451.0, 165.0, 17.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"outlettype" : [ "", "" ],
													"id" : "obj-28",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 248.0, 269.0, 36.0, 19.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"outlettype" : [ "bang", "" ],
													"id" : "obj-29",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 588.0, 162.0, 28.0, 19.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"outlettype" : [ "", "" ],
													"id" : "obj-30",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 248.0, 300.0, 39.0, 19.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"id" : "obj-31",
													"numinlets" : 0,
													"patching_rect" : [ 588.0, 53.0, 23.0, 23.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-32",
													"numinlets" : 1,
													"patching_rect" : [ 248.0, 527.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "list" ],
													"id" : "obj-33",
													"numinlets" : 0,
													"patching_rect" : [ 248.0, 53.0, 23.0, 23.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-22", 1 ],
													"hidden" : 0,
													"midpoints" : [ 300.5, 192.0, 291.5, 192.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [ 739.5, 472.0, 287.5, 472.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 1 ],
													"destination" : [ "obj-30", 1 ],
													"hidden" : 0,
													"midpoints" : [ 606.5, 298.0, 277.5, 298.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [ 498.5, 501.0, 257.5, 501.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [ 287.5, 510.0, 257.5, 510.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [ 811.5, 432.0, 257.5, 432.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [ 281.5, 254.0, 257.5, 254.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [ 597.5, 264.0, 257.5, 264.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 650.5, 399.0, 149.5, 399.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [ 416.5, 395.0, 125.5, 395.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-16", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 1 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 257.5, 357.0, 52.5, 357.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-30",
									"numinlets" : 1,
									"patching_rect" : [ 75.0, 500.0, 26.0, 26.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-31",
									"numinlets" : 1,
									"patching_rect" : [ 20.0, 500.0, 26.0, 26.0 ],
									"numoutlets" : 0,
									"comment" : "to lcd"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b getsize",
									"outlettype" : [ "bang", "" ],
									"id" : "obj-32",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 227.0, 303.0, 61.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route size update",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-33",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 189.0, 217.0, 96.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-34",
									"numinlets" : 0,
									"patching_rect" : [ 189.0, 36.0, 26.0, 26.0 ],
									"numoutlets" : 1,
									"comment" : "lcd 4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "int" ],
									"id" : "obj-35",
									"numinlets" : 0,
									"patching_rect" : [ 151.0, 36.0, 26.0, 26.0 ],
									"numoutlets" : 1,
									"comment" : "lcd 3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "list" ],
									"id" : "obj-36",
									"numinlets" : 0,
									"patching_rect" : [ 113.0, 36.0, 26.0, 26.0 ],
									"numoutlets" : 1,
									"comment" : "lcd 2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "list" ],
									"id" : "obj-37",
									"numinlets" : 0,
									"patching_rect" : [ 75.0, 36.0, 26.0, 26.0 ],
									"numoutlets" : 1,
									"comment" : "lcd 1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "float, set, bang",
									"id" : "obj-38",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 520.0, 15.0, 84.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "to lcd",
									"id" : "obj-39",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 543.0, 100.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"midpoints" : [ 84.5, 480.0, 631.0, 480.0, 631.0, 148.0, 527.5, 148.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [ 84.5, 480.0, 631.0, 480.0, 631.0, 222.0, 614.5, 222.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 314.5, 259.0, 236.5, 259.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 565.5, 141.0, 519.5, 141.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 603.5, 141.0, 519.5, 141.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-28", 1 ],
									"hidden" : 0,
									"midpoints" : [ 198.5, 241.0, 110.5, 241.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 606.5, 424.0, 84.5, 424.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-29", 6 ],
									"hidden" : 0,
									"midpoints" : [ 468.5, 194.0, 65.5, 194.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-29", 5 ],
									"hidden" : 0,
									"midpoints" : [ 413.5, 188.0, 59.5, 188.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-29", 4 ],
									"hidden" : 0,
									"midpoints" : [ 369.5, 182.0, 53.5, 182.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-29", 3 ],
									"hidden" : 0,
									"midpoints" : [ 198.5, 236.0, 47.5, 236.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-29", 2 ],
									"hidden" : 0,
									"midpoints" : [ 265.5, 163.0, 41.5, 163.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-29", 1 ],
									"hidden" : 0,
									"midpoints" : [ 519.5, 175.0, 35.5, 175.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 1 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 278.5, 348.0, 29.5, 348.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 84.5, 124.0, 29.5, 124.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 172.5, 299.0, 236.5, 299.0 ]
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
					"maxclass" : "lcd",
					"outlettype" : [ "list", "list", "int", "" ],
					"id" : "obj-7",
					"local" : 0,
					"border" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 150.0, 14.0 ],
					"numoutlets" : 4
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [ 540.5, 64.0, 369.5, 64.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 5 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [ 528.666687, 93.0, 264.5, 93.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [ 401.333344, 93.0, 264.5, 93.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [ 369.5, 93.0, 264.5, 93.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 2 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [ 433.166656, 93.0, 264.5, 93.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 3 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [ 465.0, 93.0, 264.5, 93.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 4 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [ 496.833344, 93.0, 264.5, 93.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [ 309.5, 79.0, 264.5, 79.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 5 ],
					"destination" : [ "obj-6", 9 ],
					"hidden" : 1,
					"midpoints" : [ 403.5, 146.0, 69.5, 146.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 4 ],
					"destination" : [ "obj-6", 8 ],
					"hidden" : 1,
					"midpoints" : [ 375.700012, 142.0, 62.833332, 142.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 3 ],
					"destination" : [ "obj-6", 7 ],
					"hidden" : 1,
					"midpoints" : [ 347.899994, 139.0, 56.166668, 139.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 2 ],
					"destination" : [ "obj-6", 6 ],
					"hidden" : 1,
					"midpoints" : [ 320.100006, 134.0, 49.5, 134.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-6", 5 ],
					"hidden" : 1,
					"midpoints" : [ 292.299988, 129.0, 42.833332, 129.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-6", 4 ],
					"hidden" : 1,
					"midpoints" : [ 264.5, 124.0, 36.166668, 124.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 3 ],
					"destination" : [ "obj-6", 3 ],
					"hidden" : 1,
					"midpoints" : [ 140.5, 37.0, 29.5, 37.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 2 ],
					"destination" : [ "obj-6", 2 ],
					"hidden" : 1,
					"midpoints" : [ 96.833336, 30.0, 22.833334, 30.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 1,
					"midpoints" : [ 53.166668, 23.0, 16.166666, 23.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [ 9.5, 173.0, -8.0, 173.0, -8.0, -6.0, 9.5, -6.0 ]
				}

			}
 ]
	}

}
