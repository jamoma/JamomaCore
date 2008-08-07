{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ -9.0, 87.0, 742.0, 316.0 ],
		"bglocked" : 0,
		"defrect" : [ -9.0, 87.0, 742.0, 316.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p testing_unity_intensity",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-2",
					"fontsize" : 10.0,
					"patching_rect" : [ 270.0, 215.0, 136.0, 19.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 145.0, 75.0, 962.0, 770.0 ],
						"bglocked" : 0,
						"defrect" : [ 145.0, 75.0, 962.0, 770.0 ],
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
									"text" : "jcom.test.assert.equal TESTdbap_num_destinations 6",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 0,
									"id" : "obj-46",
									"fontsize" : 10.0,
									"patching_rect" : [ 640.0, 440.0, 282.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl len",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 2,
									"id" : "obj-45",
									"fontsize" : 10.0,
									"patching_rect" : [ 640.0, 340.0, 37.0, 19.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.test.assert.equal TESTdbap_unity_intensity 1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 0,
									"id" : "obj-42",
									"fontsize" : 10.0,
									"patching_rect" : [ 155.0, 440.0, 267.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "We're not checking for $f1==1., but rather doing a delta test, in case of round of errors.",
									"linecount" : 4,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-41",
									"fontsize" : 10.0,
									"patching_rect" : [ 350.0, 375.0, 167.0, 55.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if abs($f1-1.)<0.001 then 1 else 0",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-39",
									"fontsize" : 10.0,
									"patching_rect" : [ 155.0, 390.0, 184.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p random_src_position",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-36",
									"fontsize" : 10.0,
									"patching_rect" : [ 175.0, 145.0, 125.0, 19.0 ],
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 50.0, 94.0, 640.0, 480.0 ],
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
													"text" : "t 2 b",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-14",
													"fontsize" : 10.0,
													"patching_rect" : [ 55.0, 100.0, 34.0, 19.0 ],
													"outlettype" : [ "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0. 1000. -10. 10.",
													"fontname" : "Verdana",
													"numinlets" : 6,
													"numoutlets" : 1,
													"id" : "obj-15",
													"fontsize" : 10.0,
													"patching_rect" : [ 360.0, 160.0, 126.0, 19.0 ],
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "random 1000 3",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-16",
													"fontsize" : 10.0,
													"patching_rect" : [ 360.0, 135.0, 88.0, 19.0 ],
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0. 1000. -10. 10.",
													"fontname" : "Verdana",
													"numinlets" : 6,
													"numoutlets" : 1,
													"id" : "obj-17",
													"fontsize" : 10.0,
													"patching_rect" : [ 225.0, 160.0, 126.0, 19.0 ],
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "random 1000 2",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-18",
													"fontsize" : 10.0,
													"patching_rect" : [ 225.0, 135.0, 88.0, 19.0 ],
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0. 1000. -10. 10.",
													"fontname" : "Verdana",
													"numinlets" : 6,
													"numoutlets" : 1,
													"id" : "obj-19",
													"fontsize" : 10.0,
													"patching_rect" : [ 80.0, 160.0, 126.0, 19.0 ],
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "random 1000 1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-20",
													"fontsize" : 10.0,
													"patching_rect" : [ 80.0, 135.0, 88.0, 19.0 ],
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend src_position",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"id" : "obj-23",
													"fontsize" : 10.0,
													"patching_rect" : [ 55.0, 225.0, 116.0, 19.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0 0. 0. 0.",
													"fontname" : "Verdana",
													"numinlets" : 4,
													"numoutlets" : 1,
													"id" : "obj-24",
													"fontsize" : 10.0,
													"patching_rect" : [ 55.0, 200.0, 84.0, 19.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-34",
													"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-35",
													"patching_rect" : [ 55.0, 304.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-24", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-24", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-24", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [ 79.5, 127.0, 89.5, 127.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [ 79.5, 121.0, 234.5, 121.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 79.5, 121.0, 369.5, 121.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p random_dst_position",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-32",
									"fontsize" : 10.0,
									"patching_rect" : [ 345.0, 170.0, 126.0, 19.0 ],
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 50.0, 94.0, 640.0, 480.0 ],
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
													"text" : "prepend dst_position",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 1,
													"id" : "obj-22",
													"fontsize" : 10.0,
													"patching_rect" : [ 50.0, 230.0, 116.0, 19.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t i b",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-10",
													"fontsize" : 10.0,
													"patching_rect" : [ 50.0, 100.0, 32.5, 19.0 ],
													"outlettype" : [ "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0. 1000. -10. 10.",
													"fontname" : "Verdana",
													"numinlets" : 6,
													"numoutlets" : 1,
													"id" : "obj-8",
													"fontsize" : 10.0,
													"patching_rect" : [ 360.0, 160.0, 126.0, 19.0 ],
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "random 1000 3",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-9",
													"fontsize" : 10.0,
													"patching_rect" : [ 360.0, 135.0, 88.0, 19.0 ],
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0. 1000. -10. 10.",
													"fontname" : "Verdana",
													"numinlets" : 6,
													"numoutlets" : 1,
													"id" : "obj-5",
													"fontsize" : 10.0,
													"patching_rect" : [ 225.0, 160.0, 126.0, 19.0 ],
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "random 1000 2",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-6",
													"fontsize" : 10.0,
													"patching_rect" : [ 225.0, 135.0, 88.0, 19.0 ],
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0. 1000. -10. 10.",
													"fontname" : "Verdana",
													"numinlets" : 6,
													"numoutlets" : 1,
													"id" : "obj-4",
													"fontsize" : 10.0,
													"patching_rect" : [ 80.0, 160.0, 126.0, 19.0 ],
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "random 1000 1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-3",
													"fontsize" : 10.0,
													"patching_rect" : [ 80.0, 135.0, 88.0, 19.0 ],
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0 0. 0. 0.",
													"fontname" : "Verdana",
													"numinlets" : 4,
													"numoutlets" : 1,
													"id" : "obj-21",
													"fontsize" : 10.0,
													"patching_rect" : [ 50.0, 200.0, 84.0, 19.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-25",
													"patching_rect" : [ 50.0, 45.0, 25.0, 25.0 ],
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-27",
													"patching_rect" : [ 50.0, 265.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [ 73.0, 127.0, 89.5, 127.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [ 73.0, 121.0, 234.5, 121.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 73.0, 121.0, 369.5, 121.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-21", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-21", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-21", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-12",
									"fontsize" : 10.0,
									"patching_rect" : [ 155.0, 110.0, 46.0, 19.0 ],
									"outlettype" : [ "bang", "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl sum",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 2,
									"id" : "obj-31",
									"fontsize" : 10.0,
									"patching_rect" : [ 155.0, 355.0, 43.0, 19.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1*$f1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-30",
									"fontsize" : 10.0,
									"patching_rect" : [ 155.0, 330.0, 81.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl group",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 2,
									"id" : "obj-28",
									"fontsize" : 10.0,
									"patching_rect" : [ 155.0, 280.0, 51.0, 19.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 2,
									"id" : "obj-26",
									"fontsize" : 10.0,
									"patching_rect" : [ 175.0, 240.0, 54.0, 19.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi 6 0",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 3,
									"id" : "obj-7",
									"fontsize" : 10.0,
									"patching_rect" : [ 315.0, 145.0, 46.0, 19.0 ],
									"outlettype" : [ "bang", "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dbap @num_destinations 6. @dimensions 2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-2",
									"fontsize" : 10.0,
									"patching_rect" : [ 175.0, 210.0, 260.0, 19.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-1",
									"patching_rect" : [ 155.0, 60.0, 25.0, 25.0 ],
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-39", 0 ],
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
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 2 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 2 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p testing_attributes",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-55",
					"fontsize" : 10.0,
					"patching_rect" : [ 465.0, 215.0, 110.0, 19.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 37.0, 294.0, 1396.0, 658.0 ],
						"bglocked" : 0,
						"defrect" : [ 37.0, 294.0, 1396.0, 658.0 ],
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
									"text" : "jcom.test.assert.equal TESTdbap_setrolloff 2.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 0,
									"id" : "obj-27",
									"fontsize" : 10.0,
									"patching_rect" : [ 645.0, 410.0, 240.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.test.assert.equal TESTdbap_setnum_destinations 4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 0,
									"id" : "obj-28",
									"fontsize" : 10.0,
									"patching_rect" : [ 590.0, 430.0, 297.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.test.assert.equal TESTdbap_setdimensions 1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 0,
									"id" : "obj-29",
									"fontsize" : 10.0,
									"patching_rect" : [ 535.0, 450.0, 264.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.test.assert.equal TESTdbap_setblur 1.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 0,
									"id" : "obj-30",
									"fontsize" : 10.0,
									"patching_rect" : [ 475.0, 470.0, 231.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route blur dimensions num_destinations rolloff",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 475.0, 385.0, 0.0, 0.0 ],
									"numoutlets" : 5,
									"id" : "obj-31",
									"fontsize" : 10.0,
									"patching_rect" : [ 475.0, 385.0, 246.0, 19.0 ],
									"outlettype" : [ "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "blur 1., dimensions 1, num_destinations 4, rolloff 2., getblur, getdimensions, getnum_destinations, getrolloff",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"presentation_rect" : [ 125.0, 330.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"id" : "obj-32",
									"fontsize" : 10.0,
									"patching_rect" : [ 125.0, 285.0, 289.0, 29.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dbap",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-33",
									"fontsize" : 10.0,
									"patching_rect" : [ 125.0, 355.0, 370.0, 19.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.test.assert.equal TESTdbap_getrolloff 4.2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 0,
									"id" : "obj-26",
									"fontsize" : 10.0,
									"patching_rect" : [ 645.0, 200.0, 248.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.test.assert.equal TESTdbap_getnum_destinations 12",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 0,
									"id" : "obj-25",
									"fontsize" : 10.0,
									"patching_rect" : [ 590.0, 220.0, 305.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.test.assert.equal TESTdbap_getdimensions 3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 0,
									"id" : "obj-24",
									"fontsize" : 10.0,
									"patching_rect" : [ 535.0, 240.0, 265.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.test.assert.equal TESTdbap_getblur 2.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 0,
									"id" : "obj-23",
									"fontsize" : 10.0,
									"patching_rect" : [ 475.0, 260.0, 232.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route blur dimensions num_destinations rolloff",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 5,
									"id" : "obj-19",
									"fontsize" : 10.0,
									"patching_rect" : [ 475.0, 175.0, 246.0, 19.0 ],
									"outlettype" : [ "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getblur, getdimensions, getnum_destinations, getrolloff",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-5",
									"fontsize" : 10.0,
									"patching_rect" : [ 125.0, 120.0, 290.0, 17.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dbap @blur 2. @dimensions 3 @num_destinations 12 @rolloff 4.2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-4",
									"fontsize" : 10.0,
									"patching_rect" : [ 125.0, 145.0, 371.0, 19.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-1",
									"patching_rect" : [ 105.0, 50.0, 25.0, 25.0 ],
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 1 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 2 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 3 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-32", 0 ],
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
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 2 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 3 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-48",
					"patching_rect" : [ 270.0, 180.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-49",
					"patching_rect" : [ 465.0, 180.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b b",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-50",
					"fontsize" : 10.0,
					"patching_rect" : [ 135.0, 95.0, 46.0, 19.0 ],
					"outlettype" : [ "bang", "bang", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-51",
					"fontsize" : 10.0,
					"patching_rect" : [ 135.0, 70.0, 56.0, 19.0 ],
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-52",
					"patching_rect" : [ 135.0, 45.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-53",
					"fontsize" : 10.0,
					"patching_rect" : [ 135.0, 215.0, 67.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.test.finished",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-54",
					"fontsize" : 10.0,
					"patching_rect" : [ 135.0, 190.0, 100.0, 19.0 ],
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 1 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 2 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
