{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 119.0, 172.0, 1295.0, 851.0 ],
		"bglocked" : 0,
		"defrect" : [ 119.0, 172.0, 1295.0, 851.0 ],
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
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"patching_rect" : [ 235.0, 20.0, 60.0, 45.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-46",
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 235.0, 20.0, 60.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p mouse-stuff",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 21.0, 198.0, 78.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 168.0, 44.0, 568.0, 547.0 ],
						"bglocked" : 0,
						"defrect" : [ 168.0, 44.0, 568.0, 547.0 ],
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
									"maxclass" : "comment",
									"text" : "Tried to implement a system where the current offset and zoom level would be remembered when the mouse is used next time. Got some feedback problems, so I took it out, but it would be a nice feature... ",
									"linecount" : 5,
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 335.0, 301.0, 228.0, 66.0 ],
									"numoutlets" : 0,
									"id" : "obj-1",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/offset_y $1",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"patching_rect" : [ 226.0, 358.0, 70.0, 16.0 ],
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/offset_x $1",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"patching_rect" : [ 133.0, 358.0, 70.0, 16.0 ],
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/zoom $1",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"patching_rect" : [ 58.0, 358.0, 56.0, 16.0 ],
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p thru",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 226.0, 296.0, 39.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 30.0, 89.0, 271.0, 247.0 ],
										"bglocked" : 0,
										"defrect" : [ 30.0, 89.0, 271.0, 247.0 ],
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
													"numinlets" : 1,
													"patching_rect" : [ 110.0, 89.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-1",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 110.0, 47.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "int" ],
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
										"fontface" : 0,
										"default_fontsize" : 10.0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p thru",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 133.0, 296.0, 39.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 30.0, 89.0, 271.0, 247.0 ],
										"bglocked" : 0,
										"defrect" : [ 30.0, 89.0, 271.0, 247.0 ],
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
													"numinlets" : 1,
													"patching_rect" : [ 110.0, 89.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-1",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 110.0, 47.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "int" ],
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
										"fontface" : 0,
										"default_fontsize" : 10.0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p thru",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 58.0, 296.0, 39.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 30.0, 89.0, 271.0, 247.0 ],
										"bglocked" : 0,
										"defrect" : [ 30.0, 89.0, 271.0, 247.0 ],
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
													"numinlets" : 1,
													"patching_rect" : [ 110.0, 89.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-1",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 110.0, 47.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "float" ],
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
										"fontface" : 0,
										"default_fontsize" : 10.0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 82.0, 21.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 133.0, 462.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-9",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 141.0, 120.0, 22.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "int" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"patching_rect" : [ 141.0, 96.0, 32.0, 18.0 ],
									"numoutlets" : 2,
									"id" : "obj-11",
									"outlettype" : [ "bang", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 103.0, 120.0, 22.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "int" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"patching_rect" : [ 69.0, 159.0, 50.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "clip -200 200",
									"numinlets" : 3,
									"fontsize" : 9.873845,
									"patching_rect" : [ 253.0, 206.0, 74.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-14",
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale -200 200 2. 0.",
									"numinlets" : 6,
									"fontsize" : 9.873845,
									"patching_rect" : [ 253.0, 232.0, 109.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-15",
									"outlettype" : [ "float" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0 0 0 0 0",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 173.0, 181.0, 103.0, 18.0 ],
									"numoutlets" : 6,
									"id" : "obj-16",
									"outlettype" : [ "int", "int", "int", "int", "int", "int" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Find change in mouse position to control the offset.",
									"linecount" : 3,
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 192.0, 98.0, 101.0, 42.0 ],
									"numoutlets" : 0,
									"id" : "obj-17",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0 0 0 0 0",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 69.0, 182.0, 103.0, 18.0 ],
									"numoutlets" : 6,
									"id" : "obj-18",
									"outlettype" : [ "int", "int", "int", "int", "int", "int" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 2 4",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 82.0, 96.0, 54.0, 18.0 ],
									"numoutlets" : 3,
									"id" : "obj-19",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.pwindow.mouse",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 82.0, 73.0, 116.0, 18.0 ],
									"numoutlets" : 2,
									"id" : "obj-20",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
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
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 4 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-11", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 5 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-16", 5 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontsize" : 10.0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub[1]",
					"text" : "jcom.oscroute /preview_dumpout",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 21.0, 177.0, 176.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-2",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 397.0, 253.0, 52.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-3",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 397.0, 136.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 411.0, 136.0, 75.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-5",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 397.0, 154.0, 85.0, 18.0 ],
					"numoutlets" : 3,
					"id" : "obj-6",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 188.0, 198.0, 54.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 188.0, 177.0, 86.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-8",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /zoom /offset_x /offset_y",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 84.0, 263.0, 209.0, 18.0 ],
					"numoutlets" : 4,
					"id" : "obj-9",
					"outlettype" : [ "", "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "angle[1]",
					"text" : "jcom.parameter angle @type msg_int @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0 90 @range/clipmode none @description \"Rotate image - in degrees\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 676.0, 441.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-11",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "offset_y",
					"text" : "jcom.parameter offset_y @type msg_int @ramp/drive scheduler @repetitions/allow 0 @range/bounds -1000 1000 @range/clipmode none @description \"Offset image in Y-direction\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 433.0, 480.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-13",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "rotate2[1]",
					"text" : "jcom.parameter rotate2 @type msg_toggle @description \"Flip vertical\"",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 562.0, 361.0, 18.0 ],
					"numoutlets" : 3,
					"id" : "obj-15",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "angle",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 16.726171, 653.809937, 30.0, 19.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-16",
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 203.0, 49.0, 30.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "angle",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 130.0, 42.0, 36.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"presentation_rect" : [ 169.0, 49.471767, 36.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "mirror",
					"numinlets" : 1,
					"patching_rect" : [ 18.027332, 597.412231, 18.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 207.0, 23.0, 18.0, 18.0 ],
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mirror",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 145.0, 23.0, 43.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"presentation_rect" : [ 172.0, 24.0, 43.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "rotate2",
					"numinlets" : 1,
					"patching_rect" : [ 16.432917, 541.315674, 18.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 148.0, 23.0, 18.0, 18.0 ],
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "rotate1",
					"numinlets" : 1,
					"patching_rect" : [ 16.001823, 481.967194, 18.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 120.495972, 23.0, 18.0, 18.0 ],
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "offset-Y",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 18.082575, 406.659973, 30.0, 19.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-23",
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 130.959671, 49.0, 30.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "offset_x",
					"text" : "jcom.parameter offset_x @type msg_int @ramp/drive scheduler @repetitions/allow 0 @range/bounds -1000 1000 @range/clipmode none @description \"Offset image in X-direction\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 365.0, 481.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-25",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Y offset ",
					"linecount" : 6,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 79.0, 42.0, 17.0, 79.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-26",
					"fontname" : "Verdana",
					"presentation_rect" : [ 87.201653, 49.471767, 53.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mirror[1]",
					"text" : "jcom.parameter mirror @type msg_toggle @description \"Mirror image\"",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 618.0, 362.0, 18.0 ],
					"numoutlets" : 3,
					"id" : "obj-28",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "offset-X",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 17.984211, 338.36853, 30.0, 19.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-29",
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 48.495968, 49.0, 30.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "zoom",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 18.179113, 274.840912, 35.0, 19.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-30",
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 37.0, 24.0, 35.0, 19.0 ],
					"minimum" : 0.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "X offset",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 4.0, 42.0, 48.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-31",
					"fontname" : "Verdana",
					"presentation_rect" : [ 2.568561, 49.471767, 48.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "zoom",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 4.0, 24.0, 36.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-32",
					"fontname" : "Verdana",
					"presentation_rect" : [ 4.0, 24.0, 36.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 99.0, 86.0, 135.0, 16.0 ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "rotate1[1]",
					"text" : "jcom.parameter rotate1 @type msg_toggle @description \"Flip horizontal\"",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 502.0, 374.0, 18.0 ],
					"numoutlets" : 3,
					"id" : "obj-35",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "zoom[1]",
					"text" : "jcom.parameter zoom @type msg_float @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0. 10. @range/clipmode none @description \"Zoom in the image\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 299.0, 413.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-36",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 412.0, 279.0, 85.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-38",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 397.0, 279.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-39",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.orsize%",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 188.0, 223.0, 219.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-40",
					"outlettype" : [ "", "jit_matrix" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 15.0, 84.0, 86.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-41",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.orsize% @module_type video @algorithm_type jitter @description \"Orientation and size of video\"",
					"linecount" : 3,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 1.0, 109.0, 259.0, 42.0 ],
					"numoutlets" : 2,
					"id" : "obj-42",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 1.0, 171.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-43",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 1.0, 84.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-44",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "rotate X      Y",
					"linecount" : 3,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 84.0, 23.0, 39.0, 43.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-22",
					"fontname" : "Verdana",
					"presentation_rect" : [ 77.0, 24.0, 78.725761, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"prefix" : "video",
					"numinlets" : 1,
					"presentation" : 1,
					"has_mute" : 1,
					"numoutlets" : 1,
					"id" : "obj-45",
					"has_preview" : 1,
					"outlettype" : [ "" ],
					"has_bypass" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"has_freeze" : 1,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 25.5, 708.0, 3.0, 708.0, 3.0, 648.0, 26.226171, 648.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 25.5, 636.0, 3.0, 636.0, 3.0, 594.0, 27.527332, 594.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 25.5, 582.0, 3.0, 582.0, 3.0, 537.0, 25.932917, 537.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 25.5, 522.0, 3.0, 522.0, 3.0, 477.0, 25.501823, 477.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 25.5, 465.0, 3.0, 465.0, 3.0, 402.0, 27.582575, 402.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 25.5, 396.0, 3.0, 396.0, 3.0, 333.0, 27.484211, 333.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 25.5, 330.0, 3.0, 330.0, 3.0, 270.0, 27.679113, 270.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 10.5, 158.0, 30.5, 158.0 ]
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
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 108.5, 105.0, 10.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 93.5, 295.0, 25.5, 295.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 156.833328, 361.0, 25.5, 361.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 2 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 220.166672, 429.0, 25.5, 429.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 30.5, 239.0, 93.5, 239.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 439.5, 174.0, 197.5, 174.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 30.5, 219.0, 197.5, 219.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.5, 219.0, 197.5, 219.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-40", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
