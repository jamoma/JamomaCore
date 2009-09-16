{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 66.0, 70.0, 1161.0, 632.0 ],
		"bglocked" : 0,
		"defrect" : [ 66.0, 70.0, 1161.0, 632.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-217",
					"patching_rect" : [ 85.0, 135.0, 53.0, 19.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p scripting",
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-5",
					"patching_rect" : [ 85.0, 110.0, 63.0, 19.0 ],
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 2.0, 70.0, 967.0, 520.0 ],
						"bglocked" : 0,
						"defrect" : [ 2.0, 70.0, 967.0, 520.0 ],
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
									"text" : "jcom.oscroute /numSpeakers /numSources",
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-1",
									"patching_rect" : [ 165.0, 60.0, 238.0, 19.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Changes can not take place while audio is running",
									"linecount" : 2,
									"fontsize" : 10.0,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-2",
									"patching_rect" : [ 198.0, 172.0, 166.0, 31.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0",
									"fontsize" : 10.0,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-3",
									"patching_rect" : [ 145.0, 255.0, 71.0, 19.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $i1 != $i3 || $i2 !=$i4 then $i1 $i2",
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 4,
									"id" : "obj-4",
									"patching_rect" : [ 145.0, 225.0, 197.0, 19.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"fontsize" : 10.0,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-5",
									"patching_rect" : [ 165.0, 90.0, 49.0, 19.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "int" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-6",
									"patching_rect" : [ 348.0, 115.0, 34.0, 19.0 ],
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p connect_from_matrix",
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-7",
									"patching_rect" : [ 145.0, 350.0, 128.0, 19.0 ],
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 69.0, 87.0, 973.0, 478.0 ],
										"bglocked" : 0,
										"defrect" : [ 69.0, 87.0, 973.0, 478.0 ],
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
													"text" : "sprintf script connect matrix %ld pass[%ld] 0",
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-1",
													"patching_rect" : [ 350.0, 160.0, 241.0, 19.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"fontsize" : 10.0,
													"outlettype" : [ "int" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-2",
													"patching_rect" : [ 350.0, 120.0, 34.0, 19.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script connect pass[%ld] 0 multiin %ld",
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-3",
													"patching_rect" : [ 80.0, 160.0, 250.0, 19.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi",
													"fontsize" : 10.0,
													"outlettype" : [ "bang", "bang", "int" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-4",
													"patching_rect" : [ 50.0, 63.0, 46.0, 19.0 ],
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "int" ],
													"numinlets" : 0,
													"id" : "obj-5",
													"patching_rect" : [ 50.0, 25.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-6",
													"patching_rect" : [ 80.0, 240.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [ 86.5, 93.0, 581.5, 93.0 ]
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
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [ 86.5, 103.0, 359.5, 103.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"globalpatchername" : "",
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p connect_to_matrix",
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-8",
									"patching_rect" : [ 290.0, 350.0, 115.0, 19.0 ],
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 44.0, 74.0, 731.0, 433.0 ],
										"bglocked" : 0,
										"defrect" : [ 44.0, 74.0, 731.0, 433.0 ],
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
													"maxclass" : "inlet",
													"outlettype" : [ "int" ],
													"numinlets" : 0,
													"id" : "obj-18",
													"patching_rect" : [ 95.0, 30.0, 24.0, 24.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"fontsize" : 10.0,
													"outlettype" : [ "int" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-17",
													"patching_rect" : [ 50.0, 90.0, 32.5, 19.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script connect multiout $1 matrix $1",
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-14",
													"patching_rect" : [ 295.0, 210.0, 195.0, 17.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script connect messages 0 matrix 0",
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-4",
													"patching_rect" : [ 65.0, 210.0, 190.0, 17.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"fontsize" : 10.0,
													"outlettype" : [ "int" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-5",
													"patching_rect" : [ 295.0, 180.0, 34.0, 19.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 4",
													"fontsize" : 10.0,
													"outlettype" : [ "bang", "bang", "int" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-7",
													"patching_rect" : [ 50.0, 140.0, 48.0, 19.0 ],
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "bang" ],
													"numinlets" : 0,
													"id" : "obj-8",
													"patching_rect" : [ 50.0, 30.0, 24.0, 24.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-9",
													"patching_rect" : [ 65.0, 355.0, 24.0, 24.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-17", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-17", 0 ],
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
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 2 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [ 88.5, 165.0, 304.5, 165.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"globalpatchername" : "",
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p new_matrix",
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-9",
									"patching_rect" : [ 415.0, 350.0, 80.0, 19.0 ],
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 44.0, 74.0, 360.0, 220.0 ],
										"bglocked" : 0,
										"defrect" : [ 44.0, 74.0, 360.0, 220.0 ],
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
													"text" : "pack 0 0",
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-9",
													"patching_rect" : [ 50.0, 80.0, 54.0, 19.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script newdefault matrix 275 235 matrix~ $2 $1 1.",
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-8",
													"patching_rect" : [ 50.0, 115.0, 268.0, 17.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "int" ],
													"numinlets" : 0,
													"id" : "obj-1",
													"patching_rect" : [ 200.0, 20.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "int" ],
													"numinlets" : 0,
													"id" : "obj-5",
													"patching_rect" : [ 50.0, 20.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-6",
													"patching_rect" : [ 50.0, 160.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"globalpatchername" : "",
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p delete_matrix",
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-10",
									"patching_rect" : [ 505.0, 350.0, 90.0, 19.0 ],
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 44.0, 74.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 44.0, 74.0, 600.0, 426.0 ],
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
													"text" : "script delete matrix",
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-1",
													"patching_rect" : [ 50.0, 65.0, 109.0, 17.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "bang" ],
													"numinlets" : 0,
													"id" : "obj-2",
													"patching_rect" : [ 50.0, 25.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-3",
													"patching_rect" : [ 50.0, 100.0, 25.0, 25.0 ],
													"numoutlets" : 0,
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"globalpatchername" : "",
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p delete_pass",
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-11",
									"patching_rect" : [ 680.0, 350.0, 80.0, 19.0 ],
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 44.0, 74.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 44.0, 74.0, 600.0, 426.0 ],
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
													"text" : "t i b",
													"fontsize" : 10.0,
													"outlettype" : [ "int", "bang" ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-1",
													"patching_rect" : [ 50.0, 57.0, 34.0, 19.0 ],
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script delete pass[%ld]",
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-2",
													"patching_rect" : [ 80.0, 152.0, 192.0, 19.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi",
													"fontsize" : 10.0,
													"outlettype" : [ "bang", "bang", "int" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-3",
													"patching_rect" : [ 50.0, 125.0, 46.0, 19.0 ],
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i 16",
													"fontsize" : 10.0,
													"outlettype" : [ "int" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-4",
													"patching_rect" : [ 50.0, 90.0, 33.0, 19.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "int" ],
													"numinlets" : 0,
													"id" : "obj-5",
													"patching_rect" : [ 50.0, 25.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-6",
													"patching_rect" : [ 80.0, 185.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 1 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 1 ],
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
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"globalpatchername" : "",
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p new_pass",
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-12",
									"patching_rect" : [ 605.0, 350.0, 70.0, 19.0 ],
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 92.0, 101.0, 874.0, 506.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 92.0, 101.0, 874.0, 506.0 ],
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
										"imprint" : 1,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script size pass[%ld] 41 19",
													"fontface" : 0,
													"fontsize" : 10.0,
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"ignoreclick" : 0,
													"outlettype" : [ "" ],
													"hidden" : 0,
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-17",
													"patching_rect" : [ 80.0, 195.0, 184.0, 19.0 ],
													"background" : 0,
													"presentation" : 0,
													"color" : [ 0.7, 0.7, 0.7, 1.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script newdefault pass[%ld] %ld 300 pass~",
													"fontface" : 0,
													"fontsize" : 10.0,
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"ignoreclick" : 0,
													"outlettype" : [ "" ],
													"hidden" : 0,
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-14",
													"patching_rect" : [ 285.0, 195.0, 268.0, 19.0 ],
													"background" : 0,
													"presentation" : 0,
													"color" : [ 0.7, 0.7, 0.7, 1.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 275",
													"fontface" : 0,
													"fontsize" : 10.0,
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"ignoreclick" : 0,
													"outlettype" : [ "int" ],
													"hidden" : 0,
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-8",
													"patching_rect" : [ 530.0, 160.0, 41.0, 19.0 ],
													"background" : 0,
													"presentation" : 0,
													"color" : [ 0.7, 0.7, 0.7, 1.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 45",
													"fontface" : 0,
													"fontsize" : 10.0,
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"ignoreclick" : 0,
													"outlettype" : [ "int" ],
													"hidden" : 0,
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-7",
													"patching_rect" : [ 530.0, 138.0, 33.0, 19.0 ],
													"background" : 0,
													"presentation" : 0,
													"color" : [ 0.7, 0.7, 0.7, 1.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"fontface" : 0,
													"fontsize" : 10.0,
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"ignoreclick" : 0,
													"outlettype" : [ "int" ],
													"hidden" : 0,
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-6",
													"patching_rect" : [ 530.0, 116.0, 40.0, 19.0 ],
													"background" : 0,
													"presentation" : 0,
													"color" : [ 0.7, 0.7, 0.7, 1.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi",
													"fontface" : 0,
													"fontsize" : 10.0,
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"ignoreclick" : 0,
													"outlettype" : [ "bang", "bang", "int" ],
													"hidden" : 0,
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-1",
													"patching_rect" : [ 50.0, 50.0, 49.0, 19.0 ],
													"background" : 0,
													"presentation" : 0,
													"color" : [ 0.7, 0.7, 0.7, 1.0 ],
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"ignoreclick" : 0,
													"outlettype" : [ "int" ],
													"hidden" : 0,
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"numinlets" : 0,
													"id" : "obj-4",
													"patching_rect" : [ 50.0, 20.0, 25.0, 25.0 ],
													"background" : 0,
													"presentation" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"ignoreclick" : 0,
													"hidden" : 0,
													"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
													"numinlets" : 1,
													"id" : "obj-5",
													"patching_rect" : [ 80.0, 240.0, 25.0, 25.0 ],
													"background" : 0,
													"presentation" : 0,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 2 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-14", 1 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 2 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [ 89.5, 180.0, 294.5, 180.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 2 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"color" : [ 0.0, 0.0, 0.0, 1.0 ],
													"midpoints" : [ 89.5, 78.0, 539.5, 78.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"globalpatchername" : "",
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontsize" : 10.0,
									"outlettype" : [ "bang" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-13",
									"patching_rect" : [ 30.0, 40.0, 58.0, 19.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 0",
									"fontsize" : 10.0,
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-14",
									"patching_rect" : [ 85.0, 100.0, 42.0, 19.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-15",
									"patching_rect" : [ 145.0, 400.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i b i b i i",
									"fontsize" : 10.0,
									"outlettype" : [ "int", "bang", "int", "bang", "int", "int" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-16",
									"patching_rect" : [ 145.0, 320.0, 553.5, 19.0 ],
									"numoutlets" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"id" : "obj-17",
									"patching_rect" : [ 165.0, 25.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"fontsize" : 10.0,
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-18",
									"patching_rect" : [ 165.0, 165.0, 31.0, 19.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-19",
									"patching_rect" : [ 145.0, 195.0, 36.0, 19.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-20",
									"patching_rect" : [ 30.0, 100.0, 38.0, 19.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dspstate~",
									"fontsize" : 10.0,
									"outlettype" : [ "int", "float", "int", "int" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-21",
									"patching_rect" : [ 30.0, 65.0, 67.0, 19.0 ],
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "voices",
									"fontsize" : 10.0,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-22",
									"patching_rect" : [ 200.0, 30.0, 118.0, 19.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Only apply script if either voices and/or order is changed",
									"linecount" : 2,
									"fontsize" : 10.0,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-23",
									"patching_rect" : [ 371.0, 227.0, 181.0, 31.0 ],
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
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
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"midpoints" : [ 284.0, 90.0, 357.5, 90.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 5 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 2 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 3 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 4 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [ 206.5, 310.0, 395.5, 310.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 39.5, 92.0, 94.5, 92.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 614.5, 381.0, 154.5, 381.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 689.5, 381.0, 154.5, 381.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 514.5, 381.0, 154.5, 381.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 424.5, 381.0, 154.5, 381.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 299.5, 381.0, 154.5, 381.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 39.5, 131.0, 174.5, 131.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"midpoints" : [ 357.5, 149.0, 174.5, 149.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"midpoints" : [ 372.5, 201.0, 213.833328, 201.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 2 ],
									"hidden" : 0,
									"midpoints" : [ 154.5, 281.0, 350.0, 281.0, 350.0, 220.0, 273.166656, 220.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-4", 3 ],
									"hidden" : 0,
									"midpoints" : [ 206.5, 278.0, 346.0, 278.0, 346.0, 223.0, 332.5, 223.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [ 206.5, 307.0, 485.5, 307.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-6",
					"patching_rect" : [ 85.0, 160.0, 67.0, 19.0 ],
					"numoutlets" : 2,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "messages",
					"text" : "p messages",
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-18",
					"patching_rect" : [ 175.0, 115.0, 70.0, 19.0 ],
					"numoutlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 253.0, 167.0, 1187.0, 624.0 ],
						"bglocked" : 0,
						"defrect" : [ 253.0, 167.0, 1187.0, 624.0 ],
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
									"text" : "loadbang",
									"fontsize" : 10.0,
									"outlettype" : [ "bang" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-8",
									"patching_rect" : [ 602.0, 338.0, 56.0, 19.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "view_start -35. -15., view_end 35. 15.",
									"fontsize" : 10.970939,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-67",
									"patching_rect" : [ 607.0, 385.0, 225.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "view_size 70 30",
									"fontsize" : 10.970939,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-63",
									"patching_rect" : [ 575.0, 362.0, 99.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-11",
									"patching_rect" : [ 533.0, 494.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-7",
									"patching_rect" : [ 487.0, 414.0, 53.0, 19.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 1",
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-6",
									"patching_rect" : [ 487.0, 339.0, 68.0, 19.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "view_update $1",
									"fontsize" : 10.970939,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-56",
									"patching_rect" : [ 487.0, 385.0, 98.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"numinlets" : 1,
									"id" : "obj-57",
									"patching_rect" : [ 487.0, 362.0, 20.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p source_gain",
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-34",
									"patching_rect" : [ 195.0, 310.0, 81.0, 19.0 ],
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
													"text" : "pack 0 0.",
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-25",
													"patching_rect" : [ 50.0, 185.0, 57.0, 19.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0.",
													"fontsize" : 10.0,
													"outlettype" : [ "int", "float" ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-24",
													"patching_rect" : [ 50.0, 100.0, 70.0, 19.0 ],
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.dataspace @dataspace gain @input midi @output linear",
													"linecount" : 4,
													"fontsize" : 10.0,
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-40",
													"patching_rect" : [ 105.0, 125.0, 102.0, 55.0 ],
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend src_gain",
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-32",
													"patching_rect" : [ 50.0, 210.0, 98.0, 19.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"id" : "obj-31",
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-33",
													"patching_rect" : [ 50.0, 249.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-24", 1 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-25", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"globalpatchername" : "",
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p _activeactive",
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-23",
									"patching_rect" : [ 245.0, 280.0, 86.0, 19.0 ],
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
													"text" : "pack 0 0",
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-20",
													"patching_rect" : [ 50.0, 150.0, 54.0, 19.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0",
													"fontsize" : 10.0,
													"outlettype" : [ "int", "int" ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-6",
													"patching_rect" : [ 50.0, 100.0, 66.0, 19.0 ],
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend src_mute",
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-38",
													"patching_rect" : [ 50.0, 175.0, 102.0, 19.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"fontsize" : 10.0,
													"outlettype" : [ "int" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-33",
													"patching_rect" : [ 100.0, 125.0, 37.0, 19.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"id" : "obj-21",
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-22",
													"patching_rect" : [ 50.0, 205.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-20", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"globalpatchername" : "",
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend src_weight",
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-30",
									"patching_rect" : [ 145.0, 345.0, 110.0, 19.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend blur",
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-29",
									"patching_rect" : [ 95.0, 380.0, 75.0, 19.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend dst_position",
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-28",
									"patching_rect" : [ 315.0, 245.0, 116.0, 19.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend src_position",
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-27",
									"patching_rect" : [ 45.0, 415.0, 116.0, 19.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /position",
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-26",
									"patching_rect" : [ 315.0, 215.0, 129.0, 19.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /position /blur /weight /gain /active",
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "", "", "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-19",
									"patching_rect" : [ 45.0, 215.0, 265.0, 19.0 ],
									"numoutlets" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /source /speaker",
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-15",
									"patching_rect" : [ 45.0, 185.0, 170.0, 19.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "substitute numSources num_sources",
									"linecount" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-14",
									"patching_rect" : [ 390.0, 115.0, 128.0, 31.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace gain @input midi @output linear",
									"linecount" : 4,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-10",
									"patching_rect" : [ 685.0, 115.0, 102.0, 55.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /audio/gain",
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-3",
									"patching_rect" : [ 685.0, 70.0, 143.0, 19.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend master_gain",
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-9",
									"patching_rect" : [ 685.0, 180.0, 118.0, 19.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "substitute numSpeakers num_destinations",
									"linecount" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-18",
									"patching_rect" : [ 530.0, 115.0, 135.0, 31.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.pass /info /dimensions /numSources /numSpeakers /rolloff",
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "", "", "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-12",
									"patching_rect" : [ 260.0, 70.0, 337.0, 19.0 ],
									"numoutlets" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-5",
									"patching_rect" : [ 45.0, 160.0, 54.0, 19.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-4",
									"patching_rect" : [ 45.0, 135.0, 41.0, 19.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscinstance",
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-2",
									"patching_rect" : [ 45.0, 70.0, 140.0, 19.0 ],
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dbap",
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-1",
									"patching_rect" : [ 465.0, 460.0, 63.0, 19.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"id" : "obj-13",
									"patching_rect" : [ 45.0, 40.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-17",
									"patching_rect" : [ 465.0, 495.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 3 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 204.5, 335.0, 474.5, 335.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 4 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 254.5, 303.5, 474.5, 303.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 694.5, 227.5, 474.5, 227.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 539.5, 223.5, 474.5, 223.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 399.5, 183.5, 474.5, 183.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 3 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 269.5, 191.0, 474.5, 191.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 333.100006, 187.0, 474.5, 187.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 2 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 3 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 4 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 523.900024, 219.0, 474.5, 219.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 5 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [ 130.0, 209.0, 324.5, 209.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 2 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 54.5, 443.0, 474.5, 443.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 104.5, 405.5, 474.5, 405.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 154.5, 371.0, 474.5, 371.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 324.5, 271.5, 474.5, 271.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 2 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "multiout",
					"text" : "jcom.multi.out~",
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-15",
					"patching_rect" : [ 275.0, 115.0, 437.5, 19.0 ],
					"numoutlets" : 32
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "multiin",
					"text" : "jcom.multi.in~",
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 32,
					"id" : "obj-14",
					"patching_rect" : [ 275.0, 405.0, 437.5, 19.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-12",
					"patching_rect" : [ 275.0, 465.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-11",
					"patching_rect" : [ 80.0, 475.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"id" : "obj-10",
					"patching_rect" : [ 275.0, 35.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"id" : "obj-9",
					"patching_rect" : [ 85.0, 45.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"comment" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-217", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-217", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
