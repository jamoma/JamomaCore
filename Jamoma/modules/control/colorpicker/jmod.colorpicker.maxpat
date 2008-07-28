{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 96.0, 143.0, 825.0, 532.0 ],
		"bglocked" : 0,
		"defrect" : [ 96.0, 143.0, 825.0, 532.0 ],
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
					"maxclass" : "textbutton",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"presentation_rect" : [ 76.0, 33.0, 69.0, 20.0 ],
					"id" : "obj-20",
					"text" : "View",
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 538.0, 169.0, 100.0, 20.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"rounded" : 8.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"presentation_rect" : [ 4.0, 33.0, 68.0, 20.0 ],
					"id" : "obj-19",
					"text" : "Set",
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 393.0, 277.0, 100.0, 20.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"rounded" : 8.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 178.0, 85.0, 128.0, 28.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-2",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 327.0, 93.0, 45.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "open" ],
					"patching_rect" : [ 538.0, 193.0, 40.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack s 0",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-6",
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 327.0, 218.0, 62.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-7",
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 370.0, 239.0, 32.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sub patch",
					"text" : "p \"color inspector\"",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-8",
					"patching_rect" : [ 370.0, 306.0, 100.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 196.0, 77.0, 717.0, 740.0 ],
						"bgcolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 196.0, 77.0, 717.0, 740.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[11]",
									"numoutlets" : 1,
									"presentation_rect" : [ 209.0, 375.0, 193.0, 64.0 ],
									"id" : "obj-1",
									"name" : "jcom.color.hsl_picker.maxpat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 209.0, 375.0, 193.0, 64.0 ],
									"presentation" : 1,
									"args" : [  ],
									"lockeddragscroll" : 1,
									"hidden" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[10]",
									"numoutlets" : 1,
									"presentation_rect" : [ 209.0, 308.0, 193.0, 64.0 ],
									"id" : "obj-2",
									"name" : "jcom.color.hsl_picker.maxpat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 209.0, 308.0, 193.0, 64.0 ],
									"presentation" : 1,
									"args" : [  ],
									"lockeddragscroll" : 1,
									"hidden" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[9]",
									"numoutlets" : 1,
									"presentation_rect" : [ 209.0, 241.0, 193.0, 64.0 ],
									"id" : "obj-3",
									"name" : "jcom.color.hsl_picker.maxpat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 209.0, 241.0, 193.0, 64.0 ],
									"presentation" : 1,
									"args" : [  ],
									"lockeddragscroll" : 1,
									"hidden" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[8]",
									"numoutlets" : 1,
									"presentation_rect" : [ 209.0, 174.0, 193.0, 64.0 ],
									"id" : "obj-4",
									"name" : "jcom.color.hsl_picker.maxpat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 209.0, 174.0, 193.0, 64.0 ],
									"presentation" : 1,
									"args" : [  ],
									"lockeddragscroll" : 1,
									"hidden" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p collect_as_matrix",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"patching_rect" : [ 25.0, 552.0, 105.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 3,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 60.0, 360.0, 708.0, 490.0 ],
										"bglocked" : 0,
										"defrect" : [ 60.0, 360.0, 708.0, 490.0 ],
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
													"maxclass" : "message",
													"text" : "220. 65. 52. 0. 0. 33. 176. 100. 59.",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 493.0, 319.0, 188.0, 16.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ],
													"patching_rect" : [ 493.0, 295.0, 68.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "220. 65. 52. 0. 0. 33. 176. 100. 59. 176. 26. 52. 0. 0. 0. 0. 0. 0. 21. 0. 53. 0. 0. 38. 0. 0. 0. 0. 0. 0. 0. 0. 0. 1. 210. 10.",
													"linecount" : 3,
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "" ],
													"patching_rect" : [ 492.0, 219.0, 217.0, 40.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"patching_rect" : [ 492.0, 195.0, 68.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "offset 0 0",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "" ],
													"patching_rect" : [ 274.0, 76.0, 73.0, 16.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "" ],
													"patching_rect" : [ 274.0, 52.0, 68.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "220. 65. 52.",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "" ],
													"patching_rect" : [ 198.0, 76.0, 73.0, 16.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "" ],
													"patching_rect" : [ 198.0, 52.0, 68.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-9",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 478.0, 58.0, 53.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-10",
													"outlettype" : [ "" ],
													"patching_rect" : [ 478.0, 32.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.fill #0_hsl_colors 0 offset 0 0",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-11",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 478.0, 97.0, 168.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rot -1",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-12",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 28.0, 53.0, 49.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 3",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-13",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 416.0, 204.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-14",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 368.0, 229.0, 58.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.spill",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-15",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 368.0, 205.0, 43.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.fill #0_hsl_colors 0",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-16",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 28.0, 132.0, 117.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "offset 0 $1",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-17",
													"outlettype" : [ "" ],
													"patching_rect" : [ 158.0, 102.0, 62.0, 16.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 3",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-18",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 28.0, 79.0, 140.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.matrix #0_hsl_colors 1 float32 3 12",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-19",
													"outlettype" : [ "jit_matrix", "" ],
													"patching_rect" : [ 28.0, 162.0, 202.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-20",
													"outlettype" : [ "list" ],
													"patching_rect" : [ 28.0, 30.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-21",
													"outlettype" : [ "" ],
													"patching_rect" : [ 416.0, 33.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-22",
													"patching_rect" : [ 368.0, 258.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 167.5, 122.0, 37.5, 122.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 1 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-6", 0 ],
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
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 37.5, 192.0, 377.5, 192.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-14", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "funnel 12",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "list" ],
									"patching_rect" : [ 25.0, 518.0, 157.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 12
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[7]",
									"numoutlets" : 1,
									"presentation_rect" : [ 209.0, 107.0, 193.0, 64.0 ],
									"id" : "obj-7",
									"name" : "jcom.color.hsl_picker.maxpat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 209.0, 107.0, 193.0, 64.0 ],
									"presentation" : 1,
									"args" : [  ],
									"lockeddragscroll" : 1,
									"hidden" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[6]",
									"numoutlets" : 1,
									"presentation_rect" : [ 209.0, 40.0, 193.0, 64.0 ],
									"id" : "obj-8",
									"name" : "jcom.color.hsl_picker.maxpat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 209.0, 40.0, 193.0, 64.0 ],
									"presentation" : 1,
									"args" : [  ],
									"lockeddragscroll" : 1,
									"hidden" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[5]",
									"numoutlets" : 1,
									"presentation_rect" : [ 12.0, 375.0, 193.0, 64.0 ],
									"id" : "obj-9",
									"name" : "jcom.color.hsl_picker.maxpat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 375.0, 193.0, 64.0 ],
									"presentation" : 1,
									"args" : [  ],
									"lockeddragscroll" : 1,
									"hidden" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[4]",
									"numoutlets" : 1,
									"presentation_rect" : [ 12.0, 308.0, 193.0, 64.0 ],
									"id" : "obj-10",
									"name" : "jcom.color.hsl_picker.maxpat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 308.0, 193.0, 64.0 ],
									"presentation" : 1,
									"args" : [  ],
									"lockeddragscroll" : 1,
									"hidden" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[3]",
									"numoutlets" : 1,
									"presentation_rect" : [ 12.0, 241.0, 193.0, 64.0 ],
									"id" : "obj-11",
									"name" : "jcom.color.hsl_picker.maxpat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 241.0, 193.0, 64.0 ],
									"presentation" : 1,
									"args" : [  ],
									"lockeddragscroll" : 1,
									"hidden" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[2]",
									"numoutlets" : 1,
									"presentation_rect" : [ 12.0, 174.0, 193.0, 64.0 ],
									"id" : "obj-12",
									"name" : "jcom.color.hsl_picker.maxpat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 174.0, 193.0, 64.0 ],
									"presentation" : 1,
									"args" : [  ],
									"lockeddragscroll" : 1,
									"hidden" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[1]",
									"numoutlets" : 1,
									"presentation_rect" : [ 12.0, 107.0, 193.0, 64.0 ],
									"id" : "obj-13",
									"name" : "jcom.color.hsl_picker.maxpat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 107.0, 193.0, 64.0 ],
									"presentation" : 1,
									"args" : [  ],
									"lockeddragscroll" : 1,
									"hidden" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "hsl_colorpicker[0]",
									"numoutlets" : 1,
									"presentation_rect" : [ 12.0, 40.0, 193.0, 64.0 ],
									"id" : "obj-14",
									"name" : "jcom.color.hsl_picker.maxpat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 40.0, 193.0, 64.0 ],
									"presentation" : 1,
									"args" : [  ],
									"lockeddragscroll" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 191 191 191",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-15",
									"patching_rect" : [ 298.0, 604.0, 112.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-16",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 298.0, 581.0, 64.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-17",
									"outlettype" : [ "front" ],
									"patching_rect" : [ 298.0, 562.0, 40.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-18",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 298.0, 526.0, 27.0, 27.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p set_swatches",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-19",
									"patching_rect" : [ 25.0, 618.0, 85.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 30.0, 89.0, 578.0, 391.0 ],
										"bglocked" : 0,
										"defrect" : [ 30.0, 89.0, 578.0, 391.0 ],
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
													"text" : "change",
													"fontname" : "Verdana",
													"numoutlets" : 3,
													"id" : "obj-1",
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 336.0, 148.0, 44.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-2",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 12.0, 77.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pattrforward parent::NumberOfColors",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "" ],
													"patching_rect" : [ 336.0, 212.0, 197.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 3",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 336.0, 171.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "" ],
													"patching_rect" : [ 12.0, 276.0, 68.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 3",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-6",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 12.0, 251.0, 79.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-7",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 12.0, 50.0, 53.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf send parent::hsl_colorpicker[%ld]",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "" ],
													"patching_rect" : [ 81.0, 276.0, 215.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pattrforward",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-9",
													"outlettype" : [ "" ],
													"patching_rect" : [ 12.0, 314.0, 71.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl len",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-10",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 336.0, 127.0, 35.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-11",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 12.0, 229.0, 97.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l b",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-12",
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 12.0, 177.0, 28.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "counter 0 11",
													"fontname" : "Verdana",
													"numoutlets" : 4,
													"id" : "obj-13",
													"outlettype" : [ "int", "", "", "int" ],
													"patching_rect" : [ 99.0, 206.0, 72.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 5
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l 3 0",
													"fontname" : "Verdana",
													"numoutlets" : 3,
													"id" : "obj-14",
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 12.0, 128.0, 101.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl group 3",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-15",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 12.0, 153.0, 58.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-16",
													"outlettype" : [ "" ],
													"patching_rect" : [ 12.0, 28.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-6", 0 ],
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
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 90.5, 303.0, 21.5, 303.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-15", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [ 30.5, 196.0, 108.5, 196.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 2 ],
													"destination" : [ "obj-13", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [ 29.5, 106.0, 345.5, 106.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "colors",
									"text" : "jcom.parameter colors @type msg_list @description \"List of 1 to 12 HSL triplets.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"id" : "obj-20",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 25.0, 575.0, 235.0, 30.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p show&hide",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-21",
									"outlettype" : [ "" ],
									"patching_rect" : [ 463.0, 91.0, 72.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 30.0, 89.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 30.0, 89.0, 600.0, 426.0 ],
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
													"text" : "t b i",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-1",
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 110.0, 50.0, 28.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1 0",
													"fontname" : "Verdana",
													"numoutlets" : 3,
													"id" : "obj-2",
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 79.0, 182.0, 95.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "<",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 80.0, 160.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t i i",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-4",
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 80.0, 129.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t hide",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "hide" ],
													"patching_rect" : [ 121.0, 207.0, 37.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t show",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "show" ],
													"patching_rect" : [ 79.0, 207.0, 41.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script %s hsl_colorpicker[%ld]",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "" ],
													"patching_rect" : [ 79.0, 263.0, 197.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 80.0, 107.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 12",
													"fontname" : "Verdana",
													"numoutlets" : 3,
													"id" : "obj-9",
													"outlettype" : [ "bang", "bang", "int" ],
													"patching_rect" : [ 50.0, 85.0, 40.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-10",
													"outlettype" : [ "" ],
													"patching_rect" : [ 110.0, 30.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-11",
													"patching_rect" : [ 79.0, 332.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 2 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 1 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [ 97.5, 152.0, 266.5, 152.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"id" : "obj-22",
									"outlettype" : [ "", "int", "int" ],
									"patching_rect" : [ 409.0, 50.0, 44.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "NumberOfColors",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"presentation_rect" : [ 117.0, 17.0, 35.0, 18.0 ],
									"id" : "obj-23",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 117.0, 17.0, 35.0, 18.0 ],
									"fontsize" : 9.873845,
									"minimum" : 1,
									"presentation" : 1,
									"triscale" : 0.9,
									"maximum" : 12,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-24",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 463.0, 112.0, 64.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Number of colors:",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"presentation_rect" : [ 9.0, 16.0, 100.0, 18.0 ],
									"id" : "obj-25",
									"patching_rect" : [ 9.0, 16.0, 100.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 418.5, 475.0, 77.5, 475.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-5", 2 ],
									"hidden" : 0,
									"midpoints" : [ 34.5, 611.0, 268.0, 611.0, 268.0, 549.0, 120.5, 549.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 126.5, 35.0, 418.5, 35.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-6", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-6", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-6", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-6", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 6 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 7 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 8 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 9 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-6", 10 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 11 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"patching_rect" : [ 538.0, 256.0, 49.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass /open_inspector open",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-10",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 327.0, 117.0, 204.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 89.0, 135.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p colorpicker_display",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-14",
					"patching_rect" : [ 538.0, 306.0, 113.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 4.0, 242.0, 284.0, 386.0 ],
						"bgcolor" : [ 0.25098, 0.25098, 0.25098, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 4.0, 242.0, 284.0, 386.0 ],
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
									"text" : "bgcolor 64 64 64",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-1",
									"patching_rect" : [ 36.0, 310.0, 93.0, 18.0 ],
									"fontsize" : 9.873845,
									"hidden" : 1,
									"numinlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p display_colors",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 33.0, 21.0, 90.0, 18.0 ],
									"fontsize" : 9.873845,
									"hidden" : 1,
									"numinlets" : 3,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 391.0, 145.0, 672.0, 551.0 ],
										"bglocked" : 0,
										"defrect" : [ 391.0, 145.0, 672.0, 551.0 ],
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
													"text" : "round",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 97.0, 186.0, 39.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0. 0. 0.",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ],
													"patching_rect" : [ 97.0, 163.0, 568.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "round",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "" ],
													"patching_rect" : [ 97.0, 120.0, 39.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.dataspace @dataspace color @input hsl @output rgb",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-4",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 97.0, 141.0, 301.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim 40",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "" ],
													"patching_rect" : [ 26.0, 369.0, 46.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 551.0, 248.0, 22.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1 b",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-7",
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 469.0, 261.0, 32.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "" ],
													"patching_rect" : [ 26.0, 346.0, 30.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-9",
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 45.0, 325.0, 22.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-10",
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 469.0, 236.0, 32.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l 3 0 l",
													"fontname" : "Verdana",
													"numoutlets" : 4,
													"id" : "obj-11",
													"outlettype" : [ "", "int", "int", "" ],
													"patching_rect" : [ 97.0, 77.0, 240.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setcell 0 $4 val 255 $1 $2 $3",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-12",
													"outlettype" : [ "" ],
													"patching_rect" : [ 97.0, 279.0, 154.0, 16.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-13",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 97.0, 257.0, 97.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l b",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-14",
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 97.0, 212.0, 28.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "counter 0 11",
													"fontname" : "Verdana",
													"numoutlets" : 4,
													"id" : "obj-15",
													"outlettype" : [ "int", "", "", "int" ],
													"patching_rect" : [ 184.0, 234.0, 72.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 5
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl group 3",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-16",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 97.0, 100.0, 58.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"fontname" : "Verdana",
													"numoutlets" : 3,
													"id" : "obj-17",
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 325.0, 238.0, 44.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "dim 1 $1",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-18",
													"outlettype" : [ "" ],
													"patching_rect" : [ 325.0, 260.0, 53.0, 16.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 3",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-19",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 325.0, 217.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl len",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-20",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 325.0, 108.0, 35.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.matrix 4 char 1 12",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-21",
													"outlettype" : [ "jit_matrix", "" ],
													"patching_rect" : [ 97.0, 404.0, 115.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /colors",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-22",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 97.0, 56.0, 116.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-23",
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 551.0, 36.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-24",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 469.0, 36.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-25",
													"outlettype" : [ "" ],
													"patching_rect" : [ 97.0, 36.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-26",
													"patching_rect" : [ 97.0, 426.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-2", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 478.5, 318.0, 35.5, 318.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 560.5, 321.0, 35.5, 321.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [ 334.5, 298.0, 106.5, 298.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [ 491.5, 396.0, 106.5, 396.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-16", 1 ],
													"hidden" : 0,
													"midpoints" : [ 180.166672, 97.0, 145.5, 97.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 115.5, 231.0, 193.5, 231.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 2 ],
													"destination" : [ "obj-15", 2 ],
													"hidden" : 0,
													"midpoints" : [ 253.833328, 224.0, 220.0, 224.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 3 ],
													"destination" : [ "obj-20", 0 ],
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
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "closebang",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 113.0, 0.0, 58.0, 18.0 ],
									"fontsize" : 9.873845,
									"hidden" : 1,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.pwindow",
									"onscreen" : 0,
									"numoutlets" : 2,
									"id" : "obj-4",
									"outlettype" : [ "", "" ],
									"depthbuffer" : 0,
									"patching_rect" : [ 32.0, 42.0, 200.0, 256.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "active",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 73.0, 0.0, 38.0, 18.0 ],
									"fontsize" : 9.873845,
									"hidden" : 1,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.0, 0.0, 15.0, 15.0 ],
									"hidden" : 1,
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"Utility for setting 1 to 12 colors.\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-15",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 16.0, 166.0, 233.0, 42.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"patching_rect" : [ 16.0, 78.0, 22.0, 22.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-17",
					"patching_rect" : [ 16.0, 316.0, 22.0, 22.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numoutlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"id" : "obj-18",
					"outlettype" : [ "" ],
					"presentation" : 1,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 187.5, 153.0, 25.5, 153.0 ]
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
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 47.5, 146.0, 25.5, 146.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 429.0, 241.0, 547.5, 241.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 547.5, 237.0, 547.5, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 2 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 521.5, 288.0, 547.5, 288.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
