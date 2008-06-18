{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 155.0, 356.0, 483.0, 440.0 ],
		"bglocked" : 0,
		"defrect" : [ 155.0, 356.0, 483.0, 440.0 ],
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
					"text" : "p thru",
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 55.0, 107.0, 39.0, 18.0 ],
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 259.0, 132.0, 171.0, 179.0 ],
						"bglocked" : 0,
						"defrect" : [ 259.0, 132.0, 171.0, 179.0 ],
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
									"maxclass" : "outlet",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.0, 72.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-2",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 55.0, 30.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
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
					"maxclass" : "comment",
					"text" : "Dump output",
					"fontname" : "Verdana",
					"id" : "obj-2",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"patching_rect" : [ 67.0, 359.0, 74.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p video-synthesis-stuff",
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 313.0, 179.0, 122.0, 18.0 ],
					"outlettype" : [ "jit_matrix" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 576.0, 77.0, 450.0, 380.0 ],
						"bglocked" : 0,
						"defrect" : [ 576.0, 77.0, 450.0, 380.0 ],
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
									"text" : "jcom.oscroute /synth",
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 37.0, 48.0, 114.0, 18.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak dim 320 240",
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 3,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 203.0, 212.0, 122.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "planecount $1",
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 37.0, 213.0, 79.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"id" : "obj-4",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 141.0, 139.0, 26.0, 18.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 71.0, 139.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qmetro 2",
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 71.0, 163.0, 80.0, 18.0 ],
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.noise 1 char 320 240",
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 37.0, 246.0, 127.0, 18.0 ],
									"outlettype" : [ "jit_matrix", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /noise/planes /noise/on /noise/rate /noise/size/x /noise/size/y",
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 6,
									"patching_rect" : [ 37.0, 85.0, 393.0, 18.0 ],
									"outlettype" : [ "", "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-9",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 37.0, 21.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 37.0, 301.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 212.5, 238.0, 46.5, 238.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
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
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 121.300003, 158.0, 80.5, 158.0 ]
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
									"source" : [ "obj-8", 2 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [ 196.100006, 159.0, 141.5, 159.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 3 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 4 ],
									"destination" : [ "obj-2", 2 ],
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
					"maxclass" : "newobj",
					"text" : "p video-file-stuff",
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 4,
					"patching_rect" : [ 195.0, 179.0, 91.0, 18.0 ],
					"outlettype" : [ "jit_matrix", "", "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 18.0, 44.0, 1043.0, 593.0 ],
						"bglocked" : 0,
						"defrect" : [ 18.0, 44.0, 1043.0, 593.0 ],
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
									"maxclass" : "toggle",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 559.0, 313.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 0",
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 559.0, 294.0, 65.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "enable $1 1",
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 559.0, 332.0, 67.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 559.0, 351.0, 49.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 628.0, 411.0, 15.0, 15.0 ],
									"comment" : "Audio-right"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 559.0, 410.0, 15.0, 15.0 ],
									"comment" : "Audio-left"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p pitch-shifting",
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 3,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 559.0, 372.0, 83.0, 18.0 ],
									"outlettype" : [ "signal", "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 456.0, 121.0, 644.0, 305.0 ],
										"bglocked" : 0,
										"defrect" : [ 456.0, 121.0, 644.0, 305.0 ],
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
													"maxclass" : "inlet",
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 83.0, 56.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"fontname" : "Verdana",
													"id" : "obj-2",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"patching_rect" : [ 286.0, 75.0, 27.0, 18.0 ],
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "!/ 1.",
													"fontname" : "Verdana",
													"id" : "obj-3",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"patching_rect" : [ 503.0, 105.0, 30.0, 18.0 ],
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "pitch scaling factor",
													"linecount" : 3,
													"fontname" : "Verdana",
													"id" : "obj-4",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 0,
													"patching_rect" : [ 459.0, 104.0, 51.0, 42.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"fontname" : "Verdana",
													"triscale" : 0.9,
													"id" : "obj-5",
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"patching_rect" : [ 286.0, 96.0, 35.0, 18.0 ],
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"outlettype" : [ "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate~ 2",
													"fontname" : "Verdana",
													"id" : "obj-6",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"patching_rect" : [ 286.0, 126.0, 48.0, 18.0 ],
													"outlettype" : [ "signal", "signal" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate~ 2",
													"fontname" : "Verdana",
													"id" : "obj-7",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"patching_rect" : [ 50.0, 125.0, 48.0, 18.0 ],
													"outlettype" : [ "signal", "signal" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pfft~ jcom.gizmo_transpose 4096 4",
													"fontname" : "Verdana",
													"id" : "obj-8",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"patching_rect" : [ 319.0, 158.0, 194.0, 18.0 ],
													"outlettype" : [ "signal" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"fontname" : "Verdana",
													"triscale" : 0.9,
													"id" : "obj-9",
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"minimum" : 0.0,
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"patching_rect" : [ 503.0, 127.0, 35.0, 18.0 ],
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pfft~ jcom.gizmo_transpose 4096 4",
													"fontname" : "Verdana",
													"id" : "obj-10",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"patching_rect" : [ 83.0, 158.0, 194.0, 18.0 ],
													"outlettype" : [ "signal" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "spigot~ from-movie",
													"fontname" : "Verdana",
													"id" : "obj-11",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"patching_rect" : [ 83.0, 75.0, 108.0, 18.0 ],
													"outlettype" : [ "signal", "signal" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-12",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 503.0, 56.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-13",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 286.0, 56.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-14",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 286.0, 191.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-15",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 191.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 295.5, 115.0, 59.5, 115.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 92.5, 184.0, 59.0, 184.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [ 512.5, 150.0, 267.5, 150.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [ 328.5, 184.0, 295.0, 184.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [ 181.5, 120.0, 324.5, 120.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.pass /read",
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 138.0, 63.0, 89.0, 18.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /file",
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 138.0, 41.0, 101.0, 18.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.thru",
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 740.0, 240.0, 57.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "cancelframedump",
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 740.0, 155.0, 97.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"patching_rect" : [ 676.0, 123.0, 42.0, 18.0 ],
									"outlettype" : [ "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "framedump",
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 676.0, 155.0, 66.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend looppoints",
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 618.0, 189.0, 104.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r global_tomovie",
									"fontname" : "Verdana",
									"id" : "obj-15",
									"numinlets" : 0,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 45.0, 282.0, 92.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_tomovie",
									"fontname" : "Verdana",
									"id" : "obj-16",
									"numinlets" : 0,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 36.0, 260.0, 77.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p print-stuff",
									"fontname" : "Verdana",
									"id" : "obj-17",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 274.0, 330.0, 68.0, 18.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 310.0, 252.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 310.0, 252.0 ],
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
													"text" : "jcom.pass read moviedim duration",
													"fontname" : "Verdana",
													"id" : "obj-1",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 4,
													"patching_rect" : [ 50.0, 50.0, 181.0, 18.0 ],
													"outlettype" : [ "", "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "print",
													"fontname" : "Verdana",
													"id" : "obj-2",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 87.0, 32.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-3",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 2 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 354.0, 192.0, 15.0, 15.0 ],
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack dim 320 240",
									"fontname" : "Verdana",
									"id" : "obj-19",
									"numinlets" : 3,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 354.0, 212.0, 98.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"id" : "obj-20",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 578.0, 148.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"id" : "obj-21",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 578.0, 168.0, 35.0, 18.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "vol $1",
									"fontname" : "Verdana",
									"id" : "obj-22",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 560.0, 189.0, 39.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.pass time duration",
									"fontname" : "Verdana",
									"id" : "obj-23",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"patching_rect" : [ 344.0, 368.0, 129.0, 18.0 ],
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p thru",
									"fontname" : "Verdana",
									"id" : "obj-24",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 344.0, 416.0, 39.0, 18.0 ],
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 20.0, 74.0, 155.0, 154.0 ],
										"bglocked" : 0,
										"defrect" : [ 20.0, 74.0, 155.0, 154.0 ],
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
													"maxclass" : "outlet",
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 74.0, 65.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-2",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 74.0, 35.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p thru",
									"fontname" : "Verdana",
									"id" : "obj-25",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 173.0, 453.0, 39.0, 18.0 ],
									"outlettype" : [ "getmoviedim" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 20.0, 74.0, 155.0, 154.0 ],
										"bglocked" : 0,
										"defrect" : [ 20.0, 74.0, 155.0, 154.0 ],
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
													"maxclass" : "outlet",
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 74.0, 65.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-2",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 74.0, 35.0, 15.0, 15.0 ],
													"outlettype" : [ "getmoviedim" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t getduration getmoviedim",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-26",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 173.0, 400.0, 76.0, 30.0 ],
									"outlettype" : [ "getduration", "getmoviedim" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route read moviedim framedump",
									"fontname" : "Verdana",
									"id" : "obj-27",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 4,
									"patching_rect" : [ 173.0, 367.0, 173.0, 18.0 ],
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t gettime",
									"fontname" : "Verdana",
									"id" : "obj-28",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 216.0, 300.0, 54.0, 18.0 ],
									"outlettype" : [ "gettime" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim 250",
									"fontname" : "Verdana",
									"id" : "obj-29",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 216.0, 278.0, 52.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route native",
									"fontname" : "Verdana",
									"id" : "obj-30",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 354.0, 168.0, 69.0, 18.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"id" : "obj-31",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 515.0, 168.0, 35.0, 18.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "time $1",
									"fontname" : "Verdana",
									"id" : "obj-32",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 502.0, 189.0, 47.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"id" : "obj-33",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 457.0, 168.0, 35.0, 18.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rate $1",
									"fontname" : "Verdana",
									"id" : "obj-34",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 444.0, 189.0, 44.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"id" : "obj-35",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 312.0, 172.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "loop $1",
									"fontname" : "Verdana",
									"id" : "obj-36",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 299.0, 193.0, 45.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t stop 0",
									"fontname" : "Verdana",
									"id" : "obj-37",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 240.0, 204.0, 47.0, 18.0 ],
									"outlettype" : [ "stop", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 start",
									"fontname" : "Verdana",
									"id" : "obj-38",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 225.0, 182.0, 49.0, 18.0 ],
									"outlettype" : [ "int", "start" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"fontname" : "Verdana",
									"id" : "obj-39",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"patching_rect" : [ 225.0, 159.0, 42.0, 18.0 ],
									"outlettype" : [ "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"id" : "obj-40",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 225.0, 134.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qmetro 2",
									"fontname" : "Verdana",
									"id" : "obj-41",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 225.0, 233.0, 54.0, 18.0 ],
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "file_size",
									"fontname" : "Verdana",
									"types" : [  ],
									"id" : "obj-42",
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"patching_rect" : [ 354.0, 145.0, 62.0, 18.0 ],
									"outlettype" : [ "int", "", "" ],
									"items" : [ "native", "size", ",", 640, 480, ",", 320, 240, ",", 160, 120, ",", 80, 60 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend dim",
									"fontname" : "Verdana",
									"id" : "obj-43",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 368.0, 241.0, 71.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.qt.movie @autostart 0",
									"fontname" : "Verdana",
									"id" : "obj-44",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 138.0, 330.0, 134.0, 18.0 ],
									"outlettype" : [ "jit_matrix", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /read /on /loop /size /rate /counter /audio /loop_points /framedump",
									"fontname" : "Verdana",
									"id" : "obj-45",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 10,
									"patching_rect" : [ 212.0, 88.0, 533.0, 18.0 ],
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-46",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 138.0, 19.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-47",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 138.0, 528.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-48",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 344.0, 528.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "I don't expect this to work yet, since we cannot mix jcom.out and jcom.out~",
									"linecount" : 4,
									"fontname" : "Verdana",
									"id" : "obj-49",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 660.0, 365.0, 116.0, 54.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Trond added 2007-07-15:",
									"fontname" : "Verdana",
									"id" : "obj-50",
									"textcolor" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"frgb" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 656.0, 290.0, 137.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "I am defaulting this to mute to save CPU. I am not convinced that this should be part of the module at all, due to increase in DSP CPU usage (on my MacBookPro the subpatch introduce a 6% increase). Instead it could be taken care of by a separate transposing module.",
									"linecount" : 4,
									"fontname" : "Verdana",
									"id" : "obj-51",
									"textcolor" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"frgb" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 656.0, 304.0, 349.0, 54.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 234.5, 270.0, 147.5, 270.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 363.5, 270.0, 147.5, 270.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 569.5, 270.0, 147.5, 270.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 377.5, 270.0, 147.5, 270.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 308.5, 270.0, 147.5, 270.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 453.5, 270.0, 147.5, 270.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 511.5, 270.0, 147.5, 270.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 225.5, 323.0, 147.5, 323.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 182.5, 482.0, 119.0, 420.0, 119.0, 305.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 1 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 54.5, 316.0, 147.5, 316.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 45.5, 329.0, 147.5, 329.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 749.5, 270.0, 147.5, 270.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 1 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 262.5, 356.0, 182.5, 356.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 1 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 1 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 1 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 2 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 1 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 262.5, 356.0, 353.5, 356.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 3 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 1 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 385.0, 164.0, 363.5, 164.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [ 413.5, 236.0, 377.5, 236.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 4 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 5 ],
									"destination" : [ "obj-32", 0 ],
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 6 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 7 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 8 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 697.0, 147.0, 749.5, 147.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-10", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-10", 0 ],
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
					"maxclass" : "newobj",
					"text" : "p video-grabber-stuff",
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 55.0, 179.0, 114.0, 18.0 ],
					"outlettype" : [ "jit_matrix" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 425.0, 213.0, 633.0, 648.0 ],
						"bglocked" : 0,
						"defrect" : [ 425.0, 213.0, 633.0, 648.0 ],
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
									"text" : "jcom.oscroute /camera",
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 48.0, 44.0, 123.0, 18.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 352.0, 136.0, 54.0, 18.0 ],
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r jcom.init",
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 0,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 289.0, 136.0, 59.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "thru2[2]",
									"text" : "s #1_camera",
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 350.0, 565.0, 74.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "thru2[1]",
									"text" : "s #1_device",
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 195.0, 565.0, 69.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 106.0, 565.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-7",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 48.0, 22.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "thru3",
									"text" : "p thru3",
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 195.0, 391.0, 45.0, 18.0 ],
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 20.0, 74.0, 159.0, 173.0 ],
										"bglocked" : 0,
										"defrect" : [ 20.0, 74.0, 159.0, 173.0 ],
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
													"maxclass" : "outlet",
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 34.0, 68.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-2",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 34.0, 39.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "thru2",
									"text" : "p thru2",
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 106.0, 391.0, 45.0, 18.0 ],
									"outlettype" : [ "jit_matrix" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 20.0, 74.0, 159.0, 173.0 ],
										"bglocked" : 0,
										"defrect" : [ 20.0, 74.0, 159.0, 173.0 ],
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
													"maxclass" : "outlet",
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 34.0, 68.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-2",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 34.0, 39.0, 15.0, 15.0 ],
													"outlettype" : [ "jit_matrix" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "camera_size",
									"fontname" : "Verdana",
									"types" : [  ],
									"id" : "obj-10",
									"numinlets" : 1,
									"labelclick" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"patching_rect" : [ 188.0, 135.0, 52.0, 18.0 ],
									"outlettype" : [ "int", "", "" ],
									"items" : [ 640, 480, ",", 320, 240, ",", 160, 120, ",", 80, 60 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend dim",
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 188.0, 157.0, 71.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "onebang 1",
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 289.0, 162.0, 61.0, 18.0 ],
									"outlettype" : [ "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t close 0",
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 63.0, 157.0, 50.0, 18.0 ],
									"outlettype" : [ "close", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 open",
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 48.0, 135.0, 50.0, 18.0 ],
									"outlettype" : [ "int", "open" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"fontname" : "Verdana",
									"id" : "obj-15",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"patching_rect" : [ 48.0, 112.0, 42.0, 18.0 ],
									"outlettype" : [ "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "iter",
									"fontname" : "Verdana",
									"id" : "obj-16",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 195.0, 444.0, 25.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t clear",
									"fontname" : "Verdana",
									"id" : "obj-17",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 290.0, 465.0, 40.0, 18.0 ],
									"outlettype" : [ "clear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t clear",
									"fontname" : "Verdana",
									"id" : "obj-18",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 428.0, 465.0, 40.0, 18.0 ],
									"outlettype" : [ "clear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "input $1",
									"fontname" : "Verdana",
									"id" : "obj-19",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 350.0, 510.0, 50.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"fontname" : "Verdana",
									"types" : [  ],
									"pattrmode" : 1,
									"id" : "obj-20",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"patching_rect" : [ 350.0, 489.0, 145.0, 18.0 ],
									"outlettype" : [ "int", "", "" ],
									"items" : [  ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"fontname" : "Verdana",
									"id" : "obj-21",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 350.0, 465.0, 89.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "iter",
									"fontname" : "Verdana",
									"id" : "obj-22",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 350.0, 444.0, 25.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "vdevice $1",
									"fontname" : "Verdana",
									"id" : "obj-23",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 195.0, 510.0, 62.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"fontname" : "Verdana",
									"types" : [  ],
									"pattrmode" : 1,
									"id" : "obj-24",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"patching_rect" : [ 195.0, 489.0, 145.0, 18.0 ],
									"outlettype" : [ "int", "", "" ],
									"items" : [ "ManyCam Virtual Webcam", ",", "Live! Cam Vista IM (VFW)" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"fontname" : "Verdana",
									"id" : "obj-25",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 195.0, 465.0, 89.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route vdevlist inputlist",
									"fontname" : "Verdana",
									"id" : "obj-26",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"patching_rect" : [ 195.0, 414.0, 120.0, 18.0 ],
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getinputlist",
									"fontname" : "Verdana",
									"id" : "obj-27",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 352.0, 202.0, 64.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getvdevlist",
									"fontname" : "Verdana",
									"id" : "obj-28",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 289.0, 202.0, 63.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "settings",
									"fontname" : "Verdana",
									"id" : "obj-29",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 118.0, 161.0, 48.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "thru1",
									"text" : "p thru1",
									"fontname" : "Verdana",
									"id" : "obj-30",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 107.0, 252.0, 45.0, 18.0 ],
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 20.0, 74.0, 159.0, 173.0 ],
										"bglocked" : 0,
										"defrect" : [ 20.0, 74.0, 159.0, 173.0 ],
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
													"maxclass" : "outlet",
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 34.0, 68.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-2",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 34.0, 39.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"id" : "obj-31",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 60.0, 89.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "qmetro",
									"text" : "qmetro 2",
									"fontname" : "Verdana",
									"id" : "obj-32",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 45.0, 190.0, 54.0, 18.0 ],
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /on /settings /size /device /camera",
									"fontname" : "Verdana",
									"id" : "obj-33",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 6,
									"patching_rect" : [ 48.0, 69.0, 364.0, 18.0 ],
									"outlettype" : [ "", "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p script-grabber",
									"fontname" : "Verdana",
									"id" : "obj-34",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 476.0, 102.0, 88.0, 18.0 ],
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 607.0, 201.0, 413.0, 340.0 ],
										"bglocked" : 0,
										"defrect" : [ 607.0, 201.0, 413.0, 340.0 ],
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
													"text" : "script connect qmetro 0 grabber 0",
													"fontname" : "Verdana",
													"id" : "obj-1",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 227.0, 178.0, 16.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "append 320 240",
													"fontname" : "Verdana",
													"id" : "obj-2",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"patching_rect" : [ 92.0, 110.0, 90.0, 18.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend script new grabber newex 107 304 98 196617",
													"fontname" : "Verdana",
													"id" : "obj-3",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"patching_rect" : [ 92.0, 88.0, 283.0, 18.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script connect grabber 1 thru3 0",
													"fontname" : "Verdana",
													"id" : "obj-4",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 198.0, 170.0, 16.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script connect grabber 0 thru2 0",
													"fontname" : "Verdana",
													"id" : "obj-5",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"patching_rect" : [ 64.0, 178.0, 170.0, 16.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script connect thru1 0 grabber 0",
													"fontname" : "Verdana",
													"id" : "obj-6",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"patching_rect" : [ 78.0, 158.0, 170.0, 16.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b b s",
													"fontname" : "Verdana",
													"id" : "obj-7",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 4,
													"patching_rect" : [ 50.0, 50.0, 53.0, 18.0 ],
													"outlettype" : [ "bang", "bang", "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-8",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 20.0, 15.0, 15.0 ],
													"outlettype" : [ "jit.qt.grab" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-9",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 279.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 2 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 3 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p check-system",
									"fontname" : "Verdana",
									"id" : "obj-35",
									"numinlets" : 0,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 476.0, 66.0, 86.0, 18.0 ],
									"outlettype" : [ "jit.qt.grab" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 796.0, 44.0, 400.0, 372.0 ],
										"bglocked" : 0,
										"defrect" : [ 796.0, 44.0, 400.0, 372.0 ],
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
													"text" : "1",
													"fontname" : "Verdana",
													"id" : "obj-1",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"patching_rect" : [ 168.0, 119.0, 17.0, 16.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "2047",
													"fontname" : "Verdana",
													"id" : "obj-2",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"patching_rect" : [ 122.0, 121.0, 34.0, 16.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"fontname" : "Verdana",
													"id" : "obj-3",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"patching_rect" : [ 113.0, 50.0, 54.0, 18.0 ],
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "onebang 1",
													"fontname" : "Verdana",
													"id" : "obj-4",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"patching_rect" : [ 50.0, 75.0, 61.0, 18.0 ],
													"outlettype" : [ "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0",
													"fontname" : "Verdana",
													"id" : "obj-5",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"patching_rect" : [ 273.0, 156.0, 32.0, 18.0 ],
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "print grab.ERROR",
													"fontname" : "Verdana",
													"id" : "obj-6",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 0,
													"patching_rect" : [ 273.0, 187.0, 96.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "win",
													"fontname" : "Verdana",
													"id" : "obj-7",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 0,
													"patching_rect" : [ 57.0, 177.0, 26.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t jit.qt.grab",
													"fontname" : "Verdana",
													"id" : "obj-8",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"patching_rect" : [ 127.0, 200.0, 67.0, 18.0 ],
													"outlettype" : [ "jit.qt.grab" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t jit.dx.grab",
													"fontname" : "Verdana",
													"id" : "obj-9",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 200.0, 69.0, 18.0 ],
													"outlettype" : [ "jit.dx.grab" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "sysv",
													"fontname" : "Verdana",
													"id" : "obj-10",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 98.0, 30.0, 16.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "split 1 2047",
													"fontname" : "Verdana",
													"id" : "obj-11",
													"numinlets" : 3,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"patching_rect" : [ 50.0, 156.0, 87.0, 18.0 ],
													"outlettype" : [ "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gestalt",
													"fontname" : "Verdana",
													"id" : "obj-12",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"patching_rect" : [ 50.0, 121.0, 42.0, 18.0 ],
													"outlettype" : [ "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r jcom.init",
													"fontname" : "Verdana",
													"id" : "obj-13",
													"numinlets" : 0,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 50.0, 59.0, 18.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "mac",
													"fontname" : "Verdana",
													"id" : "obj-14",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 0,
													"patching_rect" : [ 139.0, 177.0, 29.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-15",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 261.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [ 122.5, 71.0, 59.5, 71.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [ 82.5, 146.0, 282.5, 146.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Verdana",
									"id" : "obj-36",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 476.0, 139.0, 68.0, 18.0 ],
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "grabber",
									"text" : "jit.dx.grab 320 240",
									"fontname" : "Arial",
									"id" : "obj-37",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"patching_rect" : [ 106.0, 308.0, 98.0, 17.0 ],
									"outlettype" : [ "jit_matrix", "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-37", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-32", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 359.5, 532.0, 527.0, 532.0, 527.0, 246.0, 116.5, 246.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 204.5, 539.0, 527.0, 539.0, 527.0, 246.0, 116.5, 246.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 298.5, 233.0, 116.5, 233.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 361.5, 233.0, 116.5, 233.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 2 ],
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
									"midpoints" : [ 214.0, 154.0, 197.5, 154.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 299.5, 485.0, 204.5, 485.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 3 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 361.5, 157.0, 298.5, 157.0 ]
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 204.5, 438.0, 299.5, 438.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 255.0, 434.0, 359.5, 434.0 ]
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
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 437.5, 485.0, 359.5, 485.0 ]
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
									"source" : [ "obj-33", 4 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 298.5, 190.0, 361.5, 190.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 255.0, 434.0, 437.5, 434.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-36", 0 ],
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
					"maxclass" : "newobj",
					"text" : "p turn-off-metros",
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 83.0, 67.0, 95.0, 18.0 ],
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 310.0, 207.0, 489.0, 378.0 ],
						"bglocked" : 0,
						"defrect" : [ 310.0, 207.0, 489.0, 378.0 ],
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
									"maxclass" : "outlet",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 149.0, 293.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 215.0, 93.0, 32.0, 18.0 ],
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 135.0, 93.0, 32.0, 18.0 ],
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/camera_on 0",
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 54.0, 215.0, 78.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/synth_noise_on 0",
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 207.0, 215.0, 101.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/file_on 0",
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 131.0, 215.0, 56.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 55.0, 93.0, 32.0, 18.0 ],
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /camera_on /file_on /synth_noise_on",
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 4,
									"patching_rect" : [ 55.0, 60.0, 280.0, 18.0 ],
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-9",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 55.0, 30.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Not very elegant, but this ensures that only one metro is running at a time. This was easier to implement than trying to have one main metro.",
									"linecount" : 7,
									"fontname" : "Verdana",
									"id" : "obj-10",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 341.0, 115.0, 120.0, 90.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 2 ],
									"destination" : [ "obj-2", 0 ],
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
					"maxclass" : "inlet",
					"id" : "obj-7",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 55.0, 37.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Video output",
					"fontname" : "Verdana",
					"id" : "obj-8",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"patching_rect" : [ 189.0, 359.0, 72.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-9",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 195.0, 339.0, 15.0, 15.0 ],
					"comment" : "video output"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 84.0, 339.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
