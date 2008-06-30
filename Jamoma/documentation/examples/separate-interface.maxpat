{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 36.0, 44.0, 412.0, 564.0 ],
		"bglocked" : 0,
		"defrect" : [ 36.0, 44.0, 412.0, 564.0 ],
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
					"maxclass" : "comment",
					"text" : "This is just a proof-of-concept patch to show how it is possible to use Jamoma as an engine, and make an independent GUI for controlling it.",
					"linecount" : 4,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 33.0, 57.0, 220.0, 54.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "In this example the engine is running in a subpatcher, but it could also be a standalone, or on another computer.",
					"linecount" : 5,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 274.0, 38.0, 132.0, 66.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Interface",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 33.0, 27.0, 88.0, 28.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 17.334082
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p visual",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 29.0, 293.0, 47.0, 18.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 150.0, 80.0, 299.0, 219.0 ],
						"bglocked" : 0,
						"defrect" : [ 150.0, 80.0, 299.0, 219.0 ],
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
									"text" : "jcom.oscroute /mouse",
									"numinlets" : 1,
									"patching_rect" : [ 49.0, 59.0, 120.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 49.0, 118.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 137.0, 118.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 49.0, 33.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /position/x /position/y",
									"numinlets" : 1,
									"patching_rect" : [ 49.0, 83.0, 193.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.873845
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-3", 0 ],
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
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"jsarguments" : [  ],
					"numinlets" : 2,
					"patching_rect" : [ 29.0, 318.0, 100.0, 100.0 ],
					"id" : "obj-5",
					"filename" : "jsui_2dvectorctrl.js",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "engine",
					"text" : "p engine",
					"numinlets" : 0,
					"patching_rect" : [ 293.0, 118.0, 51.0, 18.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 454.0, 44.0, 337.0, 564.0 ],
						"bglocked" : 0,
						"defrect" : [ 454.0, 44.0, 337.0, 564.0 ],
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
									"text" : "p pre-process",
									"numinlets" : 1,
									"patching_rect" : [ 19.0, 261.0, 77.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 289.0, 244.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 289.0, 244.0 ],
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
													"text" : "pack",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 104.0, 98.0, 18.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0. 1. 0 127",
													"numinlets" : 6,
													"patching_rect" : [ 138.0, 75.0, 92.0, 18.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend notein",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 127.0, 84.0, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0. 1. 0 127",
													"numinlets" : 6,
													"patching_rect" : [ 50.0, 75.0, 92.0, 18.0 ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /position/x /position/y",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 50.0, 193.0, 18.0 ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"id" : "obj-6",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 149.0, 15.0, 15.0 ],
													"id" : "obj-7",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
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
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 1 ],
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
										"globalpatchername" : "",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/output~",
									"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
									"lockeddragscroll" : 1,
									"numinlets" : 3,
									"patching_rect" : [ 19.0, 359.0, 300.0, 140.0 ],
									"id" : "obj-2",
									"numoutlets" : 1,
									"name" : "jmod.output~.maxpat",
									"outlettype" : [ "" ],
									"args" : [ "/output~" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jmod.control",
									"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
									"lockeddragscroll" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 19.0, 100.0, 150.0, 70.0 ],
									"id" : "obj-3",
									"numoutlets" : 1,
									"name" : "jmod.control.maxpat",
									"outlettype" : [ "" ],
									"args" : [ "/control" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mouse[1]",
									"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
									"lockeddragscroll" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 19.0, 285.0, 300.0, 70.0 ],
									"id" : "obj-4",
									"numoutlets" : 3,
									"name" : "jmod.fluidsynth~.maxpat",
									"outlettype" : [ "", "signal", "signal" ],
									"args" : [ "/fluidsynth~" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
									"lockeddragscroll" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 19.0, 193.0, 300.0, 70.0 ],
									"id" : "obj-5",
									"numoutlets" : 1,
									"name" : "jmod.mouse.gdif.maxpat",
									"outlettype" : [ "" ],
									"args" : [ "/mouse" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This is the engine, which could have been saved as a separate file and been run on a different system.",
									"linecount" : 2,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 19.0, 55.0, 266.0, 30.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Engine",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 19.0, 21.0, 67.0, 28.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 17.334082
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 2 ],
									"destination" : [ "obj-2", 2 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"setstyle" : 1,
					"slidercolor" : [ 0.035294, 0.141176, 1.0, 1.0 ],
					"bgcolor" : [ 0.0, 0.843137, 0.909804, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 223.0, 379.0, 142.0, 29.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"id" : "obj-7",
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"numoutlets" : 2,
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"orientation" : 0,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 29.0, 155.0, 48.0, 48.0 ],
					"id" : "obj-8",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /mouse/mouse_on",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 29.0, 208.0, 148.0, 18.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.receive jcom.remote.module.from",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 29.0, 270.0, 205.0, 18.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.send jcom.remote.module.to",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 29.0, 230.0, 180.0, 18.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dreaminess",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 223.0, 364.0, 67.0, 18.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Turn mouse on",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 85.0, 177.0, 82.0, 18.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 27.0, 16.0, 229.0, 128.0 ],
					"id" : "obj-15",
					"rounded" : 15,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 261.0, 16.0, 144.0, 129.0 ],
					"id" : "obj-16",
					"rounded" : 15,
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 1,
					"midpoints" : [ 66.5, 315.0, 119.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
