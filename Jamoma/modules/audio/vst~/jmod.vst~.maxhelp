{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 9.0, 45.0, 626.0, 820.0 ],
		"bglocked" : 0,
		"defrect" : [ 9.0, 45.0, 626.0, 820.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 350.0, 195.0, 20.0, 20.0 ],
					"id" : "obj-22",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Credits: The OSC namespace implementation of plug-in parameters is based on M. Zbyszynski and A. Freed: Control of VST Plug-ins using OSC. Proceedings of the ICMC 2005. The interface for the module was partly inspired by the brilliant Radial application.",
					"linecount" : 3,
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 735.0, 545.0, 43.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sub patch",
					"text" : "p midi_in",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 25.0, 245.0, 57.0, 19.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 639.0, 46.0, 558.0, 220.0 ],
						"bglocked" : 0,
						"defrect" : [ 639.0, 46.0, 558.0, 220.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p make_osc_message",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 280.0, 60.0, 121.0, 19.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 90.0, 107.0, 19.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "/raw/voice/1/note $1 $2",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 115.0, 134.0, 17.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "makenote 80 1000",
													"fontsize" : 10.0,
													"numinlets" : 3,
													"numoutlets" : 2,
													"patching_rect" : [ 50.0, 60.0, 107.0, 19.0 ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"outlettype" : [ "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 20.0, 25.0, 25.0 ],
													"id" : "obj-4",
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 95.0, 20.0, 25.0, 25.0 ],
													"id" : "obj-5",
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 145.0, 25.0, 25.0 ],
													"id" : "obj-6",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "kslider",
									"presentation_rect" : [ 0.0, 0.0, 196.0, 35.0 ],
									"numinlets" : 2,
									"hkeycolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"numoutlets" : 2,
									"patching_rect" : [ 280.0, 10.0, 196.0, 34.0 ],
									"id" : "obj-2",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jmod.midiin",
									"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
									"numinlets" : 1,
									"lockeddragscroll" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 15.0, 10.0, 150.0, 70.0 ],
									"id" : "obj-3",
									"outlettype" : [ "", "" ],
									"name" : "jmod.midiin.maxpat",
									"args" : [ "/midiin" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 105.0, 25.0, 25.0 ],
									"id" : "obj-4",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 289.5, 94.0, 24.5, 94.0 ]
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
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [ 466.5, 50.0, 391.5, 50.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"Using jmod.vst~\"",
					"fontsize" : 13.482065,
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 355.0, 573.0, 147.0, 23.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 232.0, 44.0, 415.0, 446.0 ],
						"bglocked" : 0,
						"defrect" : [ 232.0, 44.0, 415.0, 446.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Bring up /audio/gain/midi to appropriate level.",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 65.0, 290.0, 310.0, 19.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "5)",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 290.0, 23.0, 19.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Update separate VST parameters if so desired.",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 65.0, 265.0, 310.0, 19.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Select appropriate program using /vst/program.",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 65.0, 240.0, 310.0, 19.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Load new plug-in using the /vst/plug message.",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 65.0, 215.0, 310.0, 19.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Set /audio/gain/midi to 0 if you do not want instant sound from the new plug-in.",
									"linecount" : 2,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 65.0, 180.0, 310.0, 31.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "/Library/Audio/Plug-Ins/VST/",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 65.0, 410.0, 270.0, 19.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "C:/Program Files/Steinberg/Vstplugins",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 65.0, 385.0, 270.0, 19.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Mac:",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 410.0, 49.0, 19.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Win:",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 385.0, 48.0, 19.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jmod.vst~ assumes plug-ins to be located in the following folder:",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 335.0, 360.0, 19.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "4)",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 265.0, 23.0, 19.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3)",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 240.0, 23.0, 19.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2)",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 215.0, 23.0, 19.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Using jmod.vst~:",
									"fontsize" : 17.334082,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 16.0, 29.0, 185.0, 28.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jmod.vst~ creates a dynamic OSC namespace reflecting the parameters of the VST plug-in currently loaded.",
									"linecount" : 2,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 75.0, 360.0, 31.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "When using jmod.vst~ with jmod.cuelist it is recommended to introduce a new vst plug-in thrugh a series of steps in a certain order, with a bit of time left in between for Max and Jamoma to catch up:",
									"linecount" : 4,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 120.0, 360.0, 55.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1)",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 180.0, 23.0, 19.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"fontsize" : 10.0,
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 435.0, 500.0, 83.0, 19.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/audio/mute 1",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 355.0, 535.0, 83.0, 17.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 355.0, 500.0, 75.0, 19.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.cuelist",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 30.0, 650.0, 300.0, 70.0 ],
					"id" : "obj-7",
					"outlettype" : [ "" ],
					"name" : "jmod.cuelist.maxpat",
					"args" : [ "/cuelist" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/parameter/DryLevel $1. ramp 2000",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 350.0, 220.0, 194.0, 17.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.vst~",
					"fontsize" : 18.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 20.0, 197.0, 28.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "hosting vst plug-ins",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 45.0, 302.0, 19.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"rounded" : 15,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 10.0, 375.0, 63.0 ],
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.output~",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"numinlets" : 3,
					"lockeddragscroll" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 25.0, 500.0, 300.0, 140.0 ],
					"id" : "obj-15",
					"outlettype" : [ "" ],
					"name" : "jmod.output~.maxpat",
					"args" : [ "/output" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.input~",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 25.0, 95.0, 300.0, 140.0 ],
					"id" : "obj-16",
					"outlettype" : [ "", "signal", "signal" ],
					"name" : "jmod.input~.maxpat",
					"args" : [ "/input" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.vst~",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 210.0 ],
					"numinlets" : 3,
					"lockeddragscroll" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 25.0, 275.0, 300.0, 210.0 ],
					"id" : "obj-17",
					"outlettype" : [ "", "signal", "signal" ],
					"name" : "jmod.vst~.maxpat",
					"args" : [ "/vst" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "All VST parameters can be ramped:",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 375.0, 195.0, 211.0, 19.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(This parameter is common to many of the Pluggo plug-ins.)",
					"linecount" : 2,
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 375.0, 245.0, 212.0, 31.0 ],
					"id" : "obj-19",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.vst~ creates a dynamic namespace depending on the parameters of the VST plug-in loaded.",
					"linecount" : 2,
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 344.0, 143.0, 280.0, 31.0 ],
					"id" : "obj-20",
					"fontname" : "Verdana"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 359.5, 267.0, 34.5, 267.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 2 ],
					"destination" : [ "obj-17", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 2 ],
					"destination" : [ "obj-15", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 34.5, 492.0, 364.5, 492.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [ 444.5, 525.0, 364.5, 525.0 ]
				}

			}
 ]
	}

}
