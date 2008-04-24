{
	"patcher" : 	{
		"rect" : [ 70.0, 145.0, 372.0, 483.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 70.0, 145.0, 372.0, 483.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"patching_rect" : [ 12.0, 479.0, 25.0, 18.0 ],
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load jcom.SpatDIF.coordinates.mxt",
					"patching_rect" : [ 12.0, 498.0, 204.0, 16.0 ],
					"numinlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 12.0, 517.0, 57.0, 18.0 ],
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-3",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "z",
					"patching_rect" : [ 258.0, 311.0, 20.0, 23.0 ],
					"numinlets" : 1,
					"fontsize" : 12.288889,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "x",
					"patching_rect" : [ 313.0, 363.0, 20.0, 23.0 ],
					"numinlets" : 1,
					"fontsize" : 12.288889,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "y",
					"patching_rect" : [ 113.0, 311.0, 20.0, 23.0 ],
					"numinlets" : 1,
					"fontsize" : 12.288889,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "x",
					"patching_rect" : [ 165.0, 363.0, 20.0, 23.0 ],
					"numinlets" : 1,
					"fontsize" : 12.288889,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "z",
					"patching_rect" : [ 158.0, 244.0, 19.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "y",
					"patching_rect" : [ 108.0, 244.0, 19.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "x",
					"patching_rect" : [ 54.0, 244.0, 19.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "distance",
					"patching_rect" : [ 146.0, 79.0, 55.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "elevation",
					"patching_rect" : [ 90.0, 79.0, 57.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p visualize",
					"patching_rect" : [ 42.0, 287.0, 108.0, 18.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-13",
					"outlettype" : [ "" ],
					"patcher" : 					{
						"rect" : [ 10.0, 59.0, 295.0, 258.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 295.0, 258.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p stuff",
									"patching_rect" : [ 50.0, 122.0, 40.0, 17.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-1",
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"rect" : [ 231.0, 88.0, 302.0, 407.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 231.0, 88.0, 302.0, 407.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxfadetime" : 200,
										"boxanimatetime" : 200,
										"scrollanimatetime" : 200,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p lcd",
													"patching_rect" : [ 46.0, 235.0, 30.0, 17.0 ],
													"numinlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ],
													"patcher" : 													{
														"rect" : [ 40.0, 44.0, 982.0, 502.0 ],
														"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
														"bglocked" : 0,
														"defrect" : [ 40.0, 44.0, 982.0, 502.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxfadetime" : 200,
														"boxanimatetime" : 200,
														"scrollanimatetime" : 200,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p angle-conversion",
																	"patching_rect" : [ 570.0, 150.0, 95.0, 17.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-1",
																	"outlettype" : [ "int" ],
																	"patcher" : 																	{
																		"rect" : [ 216.0, 130.0, 208.0, 267.0 ],
																		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 216.0, 130.0, 208.0, 267.0 ],
																		"openinpresentation" : 0,
																		"default_fontsize" : 10.0,
																		"default_fontface" : 0,
																		"default_fontname" : "Verdana",
																		"gridonopen" : 0,
																		"gridsize" : [ 15.0, 15.0 ],
																		"gridsnaponopen" : 0,
																		"toolbarvisible" : 1,
																		"boxfadetime" : 200,
																		"boxanimatetime" : 200,
																		"scrollanimatetime" : 200,
																		"metadata" : [  ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 180",
																					"patching_rect" : [ 50.0, 119.0, 35.0, 17.0 ],
																					"numinlets" : 2,
																					"fontsize" : 9.0,
																					"fontname" : "Verdana",
																					"numoutlets" : 1,
																					"id" : "obj-1",
																					"outlettype" : [ "int" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "* 180.",
																					"patching_rect" : [ 50.0, 95.0, 40.0, 17.0 ],
																					"numinlets" : 2,
																					"fontsize" : 9.0,
																					"fontname" : "Verdana",
																					"numoutlets" : 1,
																					"id" : "obj-2",
																					"outlettype" : [ "float" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "\/ 3.141594",
																					"patching_rect" : [ 50.0, 72.0, 63.0, 17.0 ],
																					"numinlets" : 2,
																					"fontsize" : 9.0,
																					"fontname" : "Verdana",
																					"numoutlets" : 1,
																					"id" : "obj-3",
																					"outlettype" : [ "float" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 3.141594",
																					"patching_rect" : [ 50.0, 50.0, 63.0, 17.0 ],
																					"numinlets" : 2,
																					"fontsize" : 9.0,
																					"fontname" : "Verdana",
																					"numoutlets" : 1,
																					"id" : "obj-4",
																					"outlettype" : [ "float" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"id" : "obj-5",
																					"outlettype" : [ "float" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"patching_rect" : [ 50.0, 141.0, 15.0, 15.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"id" : "obj-6",
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-2", 0 ],
																					"hidden" : 0
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-1", 0 ],
																					"hidden" : 0
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontsize" : 10.0,
																		"fontname" : "Verdana",
																		"default_fontface" : 0,
																		"default_fontsize" : 10.0,
																		"fontface" : 0,
																		"default_fontname" : "Verdana",
																		"globalpatchername" : ""
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "clear",
																	"patching_rect" : [ 874.0, 351.0, 33.0, 15.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-2",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t clear",
																	"patching_rect" : [ 851.0, 71.0, 40.0, 17.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-3",
																	"outlettype" : [ "clear" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b",
																	"patching_rect" : [ 485.0, 290.0, 20.0, 17.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-4",
																	"outlettype" : [ "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "linesegment 70 0 70 140 246, linesegment 0 70 140 70 246, pensize 10 10",
																	"patching_rect" : [ 485.0, 316.0, 355.0, 15.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-5",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "pensize 1 1",
																	"patching_rect" : [ 190.0, 340.0, 60.0, 15.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-6",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b",
																	"patching_rect" : [ 190.0, 204.0, 20.0, 17.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-7",
																	"outlettype" : [ "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "pensize 2 2",
																	"patching_rect" : [ 190.0, 320.0, 60.0, 15.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-8",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend paintarc",
																	"patching_rect" : [ 643.0, 342.0, 84.0, 17.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-9",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$1 $2 $3 $4 $5 $6 7",
																	"patching_rect" : [ 643.0, 292.0, 105.0, 15.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-10",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$1 $2 70 $2 248, $1 $2 $1 70 248",
																	"patching_rect" : [ 260.0, 203.0, 173.0, 15.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-11",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "pensize 1 1",
																	"patching_rect" : [ 413.0, 342.0, 60.0, 15.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-12",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0 0 0 90 360 28",
																	"patching_rect" : [ 485.0, 251.0, 115.0, 17.0 ],
																	"numinlets" : 7,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-13",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend framearc",
																	"patching_rect" : [ 550.0, 342.0, 89.0, 17.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-14",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 70",
																	"patching_rect" : [ 413.0, 99.0, 30.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-15",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 70",
																	"patching_rect" : [ 378.0, 99.0, 29.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-16",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cartopol",
																	"patching_rect" : [ 378.0, 121.0, 45.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 2,
																	"id" : "obj-17",
																	"outlettype" : [ "float", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 70",
																	"patching_rect" : [ 483.0, 154.0, 31.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-18",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 70",
																	"patching_rect" : [ 448.0, 154.0, 30.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-19",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "!- 70",
																	"patching_rect" : [ 413.0, 154.0, 33.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-20",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "!- 70",
																	"patching_rect" : [ 378.0, 154.0, 32.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-21",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0 0 0 255",
																	"patching_rect" : [ 378.0, 176.0, 153.0, 17.0 ],
																	"numinlets" : 5,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-22",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend frameoval",
																	"patching_rect" : [ 378.0, 251.0, 93.0, 17.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-23",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0 70 70 212",
																	"patching_rect" : [ 251.0, 154.0, 99.0, 17.0 ],
																	"numinlets" : 5,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-24",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend linesegment",
																	"patching_rect" : [ 251.0, 251.0, 100.0, 17.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-25",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 3",
																	"patching_rect" : [ 138.0, 154.0, 27.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-26",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 3",
																	"patching_rect" : [ 109.0, 154.0, 27.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-27",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 3",
																	"patching_rect" : [ 80.0, 154.0, 27.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-28",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 3",
																	"patching_rect" : [ 51.0, 154.0, 27.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-29",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0 0 0 255",
																	"patching_rect" : [ 51.0, 185.0, 127.0, 17.0 ],
																	"numinlets" : 5,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-30",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend paintoval",
																	"patching_rect" : [ 51.0, 251.0, 88.0, 17.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-31",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack",
																	"patching_rect" : [ 51.0, 65.0, 39.0, 17.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 2,
																	"id" : "obj-32",
																	"outlettype" : [ "int", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 51.0, 395.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-33",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 51.0, 31.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"id" : "obj-34",
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 883.5, 386.0, 60.0, 386.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 860.5, 386.0, 60.0, 386.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 494.5, 371.0, 60.0, 371.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 199.5, 372.0, 60.0, 372.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 199.5, 372.0, 60.0, 372.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 652.5, 371.0, 60.0, 371.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 422.5, 372.0, 60.0, 372.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 559.5, 372.0, 60.0, 372.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 387.5, 372.0, 60.0, 372.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 260.5, 371.0, 60.0, 371.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 1 ],
																	"destination" : [ "obj-28", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-28", 0 ],
																	"destination" : [ "obj-30", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-30", 2 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 1 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-30", 3 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 260.5, 177.0, 199.5, 177.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 269.5, 236.0, 260.5, 236.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 260.5, 185.0, 269.5, 185.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 1 ],
																	"destination" : [ "obj-24", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 1 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-17", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 387.5, 146.0, 422.5, 146.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-22", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 494.5, 311.0, 422.5, 311.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 387.5, 146.0, 457.5, 146.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-22", 2 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 387.5, 146.0, 492.5, 146.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-22", 3 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-13", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-13", 2 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-13", 3 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 1 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-13", 5 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 60.0, 54.0, 860.5, 54.0 ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontsize" : 10.0,
														"fontname" : "Verdana",
														"default_fontface" : 0,
														"default_fontsize" : 10.0,
														"fontface" : 0,
														"default_fontname" : "Verdana",
														"globalpatchername" : ""
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 46.0, 50.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 219.0, 308.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-3",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 172.0, 308.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-4",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0 0",
													"patching_rect" : [ 219.0, 81.0, 23.0, 15.0 ],
													"numinlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "70 70",
													"patching_rect" : [ 129.0, 81.0, 37.0, 15.0 ],
													"numinlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"patching_rect" : [ 129.0, 50.0, 48.0, 17.0 ],
													"numinlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "local 0",
													"patching_rect" : [ 172.0, 81.0, 39.0, 15.0 ],
													"numinlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 138.5, 73.0, 181.5, 73.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [ 138.5, 73.0, 228.5, 73.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontsize" : 10.0,
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"default_fontname" : "Verdana",
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0 0",
									"patching_rect" : [ 50.0, 94.0, 120.0, 17.0 ],
									"numinlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale -1. 1. 140 0",
									"patching_rect" : [ 160.0, 66.0, 92.0, 17.0 ],
									"numinlets" : 6,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale -1. 1. 0 140",
									"patching_rect" : [ 50.0, 66.0, 92.0, 17.0 ],
									"numinlets" : 6,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 160.0, 30.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "float" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "float" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 50.0, 159.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-7",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontsize" : 10.0,
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "lcd",
					"patching_rect" : [ 42.0, 310.0, 140.0, 140.0 ],
					"numinlets" : 1,
					"numoutlets" : 4,
					"id" : "obj-14",
					"outlettype" : [ "list", "list", "int", "" ],
					"local" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p visualize",
					"patching_rect" : [ 187.0, 287.0, 108.0, 18.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-15",
					"outlettype" : [ "" ],
					"patcher" : 					{
						"rect" : [ 10.0, 59.0, 295.0, 258.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 295.0, 258.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p stuff",
									"patching_rect" : [ 50.0, 122.0, 40.0, 17.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-1",
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"rect" : [ 231.0, 88.0, 302.0, 407.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 231.0, 88.0, 302.0, 407.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxfadetime" : 200,
										"boxanimatetime" : 200,
										"scrollanimatetime" : 200,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p lcd",
													"patching_rect" : [ 46.0, 235.0, 30.0, 17.0 ],
													"numinlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ],
													"patcher" : 													{
														"rect" : [ 40.0, 44.0, 982.0, 502.0 ],
														"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
														"bglocked" : 0,
														"defrect" : [ 40.0, 44.0, 982.0, 502.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxfadetime" : 200,
														"boxanimatetime" : 200,
														"scrollanimatetime" : 200,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p angle-conversion",
																	"patching_rect" : [ 570.0, 150.0, 95.0, 17.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-1",
																	"outlettype" : [ "int" ],
																	"patcher" : 																	{
																		"rect" : [ 216.0, 130.0, 208.0, 267.0 ],
																		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 216.0, 130.0, 208.0, 267.0 ],
																		"openinpresentation" : 0,
																		"default_fontsize" : 10.0,
																		"default_fontface" : 0,
																		"default_fontname" : "Verdana",
																		"gridonopen" : 0,
																		"gridsize" : [ 15.0, 15.0 ],
																		"gridsnaponopen" : 0,
																		"toolbarvisible" : 1,
																		"boxfadetime" : 200,
																		"boxanimatetime" : 200,
																		"scrollanimatetime" : 200,
																		"metadata" : [  ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 180",
																					"patching_rect" : [ 50.0, 119.0, 35.0, 17.0 ],
																					"numinlets" : 2,
																					"fontsize" : 9.0,
																					"fontname" : "Verdana",
																					"numoutlets" : 1,
																					"id" : "obj-1",
																					"outlettype" : [ "int" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "* 180.",
																					"patching_rect" : [ 50.0, 95.0, 40.0, 17.0 ],
																					"numinlets" : 2,
																					"fontsize" : 9.0,
																					"fontname" : "Verdana",
																					"numoutlets" : 1,
																					"id" : "obj-2",
																					"outlettype" : [ "float" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "\/ 3.141594",
																					"patching_rect" : [ 50.0, 72.0, 63.0, 17.0 ],
																					"numinlets" : 2,
																					"fontsize" : 9.0,
																					"fontname" : "Verdana",
																					"numoutlets" : 1,
																					"id" : "obj-3",
																					"outlettype" : [ "float" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 3.141594",
																					"patching_rect" : [ 50.0, 50.0, 63.0, 17.0 ],
																					"numinlets" : 2,
																					"fontsize" : 9.0,
																					"fontname" : "Verdana",
																					"numoutlets" : 1,
																					"id" : "obj-4",
																					"outlettype" : [ "float" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"id" : "obj-5",
																					"outlettype" : [ "float" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"patching_rect" : [ 50.0, 141.0, 15.0, 15.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"id" : "obj-6",
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-2", 0 ],
																					"hidden" : 0
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-1", 0 ],
																					"hidden" : 0
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontsize" : 10.0,
																		"fontname" : "Verdana",
																		"default_fontface" : 0,
																		"default_fontsize" : 10.0,
																		"fontface" : 0,
																		"default_fontname" : "Verdana",
																		"globalpatchername" : ""
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "clear",
																	"patching_rect" : [ 874.0, 351.0, 33.0, 15.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-2",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t clear",
																	"patching_rect" : [ 851.0, 71.0, 40.0, 17.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-3",
																	"outlettype" : [ "clear" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b",
																	"patching_rect" : [ 485.0, 290.0, 20.0, 17.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-4",
																	"outlettype" : [ "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "linesegment 70 0 70 140 246, linesegment 0 70 140 70 246, pensize 10 10",
																	"patching_rect" : [ 485.0, 316.0, 355.0, 15.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-5",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "pensize 1 1",
																	"patching_rect" : [ 190.0, 340.0, 60.0, 15.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-6",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b",
																	"patching_rect" : [ 190.0, 204.0, 20.0, 17.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-7",
																	"outlettype" : [ "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "pensize 2 2",
																	"patching_rect" : [ 190.0, 320.0, 60.0, 15.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-8",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend paintarc",
																	"patching_rect" : [ 643.0, 342.0, 84.0, 17.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-9",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$1 $2 $3 $4 $5 $6 7",
																	"patching_rect" : [ 643.0, 292.0, 105.0, 15.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-10",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$1 $2 70 $2 248, $1 $2 $1 70 248",
																	"patching_rect" : [ 260.0, 203.0, 173.0, 15.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-11",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "pensize 1 1",
																	"patching_rect" : [ 413.0, 342.0, 60.0, 15.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-12",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0 0 0 90 360 28",
																	"patching_rect" : [ 485.0, 251.0, 115.0, 17.0 ],
																	"numinlets" : 7,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-13",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend framearc",
																	"patching_rect" : [ 550.0, 342.0, 89.0, 17.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-14",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 70",
																	"patching_rect" : [ 413.0, 99.0, 30.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-15",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 70",
																	"patching_rect" : [ 378.0, 99.0, 29.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-16",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cartopol",
																	"patching_rect" : [ 378.0, 121.0, 45.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 2,
																	"id" : "obj-17",
																	"outlettype" : [ "float", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 70",
																	"patching_rect" : [ 483.0, 154.0, 31.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-18",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 70",
																	"patching_rect" : [ 448.0, 154.0, 30.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-19",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "!- 70",
																	"patching_rect" : [ 413.0, 154.0, 33.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-20",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "!- 70",
																	"patching_rect" : [ 378.0, 154.0, 32.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-21",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0 0 0 255",
																	"patching_rect" : [ 378.0, 176.0, 153.0, 17.0 ],
																	"numinlets" : 5,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-22",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend frameoval",
																	"patching_rect" : [ 378.0, 251.0, 93.0, 17.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-23",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0 70 70 212",
																	"patching_rect" : [ 251.0, 154.0, 99.0, 17.0 ],
																	"numinlets" : 5,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-24",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend linesegment",
																	"patching_rect" : [ 251.0, 251.0, 100.0, 17.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-25",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 3",
																	"patching_rect" : [ 138.0, 154.0, 27.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-26",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 3",
																	"patching_rect" : [ 109.0, 154.0, 27.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-27",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 3",
																	"patching_rect" : [ 80.0, 154.0, 27.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-28",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 3",
																	"patching_rect" : [ 51.0, 154.0, 27.0, 17.0 ],
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-29",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0 0 0 255",
																	"patching_rect" : [ 51.0, 185.0, 127.0, 17.0 ],
																	"numinlets" : 5,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-30",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend paintoval",
																	"patching_rect" : [ 51.0, 251.0, 88.0, 17.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"id" : "obj-31",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack",
																	"patching_rect" : [ 51.0, 65.0, 39.0, 17.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"fontname" : "Verdana",
																	"numoutlets" : 2,
																	"id" : "obj-32",
																	"outlettype" : [ "int", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 51.0, 395.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-33",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 51.0, 31.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"id" : "obj-34",
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 260.5, 371.0, 60.0, 371.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 387.5, 372.0, 60.0, 372.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 559.5, 372.0, 60.0, 372.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 422.5, 372.0, 60.0, 372.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 652.5, 371.0, 60.0, 371.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 199.5, 372.0, 60.0, 372.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 199.5, 372.0, 60.0, 372.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 494.5, 371.0, 60.0, 371.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 860.5, 386.0, 60.0, 386.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 883.5, 386.0, 60.0, 386.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 1 ],
																	"destination" : [ "obj-28", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-28", 0 ],
																	"destination" : [ "obj-30", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-30", 2 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 1 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-30", 3 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 260.5, 177.0, 199.5, 177.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 269.5, 236.0, 260.5, 236.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 260.5, 185.0, 269.5, 185.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 1 ],
																	"destination" : [ "obj-24", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 1 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-17", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 387.5, 146.0, 422.5, 146.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-22", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 494.5, 311.0, 422.5, 311.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 387.5, 146.0, 457.5, 146.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-22", 2 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 387.5, 146.0, 492.5, 146.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-22", 3 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-13", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-13", 2 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-13", 3 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 1 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-13", 5 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 60.0, 54.0, 860.5, 54.0 ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontsize" : 10.0,
														"fontname" : "Verdana",
														"default_fontface" : 0,
														"default_fontsize" : 10.0,
														"fontface" : 0,
														"default_fontname" : "Verdana",
														"globalpatchername" : ""
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 46.0, 50.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 219.0, 308.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-3",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 172.0, 308.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-4",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0 0",
													"patching_rect" : [ 219.0, 81.0, 23.0, 15.0 ],
													"numinlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "70 70",
													"patching_rect" : [ 129.0, 81.0, 37.0, 15.0 ],
													"numinlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"patching_rect" : [ 129.0, 50.0, 48.0, 17.0 ],
													"numinlets" : 1,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "local 0",
													"patching_rect" : [ 172.0, 81.0, 39.0, 15.0 ],
													"numinlets" : 2,
													"fontsize" : 9.0,
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 138.5, 73.0, 181.5, 73.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [ 138.5, 73.0, 228.5, 73.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontsize" : 10.0,
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"default_fontname" : "Verdana",
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0 0",
									"patching_rect" : [ 50.0, 94.0, 120.0, 17.0 ],
									"numinlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale -1. 1. 140 0",
									"patching_rect" : [ 160.0, 66.0, 92.0, 17.0 ],
									"numinlets" : 6,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale -1. 1. 0 140",
									"patching_rect" : [ 50.0, 66.0, 92.0, 17.0 ],
									"numinlets" : 6,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 160.0, 30.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "float" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "float" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 50.0, 159.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-7",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontsize" : 10.0,
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "lcd",
					"patching_rect" : [ 187.0, 310.0, 140.0, 140.0 ],
					"numinlets" : 1,
					"numoutlets" : 4,
					"id" : "obj-16",
					"outlettype" : [ "list", "list", "int", "" ],
					"local" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0. 0. 0.",
					"patching_rect" : [ 42.0, 226.0, 124.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-17",
					"outlettype" : [ "float", "float", "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 147.0, 258.0, 39.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-18",
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 42.0, 258.0, 39.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-19",
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 94.0, 258.0, 39.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-20",
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.aed2xyz",
					"patching_rect" : [ 12.0, 12.0, 145.0, 28.0 ],
					"numinlets" : 1,
					"fontsize" : 15.799999,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-21",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "SpatDIF-compliant convertion from spherical to Cartesian coordinates",
					"patching_rect" : [ 8.0, 37.0, 356.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-22",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 7.0, 7.0, 358.0, 49.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"rounded" : 0,
					"id" : "obj-23",
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 0. 0. 0.",
					"patching_rect" : [ 42.0, 118.0, 124.0, 18.0 ],
					"numinlets" : 3,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-24",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.aed2xyz",
					"patching_rect" : [ 42.0, 167.0, 88.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-25",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 147.0, 94.0, 39.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-26",
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 42.0, 94.0, 39.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-27",
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 94.0, 94.0, 39.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-28",
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "azimut",
					"patching_rect" : [ 42.0, 79.0, 46.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"patching_rect" : [ 12.0, 459.0, 200.0, 18.0 ],
					"items" : [ "More", "about", "SpatDIF", "coordiate", "systems" ],
					"numinlets" : 1,
					"menumode" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-30",
					"outlettype" : [ "int", "", "" ],
					"labelclick" : 1,
					"textcolor" : [ 0.164706, 0.121569, 0.913725, 1.0 ],
					"background" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"types" : [  ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [ 103.5, 284.0, 140.5, 284.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-24", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 2 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 51.5, 281.0, 196.5, 281.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [ 156.5, 278.0, 285.5, 278.0 ]
				}

			}
 ]
	}

}
