{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 184.0, 337.0, 1025.0, 535.0 ],
		"bglocked" : 0,
		"defrect" : [ 184.0, 337.0, 1025.0, 535.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "centroid/on[1]",
					"text" : "jcom.parameter /contraction/window/on @type msg_toggle @description \"Turn display of contraction box on or off.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"id" : "obj-43",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 498.0, 123.0, 253.0, 27.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "centroid/on",
					"text" : "jcom.parameter centroid/on @type msg_toggle @description \"Turn display of centre of mass on.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"id" : "obj-39",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 497.0, 89.0, 235.0, 27.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "contraction/max/on",
					"text" : "jcom.parameter contraction/max/on @type msg_toggle @description \"Turn max contraction box on or off.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"id" : "obj-40",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 498.0, 57.0, 262.0, 27.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "contraction/on",
					"text" : "jcom.parameter contraction/on @type msg_toggle @description \"Turn local contraction box on or off.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"id" : "obj-41",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 497.0, 22.0, 244.0, 27.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numoutlets" : 2,
					"presentation_rect" : [ 236.794067, 22.598024, 60.0, 45.0 ],
					"id" : "obj-34",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 239.0, 22.0, 60.0, 45.0 ],
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "max",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 30.794073, 46.598026, 72.0, 19.0 ],
					"id" : "obj-1",
					"patching_rect" : [ 415.0, 62.0, 34.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "running",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 30.794073, 26.598024, 75.0, 19.0 ],
					"id" : "obj-2",
					"patching_rect" : [ 415.0, 29.0, 75.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "centroid",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 128.794067, 46.598026, 73.0, 19.0 ],
					"id" : "obj-3",
					"patching_rect" : [ 415.0, 97.0, 49.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "windowed",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 128.794067, 26.598024, 73.0, 19.0 ],
					"id" : "obj-4",
					"patching_rect" : [ 415.0, 127.0, 73.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"hint" : "",
					"annotation" : "Turn display of centre of mass on",
					"numoutlets" : 1,
					"presentation_rect" : [ 108.794075, 26.598024, 15.0, 15.0 ],
					"id" : "obj-5",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 478.0, 129.0, 15.0, 15.0 ],
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"hint" : "centroid/on",
					"annotation" : "centroid/on : Turn display of centre of mass on",
					"numoutlets" : 1,
					"presentation_rect" : [ 108.794075, 46.598026, 15.0, 15.0 ],
					"id" : "obj-7",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 478.0, 95.0, 15.0, 15.0 ],
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"presentation_rect" : [ 8.794073, 46.598026, 15.0, 15.0 ],
					"id" : "obj-9",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 478.0, 62.0, 15.0, 15.0 ],
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"presentation_rect" : [ 8.794073, 26.598024, 15.0, 15.0 ],
					"id" : "obj-11",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 478.0, 30.0, 15.0, 15.0 ],
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"id" : "obj-13",
					"outlettype" : [ "" ],
					"patching_rect" : [ 114.0, 145.0, 191.0, 15.0 ],
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-14",
					"outlettype" : [ "" ],
					"patching_rect" : [ 52.0, 367.0, 47.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-15",
					"outlettype" : [ "open" ],
					"patching_rect" : [ 52.0, 343.0, 37.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"id" : "obj-16",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 52.0, 319.0, 151.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p more_jmod.box%_features",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-17",
					"patching_rect" : [ 52.0, 391.0, 126.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 506.0, 70.0, 406.0, 211.0 ],
						"bglocked" : 0,
						"defrect" : [ 506.0, 70.0, 406.0, 211.0 ],
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
									"text" : "loadbang",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 15.0, 144.0, 100.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-50",
									"outlettype" : [ "" ],
									"patching_rect" : [ 2.0, 75.0, 178.0, 18.0 ],
									"fontsize" : 11.595187,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, window exec",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-49",
									"outlettype" : [ "" ],
									"patching_rect" : [ 3.0, 95.0, 191.0, 18.0 ],
									"fontsize" : 11.595187,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"id" : "obj-46",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 15.0, 124.0, 100.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Size of the centre of mass",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontname" : "Arial",
									"numoutlets" : 0,
									"presentation_rect" : [ 37.0, 155.0, 164.0, 18.0 ],
									"id" : "obj-44",
									"patching_rect" : [ 134.0, 197.0, 164.0, 18.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "centroid/size/on[2]",
									"text" : "jcom.parameter /centroid/size @type msg_int @range/bounds 0 20 @range/clipmode low @description \"Size of the centre of mass.\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"id" : "obj-43",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 341.0, 193.0, 329.0, 27.0 ],
									"fontsize" : 9.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "size of contraction window border",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontname" : "Arial",
									"numoutlets" : 0,
									"presentation_rect" : [ 37.0, 124.0, 164.0, 18.0 ],
									"id" : "obj-40",
									"patching_rect" : [ 134.0, 155.0, 164.0, 18.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "centroid/size/on[1]",
									"text" : "jcom.parameter /contraction/window/size @type msg_int @range/bounds 0 20 @range/clipmode low @description \"Size of the contraction window border.\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"id" : "obj-39",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 340.0, 151.0, 334.0, 27.0 ],
									"fontsize" : 9.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "saturation",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontname" : "Arial",
									"numoutlets" : 0,
									"presentation_rect" : [ 296.0, 123.0, 50.0, 17.0 ],
									"id" : "obj-37",
									"patching_rect" : [ 31.0, 461.0, 76.0, 17.0 ],
									"fontsize" : 9.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "saturation",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontname" : "Arial",
									"numoutlets" : 0,
									"presentation_rect" : [ 293.0, 57.0, 50.0, 17.0 ],
									"id" : "obj-34",
									"patching_rect" : [ 414.0, 326.0, 76.0, 17.0 ],
									"fontsize" : 9.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "saturation",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontname" : "Arial",
									"numoutlets" : 0,
									"presentation_rect" : [ 288.0, 184.0, 50.0, 17.0 ],
									"id" : "obj-32",
									"patching_rect" : [ 416.0, 452.0, 76.0, 17.0 ],
									"fontsize" : 9.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p saturation",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-27",
									"outlettype" : [ "" ],
									"patching_rect" : [ 461.0, 343.0, 77.0, 16.0 ],
									"fontsize" : 8.0,
									"numinlets" : 2,
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
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-62",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 130.0, 100.0, 87.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "saturation $1",
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-48",
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 101.0, 78.0, 18.0 ],
													"fontsize" : 11.595187,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "" ],
													"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "" ],
													"patching_rect" : [ 135.0, 40.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-9",
													"patching_rect" : [ 90.0, 179.0, 25.0, 25.0 ],
													"numinlets" : 1,
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
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"bordercolor" : [ 0.141176, 0.156863, 0.458824, 1.0 ],
									"numoutlets" : 1,
									"presentation_rect" : [ 253.0, 61.0, 126.0, 10.0 ],
									"id" : "obj-29",
									"outlettype" : [ "" ],
									"patching_rect" : [ 462.0, 330.0, 41.0, 10.0 ],
									"size" : 255.0,
									"presentation" : 1,
									"orientation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p saturation",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-25",
									"outlettype" : [ "" ],
									"patching_rect" : [ 79.0, 477.0, 77.0, 16.0 ],
									"fontsize" : 8.0,
									"numinlets" : 2,
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
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-62",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 130.0, 100.0, 87.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "saturation $1",
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-48",
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 101.0, 78.0, 18.0 ],
													"fontsize" : 11.595187,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "" ],
													"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "" ],
													"patching_rect" : [ 135.0, 40.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-9",
													"patching_rect" : [ 90.0, 179.0, 25.0, 25.0 ],
													"numinlets" : 1,
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
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"bordercolor" : [ 0.141176, 0.156863, 0.458824, 1.0 ],
									"numoutlets" : 1,
									"presentation_rect" : [ 256.0, 126.0, 125.0, 10.0 ],
									"id" : "obj-26",
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 464.0, 41.0, 10.0 ],
									"size" : 255.0,
									"presentation" : 1,
									"orientation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p saturation",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-20",
									"outlettype" : [ "" ],
									"patching_rect" : [ 466.0, 468.0, 77.0, 16.0 ],
									"fontsize" : 8.0,
									"numinlets" : 2,
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
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-62",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 130.0, 100.0, 87.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "saturation $1",
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-48",
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 101.0, 78.0, 18.0 ],
													"fontsize" : 11.595187,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "" ],
													"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "" ],
													"patching_rect" : [ 135.0, 40.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-9",
													"patching_rect" : [ 90.0, 179.0, 25.0, 25.0 ],
													"numinlets" : 1,
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
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "color of centroid",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontname" : "Arial",
									"numoutlets" : 0,
									"presentation_rect" : [ 255.0, 142.0, 82.0, 18.0 ],
									"id" : "obj-15",
									"patching_rect" : [ 492.0, 398.0, 82.0, 18.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "color of max contraction box",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontname" : "Arial",
									"numoutlets" : 0,
									"presentation_rect" : [ 255.0, 78.0, 136.0, 18.0 ],
									"id" : "obj-11",
									"patching_rect" : [ 145.0, 399.0, 136.0, 18.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : " color of local contraction box",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontname" : "Arial",
									"numoutlets" : 0,
									"presentation_rect" : [ 249.0, 13.0, 140.0, 18.0 ],
									"id" : "obj-10",
									"patching_rect" : [ 528.0, 268.0, 140.0, 18.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "automatic centroid size adjustment",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontname" : "Arial",
									"numoutlets" : 0,
									"presentation_rect" : [ 37.0, 183.0, 164.0, 18.0 ],
									"id" : "obj-36",
									"patching_rect" : [ 134.0, 121.0, 164.0, 18.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : " smoothing for the returned data",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontname" : "Arial",
									"numoutlets" : 0,
									"presentation_rect" : [ 37.0, 33.0, 153.0, 18.0 ],
									"id" : "obj-13",
									"patching_rect" : [ 134.0, 53.0, 153.0, 18.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "smoothing for contraction box",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontname" : "Arial",
									"numoutlets" : 0,
									"presentation_rect" : [ 37.0, 68.0, 150.0, 18.0 ],
									"id" : "obj-12",
									"patching_rect" : [ 134.0, 19.0, 150.0, 18.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"presentation_rect" : [ 7.0, 156.0, 35.0, 17.0 ],
									"id" : "obj-2",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 301.0, 198.0, 35.0, 17.0 ],
									"fontsize" : 9.0,
									"minimum" : 0,
									"presentation" : 1,
									"triscale" : 0.9,
									"triangle" : 0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "reset contraction box",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"presentation_rect" : [ 41.0, 97.0, 122.0, 15.0 ],
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"patching_rect" : [ 241.0, 91.0, 94.0, 15.0 ],
									"fontsize" : 9.0,
									"presentation" : 1,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"presentation_rect" : [ 7.0, 124.0, 35.0, 17.0 ],
									"id" : "obj-4",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 302.0, 155.0, 35.0, 17.0 ],
									"fontsize" : 9.0,
									"minimum" : 0,
									"presentation" : 1,
									"triscale" : 0.9,
									"triangle" : 0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "data/smoothing",
									"text" : "jcom.parameter data/smoothing @type msg_float @range 0. 12. @range/clipmode low @description \"Level of smoothing for the returned data\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"id" : "obj-14",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 340.0, 52.0, 350.0, 27.0 ],
									"fontsize" : 9.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "centroid/color",
									"text" : "jcom.parameter centroid/color @type msg_list @description \"Change color of centroid.\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"id" : "obj-16",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 524.0, 438.0, 224.0, 27.0 ],
									"fontsize" : 9.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction/max/color",
									"text" : "jcom.parameter contraction/max/color @type msg_list @description \"Change color of max contraction box.\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"id" : "obj-17",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 137.0, 445.0, 263.0, 27.0 ],
									"fontsize" : 9.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction/color",
									"text" : "jcom.parameter contraction/color @type msg_list @description \"Change color of local contraction box.\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"id" : "obj-18",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 519.0, 309.0, 250.0, 27.0 ],
									"fontsize" : 9.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "centroid/size/on",
									"text" : "jcom.parameter centroid/size/on @type msg_toggle @description \"Turn on automatic size adjustment of centre of mass - based on quantity of motion.\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"id" : "obj-19",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 340.0, 117.0, 352.0, 27.0 ],
									"fontsize" : 9.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "jmod.parameter[12]",
									"text" : "jcom.message contraction/max/reset @description \"Reset max_contraction box.\"",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"id" : "obj-21",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 340.0, 90.0, 382.0, 17.0 ],
									"fontsize" : 9.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction/slide",
									"text" : "jcom.parameter contraction/slide @type msg_float @range/bounds 0. 10. @range/clipmode low @repetitions/allow 0 @description \"The level of smoothing for contraction box.\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"id" : "obj-24",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 340.0, 16.0, 406.0, 27.0 ],
									"fontsize" : 9.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"presentation_rect" : [ 7.0, 182.0, 15.0, 15.0 ],
									"id" : "obj-28",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 313.0, 123.0, 15.0, 15.0 ],
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"presentation_rect" : [ 7.0, 69.0, 35.0, 17.0 ],
									"id" : "obj-30",
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 302.0, 19.0, 35.0, 17.0 ],
									"fontsize" : 9.0,
									"minimum" : 0.0,
									"presentation" : 1,
									"triscale" : 0.9,
									"triangle" : 0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"numoutlets" : 2,
									"presentation_rect" : [ 255.0, 159.0, 128.0, 32.0 ],
									"id" : "obj-31",
									"outlettype" : [ "", "float" ],
									"patching_rect" : [ 429.0, 396.0, 57.0, 24.0 ],
									"presentation" : 1,
									"numinlets" : 3,
									"compatibility" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"numoutlets" : 2,
									"presentation_rect" : [ 255.0, 95.0, 128.0, 32.0 ],
									"id" : "obj-33",
									"outlettype" : [ "", "float" ],
									"patching_rect" : [ 41.0, 394.0, 58.0, 25.0 ],
									"presentation" : 1,
									"numinlets" : 3,
									"compatibility" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"numoutlets" : 2,
									"presentation_rect" : [ 252.0, 30.0, 128.0, 32.0 ],
									"id" : "obj-35",
									"outlettype" : [ "", "float" ],
									"patching_rect" : [ 427.0, 268.0, 55.0, 24.0 ],
									"presentation" : 1,
									"numinlets" : 3,
									"compatibility" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"presentation_rect" : [ 7.0, 32.0, 35.0, 17.0 ],
									"id" : "obj-38",
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 302.0, 54.0, 35.0, 17.0 ],
									"fontsize" : 9.0,
									"minimum" : 0.0,
									"presentation" : 1,
									"triscale" : 0.9,
									"triangle" : 0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-42",
									"outlettype" : [ "" ],
									"patching_rect" : [ 55.0, 48.0, 18.0, 18.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Various things that might be useful :",
									"linecount" : 4,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontname" : "Arial",
									"numoutlets" : 0,
									"presentation_rect" : [ 4.0, 4.0, 199.0, 20.0 ],
									"id" : "obj-41",
									"patching_rect" : [ 7.0, 5.0, 68.0, 62.0 ],
									"fontsize" : 12.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"bordercolor" : [ 0.141176, 0.156863, 0.458824, 1.0 ],
									"numoutlets" : 1,
									"presentation_rect" : [ 256.0, 189.0, 125.0, 10.0 ],
									"id" : "obj-47",
									"outlettype" : [ "" ],
									"patching_rect" : [ 467.0, 455.0, 41.0, 10.0 ],
									"size" : 255.0,
									"presentation" : 1,
									"orientation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"presentation_rect" : [ -1.0, -2.0, 407.0, 213.0 ],
									"id" : "obj-45",
									"background" : 1,
									"patching_rect" : [ 1.0, 0.0, 81.0, 72.0 ],
									"presentation" : 1,
									"rounded" : 0,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-31", 1 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 50.5, 431.0, 146.5, 431.0 ]
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
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-19", 0 ],
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
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-24", 0 ],
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
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 475.5, 493.0, 416.0, 493.0, 416.0, 391.0, 438.5, 391.0 ]
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
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-20", 0 ],
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
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-25", 1 ],
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
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-26", 0 ],
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
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-27", 1 ],
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
									"source" : [ "obj-35", 1 ],
									"destination" : [ "obj-29", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-39", 0 ],
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
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command output",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-18",
					"patching_rect" : [ 27.0, 232.0, 79.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"id" : "obj-19",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 52.0, 458.0, 49.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.0, 274.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-21",
					"patching_rect" : [ 39.0, 274.0, 66.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"id" : "obj-22",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 22.0, 294.0, 78.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "" ],
					"patching_rect" : [ 184.0, 368.0, 47.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"id" : "obj-24",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 184.0, 344.0, 78.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-25",
					"patching_rect" : [ 54.0, 485.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "documentation/generate",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"id" : "obj-26",
					"outlettype" : [ "" ],
					"patching_rect" : [ 131.0, 162.0, 119.0, 15.0 ],
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-27",
					"patching_rect" : [ 68.0, 485.0, 76.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.box%",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-28",
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 52.0, 427.0, 76.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-29",
					"patching_rect" : [ 23.0, 159.0, 79.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type video @algorithm_type jitter @description \"Motion-related analysis\"",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"id" : "obj-30",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 9.0, 184.0, 381.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-31",
					"patching_rect" : [ 9.0, 232.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-32",
					"outlettype" : [ "" ],
					"patching_rect" : [ 9.0, 159.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numoutlets" : 1,
					"presentation_rect" : [ -0.205927, 0.598024, 300.0, 70.0 ],
					"id" : "obj-35",
					"outlettype" : [ "" ],
					"has_bypass" : 1,
					"has_panel" : 1,
					"has_freeze" : 1,
					"patching_rect" : [ 2.0, 0.0, 300.0, 70.0 ],
					"has_mute" : 1,
					"presentation" : 1,
					"prefix" : "video",
					"has_preview" : 1,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 140.5, 181.0, 18.5, 181.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 123.5, 181.0, 18.5, 181.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-24", 0 ],
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
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.8, 0.8, 0.501961 ],
					"midpoints" : [ 31.5, 423.0, 118.5, 423.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 252.5, 416.0, 61.5, 416.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 193.5, 416.0, 61.5, 416.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
