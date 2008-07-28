{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 43.0, 44.0, 396.0, 740.0 ],
		"bglocked" : 0,
		"defrect" : [ 43.0, 44.0, 396.0, 740.0 ],
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
					"maxclass" : "bpatcher",
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ],
					"name" : "jmod.output~.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"args" : [ "/output~" ],
					"patching_rect" : [ 20.0, 535.0, 300.0, 140.0 ],
					"numinlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "" ],
					"name" : "jmod.control.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"args" : [ "/control" ],
					"patching_rect" : [ 20.0, 95.0, 150.0, 70.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p communicate_to_module",
					"numoutlets" : 0,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 715.0, 147.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 1049.0, 787.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 1049.0, 787.0 ],
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
									"maxclass" : "message",
									"text" : "/open_inspector 1",
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 637.0, 288.0, 99.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ")",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"id" : "obj-9",
									"fontname" : "Verdana",
									"patching_rect" : [ 727.0, 289.0, 17.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend max",
									"hidden" : 1,
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 751.0, 187.0, 74.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "NB: max number of voices is settable by opening the inspector (pushing i button on right-top corner or",
									"linecount" : 2,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"id" : "obj-11",
									"fontname" : "Verdana",
									"patching_rect" : [ 455.0, 277.0, 288.0, 30.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/max_bands $1",
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 696.0, 170.0, 86.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numoutlets" : 2,
									"id" : "obj-13",
									"triscale" : 0.9,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 669.0, 170.0, 35.0, 18.0 ],
									"fontsize" : 9.873845,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "max number of bands",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"id" : "obj-14",
									"fontname" : "Verdana",
									"patching_rect" : [ 561.0, 171.0, 118.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "|",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"id" : "obj-15",
									"fontname" : "Verdana",
									"patching_rect" : [ 555.0, 189.0, 17.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "(choose that first)",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"id" : "obj-16",
									"fontname" : "Verdana",
									"patching_rect" : [ 453.0, 190.0, 98.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/filter_type/1 lowshelf",
									"numoutlets" : 1,
									"id" : "obj-17",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 512.0, 254.0, 130.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "mode",
									"numoutlets" : 3,
									"id" : "obj-18",
									"outlettype" : [ "int", "", "" ],
									"fontname" : "Verdana",
									"framecolor" : [ 0.019608, 0.0, 0.690196, 1.0 ],
									"pattrmode" : 1,
									"arrow" : 0,
									"discolor" : [ 0.286275, 0.494118, 0.733333, 1.0 ],
									"types" : [  ],
									"togcolor" : [ 0.831373, 0.05098, 0.031373, 1.0 ],
									"patching_rect" : [ 452.0, 253.0, 60.0, 18.0 ],
									"fontsize" : 9.630046,
									"items" : [ "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "highshelf" ],
									"bgcolor" : [ 0.513726, 0.54902, 0.631373, 1.0 ],
									"hltcolor" : [ 0.219608, 0.231373, 0.517647, 1.0 ],
									"numinlets" : 1,
									"textcolor" : [ 0.866667, 0.905882, 0.964706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p",
									"hidden" : 1,
									"numoutlets" : 2,
									"id" : "obj-19",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 453.0, 253.0, 22.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 260.0, 231.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 260.0, 231.0 ],
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
													"text" : "i",
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "int" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 38.0, 74.0, 50.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b s",
													"numoutlets" : 2,
													"id" : "obj-2",
													"outlettype" : [ "bang", "" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 110.0, 27.0, 65.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-3",
													"patching_rect" : [ 81.0, 146.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-4",
													"patching_rect" : [ 39.0, 126.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 81.0, 124.0, 68.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "" ],
													"patching_rect" : [ 111.0, 7.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf /filter_type/%ld %s",
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 39.0, 94.0, 142.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 78.0, 53.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-7", 1 ],
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
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [ 119.5, 47.0, 47.5, 47.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/bands $1",
									"numoutlets" : 1,
									"id" : "obj-20",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 696.0, 188.0, 59.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numoutlets" : 2,
									"id" : "obj-21",
									"triscale" : 0.9,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Verdana",
									"minimum" : 1,
									"maximum" : 5,
									"patching_rect" : [ 669.0, 188.0, 35.0, 18.0 ],
									"fontsize" : 9.873845,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "|",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"id" : "obj-22",
									"fontname" : "Verdana",
									"patching_rect" : [ 555.0, 171.0, 17.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "number of bands",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"id" : "obj-23",
									"fontname" : "Verdana",
									"patching_rect" : [ 577.0, 189.0, 93.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "band number",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"id" : "obj-24",
									"fontname" : "Verdana",
									"patching_rect" : [ 489.0, 171.0, 75.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numoutlets" : 2,
									"id" : "obj-25",
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 651.0, 210.0, 35.0, 18.0 ],
									"fontsize" : 9.873845,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/filter_Q/2 $1",
									"numoutlets" : 1,
									"id" : "obj-26",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 651.0, 231.0, 91.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/filter_freq/2 $1",
									"numoutlets" : 1,
									"id" : "obj-27",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 552.0, 231.0, 91.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/filter_gain/2 $1",
									"numoutlets" : 1,
									"id" : "obj-28",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 453.0, 231.0, 91.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p instance_#",
									"hidden" : 1,
									"numoutlets" : 3,
									"id" : "obj-29",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 453.0, 188.0, 208.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 62.0, 328.0, 726.0, 217.0 ],
										"bglocked" : 0,
										"defrect" : [ 62.0, 328.0, 726.0, 217.0 ],
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
													"numoutlets" : 0,
													"id" : "obj-1",
													"patching_rect" : [ 371.0, 110.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf set /filter_Q/%ld \\$1",
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 371.0, 88.0, 148.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-3",
													"patching_rect" : [ 205.0, 110.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-4",
													"patching_rect" : [ 32.0, 109.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf set /filter_freq/%ld \\$1",
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 205.0, 88.0, 160.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf set /filter_gain/%ld \\$1",
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 32.0, 88.0, 161.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 32.0, 66.0, 15.0, 15.0 ],
													"numinlets" : 0,
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
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [ 41.0, 84.0, 380.5, 84.0 ]
												}

											}
, 											{
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
													"midpoints" : [ 41.0, 84.0, 214.5, 84.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numoutlets" : 2,
									"id" : "obj-30",
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 552.0, 210.0, 35.0, 18.0 ],
									"fontsize" : 9.873845,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numoutlets" : 2,
									"id" : "obj-31",
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 453.0, 210.0, 35.0, 18.0 ],
									"fontsize" : 9.873845,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numoutlets" : 2,
									"id" : "obj-32",
									"triscale" : 0.9,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Verdana",
									"minimum" : 1,
									"mouseup" : 1,
									"patching_rect" : [ 453.0, 170.0, 35.0, 18.0 ],
									"fontsize" : 9.873845,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.eq.cmd",
									"hidden" : 1,
									"numoutlets" : 0,
									"id" : "obj-36",
									"fontname" : "Verdana",
									"patching_rect" : [ 711.0, 138.0, 85.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Module specific attributes",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"id" : "obj-38",
									"fontname" : "Verdana",
									"patching_rect" : [ 450.0, 135.0, 236.0, 28.0 ],
									"fontsize" : 17.334082,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"id" : "obj-39",
									"patching_rect" : [ 445.0, 133.0, 373.0, 27.0 ],
									"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ],
									"rounded" : 0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"id" : "obj-46",
									"patching_rect" : [ 445.0, 162.0, 373.0, 146.0 ],
									"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
									"rounded" : 0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.eq.cmd",
									"hidden" : 1,
									"numoutlets" : 0,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"patching_rect" : [ 704.0, 533.0, 99.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"name" : "jmod.attr_params.maxpat",
									"args" : [ "/filter_gain/1" ],
									"patching_rect" : [ 433.0, 529.0, 374.0, 143.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.eq.cmd",
									"hidden" : 1,
									"numoutlets" : 0,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"patching_rect" : [ 309.0, 334.0, 99.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"name" : "jmod.preset_params.maxpat",
									"args" : [ "jmod.equalizer~" ],
									"patching_rect" : [ 50.0, 325.0, 374.0, 347.0 ],
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.eq.cmd",
									"hidden" : 1,
									"numoutlets" : 0,
									"id" : "obj-6",
									"fontname" : "Verdana",
									"patching_rect" : [ 308.0, 105.0, 99.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ],
									"name" : "jmod.gain_params.maxpat",
									"args" : [  ],
									"patching_rect" : [ 50.0, 100.0, 374.0, 221.0 ],
									"numinlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [ 678.5, 204.0, 705.5, 204.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [ 678.5, 186.0, 705.5, 186.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 2 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.equalizer~",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-33",
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 20.0, 215.0, 28.0 ],
					"fontsize" : 18.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "audio equalizer module (multi-band filter)",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-34",
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 50.0, 245.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"id" : "obj-35",
					"patching_rect" : [ 10.0, 10.0, 355.0, 65.0 ],
					"rounded" : 15,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.eq.cmd",
					"numoutlets" : 1,
					"id" : "obj-37",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 335.0, 87.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/ui/freeze 0",
					"numoutlets" : 1,
					"id" : "obj-42",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 510.0, 130.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"numoutlets" : 3,
					"id" : "obj-44",
					"outlettype" : [ "", "signal", "signal" ],
					"name" : "jmod.input~.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"args" : [ "/input~" ],
					"patching_rect" : [ 20.0, 185.0, 300.0, 140.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~",
					"numoutlets" : 3,
					"id" : "obj-45",
					"outlettype" : [ "", "signal", "signal" ],
					"name" : "jmod.equalizer~.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"args" : [ "/equalizer~" ],
					"patching_rect" : [ 20.0, 360.0, 300.0, 140.0 ],
					"numinlets" : 3
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 1 ],
					"destination" : [ "obj-45", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 2 ],
					"destination" : [ "obj-45", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 1 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 2 ],
					"destination" : [ "obj-7", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [ 29.5, 505.0, 140.5, 505.0 ]
				}

			}
 ]
	}

}
