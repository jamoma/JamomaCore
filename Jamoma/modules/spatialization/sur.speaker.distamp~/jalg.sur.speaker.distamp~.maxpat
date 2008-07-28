{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 4.0, 68.0, 941.0, 409.0 ],
		"bglocked" : 0,
		"defrect" : [ 4.0, 68.0, 941.0, 409.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"varname" : "PRINT",
					"numoutlets" : 0,
					"id" : "obj-1",
					"numinlets" : 1,
					"patching_rect" : [ 660.0, 210.0, 100.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ftm.mess",
					"numoutlets" : 0,
					"id" : "obj-2",
					"numinlets" : 1,
					"patching_rect" : [ 298.0, 303.0, 100.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-3",
					"numinlets" : 1,
					"patching_rect" : [ 88.0, 286.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"numinlets" : 0,
					"patching_rect" : [ 88.0, 64.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-5",
					"numinlets" : 1,
					"patching_rect" : [ 431.0, 286.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "SUBPATCH",
					"text" : "p set_levels",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "dump", "" ],
					"id" : "obj-6",
					"fontname" : "Arial",
					"numinlets" : 3,
					"patching_rect" : [ 88.0, 141.0, 140.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 20.0, 74.0, 826.0, 553.0 ],
						"bglocked" : 0,
						"defrect" : [ 20.0, 74.0, 826.0, 553.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 91.0, 146.0, 50.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-2",
									"numinlets" : 1,
									"patching_rect" : [ 618.0, 31.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Current matrix values",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 652.0, 84.0, 111.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print ---jmod.sur.speaker.distamp",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 652.0, 107.0, 166.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t dump bang",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "dump", "bang" ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 599.0, 56.0, 63.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"numinlets" : 0,
									"patching_rect" : [ 599.0, 31.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pattrforward parent::parent::MULTISLIDER",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 170.0, 421.0, 206.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $f1==0. then 1. else $f1",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 143.0, 280.0, 131.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"numinlets" : 1,
									"patching_rect" : [ 143.0, 258.0, 100.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "int", "int" ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 432.0, 71.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "clip 1 32",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 3,
									"patching_rect" : [ 432.0, 48.0, 50.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"numinlets" : 1,
									"patching_rect" : [ 91.0, 236.0, 100.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p scripting",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 432.0, 132.0, 58.0, 17.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 616.0, 138.0, 776.0, 481.0 ],
										"bglocked" : 0,
										"defrect" : [ 616.0, 138.0, 776.0, 481.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script connect MATRIX $1 PRINT2 0",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 349.0, 246.0, 173.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script connect MATRIX $1 PRINT 0",
													"linecount" : 3,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 314.0, 167.0, 77.0, 36.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i i b",
													"numoutlets" : 4,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "int", "int", "bang" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 96.0, 67.0, 53.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script connect SUBPATCH 0 MATRIX 0",
													"linecount" : 3,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 62.0, 167.0, 80.0, 36.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script connect MATRIX $1 MULTI_IN $1",
													"linecount" : 3,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 146.0, 167.0, 80.0, 36.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script connect MULTI_OUT $1 MATRIX $1",
													"linecount" : 3,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 228.0, 167.0, 83.0, 36.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 12 0",
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "bang", "int" ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 110.0, 115.0, 47.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script new MATRIX newex 431 209 222 196617 matrix~ $1 $1 1.",
													"linecount" : 4,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 394.0, 167.0, 105.0, 46.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script delete MATRIX",
													"linecount" : 3,
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 505.0, 167.0, 49.0, 36.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-10",
													"numinlets" : 1,
													"patching_rect" : [ 121.0, 336.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-11",
													"numinlets" : 0,
													"patching_rect" : [ 96.0, 39.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 3 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 2 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 2 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 2 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 2 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 2 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-3", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1 $1 $2",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 91.0, 368.0, 52.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "listfunnel",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "list" ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 91.0, 346.0, 52.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "clip 1 128",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"numinlets" : 3,
									"patching_rect" : [ 91.0, 170.0, 56.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "bang" ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 91.0, 77.0, 20.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.list",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 91.0, 324.0, 44.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-19",
									"numinlets" : 3,
									"patching_rect" : [ 91.0, 302.0, 100.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "int" ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 91.0, 122.0, 27.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ftm.copy fmat",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 91.0, 214.0, 74.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-22",
									"numinlets" : 1,
									"patching_rect" : [ 91.0, 192.0, 100.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.mess",
									"numoutlets" : 0,
									"id" : "obj-23",
									"numinlets" : 3,
									"patching_rect" : [ 114.0, 77.0, 100.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ftm.object",
									"numoutlets" : 0,
									"id" : "obj-24",
									"numinlets" : 1,
									"patching_rect" : [ 91.0, 446.0, 100.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0. 0. 0.",
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "float", "float", "float" ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 91.0, 49.0, 172.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-26",
									"numinlets" : 0,
									"patching_rect" : [ 432.0, 26.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-27",
									"numinlets" : 0,
									"patching_rect" : [ 91.0, 26.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-28",
									"numinlets" : 1,
									"patching_rect" : [ 432.0, 421.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-29",
									"numinlets" : 1,
									"patching_rect" : [ 91.0, 421.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "avoid division by 0",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"id" : "obj-30",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 277.0, 282.0, 100.0, 17.0 ]
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
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 3 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 100.5, 343.0, 179.5, 343.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"color" : [ 0.6, 0.6, 1.0, 1.0 ],
									"midpoints" : [ 608.5, 411.0, 100.0, 411.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 232.0, 141.0, 61.0, 17.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "MULTI_IN",
					"text" : "jcom.multi.in~",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"numinlets" : 32,
					"patching_rect" : [ 431.0, 254.0, 417.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "MULTI_OUT",
					"text" : "jcom.multi.out~",
					"numoutlets" : 32,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 431.0, 88.0, 417.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-10",
					"numinlets" : 0,
					"patching_rect" : [ 431.0, 64.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /aed /voices /matrix/dump",
					"numoutlets" : 4,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "" ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 88.0, 115.0, 205.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "MATRIX",
					"text" : "matrix~ 1 1 1.",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "signal", "list" ],
					"id" : "obj-12",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 431.0, 209.0, 222.0, 17.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
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
					"source" : [ "obj-11", 2 ],
					"destination" : [ "obj-6", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
