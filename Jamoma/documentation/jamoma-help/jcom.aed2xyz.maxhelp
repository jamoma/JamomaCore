{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 83.0, 171.0, 375.0, 487.0 ],
		"bglocked" : 0,
		"defrect" : [ 83.0, 171.0, 375.0, 487.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.970939,
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
					"maxclass" : "newobj",
					"text" : "t b",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 12.0, 479.0, 25.0, 18.0 ],
					"hidden" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "bang" ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load jcom.SpatDIF.coordinates.maxpat",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 12.0, 498.0, 204.0, 16.0 ],
					"hidden" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 12.0, 517.0, 57.0, 18.0 ],
					"hidden" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "z",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 258.0, 311.0, 20.0, 23.0 ],
					"fontsize" : 13.482065,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "x",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 313.0, 363.0, 20.0, 23.0 ],
					"fontsize" : 13.482065,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "y",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 113.0, 311.0, 20.0, 23.0 ],
					"fontsize" : 13.482065,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "x",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 363.0, 20.0, 23.0 ],
					"fontsize" : 13.482065,
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "z",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 158.0, 244.0, 19.0, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "y",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 108.0, 244.0, 19.0, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "x",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 244.0, 19.0, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "distance",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 146.0, 79.0, 55.0, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "elevation",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 79.0, 57.0, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p visualize",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 42.0, 287.0, 108.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 295.0, 258.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 295.0, 258.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
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
									"text" : "p stuff",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 50.0, 122.0, 40.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"id" : "obj-1",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 231.0, 88.0, 302.0, 407.0 ],
										"bglocked" : 0,
										"defrect" : [ 231.0, 88.0, 302.0, 407.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p lcd",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 46.0, 235.0, 32.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 40.0, 44.0, 982.0, 502.0 ],
														"bglocked" : 0,
														"defrect" : [ 40.0, 44.0, 982.0, 502.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p angle-conversion",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 570.0, 150.0, 103.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-1",
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 216.0, 130.0, 208.0, 267.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 216.0, 130.0, 208.0, 267.0 ],
																		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 180",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 119.0, 35.0, 18.0 ],
																					"fontsize" : 9.873845,
																					"outlettype" : [ "int" ],
																					"id" : "obj-1"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "* 180.",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 95.0, 41.0, 18.0 ],
																					"fontsize" : 9.873845,
																					"outlettype" : [ "float" ],
																					"id" : "obj-2"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "/ 3.141594",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 72.0, 64.0, 18.0 ],
																					"fontsize" : 9.873845,
																					"outlettype" : [ "float" ],
																					"id" : "obj-3"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 3.141594",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 50.0, 68.0, 18.0 ],
																					"fontsize" : 9.873845,
																					"outlettype" : [ "float" ],
																					"id" : "obj-4"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
																					"outlettype" : [ "float" ],
																					"id" : "obj-5",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 50.0, 141.0, 15.0, 15.0 ],
																					"id" : "obj-6",
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-1", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-2", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"default_fontface" : 0,
																		"globalpatchername" : "",
																		"default_fontname" : "Verdana",
																		"fontname" : "Verdana",
																		"default_fontsize" : 10.0,
																		"fontface" : 0,
																		"fontsize" : 10.0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "clear",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 874.0, 351.0, 33.0, 16.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-2"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t clear",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 851.0, 71.0, 40.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "clear" ],
																	"id" : "obj-3"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 485.0, 290.0, 22.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "bang" ],
																	"id" : "obj-4"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "linesegment 70 0 70 140 246, linesegment 0 70 140 70 246, pensize 10 10",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 485.0, 316.0, 385.0, 16.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-5"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "pensize 1 1",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 190.0, 340.0, 65.0, 16.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-6"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 190.0, 204.0, 22.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "bang" ],
																	"id" : "obj-7"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "pensize 2 2",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 190.0, 320.0, 65.0, 16.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-8"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend paintarc",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 643.0, 342.0, 93.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-9"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$1 $2 $3 $4 $5 $6 7",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 643.0, 292.0, 111.0, 16.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-10"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$1 $2 70 $2 248, $1 $2 $1 70 248",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 260.0, 203.0, 181.0, 16.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-11"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "pensize 1 1",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 413.0, 342.0, 65.0, 16.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-12"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0 0 0 90 360 28",
																	"fontname" : "Verdana",
																	"numinlets" : 7,
																	"numoutlets" : 1,
																	"patching_rect" : [ 485.0, 251.0, 125.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-13"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend framearc",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 550.0, 342.0, 97.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-14"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 70",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 413.0, 99.0, 30.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-15"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 70",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 378.0, 99.0, 29.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-16"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cartopol",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"patching_rect" : [ 378.0, 121.0, 49.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "float", "float" ],
																	"id" : "obj-17"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 70",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 483.0, 154.0, 33.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-18"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 70",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 448.0, 154.0, 33.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-19"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "!- 70",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 413.0, 154.0, 33.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-20"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "!- 70",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 378.0, 154.0, 33.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-21"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0 0 0 255",
																	"fontname" : "Verdana",
																	"numinlets" : 5,
																	"numoutlets" : 1,
																	"patching_rect" : [ 378.0, 176.0, 153.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-22"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend frameoval",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 378.0, 251.0, 102.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-23"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0 70 70 212",
																	"fontname" : "Verdana",
																	"numinlets" : 5,
																	"numoutlets" : 1,
																	"patching_rect" : [ 251.0, 154.0, 105.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-24"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend linesegment",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 251.0, 251.0, 113.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-25"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 3",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 138.0, 154.0, 27.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-26"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 3",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 109.0, 154.0, 27.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-27"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 3",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 80.0, 154.0, 27.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-28"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 3",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 51.0, 154.0, 27.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-29"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0 0 0 255",
																	"fontname" : "Verdana",
																	"numinlets" : 5,
																	"numoutlets" : 1,
																	"patching_rect" : [ 51.0, 185.0, 127.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-30"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend paintoval",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 51.0, 251.0, 98.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-31"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"patching_rect" : [ 51.0, 65.0, 44.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int", "int" ],
																	"id" : "obj-32"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 51.0, 395.0, 15.0, 15.0 ],
																	"id" : "obj-33",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 51.0, 31.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-34",
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 60.0, 54.0, 860.5, 54.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-13", 5 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 1 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-13", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-13", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-13", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-22", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
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
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-22", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
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
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 494.5, 311.0, 422.5, 311.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-22", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
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
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-17", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 1 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 1 ],
																	"destination" : [ "obj-24", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
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
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
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
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-30", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 1 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-30", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-28", 0 ],
																	"destination" : [ "obj-30", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 1 ],
																	"destination" : [ "obj-28", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
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
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Verdana",
														"fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"fontface" : 0,
														"fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 46.0, 50.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 219.0, 308.0, 15.0, 15.0 ],
													"id" : "obj-3",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 172.0, 308.0, 15.0, 15.0 ],
													"id" : "obj-4",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0 0",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 219.0, 81.0, 25.0, 16.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "70 70",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 129.0, 81.0, 37.0, 16.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-6"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 129.0, 50.0, 54.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "bang" ],
													"id" : "obj-7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "local 0",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 172.0, 81.0, 41.0, 16.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-8"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0 0",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 94.0, 120.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale -1. 1. 140 0",
									"fontname" : "Verdana",
									"numinlets" : 6,
									"numoutlets" : 1,
									"patching_rect" : [ 160.0, 66.0, 97.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "float" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale -1. 1. 0 140",
									"fontname" : "Verdana",
									"numinlets" : 6,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 66.0, 97.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "float" ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 160.0, 30.0, 15.0, 15.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-5",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-6",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 159.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 1 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "lcd",
					"numinlets" : 1,
					"numoutlets" : 4,
					"patching_rect" : [ 42.0, 310.0, 140.0, 140.0 ],
					"outlettype" : [ "list", "list", "int", "" ],
					"id" : "obj-14",
					"local" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p visualize",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 187.0, 287.0, 108.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 295.0, 258.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 295.0, 258.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
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
									"text" : "p stuff",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 50.0, 122.0, 40.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"id" : "obj-1",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 231.0, 88.0, 302.0, 407.0 ],
										"bglocked" : 0,
										"defrect" : [ 231.0, 88.0, 302.0, 407.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p lcd",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 46.0, 235.0, 32.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 40.0, 44.0, 982.0, 502.0 ],
														"bglocked" : 0,
														"defrect" : [ 40.0, 44.0, 982.0, 502.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p angle-conversion",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 570.0, 150.0, 103.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-1",
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 216.0, 130.0, 208.0, 267.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 216.0, 130.0, 208.0, 267.0 ],
																		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 180",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 119.0, 35.0, 18.0 ],
																					"fontsize" : 9.873845,
																					"outlettype" : [ "int" ],
																					"id" : "obj-1"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "* 180.",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 95.0, 41.0, 18.0 ],
																					"fontsize" : 9.873845,
																					"outlettype" : [ "float" ],
																					"id" : "obj-2"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "/ 3.141594",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 72.0, 64.0, 18.0 ],
																					"fontsize" : 9.873845,
																					"outlettype" : [ "float" ],
																					"id" : "obj-3"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 3.141594",
																					"fontname" : "Verdana",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 50.0, 68.0, 18.0 ],
																					"fontsize" : 9.873845,
																					"outlettype" : [ "float" ],
																					"id" : "obj-4"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
																					"outlettype" : [ "float" ],
																					"id" : "obj-5",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 50.0, 141.0, 15.0, 15.0 ],
																					"id" : "obj-6",
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-1", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-2", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"default_fontface" : 0,
																		"globalpatchername" : "",
																		"default_fontname" : "Verdana",
																		"fontname" : "Verdana",
																		"default_fontsize" : 10.0,
																		"fontface" : 0,
																		"fontsize" : 10.0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "clear",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 874.0, 351.0, 33.0, 16.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-2"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t clear",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 851.0, 71.0, 40.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "clear" ],
																	"id" : "obj-3"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 485.0, 290.0, 22.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "bang" ],
																	"id" : "obj-4"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "linesegment 70 0 70 140 246, linesegment 0 70 140 70 246, pensize 10 10",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 485.0, 316.0, 385.0, 16.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-5"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "pensize 1 1",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 190.0, 340.0, 65.0, 16.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-6"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 190.0, 204.0, 22.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "bang" ],
																	"id" : "obj-7"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "pensize 2 2",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 190.0, 320.0, 65.0, 16.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-8"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend paintarc",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 643.0, 342.0, 93.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-9"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$1 $2 $3 $4 $5 $6 7",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 643.0, 292.0, 111.0, 16.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-10"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$1 $2 70 $2 248, $1 $2 $1 70 248",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 260.0, 203.0, 181.0, 16.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-11"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "pensize 1 1",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 413.0, 342.0, 65.0, 16.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-12"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0 0 0 90 360 28",
																	"fontname" : "Verdana",
																	"numinlets" : 7,
																	"numoutlets" : 1,
																	"patching_rect" : [ 485.0, 251.0, 125.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-13"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend framearc",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 550.0, 342.0, 97.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-14"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 70",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 413.0, 99.0, 30.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-15"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 70",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 378.0, 99.0, 29.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-16"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cartopol",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"patching_rect" : [ 378.0, 121.0, 49.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "float", "float" ],
																	"id" : "obj-17"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 70",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 483.0, 154.0, 33.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-18"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 70",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 448.0, 154.0, 33.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-19"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "!- 70",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 413.0, 154.0, 33.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-20"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "!- 70",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 378.0, 154.0, 33.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-21"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0 0 0 255",
																	"fontname" : "Verdana",
																	"numinlets" : 5,
																	"numoutlets" : 1,
																	"patching_rect" : [ 378.0, 176.0, 153.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-22"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend frameoval",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 378.0, 251.0, 102.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-23"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0 70 70 212",
																	"fontname" : "Verdana",
																	"numinlets" : 5,
																	"numoutlets" : 1,
																	"patching_rect" : [ 251.0, 154.0, 105.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-24"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend linesegment",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 251.0, 251.0, 113.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-25"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 3",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 138.0, 154.0, 27.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-26"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 3",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 109.0, 154.0, 27.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-27"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 3",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 80.0, 154.0, 27.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-28"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 3",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 51.0, 154.0, 27.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-29"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0 0 0 255",
																	"fontname" : "Verdana",
																	"numinlets" : 5,
																	"numoutlets" : 1,
																	"patching_rect" : [ 51.0, 185.0, 127.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-30"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend paintoval",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 51.0, 251.0, 98.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-31"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"patching_rect" : [ 51.0, 65.0, 44.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int", "int" ],
																	"id" : "obj-32"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 51.0, 395.0, 15.0, 15.0 ],
																	"id" : "obj-33",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 51.0, 31.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-34",
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 60.0, 54.0, 860.5, 54.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-13", 5 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 1 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-13", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-13", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-13", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-22", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
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
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-22", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
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
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 494.5, 311.0, 422.5, 311.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-22", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
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
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-17", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 1 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 1 ],
																	"destination" : [ "obj-24", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
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
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
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
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
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
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-30", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 1 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-30", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-28", 0 ],
																	"destination" : [ "obj-30", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 1 ],
																	"destination" : [ "obj-28", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
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
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Verdana",
														"fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"fontface" : 0,
														"fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 46.0, 50.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 219.0, 308.0, 15.0, 15.0 ],
													"id" : "obj-3",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 172.0, 308.0, 15.0, 15.0 ],
													"id" : "obj-4",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0 0",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 219.0, 81.0, 25.0, 16.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "70 70",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 129.0, 81.0, 37.0, 16.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-6"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 129.0, 50.0, 54.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "bang" ],
													"id" : "obj-7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "local 0",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 172.0, 81.0, 41.0, 16.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-8"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 0 ],
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
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0 0",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 94.0, 120.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale -1. 1. 140 0",
									"fontname" : "Verdana",
									"numinlets" : 6,
									"numoutlets" : 1,
									"patching_rect" : [ 160.0, 66.0, 97.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "float" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale -1. 1. 0 140",
									"fontname" : "Verdana",
									"numinlets" : 6,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 66.0, 97.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "float" ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 160.0, 30.0, 15.0, 15.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-5",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-6",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 159.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 1 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "lcd",
					"numinlets" : 1,
					"numoutlets" : 4,
					"patching_rect" : [ 187.0, 310.0, 140.0, 140.0 ],
					"outlettype" : [ "list", "list", "int", "" ],
					"id" : "obj-16",
					"local" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0. 0. 0.",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 42.0, 226.0, 124.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "float", "float", "float" ],
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 147.0, 258.0, 39.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-18",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 42.0, 258.0, 39.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-19",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 94.0, 258.0, 39.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-20",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.aed2xyz",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 12.0, 12.0, 145.0, 28.0 ],
					"fontsize" : 17.334082,
					"id" : "obj-21",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "SpatDIF-compliant convertion from spherical to Cartesian coordinates",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 37.0, 356.0, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-22",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7.0, 7.0, 358.0, 49.0 ],
					"id" : "obj-23",
					"rounded" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 0. 0. 0.",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"numoutlets" : 1,
					"patching_rect" : [ 42.0, 118.0, 124.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.aed2xyz",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 42.0, 167.0, 88.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 147.0, 94.0, 39.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-26",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 42.0, 94.0, 39.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-27",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 94.0, 94.0, 39.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-28",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "azimut",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 42.0, 79.0, 46.0, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"background" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"items" : [ "More", "about", "SpatDIF", "coordiate", "systems" ],
					"menumode" : 2,
					"numoutlets" : 3,
					"types" : [  ],
					"labelclick" : 1,
					"patching_rect" : [ 12.0, 459.0, 200.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-30",
					"textcolor" : [ 0.164706, 0.121569, 0.913725, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [ 156.5, 278.0, 285.5, 278.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-17", 2 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-24", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
