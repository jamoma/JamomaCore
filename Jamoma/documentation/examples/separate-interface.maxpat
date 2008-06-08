{
	"patcher" : 	{
		"rect" : [ 36.0, 44.0, 412.0, 564.0 ],
		"bgcolor" : [ 0.313726, 0.705882, 0.313726, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 36.0, 44.0, 412.0, 564.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "In this example the engine is running in a subpatcher, but it could also be a standalone, or on another computer.",
					"linecount" : 5,
					"patching_rect" : [ 274.0, 38.0, 109.0, 59.0 ],
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 80 180 80",
					"patching_rect" : [ 277.0, 157.0, 94.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-2",
					"numinlets" : 4,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Interface",
					"patching_rect" : [ 33.0, 27.0, 88.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 15.799999
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p visual",
					"patching_rect" : [ 29.0, 293.0, 45.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-4",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"rect" : [ 150.0, 80.0, 299.0, 219.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 150.0, 80.0, 299.0, 219.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute \/mouse",
									"patching_rect" : [ 49.0, 59.0, 111.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 49.0, 118.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 137.0, 118.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 49.0, 33.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute \/position\/x \/position\/y",
									"patching_rect" : [ 49.0, 83.0, 186.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"patching_rect" : [ 29.0, 318.0, 100.0, 100.0 ],
					"id" : "obj-5",
					"numinlets" : 2,
					"jsarguments" : [  ],
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
					"patching_rect" : [ 293.0, 118.0, 46.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patcher" : 					{
						"rect" : [ 454.0, 44.0, 337.0, 564.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 454.0, 44.0, 337.0, 564.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p pre-process",
									"patching_rect" : [ 19.0, 261.0, 73.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"rect" : [ 10.0, 59.0, 289.0, 244.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 289.0, 244.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxfadetime" : 200,
										"boxanimatetime" : 200,
										"scrollanimatetime" : 200,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack",
													"patching_rect" : [ 50.0, 104.0, 98.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-1",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0. 1. 0 127",
													"patching_rect" : [ 138.0, 75.0, 87.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-2",
													"numinlets" : 6,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend notein",
													"patching_rect" : [ 50.0, 127.0, 75.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-3",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0. 1. 0 127",
													"patching_rect" : [ 50.0, 75.0, 87.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-4",
													"numinlets" : 6,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute \/position\/x \/position\/y",
													"patching_rect" : [ 50.0, 50.0, 186.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-5",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"outlettype" : [ "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"id" : "obj-6",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 50.0, 149.0, 15.0, 15.0 ],
													"id" : "obj-7",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"globalpatchername" : "",
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "\/output~",
									"patching_rect" : [ 19.0, 359.0, 303.0, 132.0 ],
									"name" : "jmod.output~.maxpat",
									"lockeddragscroll" : 1,
									"id" : "obj-2",
									"numinlets" : 3,
									"numoutlets" : 1,
									"args" : [ "\/output~" ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jmod.control",
									"patching_rect" : [ 19.0, 100.0, 303.0, 72.0 ],
									"name" : "jmod.control.maxpat",
									"lockeddragscroll" : 1,
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [ "\/control" ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "\/mouse[1]",
									"patching_rect" : [ 19.0, 285.0, 303.0, 72.0 ],
									"name" : "jmod.fluidsynth~.maxpat",
									"lockeddragscroll" : 1,
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 3,
									"args" : [ "\/fluidsynth~" ],
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "\/mouse",
									"patching_rect" : [ 19.0, 193.0, 303.0, 72.0 ],
									"name" : "jmod.mouse.gdif.maxpat",
									"lockeddragscroll" : 1,
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 1,
									"args" : [  ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This is the engine, which could have been saved as a separate file and been run on a different system.",
									"linecount" : 2,
									"patching_rect" : [ 19.0, 55.0, 237.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Engine",
									"patching_rect" : [ 19.0, 21.0, 66.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 15.799999
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 2 ],
									"destination" : [ "obj-2", 2 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 223.0, 379.0, 142.0, 29.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"setstyle" : 1,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"id" : "obj-7",
					"numinlets" : 1,
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"numoutlets" : 2,
					"slidercolor" : [ 0.035294, 0.141176, 1.0, 1.0 ],
					"bgcolor" : [ 0.0, 0.843137, 0.909804, 1.0 ],
					"orientation" : 0,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 29.0, 155.0, 48.0, 48.0 ],
					"id" : "obj-8",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend \/mouse\/on",
					"patching_rect" : [ 29.0, 208.0, 98.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-9",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.receive jcom.remote.module.from",
					"patching_rect" : [ 29.0, 270.0, 188.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.send jcom.remote.module.to",
					"patching_rect" : [ 29.0, 230.0, 161.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-11",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dreaminess",
					"patching_rect" : [ 223.0, 364.0, 62.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This is just a proof-of-concept patch to show how it is possible to use Jamoma as an engine, and make an independent GUI for controlling it.",
					"linecount" : 3,
					"patching_rect" : [ 33.0, 57.0, 221.0, 38.0 ],
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Turn mouse on",
					"patching_rect" : [ 85.0, 177.0, 75.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 27.0, 16.0, 229.0, 128.0 ],
					"rounded" : 0,
					"id" : "obj-15",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.666667, 0.784314, 0.666667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 261.0, 16.0, 128.0, 128.0 ],
					"rounded" : 0,
					"id" : "obj-16",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.666667, 0.784314, 0.666667, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 1,
					"midpoints" : [ 64.5, 315.0, 119.5, 315.0 ]
				}

			}
 ]
	}

}
