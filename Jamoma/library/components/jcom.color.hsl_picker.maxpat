{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 841.0, 156.0, 697.0, 523.0 ],
		"bglocked" : 0,
		"defrect" : [ 841.0, 156.0, 697.0, 523.0 ],
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
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"numinlets" : 0,
					"patching_rect" : [ 427.0, 42.0, 29.0, 29.0 ],
					"numoutlets" : 1,
					"comment" : "connect to jcom.parameter"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-2",
					"numinlets" : 1,
					"patching_rect" : [ 402.0, 235.0, 29.0, 29.0 ],
					"numoutlets" : 0,
					"comment" : "connect to jcom.parameter"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p local_brain",
					"outlettype" : [ "", "", "", "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-3",
					"fontsize" : 9.873845,
					"numinlets" : 5,
					"patching_rect" : [ 296.0, 96.0, 150.0, 18.0 ],
					"numoutlets" : 6,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 137.0, 320.0, 1112.0, 643.0 ],
						"bglocked" : 0,
						"defrect" : [ 137.0, 320.0, 1112.0, 643.0 ],
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
						"visible" : 1,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 0. 0.",
									"outlettype" : [ "float", "float", "float" ],
									"fontname" : "Verdana",
									"id" : "obj-44",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 211.0, 177.0, 99.0, 19.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace color @input rgb @output hsl",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"id" : "obj-24",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 315.0, 139.0, 325.0, 20.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "to jcom.parameter",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-1",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 412.0, 523.0, 88.0, 30.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "to colorswatch",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-2",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 831.0, 523.0, 67.0, 30.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "to panel displaying selected color",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-3",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 295.0, 523.0, 105.0, 30.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "to HSL number boxes",
									"fontname" : "Verdana",
									"id" : "obj-4",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 71.0, 523.0, 137.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "from HSL number boxes",
									"fontname" : "Verdana",
									"id" : "obj-5",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 80.0, 24.0, 137.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "from colorswatch",
									"fontname" : "Verdana",
									"id" : "obj-6",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 333.0, 42.0, 137.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- update displayed color",
									"fontname" : "Verdana",
									"id" : "obj-7",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 689.0, 53.0, 137.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 668.0, 90.0, 53.0, 18.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-9",
									"numinlets" : 1,
									"patching_rect" : [ 294.0, 498.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p display_color",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 294.0, 465.0, 83.0, 18.0 ],
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 331.0, 63.0, 446.0, 275.0 ],
										"bglocked" : 0,
										"defrect" : [ 331.0, 63.0, 446.0, 275.0 ],
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
										"visible" : 1,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"numinlets" : 0,
													"patching_rect" : [ 50.0, 25.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim 40",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"id" : "obj-2",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 136.0, 46.0, 18.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "round",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"id" : "obj-3",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 51.0, 39.0, 18.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.dataspace @dataspace color @input hsl @output rgb",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"id" : "obj-5",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 80.0, 301.0, 18.0 ],
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend bgcolor",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"id" : "obj-6",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 108.0, 91.0, 18.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 169.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-2", 0 ],
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
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l l",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 668.0, 112.0, 173.0, 18.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 0. 0.",
									"outlettype" : [ "float", "float", "float" ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 668.0, 138.0, 84.0, 18.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"numinlets" : 0,
									"patching_rect" : [ 668.0, 41.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-14",
									"numinlets" : 1,
									"patching_rect" : [ 830.0, 498.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "round",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-15",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 830.0, 384.0, 39.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-16",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 830.0, 468.0, 68.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace color @input hsl @output rgb",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-18",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 830.0, 411.0, 301.0, 18.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "round",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-19",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 830.0, 436.0, 39.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-20",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 205.0, 322.0, 68.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-21",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 140.0, 322.0, 68.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-22",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 75.0, 322.0, 68.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"outlettype" : [ "bang" ],
									"fontname" : "Verdana",
									"id" : "obj-23",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 26.0, 130.0, 22.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0. 0. 0.",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-25",
									"fontsize" : 9.873845,
									"numinlets" : 3,
									"patching_rect" : [ 413.0, 320.0, 140.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"id" : "obj-26",
									"numinlets" : 0,
									"patching_rect" : [ 150.0, 41.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"id" : "obj-27",
									"numinlets" : 0,
									"patching_rect" : [ 114.0, 41.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"id" : "obj-28",
									"numinlets" : 0,
									"patching_rect" : [ 78.0, 41.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-29",
									"numinlets" : 0,
									"patching_rect" : [ 315.0, 41.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-30",
									"numinlets" : 1,
									"patching_rect" : [ 205.0, 498.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-31",
									"numinlets" : 1,
									"patching_rect" : [ 140.0, 498.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-32",
									"numinlets" : 1,
									"patching_rect" : [ 75.0, 498.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-33",
									"numinlets" : 1,
									"patching_rect" : [ 413.0, 498.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "from jcom.parameter:",
									"fontname" : "Verdana",
									"id" : "obj-34",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 689.0, 41.0, 137.0, 18.0 ],
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 2 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 2 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 324.5, 401.0, 422.0, 401.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 324.5, 170.0, 220.5, 170.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"color" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"color" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-12", 2 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 754.5, 457.0, 303.5, 457.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"color" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"color" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"color" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-25", 2 ],
									"hidden" : 0,
									"color" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-14", 0 ],
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
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"htextcolor" : [ 0.419608, 0.419608, 0.419608, 1.0 ],
					"id" : "obj-4",
					"minimum" : 0.0,
					"presentation_rect" : [ 162.0, 46.0, 38.0, 19.0 ],
					"fontsize" : 10.0,
					"maximum" : 100.0,
					"numinlets" : 1,
					"triscale" : 0.9,
					"patching_rect" : [ 370.0, 129.0, 34.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"htextcolor" : [ 0.419608, 0.419608, 0.419608, 1.0 ],
					"id" : "obj-5",
					"minimum" : 0.0,
					"presentation_rect" : [ 123.0, 46.0, 38.0, 19.0 ],
					"fontsize" : 10.0,
					"maximum" : 100.0,
					"numinlets" : 1,
					"triscale" : 0.9,
					"patching_rect" : [ 333.0, 129.0, 34.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"htextcolor" : [ 0.419608, 0.419608, 0.419608, 1.0 ],
					"id" : "obj-6",
					"minimum" : 0.0,
					"presentation_rect" : [ 84.0, 46.0, 38.0, 19.0 ],
					"fontsize" : 10.0,
					"maximum" : 360.0,
					"numinlets" : 1,
					"triscale" : 0.9,
					"patching_rect" : [ 296.0, 129.0, 34.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "swatch",
					"compatibility" : 1,
					"outlettype" : [ "", "float" ],
					"id" : "obj-7",
					"presentation_rect" : [ 49.0, 0.0, 150.0, 44.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 108.0, 90.0, 143.0, 44.0 ],
					"presentation" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "HSL:",
					"fontname" : "Verdana",
					"id" : "obj-8",
					"presentation_rect" : [ 50.0, 47.0, 33.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 109.0, 137.0, 33.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"id" : "obj-9",
					"presentation_rect" : [ 0.0, 0.0, 44.0, 64.0 ],
					"border" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 59.0, 90.0, 44.0, 64.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 255.0, 255.0, 255.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"id" : "obj-10",
					"presentation_rect" : [ 0.0, 0.0, 204.0, 75.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 59.0, 90.0, 204.0, 75.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-3", 3 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 384.100006, 194.0, 49.0, 194.0, 49.0, 71.0, 68.5, 71.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 5 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 436.5, 125.0, 456.0, 125.0, 456.0, 78.0, 117.5, 78.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 2 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 305.5, 154.0, 287.0, 154.0, 287.0, 92.0, 305.5, 92.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [ 342.5, 161.0, 282.0, 161.0, 282.0, 90.0, 338.25, 90.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 2 ],
					"hidden" : 0,
					"midpoints" : [ 379.5, 165.0, 277.0, 165.0, 277.0, 87.0, 371.0, 87.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-3", 3 ],
					"hidden" : 0,
					"midpoints" : [ 117.5, 137.0, 272.0, 137.0, 272.0, 83.0, 403.75, 83.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 4 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
