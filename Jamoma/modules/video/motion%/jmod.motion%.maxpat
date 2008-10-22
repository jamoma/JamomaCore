{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 52.0, 44.0, 689.0, 697.0 ],
		"bglocked" : 0,
		"defrect" : [ 52.0, 44.0, 689.0, 697.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
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
					"varname" : "inspector[1]",
					"text" : "p more_jmod.motion%_features",
					"patching_rect" : [ 443.0, 133.0, 138.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-12",
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 256.0, 224.0, 406.0, 262.0 ],
						"bglocked" : 0,
						"defrect" : [ 256.0, 224.0, 406.0, 262.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "centroid/on[1]",
									"text" : "jcom.parameter /contraction/window/on @type msg_toggle @description \"Turn display of contraction box on or off.\"",
									"linecount" : 2,
									"patching_rect" : [ 140.0, 335.0, 253.0, 27.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-5",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "centroid/on",
									"text" : "jcom.parameter centroid/on @type msg_toggle @description \"Turn display of centre of mass on.\"",
									"linecount" : 2,
									"patching_rect" : [ 139.0, 301.0, 235.0, 27.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-6",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction/max/on",
									"text" : "jcom.parameter contraction/max/on @type msg_toggle @description \"Turn max contraction box on or off.\"",
									"linecount" : 2,
									"patching_rect" : [ 140.0, 269.0, 262.0, 27.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-7",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction/on",
									"text" : "jcom.parameter contraction/on @type msg_toggle @description \"Turn local contraction box on or off.\"",
									"linecount" : 2,
									"patching_rect" : [ 139.0, 234.0, 244.0, 27.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-8",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "max",
									"patching_rect" : [ 57.0, 274.0, 34.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"presentation_rect" : [ 37.0, 235.0, 72.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-9",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "running",
									"patching_rect" : [ 57.0, 241.0, 75.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"presentation_rect" : [ 37.0, 215.0, 75.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-22",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "centroid",
									"patching_rect" : [ 57.0, 309.0, 49.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"presentation_rect" : [ 160.0, 235.0, 73.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-23",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "windowed",
									"patching_rect" : [ 57.0, 339.0, 73.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"presentation_rect" : [ 160.0, 215.0, 73.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-48",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"hint" : "",
									"annotation" : "Turn display of centre of mass on",
									"patching_rect" : [ 120.0, 341.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ],
									"presentation" : 1,
									"numinlets" : 1,
									"presentation_rect" : [ 140.000015, 215.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-51"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"hint" : "centroid/on",
									"annotation" : "centroid/on : Turn display of centre of mass on",
									"patching_rect" : [ 120.0, 307.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ],
									"presentation" : 1,
									"numinlets" : 1,
									"presentation_rect" : [ 140.000015, 235.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-52"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 120.0, 274.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ],
									"presentation" : 1,
									"numinlets" : 1,
									"presentation_rect" : [ 7.0, 235.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-53"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 120.0, 242.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ],
									"presentation" : 1,
									"numinlets" : 1,
									"presentation_rect" : [ 7.0, 215.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-54"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"patching_rect" : [ 15.0, 144.0, 100.0, 18.0 ],
									"outlettype" : [ "bang" ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-1",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"patching_rect" : [ 2.0, 75.0, 178.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-50",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, window exec",
									"patching_rect" : [ 3.0, 95.0, 191.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-49",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"patching_rect" : [ 15.0, 124.0, 100.0, 18.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-46",
									"fontname" : "Arial",
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Size of the centre of mass",
									"patching_rect" : [ 134.0, 197.0, 164.0, 18.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"presentation_rect" : [ 37.0, 155.0, 164.0, 18.0 ],
									"numoutlets" : 0,
									"id" : "obj-44",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "centroid/size/on[2]",
									"text" : "jcom.parameter /centroid/size @type msg_int @range/bounds 0 20 @range/clipmode low @description \"Size of the centre of mass.\"",
									"linecount" : 2,
									"patching_rect" : [ 341.0, 193.0, 329.0, 27.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-43",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "size of contraction window border",
									"patching_rect" : [ 134.0, 155.0, 164.0, 18.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"presentation_rect" : [ 37.0, 124.0, 164.0, 18.0 ],
									"numoutlets" : 0,
									"id" : "obj-40",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "centroid/size/on[1]",
									"text" : "jcom.parameter /contraction/window/size @type msg_int @range/bounds 0 20 @range/clipmode low @description \"Size of the contraction window border.\"",
									"linecount" : 2,
									"patching_rect" : [ 340.0, 151.0, 334.0, 27.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-39",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "saturation",
									"patching_rect" : [ 31.0, 461.0, 76.0, 17.0 ],
									"presentation" : 1,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"presentation_rect" : [ 296.0, 123.0, 50.0, 17.0 ],
									"numoutlets" : 0,
									"id" : "obj-37",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "saturation",
									"patching_rect" : [ 414.0, 326.0, 76.0, 17.0 ],
									"presentation" : 1,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"presentation_rect" : [ 293.0, 57.0, 50.0, 17.0 ],
									"numoutlets" : 0,
									"id" : "obj-34",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "saturation",
									"patching_rect" : [ 416.0, 452.0, 76.0, 17.0 ],
									"presentation" : 1,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"presentation_rect" : [ 288.0, 184.0, 50.0, 17.0 ],
									"numoutlets" : 0,
									"id" : "obj-32",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p saturation",
									"patching_rect" : [ 461.0, 343.0, 77.0, 16.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 8.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-27",
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
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
													"text" : "route set",
													"patching_rect" : [ 130.0, 100.0, 87.0, 19.0 ],
													"outlettype" : [ "", "" ],
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-62",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "saturation $1",
													"patching_rect" : [ 50.0, 101.0, 78.0, 18.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 11.595187,
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-48",
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-7",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 135.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-8",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 90.0, 179.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-9",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-62", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"patching_rect" : [ 462.0, 330.0, 41.0, 10.0 ],
									"outlettype" : [ "" ],
									"presentation" : 1,
									"orientation" : 1,
									"bordercolor" : [ 0.141176, 0.156863, 0.458824, 1.0 ],
									"numinlets" : 1,
									"presentation_rect" : [ 253.0, 61.0, 126.0, 10.0 ],
									"numoutlets" : 1,
									"id" : "obj-29",
									"size" : 255.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p saturation",
									"patching_rect" : [ 79.0, 477.0, 77.0, 16.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 8.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-25",
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
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
													"text" : "route set",
													"patching_rect" : [ 130.0, 100.0, 87.0, 19.0 ],
													"outlettype" : [ "", "" ],
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-62",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "saturation $1",
													"patching_rect" : [ 50.0, 101.0, 78.0, 18.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 11.595187,
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-48",
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-7",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 135.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-8",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 90.0, 179.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-9",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-62", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"patching_rect" : [ 80.0, 464.0, 41.0, 10.0 ],
									"outlettype" : [ "" ],
									"presentation" : 1,
									"orientation" : 1,
									"bordercolor" : [ 0.141176, 0.156863, 0.458824, 1.0 ],
									"numinlets" : 1,
									"presentation_rect" : [ 256.0, 126.0, 125.0, 10.0 ],
									"numoutlets" : 1,
									"id" : "obj-26",
									"size" : 255.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p saturation",
									"patching_rect" : [ 466.0, 468.0, 77.0, 16.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 8.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-20",
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
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
													"text" : "route set",
													"patching_rect" : [ 130.0, 100.0, 87.0, 19.0 ],
													"outlettype" : [ "", "" ],
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-62",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "saturation $1",
													"patching_rect" : [ 50.0, 101.0, 78.0, 18.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 11.595187,
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-48",
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-7",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 135.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-8",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 90.0, 179.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-9",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-62", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "color of centroid",
									"patching_rect" : [ 492.0, 398.0, 82.0, 18.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"presentation_rect" : [ 255.0, 142.0, 82.0, 18.0 ],
									"numoutlets" : 0,
									"id" : "obj-15",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "color of max contraction box",
									"patching_rect" : [ 145.0, 399.0, 136.0, 18.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"presentation_rect" : [ 255.0, 78.0, 136.0, 18.0 ],
									"numoutlets" : 0,
									"id" : "obj-11",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : " color of local contraction box",
									"patching_rect" : [ 528.0, 268.0, 140.0, 18.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"presentation_rect" : [ 249.0, 13.0, 140.0, 18.0 ],
									"numoutlets" : 0,
									"id" : "obj-10",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "automatic centroid size adjustment",
									"patching_rect" : [ 134.0, 121.0, 164.0, 18.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"presentation_rect" : [ 37.0, 183.0, 164.0, 18.0 ],
									"numoutlets" : 0,
									"id" : "obj-36",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : " smoothing for the returned data",
									"patching_rect" : [ 134.0, 53.0, 153.0, 18.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"presentation_rect" : [ 37.0, 33.0, 153.0, 18.0 ],
									"numoutlets" : 0,
									"id" : "obj-13",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "smoothing for contraction box",
									"patching_rect" : [ 134.0, 19.0, 150.0, 18.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"presentation_rect" : [ 37.0, 68.0, 150.0, 18.0 ],
									"numoutlets" : 0,
									"id" : "obj-12",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 301.0, 198.0, 35.0, 17.0 ],
									"outlettype" : [ "int", "bang" ],
									"presentation" : 1,
									"triscale" : 0.9,
									"fontsize" : 9.0,
									"triangle" : 0,
									"numinlets" : 1,
									"presentation_rect" : [ 7.0, 156.0, 35.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-2",
									"fontname" : "Arial",
									"minimum" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "reset contraction box",
									"patching_rect" : [ 241.0, 91.0, 94.0, 15.0 ],
									"outlettype" : [ "" ],
									"presentation" : 1,
									"fontsize" : 9.0,
									"numinlets" : 2,
									"presentation_rect" : [ 41.0, 97.0, 122.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-3",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 302.0, 155.0, 35.0, 17.0 ],
									"outlettype" : [ "int", "bang" ],
									"presentation" : 1,
									"triscale" : 0.9,
									"fontsize" : 9.0,
									"triangle" : 0,
									"numinlets" : 1,
									"presentation_rect" : [ 7.0, 124.0, 35.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-4",
									"fontname" : "Arial",
									"minimum" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "data/smoothing",
									"text" : "jcom.parameter data/smoothing @type msg_float @range 0. 12. @range/clipmode low @description \"Level of smoothing for the returned data\"",
									"linecount" : 2,
									"patching_rect" : [ 340.0, 52.0, 350.0, 27.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-14",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "centroid/color",
									"text" : "jcom.parameter centroid/color @type msg_list @description \"Change color of centroid.\"",
									"linecount" : 2,
									"patching_rect" : [ 524.0, 438.0, 224.0, 27.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-16",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction/max/color",
									"text" : "jcom.parameter contraction/max/color @type msg_list @description \"Change color of max contraction box.\"",
									"linecount" : 2,
									"patching_rect" : [ 137.0, 445.0, 263.0, 27.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-17",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction/color",
									"text" : "jcom.parameter contraction/color @type msg_list @description \"Change color of local contraction box.\"",
									"linecount" : 2,
									"patching_rect" : [ 519.0, 309.0, 250.0, 27.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-18",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "centroid/size/on",
									"text" : "jcom.parameter centroid/size/on @type msg_toggle @description \"Turn on automatic size adjustment of centre of mass - based on quantity of motion.\"",
									"linecount" : 2,
									"patching_rect" : [ 340.0, 117.0, 352.0, 27.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-19",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "jmod.parameter[12]",
									"text" : "jcom.message contraction/max/reset @description \"Reset max_contraction box.\"",
									"patching_rect" : [ 340.0, 90.0, 382.0, 17.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-21",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction/slide",
									"text" : "jcom.parameter contraction/slide @type msg_float @range/bounds 0. 10. @range/clipmode low @repetitions/allow 0 @description \"The level of smoothing for contraction box.\"",
									"linecount" : 2,
									"patching_rect" : [ 340.0, 16.0, 406.0, 27.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-24",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 313.0, 123.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ],
									"presentation" : 1,
									"numinlets" : 1,
									"presentation_rect" : [ 7.0, 182.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 302.0, 19.0, 35.0, 17.0 ],
									"outlettype" : [ "float", "bang" ],
									"presentation" : 1,
									"triscale" : 0.9,
									"fontsize" : 9.0,
									"triangle" : 0,
									"numinlets" : 1,
									"presentation_rect" : [ 7.0, 69.0, 35.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-30",
									"fontname" : "Arial",
									"minimum" : 0.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"patching_rect" : [ 429.0, 396.0, 57.0, 24.0 ],
									"outlettype" : [ "", "float" ],
									"presentation" : 1,
									"compatibility" : 1,
									"numinlets" : 3,
									"presentation_rect" : [ 255.0, 159.0, 128.0, 32.0 ],
									"numoutlets" : 2,
									"id" : "obj-31"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"patching_rect" : [ 41.0, 394.0, 58.0, 25.0 ],
									"outlettype" : [ "", "float" ],
									"presentation" : 1,
									"compatibility" : 1,
									"numinlets" : 3,
									"presentation_rect" : [ 255.0, 95.0, 128.0, 32.0 ],
									"numoutlets" : 2,
									"id" : "obj-33"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"patching_rect" : [ 427.0, 268.0, 55.0, 24.0 ],
									"outlettype" : [ "", "float" ],
									"presentation" : 1,
									"compatibility" : 1,
									"numinlets" : 3,
									"presentation_rect" : [ 252.0, 30.0, 128.0, 32.0 ],
									"numoutlets" : 2,
									"id" : "obj-35"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 302.0, 54.0, 35.0, 17.0 ],
									"outlettype" : [ "float", "bang" ],
									"presentation" : 1,
									"triscale" : 0.9,
									"fontsize" : 9.0,
									"triangle" : 0,
									"numinlets" : 1,
									"presentation_rect" : [ 7.0, 32.0, 35.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-38",
									"fontname" : "Arial",
									"minimum" : 0.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 55.0, 48.0, 18.0, 18.0 ],
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-42",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Various things that might be useful :",
									"linecount" : 4,
									"patching_rect" : [ 7.0, 5.0, 68.0, 62.0 ],
									"presentation" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"presentation_rect" : [ 4.0, 4.0, 199.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-41",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"patching_rect" : [ 467.0, 455.0, 41.0, 10.0 ],
									"outlettype" : [ "" ],
									"presentation" : 1,
									"orientation" : 1,
									"bordercolor" : [ 0.141176, 0.156863, 0.458824, 1.0 ],
									"numinlets" : 1,
									"presentation_rect" : [ 256.0, 189.0, 125.0, 10.0 ],
									"numoutlets" : 1,
									"id" : "obj-47",
									"size" : 255.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 1.0, 0.0, 81.0, 72.0 ],
									"presentation" : 1,
									"rounded" : 0,
									"numinlets" : 1,
									"presentation_rect" : [ -2.0, -2.0, 404.0, 268.0 ],
									"numoutlets" : 0,
									"id" : "obj-45",
									"background" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 1 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 470.5, 359.0, 420.0, 359.0, 420.0, 262.0, 436.5, 262.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 88.5, 497.0, 31.0, 497.0, 31.0, 392.0, 50.5, 392.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-25", 1 ],
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
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 475.5, 493.0, 416.0, 493.0, 416.0, 391.0, 438.5, 391.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 436.5, 301.0, 528.5, 301.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 50.5, 431.0, 146.5, 431.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 438.5, 430.0, 512.0, 430.0, 512.0, 430.0, 533.5, 430.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 1 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"patching_rect" : [ 106.0, 78.0, 152.0, 15.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-1",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 443.0, 109.0, 43.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-2",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"patching_rect" : [ 443.0, 85.0, 36.0, 17.0 ],
					"outlettype" : [ "open" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-3",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"patching_rect" : [ 443.0, 61.0, 116.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-4",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command output",
					"patching_rect" : [ 25.0, 170.0, 78.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-6",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"patching_rect" : [ 443.0, 200.0, 45.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-7",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 409.0, 4.0, 25.0, 25.0 ],
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-8",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"patching_rect" : [ 441.0, 3.0, 68.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-9",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"patching_rect" : [ 409.0, 36.0, 47.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-10",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "color[1]",
					"text" : "jcom.parameter color @type msg_toggle @description \"Color or greyscale\"",
					"patching_rect" : [ 33.681591, 636.0, 310.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-11",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "color",
					"patching_rect" : [ 33.681591, 614.731506, 18.0, 18.0 ],
					"outlettype" : [ "" ],
					"presentation" : 1,
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 217.181885, 22.545475, 18.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-13",
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "color",
					"patching_rect" : [ 144.0, 24.0, 35.0, 19.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 185.545471, 23.545475, 41.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-14",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 584.0, 109.0, 43.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-15",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"patching_rect" : [ 584.0, 85.0, 74.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-16",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "edge/threshold",
					"text" : "jcom.parameter edge/threshold @type msg_float @description \"Edge threshold\"",
					"patching_rect" : [ 33.681591, 574.0, 330.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-17",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "edge_threshold",
					"patching_rect" : [ 33.681591, 553.139709, 43.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1,
					"triscale" : 0.9,
					"fontsize" : 10.0,
					"triangle" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 190.909256, 45.409161, 43.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"minimum" : 0.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "edge_algorithm",
					"types" : [  ],
					"pattrmode" : 1,
					"patching_rect" : [ 33.681591, 497.502655, 106.0, 19.0 ],
					"outlettype" : [ "int", "", "" ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"items" : [ "None", ",", "Sobel", ",", "Prewitt", ",", "Robcross" ],
					"numinlets" : 1,
					"presentation_rect" : [ 134.090958, 45.409161, 55.727364, 19.0 ],
					"numoutlets" : 3,
					"id" : "obj-20",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "edge",
					"patching_rect" : [ 89.0, 42.0, 35.0, 19.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 102.545471, 46.545467, 37.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-21",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "slide",
					"patching_rect" : [ 33.681591, 439.504639, 41.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1,
					"triscale" : 0.9,
					"fontsize" : 10.0,
					"triangle" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 58.181892, 44.636425, 43.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-22",
					"fontname" : "Verdana",
					"minimum" : 0.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "trails",
					"patching_rect" : [ 33.681591, 380.776672, 18.0, 18.0 ],
					"outlettype" : [ "" ],
					"presentation" : 1,
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 38.954628, 45.636425, 18.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-23",
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "trails",
					"patching_rect" : [ 4.0, 42.0, 35.0, 19.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 9.545473, 46.545467, 33.759708, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-24",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "edge/algorithm",
					"text" : "jcom.parameter edge/algorithm @type msg_symbol @description \"Edge detection\"",
					"patching_rect" : [ 33.681591, 518.0, 341.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-25",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "slide[1]",
					"text" : "jcom.parameter slide @type msg_float @description \"Level of slide for thre trails\"",
					"patching_rect" : [ 33.681591, 460.0, 333.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-27",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "trails[1]",
					"text" : "jcom.parameter trails @type msg_toggle @description \"Trails - ghostlike image\"",
					"patching_rect" : [ 33.681591, 402.0, 329.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-29",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "noise",
					"patching_rect" : [ 33.681591, 318.730713, 18.0, 18.0 ],
					"outlettype" : [ "" ],
					"presentation" : 1,
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 155.727371, 22.545475, 18.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-31",
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "noise[1]",
					"text" : "jcom.parameter noise @type msg_toggle @description \"Noise reduction\"",
					"patching_rect" : [ 33.681591, 341.0, 301.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-32",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "noise",
					"patching_rect" : [ 89.0, 24.0, 37.0, 19.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 122.545471, 23.545475, 41.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-34",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 443.0, 233.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-35",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "threshold",
					"patching_rect" : [ 33.681591, 254.775513, 43.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1,
					"triscale" : 0.9,
					"fontsize" : 10.0,
					"triangle" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 58.181892, 22.545475, 43.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-36",
					"fontname" : "Verdana",
					"minimum" : 0.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "threshold",
					"patching_rect" : [ 4.0, 24.0, 58.0, 19.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 3.545471, 23.545475, 65.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-37",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "documentation/generate",
					"patching_rect" : [ 123.0, 95.0, 108.0, 15.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-38",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "threshold[1]",
					"text" : "jcom.parameter threshold @type msg_float @description \\\"Threshold\\\"",
					"patching_rect" : [ 33.681591, 275.0, 292.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-39",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"patching_rect" : [ 471.0, 238.0, 78.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-41",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.motion%",
					"patching_rect" : [ 443.0, 169.0, 62.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-42",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"patching_rect" : [ 28.0, 94.0, 72.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-43",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type video @algorithm_type jitter @description \"Motion-related analysis\"",
					"patching_rect" : [ 1.0, 134.0, 381.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-44",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 1.0, 165.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-45",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 1.0, 92.0, 25.0, 25.0 ],
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-46",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"patching_rect" : [ 237.0, 22.0, 60.0, 45.0 ],
					"outlettype" : [ "", "" ],
					"presentation" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 236.545273, 22.31801, 60.0, 45.0 ],
					"numoutlets" : 2,
					"id" : "obj-48"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"outlettype" : [ "" ],
					"has_bypass" : 1,
					"presentation" : 1,
					"has_preview" : 1,
					"has_freeze" : 1,
					"has_panel" : 1,
					"numinlets" : 1,
					"prefix" : "video",
					"presentation_rect" : [ -0.227469, 0.318011, 300.0, 70.0 ],
					"numoutlets" : 1,
					"has_mute" : 1,
					"id" : "obj-49"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 115.5, 114.0, 10.5, 114.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 132.5, 114.0, 10.5, 114.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 43.181591, 294.0, 25.0, 294.0, 25.0, 249.0, 43.181591, 249.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 43.181591, 360.0, 26.0, 360.0, 26.0, 315.0, 43.181591, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 43.181591, 420.0, 25.0, 420.0, 25.0, 375.0, 43.181591, 375.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 43.181591, 481.0, 28.0, 481.0, 28.0, 435.0, 43.181591, 435.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 43.181591, 537.0, 26.0, 537.0, 26.0, 492.0, 43.181591, 492.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 43.181591, 591.0, 25.0, 591.0, 25.0, 549.0, 43.181591, 549.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 43.181591, 654.0, 25.0, 654.0, 25.0, 609.0, 43.181591, 609.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 593.5, 158.0, 452.5, 158.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 648.5, 162.0, 452.5, 162.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [ 418.5, 82.0, 495.5, 82.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
