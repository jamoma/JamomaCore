{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 303.0, 199.0, 1031.0, 524.0 ],
		"bglocked" : 0,
		"defrect" : [ 303.0, 199.0, 1031.0, 524.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"maxclass" : "number",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 73.0, 114.0, 22.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 417.0, 77.0, 22.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 1,
					"id" : "obj-14",
					"outlettype" : [ "int", "bang" ],
					"maximum" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /ui",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 225.0, 295.0, 99.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-34",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "multichannel signal outlet",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 515.0, 475.0, 141.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 150.0, 160.0, 213.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 225.0, 265.0, 49.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-3",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 305.0, 325.0, 94.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-4",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 305.0, 350.0, 53.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "$2",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 380.0, 375.0, 33.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route /audio/mute",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 380.0, 350.0, 103.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-7",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mute~",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 380.0, 395.0, 46.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "meter",
					"text" : "jcom.parameter meter @type msg_toggle @description \"Enable or disable monotoring of levels.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 467.0, 138.0, 282.0, 31.0 ],
					"numoutlets" : 3,
					"id" : "obj-9",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 165.0, 180.0, 140.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "gains",
					"text" : "p gains",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 305.0, 490.0, 45.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 44.0, 1280.0, 726.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 44.0, 1280.0, 726.0 ],
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
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 1035.0, 23.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"id" : "obj-41",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p freeze_output",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"patching_rect" : [ 750.0, 695.0, 90.0, 19.0 ],
									"numoutlets" : 1,
									"id" : "obj-40",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 466.0, 485.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 466.0, 485.0 ],
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
													"text" : "jcom.oscroute /freeze /refresh",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"patching_rect" : [ 255.0, 75.0, 168.0, 19.0 ],
													"numoutlets" : 3,
													"id" : "obj-2",
													"outlettype" : [ "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 255.0, 40.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"patching_rect" : [ 94.0, 297.0, 177.0, 19.0 ],
													"numoutlets" : 2,
													"id" : "obj-26",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t store #2",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"patching_rect" : [ 94.0, 227.0, 59.0, 19.0 ],
													"numoutlets" : 2,
													"id" : "obj-27",
													"outlettype" : [ "store", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #1_state 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"patching_rect" : [ 94.0, 327.0, 133.0, 19.0 ],
													"numoutlets" : 4,
													"id" : "obj-28",
													"outlettype" : [ "", "", "", "" ],
													"save" : [ "#N", "coll", "$0__state", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Collect messages as current state",
													"linecount" : 2,
													"fontname" : "Verdana",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 10.0,
													"patching_rect" : [ 94.0, 353.0, 99.0, 31.0 ],
													"numoutlets" : 0,
													"id" : "obj-29"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s %s %s",
													"fontname" : "Verdana",
													"numinlets" : 3,
													"fontsize" : 10.0,
													"patching_rect" : [ 94.0, 262.0, 107.0, 19.0 ],
													"numoutlets" : 1,
													"id" : "obj-30",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"patching_rect" : [ 330.0, 170.0, 36.0, 19.0 ],
													"numoutlets" : 2,
													"id" : "obj-31",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"patching_rect" : [ 50.0, 167.0, 123.0, 19.0 ],
													"numoutlets" : 1,
													"id" : "obj-35",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"patching_rect" : [ 50.0, 145.0, 35.0, 19.0 ],
													"numoutlets" : 1,
													"id" : "obj-36",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 153.0, 40.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"id" : "obj-38",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 430.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"id" : "obj-39",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [ 264.5, 96.0, 59.5, 96.0 ]
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
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-26", 1 ],
													"hidden" : 0,
													"midpoints" : [ 339.5, 282.0, 261.5, 282.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 1 ],
													"destination" : [ "obj-30", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 1 ],
													"destination" : [ "obj-30", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [ 339.5, 215.0, 103.5, 215.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-35", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-31", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [ 339.5, 417.0, 59.5, 417.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 750.0, 741.0, 68.0, 19.0 ],
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim 65",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"patching_rect" : [ 750.0, 718.0, 49.0, 19.0 ],
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.",
									"fontname" : "Verdana",
									"numinlets" : 16,
									"fontsize" : 10.0,
									"patching_rect" : [ 750.0, 650.0, 243.0, 19.0 ],
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 3.0, 57.0, 261.0, 19.0 ],
									"numoutlets" : 16,
									"id" : "obj-6",
									"outlettype" : [ "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 3.0, 23.0, 26.0, 26.0 ],
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 750.0, 764.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"id" : "obj-8",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Xenakis-patching...",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 835.0, 170.0, 111.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "r/gain",
									"text" : "jcom.parameter r/gain @type msg_float @range/bounds -24 24 @range/clipmode both @repetitions/allow 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 256.0, 221.0, 560.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-2",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "w/gain",
									"text" : "jcom.parameter w/gain @type msg_float @range/bounds -24 24 @range/clipmode both @repetitions/allow 1 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 256.0, 89.0, 563.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-9",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "x/gain",
									"text" : "jcom.parameter x/gain @type msg_float @range/bounds -24 24 @range/clipmode both @repetitions/allow 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 256.0, 122.0, 561.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-10",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "y/gain",
									"text" : "jcom.parameter y/gain @type msg_float @range/bounds -24 24 @range/clipmode both @repetitions/allow 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 256.0, 155.0, 561.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-11",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "z/gain",
									"text" : "jcom.parameter z/gain @type msg_float @range/bounds -24 24 @range/clipmode both @repetitions/allow 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 256.0, 188.0, 561.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-12",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "s/gain",
									"text" : "jcom.parameter s/gain @type msg_float @range/bounds -24 24 @range/clipmode both @repetitions/allow 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 256.0, 254.0, 560.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-13",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "t/gain",
									"text" : "jcom.parameter t/gain @type msg_float @range/bounds -24 24 @range/clipmode both @repetitions/allow 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 256.0, 287.0, 559.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-14",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "u/gain",
									"text" : "jcom.parameter u/gain @type msg_float @range/bounds -24 24 @range/clipmode both @repetitions/allow 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 256.0, 320.0, 562.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-15",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "v/gain",
									"text" : "jcom.parameter v/gain @type msg_float @range/bounds -24 24 @range/clipmode both @repetitions/allow 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 255.0, 353.0, 561.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-16",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "k/gain",
									"text" : "jcom.parameter k/gain @type msg_float @range/bounds -24 24 @range/clipmode both @repetitions/allow 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 255.0, 386.0, 561.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-17",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "l/gain",
									"text" : "jcom.parameter l/gain @type msg_float @range/bounds -24 24 @range/clipmode both @repetitions/allow 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 255.0, 419.0, 558.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-18",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "m/gain",
									"text" : "jcom.parameter m/gain @type msg_float @range/bounds -24 24 @range/clipmode both @repetitions/allow 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 255.0, 452.0, 565.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-19",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "n/gain",
									"text" : "jcom.parameter n/gain @type msg_float @range/bounds -24 24 @range/clipmode both @repetitions/allow 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 255.0, 485.0, 562.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-20",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "o/gain",
									"text" : "jcom.parameter o/gain @type msg_float @range/bounds -24 24 @range/clipmode both @repetitions/allow 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 255.0, 518.0, 561.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-21",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "p/gain",
									"text" : "jcom.parameter p/gain @type msg_float @range/bounds -24 24 @range/clipmode both @repetitions/allow 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 255.0, 551.0, 562.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-22",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "q/gain",
									"text" : "jcom.parameter q/gain @type msg_float @range/bounds -24 24 @range/clipmode both @repetitions/allow 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 255.0, 584.0, 562.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-23",
									"outlettype" : [ "", "", "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-40", 1 ],
									"hidden" : 0,
									"midpoints" : [ 1044.5, 681.0, 830.5, 681.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 8 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 9 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 10 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 11 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 12 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 13 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 14 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 15 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 2 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 3 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 4 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 5 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 6 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 7 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-5", 2 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-5", 3 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-5", 4 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-5", 5 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-5", 6 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-5", 7 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-5", 8 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-5", 9 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-5", 10 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-5", 11 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-5", 12 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-5", 13 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-5", 14 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-5", 15 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar jsui_multigain",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 305.0, 465.0, 138.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-13",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "jsui_multigain",
					"presentation_rect" : [ 10.0, 21.0, 286.0, 90.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 9.0, 21.0, 281.0, 86.0 ],
					"filename" : "jcom.jsui_multigain.js",
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-17",
					"outlettype" : [ "", "" ],
					"jsarguments" : [ 16, 16, 1, 1 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"Adjust relative weight of components of ambisonic signal.\"",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 0.0, 210.0, 548.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-20",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 25.0, 160.0, 87.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 0.0, 160.0, 21.0, 21.0 ],
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "order",
					"text" : "jcom.parameter order @type msg_int @range/bounds 1 3 @range/clipmode both @repetitions/allow 1 @description \"Ambisonic order. Note: Order is only updated when audio is not running.\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 467.0, 63.0, 357.0, 43.0 ],
					"numoutlets" : 3,
					"id" : "obj-24",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sur.ambi.adjust~",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 305.0, 425.0, 204.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-25",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 300.0, 21.0, 21.0 ],
					"numoutlets" : 0,
					"id" : "obj-26",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 490.0, 475.0, 21.0, 21.0 ],
					"numoutlets" : 0,
					"id" : "obj-27",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Order:",
					"fontname" : "Verdana",
					"presentation_rect" : [ 32.0, 115.0, 38.0, 17.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 410.0, 55.0, 38.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-28",
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Meter",
					"fontname" : "Verdana",
					"presentation_rect" : [ 233.0, 115.0, 40.0, 17.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 400.0, 130.0, 40.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-30",
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "Meter",
					"presentation_rect" : [ 217.0, 112.0, 54.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 400.0, 145.0, 18.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-31",
					"outlettype" : [ "" ],
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "multichannel signal inlet",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 515.0, 380.0, 138.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 490.0, 380.0, 21.0, 21.0 ],
					"numoutlets" : 1,
					"id" : "obj-33",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"prefix" : "audio",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"has_mute" : 1,
					"id" : "obj-35",
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 174.5, 198.0, 9.5, 198.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 159.5, 177.0, 123.0, 177.0, 123.0, 198.0, 9.5, 198.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 389.5, 419.0, 314.5, 419.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 314.5, 443.0, 314.5, 443.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 314.5, 515.0, 299.0, 515.0, 299.0, 457.0, 314.5, 457.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-25", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 473.5, 419.0, 314.5, 419.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
