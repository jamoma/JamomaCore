{
	"patcher" : 	{
		"rect" : [ 10.0, 49.0, 601.0, 738.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 10.0, 49.0, 601.0, 738.0 ],
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
					"text" : "Credits: The OSC namespace implementation of plug-in parameters is based on M. Zbyszynski and A. Freed: Control of VST Plug-ins using OSC. Proceedings of the ICMC 2005. The interface for the module was partly inspired by the brilliant Radial application.",
					"linecount" : 3,
					"patching_rect" : [ 118.0, 685.0, 455.0, 42.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sub patch",
					"text" : "p midi_in",
					"patching_rect" : [ 19.0, 198.0, 51.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 0,
					"id" : "obj-2",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patcher" : 					{
						"rect" : [ 612.0, 546.0, 507.0, 159.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 612.0, 546.0, 507.0, 159.0 ],
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
						"visible" : 1,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p make_osc_message",
									"patching_rect" : [ 279.0, 54.0, 106.0, 17.0 ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patcher" : 									{
										"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
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
													"patching_rect" : [ 50.0, 70.0, 94.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-1",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "\/raw\/voice\/1\/note $1 $2",
													"patching_rect" : [ 50.0, 90.0, 131.0, 15.0 ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-2",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "makenote 80 1000",
													"patching_rect" : [ 50.0, 50.0, 94.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 3,
													"id" : "obj-3",
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"id" : "obj-4",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 92.0, 30.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"id" : "obj-5",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 50.0, 110.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"id" : "obj-6",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "kslider",
									"patching_rect" : [ 279.0, 12.0, 196.0, 35.0 ],
									"numinlets" : 2,
									"id" : "obj-2",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"hkeycolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"presentation_rect" : [ 0.0, 0.0, 196.0, 35.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jmod.midiin",
									"patching_rect" : [ 16.0, 11.0, 255.0, 60.0 ],
									"name" : "jmod.midiin",
									"numinlets" : 1,
									"lockeddragscroll" : 1,
									"id" : "obj-3",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"args" : [ "\/midiin" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 16.0, 93.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [ 465.5, 50.0, 375.5, 50.0 ]
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
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 288.5, 82.0, 25.0, 82.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"Using jmod.vst~\"",
					"patching_rect" : [ 330.0, 519.0, 145.0, 23.0 ],
					"fontname" : "Verdana",
					"numinlets" : 0,
					"id" : "obj-3",
					"numoutlets" : 0,
					"fontsize" : 12.288889,
					"patcher" : 					{
						"rect" : [ 612.0, 48.0, 469.0, 502.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 612.0, 48.0, 469.0, 502.0 ],
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
									"maxclass" : "comment",
									"text" : "There is currently a redraw issue when changing to a different VST plug-in.",
									"linecount" : 2,
									"patching_rect" : [ 16.0, 408.0, 421.0, 35.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-1",
									"numoutlets" : 0,
									"fontsize" : 10.533333
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Bring up \/audio\/gain\/midi to appropriate level.",
									"patching_rect" : [ 76.0, 291.0, 360.0, 21.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 0,
									"fontsize" : 10.533333
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "5)",
									"patching_rect" : [ 46.0, 291.0, 25.0, 21.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 0,
									"fontsize" : 10.533333
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Update separate VST parameters if so desired.",
									"patching_rect" : [ 76.0, 272.0, 360.0, 21.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-4",
									"numoutlets" : 0,
									"fontsize" : 10.533333
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Select appropriate program using \/vst\/program.",
									"patching_rect" : [ 76.0, 253.0, 360.0, 21.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-5",
									"numoutlets" : 0,
									"fontsize" : 10.533333
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Load new plug-in using the \/vst\/plug message.",
									"patching_rect" : [ 76.0, 234.0, 360.0, 21.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-6",
									"numoutlets" : 0,
									"fontsize" : 10.533333
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Set \/audio\/gain\/midi to 0 if you do not want instant sound from the new plug-in.",
									"linecount" : 2,
									"patching_rect" : [ 76.0, 200.0, 360.0, 35.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 0,
									"fontsize" : 10.533333
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "\/Library\/Audio\/Plug-Ins\/VST\/",
									"patching_rect" : [ 106.0, 375.0, 330.0, 21.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-8",
									"numoutlets" : 0,
									"fontsize" : 10.533333
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "C:\/Program Files\/Steinberg\/Vstplugins",
									"patching_rect" : [ 106.0, 356.0, 330.0, 21.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-9",
									"numoutlets" : 0,
									"fontsize" : 10.533333
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Mac:",
									"patching_rect" : [ 46.0, 375.0, 53.0, 21.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-10",
									"numoutlets" : 0,
									"fontsize" : 10.533333
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Win:",
									"patching_rect" : [ 46.0, 356.0, 53.0, 21.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-11",
									"numoutlets" : 0,
									"fontsize" : 10.533333
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jmod.vst~ assumes plug-ins to be located in the following folder:",
									"patching_rect" : [ 16.0, 325.0, 421.0, 21.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-12",
									"numoutlets" : 0,
									"fontsize" : 10.533333
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "4)",
									"patching_rect" : [ 46.0, 272.0, 25.0, 21.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-13",
									"numoutlets" : 0,
									"fontsize" : 10.533333
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3)",
									"patching_rect" : [ 46.0, 253.0, 25.0, 21.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-14",
									"numoutlets" : 0,
									"fontsize" : 10.533333
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2)",
									"patching_rect" : [ 46.0, 234.0, 25.0, 21.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-15",
									"numoutlets" : 0,
									"fontsize" : 10.533333
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Using jmod.vst~:",
									"patching_rect" : [ 16.0, 29.0, 185.0, 28.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-16",
									"numoutlets" : 0,
									"fontsize" : 15.799999
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jmod.vst~ creates a dynamic OSC namespace reflecting the parameters of the VST plug-in currently loaded.",
									"linecount" : 2,
									"patching_rect" : [ 16.0, 74.0, 421.0, 35.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-17",
									"numoutlets" : 0,
									"fontsize" : 10.533333
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "When using jmod.vst~ with jmod.cuelist it is recommended to introduce a new vst plug-in thrugh a series of steps in a certain order, with a bit of time left in between for Max and Jamoma to catch up:",
									"linecount" : 4,
									"patching_rect" : [ 16.0, 121.0, 417.0, 63.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-18",
									"numoutlets" : 0,
									"fontsize" : 10.533333
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1)",
									"patching_rect" : [ 46.0, 200.0, 25.0, 21.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-19",
									"numoutlets" : 0,
									"fontsize" : 10.533333
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"patching_rect" : [ 397.0, 441.0, 81.0, 18.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-4",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"patching_rect" : [ 331.0, 461.0, 234.0, 16.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-5",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"patching_rect" : [ 331.0, 441.0, 75.0, 18.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-6",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.cuelist",
					"patching_rect" : [ 19.0, 586.0, 300.0, 83.0 ],
					"name" : "jmod.cuelist",
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"id" : "obj-7",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"args" : [ "\/cuelist" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 327.0, 157.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"id" : "obj-8",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/parameter\/DryLevel $1. ramp 2000",
					"patching_rect" : [ 327.0, 177.0, 226.0, 16.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-9",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"patching_rect" : [ 330.0, 601.0, 33.0, 33.0 ],
					"numinlets" : 2,
					"id" : "obj-10",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"patching_rect" : [ 42.0, 685.0, 70.0, 26.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-11",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.vst~",
					"patching_rect" : [ 24.0, 21.0, 189.0, 28.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-12",
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 15.799999
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "hosting vst plug-ins",
					"patching_rect" : [ 24.0, 47.0, 299.0, 18.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-13",
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 18.0, 5.0, 375.0, 63.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"id" : "obj-14",
					"numoutlets" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.output~",
					"patching_rect" : [ 19.0, 442.0, 300.0, 142.0 ],
					"name" : "jmod.output~.maxpat",
					"numinlets" : 3,
					"lockeddragscroll" : 1,
					"id" : "obj-15",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"args" : [ "\/output" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.input~",
					"patching_rect" : [ 19.0, 72.0, 300.0, 140.0 ],
					"name" : "jmod.input~.maxpat",
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"id" : "obj-16",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"args" : [ "\/input" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.vst~",
					"patching_rect" : [ 19.0, 225.0, 300.0, 210.0 ],
					"name" : "jmod.vst~.maxpat",
					"numinlets" : 3,
					"lockeddragscroll" : 1,
					"id" : "obj-17",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"args" : [ "\/vst" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "All VST parameters can be ramped:",
					"patching_rect" : [ 344.0, 158.0, 208.0, 18.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-18",
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(This parameter is common to many of the Pluggo plug-ins.)",
					"linecount" : 2,
					"patching_rect" : [ 337.0, 198.0, 168.0, 30.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-19",
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.vst~ creates a dynamic namespace depending on the parameters of the VST plug-in loaded.",
					"linecount" : 2,
					"patching_rect" : [ 323.0, 89.0, 275.0, 30.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-20",
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [ 406.5, 459.0, 340.5, 459.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 28.5, 438.0, 340.5, 438.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 2 ],
					"destination" : [ "obj-15", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 2 ],
					"destination" : [ "obj-17", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 336.5, 220.0, 28.5, 220.0 ]
				}

			}
 ]
	}

}
