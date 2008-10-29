{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 65.0, 90.0, 982.0, 529.0 ],
		"bglocked" : 0,
		"defrect" : [ 65.0, 90.0, 982.0, 529.0 ],
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
					"text" : "* 1000.",
					"id" : "obj-40",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patching_rect" : [ 763.0, 72.0, 49.0, 19.0 ],
					"outlettype" : [ "float" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b",
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"patching_rect" : [ 609.0, 107.0, 75.0, 19.0 ],
					"outlettype" : [ "bang", "bang" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "done",
					"text" : "p done",
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 393.0, 277.0, 43.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 3,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 629.0, 439.0, 345.0, 285.0 ],
						"bglocked" : 0,
						"defrect" : [ 629.0, 439.0, 345.0, 285.0 ],
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
									"text" : "route loop",
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 193.0, 81.0, 60.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-2",
									"numoutlets" : 1,
									"patching_rect" : [ 54.0, 50.0, 27.0, 27.0 ],
									"outlettype" : [ "bang" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-3",
									"numoutlets" : 1,
									"patching_rect" : [ 193.0, 50.0, 27.0, 27.0 ],
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-4",
									"numoutlets" : 1,
									"patching_rect" : [ 162.0, 50.0, 27.0, 27.0 ],
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 0",
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 193.0, 105.0, 35.0, 19.0 ],
									"outlettype" : [ "int" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #1_xxx_done",
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 193.0, 196.0, 87.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 193.0, 167.0, 22.0, 19.0 ],
									"outlettype" : [ "int" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 193.0, 140.0, 31.0, 19.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-8", 1 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 171.5, 163.0, 202.5, 163.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-8", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig24",
					"id" : "obj-3",
					"numoutlets" : 0,
					"patching_rect" : [ 599.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig23",
					"id" : "obj-4",
					"numoutlets" : 0,
					"patching_rect" : [ 574.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig22",
					"id" : "obj-5",
					"numoutlets" : 0,
					"patching_rect" : [ 548.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig21",
					"id" : "obj-6",
					"numoutlets" : 0,
					"patching_rect" : [ 522.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig20",
					"id" : "obj-7",
					"numoutlets" : 0,
					"patching_rect" : [ 496.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig19",
					"id" : "obj-8",
					"numoutlets" : 0,
					"patching_rect" : [ 470.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig18",
					"id" : "obj-9",
					"numoutlets" : 0,
					"patching_rect" : [ 444.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig17",
					"id" : "obj-10",
					"numoutlets" : 0,
					"patching_rect" : [ 418.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-11",
					"numoutlets" : 0,
					"patching_rect" : [ 839.0, 396.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "loop $1",
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patching_rect" : [ 609.0, 130.0, 46.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-13",
					"numoutlets" : 0,
					"patching_rect" : [ 630.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "timer",
					"text" : "p timer",
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"patching_rect" : [ 630.0, 345.0, 235.0, 19.0 ],
					"outlettype" : [ "float", "" ],
					"fontsize" : 10.0,
					"numinlets" : 5,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 251.0, 381.0, 802.0, 362.0 ],
						"bglocked" : 0,
						"defrect" : [ 251.0, 381.0, 802.0, 362.0 ],
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
									"text" : "t 0",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 668.0, 92.0, 24.0, 19.0 ],
									"outlettype" : [ "int" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.init",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 668.0, 70.0, 54.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 0",
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 621.0, 66.0, 37.0, 19.0 ],
									"outlettype" : [ "int" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"id" : "obj-46",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 512.0, 195.0, 24.0, 19.0 ],
									"outlettype" : [ "int" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 2",
									"id" : "obj-41",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 483.0, 195.0, 24.0, 19.0 ],
									"outlettype" : [ "int" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /countdown /audio/freeze",
									"id" : "obj-40",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"patching_rect" : [ 539.0, 44.0, 215.0, 19.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0.",
									"id" : "obj-38",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 589.0, 197.0, 28.0, 19.0 ],
									"outlettype" : [ "float" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"id" : "obj-37",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 367.0, 101.0, 24.0, 19.0 ],
									"outlettype" : [ "int" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"id" : "obj-29",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 541.0, 197.0, 24.0, 19.0 ],
									"outlettype" : [ "bang" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-1",
									"numoutlets" : 1,
									"patching_rect" : [ 463.0, 12.0, 28.0, 28.0 ],
									"outlettype" : [ "float" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p thru",
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 391.0, 232.0, 39.0, 19.0 ],
									"outlettype" : [ "float" ],
									"fontsize" : 10.0,
									"numinlets" : 1,
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
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-1",
													"numoutlets" : 0,
													"patching_rect" : [ 219.0, 227.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-2",
													"numoutlets" : 1,
													"patching_rect" : [ 207.0, 89.0, 15.0, 15.0 ],
													"outlettype" : [ "float" ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"patching_rect" : [ 367.0, 54.0, 68.0, 19.0 ],
									"outlettype" : [ "bang", "bang", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 392.0, 101.0, 27.0, 19.0 ],
									"outlettype" : [ "int" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-7",
									"numoutlets" : 1,
									"patching_rect" : [ 367.0, 11.0, 28.0, 28.0 ],
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1.",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 290.0, 258.0, 29.0, 19.0 ],
									"outlettype" : [ "float" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!/ 1.",
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 221.0, 37.0, 19.0 ],
									"outlettype" : [ "float" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-10",
									"numoutlets" : 0,
									"patching_rect" : [ 290.0, 320.0, 28.0, 28.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2 1",
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 360.0, 265.0, 50.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"patching_rect" : [ 541.0, 160.0, 115.0, 19.0 ],
									"outlettype" : [ "bang", "bang", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "f 0.",
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 541.0, 219.0, 32.5, 19.0 ],
									"outlettype" : [ "float" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-21",
									"numoutlets" : 1,
									"patching_rect" : [ 298.0, 13.0, 28.0, 28.0 ],
									"outlettype" : [ "float" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!- 0.",
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 530.0, 292.0, 30.0, 19.0 ],
									"outlettype" : [ "float" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-23",
									"numoutlets" : 1,
									"patching_rect" : [ 539.0, 13.0, 28.0, 28.0 ],
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-24",
									"numoutlets" : 0,
									"patching_rect" : [ 530.0, 322.0, 28.0, 28.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"id" : "obj-25",
									"numoutlets" : 1,
									"patching_rect" : [ 392.0, 143.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qmetro 100",
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 392.0, 170.0, 67.0, 19.0 ],
									"outlettype" : [ "bang" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "snapshot~",
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 392.0, 202.0, 73.0, 19.0 ],
									"outlettype" : [ "float" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-28",
									"numoutlets" : 1,
									"patching_rect" : [ 231.0, 12.0, 28.0, 28.0 ],
									"outlettype" : [ "signal" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-40", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 400.5, 252.0, 299.5, 252.0 ]
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 400.5, 287.0, 525.0, 287.0, 525.0, 287.0, 539.5, 287.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 369.5, 316.0, 539.5, 316.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 240.5, 192.0, 401.5, 192.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [ 376.5, 165.0, 401.5, 165.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 0,
									"midpoints" : [ 598.5, 216.0, 599.0, 216.0, 599.0, 243.0, 550.5, 243.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 472.5, 221.0, 472.0, 221.0, 472.0, 229.0, 400.5, 229.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 492.5, 261.0, 369.5, 261.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 521.5, 261.0, 369.5, 261.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p pause",
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patching_rect" : [ 598.0, 68.0, 48.0, 19.0 ],
					"outlettype" : [ "pause" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 599.0, 323.0, 342.0, 296.0 ],
						"bglocked" : 0,
						"defrect" : [ 599.0, 323.0, 342.0, 296.0 ],
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
									"text" : "t resume",
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 94.0, 100.0, 53.0, 19.0 ],
									"outlettype" : [ "resume" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t pause",
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 100.0, 46.0, 19.0 ],
									"outlettype" : [ "pause" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"patching_rect" : [ 50.0, 50.0, 107.0, 19.0 ],
									"outlettype" : [ "bang", "bang", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-4",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 17.0, 30.0, 30.0 ],
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-5",
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 154.0, 30.0, 30.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p prepare",
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numoutlets" : 6,
					"patching_rect" : [ 349.0, 66.0, 75.0, 19.0 ],
					"outlettype" : [ "", "", "bang", "", "float", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 383.0, 124.0, 786.0, 610.0 ],
						"bglocked" : 0,
						"defrect" : [ 383.0, 124.0, 786.0, 610.0 ],
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
									"maxclass" : "outlet",
									"id" : "obj-1",
									"numoutlets" : 0,
									"patching_rect" : [ 234.0, 534.0, 26.0, 26.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 234.0, 414.0, 32.0, 19.0 ],
									"outlettype" : [ "bang", "bang" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel bang 0",
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"patching_rect" : [ 321.0, 64.0, 117.0, 19.0 ],
									"outlettype" : [ "bang", "bang", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend open",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 321.0, 117.0, 78.0, 19.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog sound",
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 321.0, 88.0, 97.0, 19.0 ],
									"outlettype" : [ "", "bang" ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p info_on_soundfile",
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 290.0, 107.0, 19.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 3,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 306.0, 215.0, 774.0, 301.0 ],
										"bglocked" : 0,
										"defrect" : [ 306.0, 215.0, 774.0, 301.0 ],
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
													"text" : "t b",
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"patching_rect" : [ 516.0, 59.0, 30.0, 19.0 ],
													"outlettype" : [ "bang" ],
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "#0_player",
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"patching_rect" : [ 516.0, 103.0, 61.0, 17.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return info/channels @description \"number of channels of the soundfile\"",
													"linecount" : 2,
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"patching_rect" : [ 17.0, 150.0, 210.0, 31.0 ],
													"outlettype" : [ "", "" ],
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return info/length @description \"length of the soundfile\"",
													"linecount" : 2,
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"patching_rect" : [ 317.0, 153.0, 198.0, 31.0 ],
													"outlettype" : [ "", "" ],
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return info/playername @description \"name of the sfplay~ object\"",
													"linecount" : 2,
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"patching_rect" : [ 516.0, 150.0, 225.0, 31.0 ],
													"outlettype" : [ "", "" ],
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend /info/channels",
													"id" : "obj-6",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"patching_rect" : [ 3.0, 190.0, 125.0, 19.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "int",
													"id" : "obj-7",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"patching_rect" : [ 3.0, 103.0, 26.0, 19.0 ],
													"outlettype" : [ "int" ],
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend /info/size",
													"id" : "obj-8",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"patching_rect" : [ 217.0, 105.0, 100.0, 19.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "int",
													"id" : "obj-9",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"patching_rect" : [ 217.0, 64.0, 26.0, 19.0 ],
													"outlettype" : [ "int" ],
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-10",
													"numoutlets" : 1,
													"patching_rect" : [ 516.0, 33.0, 23.0, 23.0 ],
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-11",
													"numoutlets" : 1,
													"patching_rect" : [ 3.0, 33.0, 23.0, 23.0 ],
													"outlettype" : [ "int" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-12",
													"numoutlets" : 1,
													"patching_rect" : [ 217.0, 38.0, 23.0, 23.0 ],
													"outlettype" : [ "float" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-13",
													"numoutlets" : 0,
													"patching_rect" : [ 3.0, 223.0, 21.0, 21.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [ 226.5, 89.0, 326.5, 89.0 ]
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
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [ 226.5, 218.0, 12.5, 218.0 ]
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
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-7",
									"numoutlets" : 0,
									"patching_rect" : [ 704.0, 534.0, 26.0, 26.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 544.0, 414.0, 35.0, 19.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"triscale" : 0.9,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-9",
									"numoutlets" : 0,
									"patching_rect" : [ 544.0, 534.0, 26.0, 26.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-10",
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 535.0, 26.0, 26.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /info/name",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 216.0, 312.0, 109.0, 19.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 216.0, 290.0, 54.0, 19.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.thru",
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 320.0, 138.0, 57.0, 19.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-14",
									"numoutlets" : 1,
									"patching_rect" : [ 321.0, 37.0, 26.0, 26.0 ],
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 320.0, 445.0, 207.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.init",
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 331.0, 470.0, 52.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend name",
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 331.0, 512.0, 81.0, 19.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "#0_player",
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 331.0, 492.0, 61.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sfinfo~",
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numoutlets" : 6,
									"patching_rect" : [ 151.0, 229.0, 84.0, 19.0 ],
									"outlettype" : [ "int", "int", "float", "float", "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p scripting_player",
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 151.0, 382.0, 102.0, 19.0 ],
									"outlettype" : [ "", "bang" ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 376.0, 157.0, 904.0, 521.0 ],
										"bglocked" : 0,
										"defrect" : [ 376.0, 157.0, 904.0, 521.0 ],
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
													"text" : "t b",
													"id" : "obj-18",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"patching_rect" : [ 537.0, 144.0, 24.0, 19.0 ],
													"outlettype" : [ "bang" ],
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i 1",
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"patching_rect" : [ 259.0, 127.0, 27.0, 19.0 ],
													"outlettype" : [ "int" ],
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess 1",
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"patching_rect" : [ 418.0, 45.0, 68.0, 19.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "if $i1 > $i2 then $i1 else out2 $i1",
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"patching_rect" : [ 259.0, 101.0, 178.0, 19.0 ],
													"outlettype" : [ "", "" ],
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-6",
													"numoutlets" : 0,
													"patching_rect" : [ 536.0, 343.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-7",
													"numoutlets" : 1,
													"patching_rect" : [ 131.0, 51.0, 15.0, 15.0 ],
													"outlettype" : [ "int" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p connect_player",
													"id" : "obj-8",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"patching_rect" : [ 138.0, 249.0, 95.0, 19.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 10.0,
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 278.0, 68.0, 964.0, 678.0 ],
														"bglocked" : 0,
														"defrect" : [ 278.0, 68.0, 964.0, 678.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "combine sig 1 @triggers 1",
																	"id" : "obj-27",
																	"fontname" : "Verdana",
																	"numoutlets" : 2,
																	"patching_rect" : [ 723.0, 230.0, 143.0, 19.0 ],
																	"outlettype" : [ "", "" ],
																	"fontsize" : 10.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "append timer 0",
																	"linecount" : 2,
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"patching_rect" : [ 20.0, 238.0, 79.0, 31.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 10.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend script connect player",
																	"id" : "obj-2",
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"patching_rect" : [ 21.0, 215.0, 158.0, 19.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 10.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "append done 0",
																	"linecount" : 2,
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"patching_rect" : [ 273.0, 261.0, 72.0, 31.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 10.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend script connect player",
																	"id" : "obj-4",
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"patching_rect" : [ 273.0, 240.0, 158.0, 19.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 10.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1",
																	"id" : "obj-5",
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"patching_rect" : [ 557.0, 209.0, 27.0, 19.0 ],
																	"outlettype" : [ "int" ],
																	"fontsize" : 10.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t i i",
																	"id" : "obj-6",
																	"fontname" : "Verdana",
																	"numoutlets" : 2,
																	"patching_rect" : [ 557.0, 181.0, 27.0, 19.0 ],
																	"outlettype" : [ "int", "int" ],
																	"fontsize" : 10.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend set",
																	"id" : "obj-7",
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"patching_rect" : [ 724.0, 310.0, 68.0, 19.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 10.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "append",
																	"id" : "obj-8",
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"patching_rect" : [ 557.0, 330.0, 66.0, 19.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 10.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "append 0",
																	"id" : "obj-9",
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"patching_rect" : [ 724.0, 274.0, 61.0, 19.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 10.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend script connect player",
																	"id" : "obj-13",
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"patching_rect" : [ 557.0, 232.0, 158.0, 19.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 10.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1",
																	"id" : "obj-14",
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"patching_rect" : [ 273.0, 218.0, 27.0, 19.0 ],
																	"outlettype" : [ "int" ],
																	"fontsize" : 10.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script connect player $1 done 0",
																	"id" : "obj-15",
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"patching_rect" : [ 354.0, 262.0, 168.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 10.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t i b i i",
																	"id" : "obj-16",
																	"fontname" : "Verdana",
																	"numoutlets" : 4,
																	"patching_rect" : [ 179.0, 62.0, 53.0, 19.0 ],
																	"outlettype" : [ "int", "bang", "int", "int" ],
																	"fontsize" : 10.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf script connect player %ld timer 0",
																	"id" : "obj-17",
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"patching_rect" : [ -58.0, 268.0, 212.0, 19.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 10.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "uzi 1",
																	"id" : "obj-18",
																	"fontname" : "Verdana",
																	"numoutlets" : 3,
																	"patching_rect" : [ 527.0, 158.0, 40.0, 19.0 ],
																	"outlettype" : [ "bang", "bang", "int" ],
																	"fontsize" : 10.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-19",
																	"numoutlets" : 0,
																	"patching_rect" : [ 193.0, 495.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-20",
																	"numoutlets" : 1,
																	"patching_rect" : [ 179.0, 41.0, 15.0, 15.0 ],
																	"outlettype" : [ "int" ],
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script connect thru 0 player 0",
																	"id" : "obj-21",
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"patching_rect" : [ 193.0, 173.0, 157.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 10.0,
																	"numinlets" : 2
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 2 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 3 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 2 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 211.166672, 113.0, 282.5, 113.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 1 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 188.5, 112.0, 30.5, 112.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-27", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i i b",
													"id" : "obj-9",
													"fontname" : "Verdana",
													"numoutlets" : 4,
													"patching_rect" : [ 124.0, 188.0, 53.0, 19.0 ],
													"outlettype" : [ "bang", "int", "int", "bang" ],
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p delete_player",
													"id" : "obj-10",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"patching_rect" : [ 426.0, 249.0, 87.0, 19.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 10.0,
													"numinlets" : 1,
													"patcher" : 													{
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
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script delete player",
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"patching_rect" : [ 165.0, 142.0, 105.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 10.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-2",
																	"numoutlets" : 0,
																	"patching_rect" : [ 167.0, 297.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-3",
																	"numoutlets" : 1,
																	"patching_rect" : [ 165.0, 69.0, 15.0, 15.0 ],
																	"outlettype" : [ "bang" ],
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p create_player",
													"id" : "obj-11",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"patching_rect" : [ 341.0, 249.0, 87.0, 19.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 10.0,
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 433.0, 216.0, 703.0, 422.0 ],
														"bglocked" : 0,
														"defrect" : [ 433.0, 216.0, 703.0, 422.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "* 20160",
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"patching_rect" : [ 483.0, 91.0, 50.0, 19.0 ],
																	"outlettype" : [ "int" ],
																	"fontsize" : 10.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t i i",
																	"id" : "obj-2",
																	"fontname" : "Verdana",
																	"numoutlets" : 2,
																	"patching_rect" : [ 104.0, 66.0, 27.0, 19.0 ],
																	"outlettype" : [ "int", "int" ],
																	"fontsize" : 10.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf script new player newex 51 282 200 196617 sfplay~ %ld %ld 1 #0_player",
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numoutlets" : 1,
																	"patching_rect" : [ 104.0, 113.0, 423.0, 19.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 10.0,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-4",
																	"numoutlets" : 0,
																	"patching_rect" : [ 104.0, 280.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-5",
																	"numoutlets" : 1,
																	"patching_rect" : [ 104.0, 30.0, 15.0, 15.0 ],
																	"outlettype" : [ "int" ],
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-3", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 1 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 121.5, 87.0, 492.5, 87.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-12",
													"numoutlets" : 0,
													"patching_rect" : [ 138.0, 335.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
													"midpoints" : [ 133.5, 284.0, 545.0, 284.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 3 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [ 167.5, 234.0, 435.5, 234.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 1 ],
													"hidden" : 0,
													"midpoints" : [ 268.5, 151.0, 433.0, 151.0, 433.0, 90.0, 427.5, 90.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 2 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 156.166672, 240.0, 350.5, 240.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 0 ],
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
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [ 147.5, 305.0, 147.0, 305.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [ 350.5, 305.0, 147.0, 305.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [ 435.5, 305.0, 147.0, 305.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 1 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-5", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 320.0, 382.0, 68.0, 19.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-22",
									"numoutlets" : 0,
									"patching_rect" : [ 320.0, 534.0, 26.0, 26.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-23",
									"numoutlets" : 0,
									"patching_rect" : [ 1.0, 534.0, 26.0, 26.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 329.5, 161.0, 713.5, 161.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 3 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 2 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 428.5, 110.0, 330.5, 110.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 379.5, 84.0, 330.5, 84.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 256.5, 438.0, 329.5, 438.0 ]
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 5 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 329.5, 161.0, 160.5, 161.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 5 ],
									"destination" : [ "obj-6", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 3 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 225.5, 355.0, 39.5, 355.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "thru",
					"text" : "jcom.thru",
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patching_rect" : [ 432.0, 196.0, 57.0, 19.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"patching_rect" : [ 300.0, 138.0, 65.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig16",
					"id" : "obj-19",
					"numoutlets" : 0,
					"patching_rect" : [ 392.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig15",
					"id" : "obj-20",
					"numoutlets" : 0,
					"patching_rect" : [ 366.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig14",
					"id" : "obj-21",
					"numoutlets" : 0,
					"patching_rect" : [ 340.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig13",
					"id" : "obj-22",
					"numoutlets" : 0,
					"patching_rect" : [ 314.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig12",
					"id" : "obj-23",
					"numoutlets" : 0,
					"patching_rect" : [ 288.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig11",
					"id" : "obj-24",
					"numoutlets" : 0,
					"patching_rect" : [ 262.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig10",
					"id" : "obj-25",
					"numoutlets" : 0,
					"patching_rect" : [ 236.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig9",
					"id" : "obj-26",
					"numoutlets" : 0,
					"patching_rect" : [ 210.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig8",
					"id" : "obj-27",
					"numoutlets" : 0,
					"patching_rect" : [ 184.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig7",
					"id" : "obj-28",
					"numoutlets" : 0,
					"patching_rect" : [ 158.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig6",
					"id" : "obj-29",
					"numoutlets" : 0,
					"patching_rect" : [ 132.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig5",
					"id" : "obj-30",
					"numoutlets" : 0,
					"patching_rect" : [ 106.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig4",
					"id" : "obj-31",
					"numoutlets" : 0,
					"patching_rect" : [ 80.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig3",
					"id" : "obj-32",
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig2",
					"id" : "obj-33",
					"numoutlets" : 0,
					"patching_rect" : [ 28.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p play",
					"id" : "obj-34",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patching_rect" : [ 633.0, 158.0, 82.0, 19.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 3,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 388.0, 213.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 388.0, 213.0, 600.0, 426.0 ],
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
									"text" : "t 0.",
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 133.0, 50.0, 26.0, 19.0 ],
									"outlettype" : [ "float" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-2",
									"numoutlets" : 1,
									"patching_rect" : [ 133.0, 20.0, 25.0, 25.0 ],
									"outlettype" : [ "bang" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 49.0, 144.0, 22.0, 19.0 ],
									"outlettype" : [ "int" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "seek 0.",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 73.0, 144.0, 48.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-5",
									"numoutlets" : 1,
									"patching_rect" : [ 181.0, 20.0, 25.0, 25.0 ],
									"outlettype" : [ "float" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set seek $1",
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 181.0, 80.0, 66.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"patching_rect" : [ 49.0, 80.0, 66.0, 19.0 ],
									"outlettype" : [ "bang", "bang", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-8",
									"numoutlets" : 1,
									"patching_rect" : [ 49.0, 20.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-9",
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 333.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 142.5, 73.0, 190.5, 73.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 82.5, 323.0, 59.5, 323.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 190.5, 129.0, 82.5, 129.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-35",
					"numoutlets" : 0,
					"patching_rect" : [ 866.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-36",
					"numoutlets" : 1,
					"patching_rect" : [ 349.0, 11.0, 25.0, 25.0 ],
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "sig1",
					"id" : "obj-37",
					"numoutlets" : 0,
					"patching_rect" : [ 2.0, 397.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /sf_open /direct /play /pause /loop /start",
					"id" : "obj-38",
					"fontname" : "Verdana",
					"numoutlets" : 7,
					"patching_rect" : [ 349.0, 44.0, 516.0, 19.0 ],
					"outlettype" : [ "", "", "", "", "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "player",
					"text" : "sfplay~ 1 40320 1 #0_player",
					"id" : "obj-39",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"patching_rect" : [ 9.0, 285.0, 157.0, 19.0 ],
					"outlettype" : [ "signal", "signal", "bang" ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"save" : [ "#N", "sfplay~", "", 1, 40320, 1, "$0_player", ";" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-34", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-14", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 5 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 369.700012, 234.0, 875.5, 234.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 2 ],
					"destination" : [ "obj-14", 2 ],
					"hidden" : 0,
					"midpoints" : [ 524.166687, 200.0, 747.5, 200.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-34", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 6 ],
					"destination" : [ "obj-14", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 2 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 524.166687, 153.0, 642.5, 153.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 4 ],
					"destination" : [ "obj-14", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 2 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.337255, 0.619608, 1.0 ],
					"midpoints" : [ 380.899994, 101.0, 618.5, 101.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 4 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 689.833313, 96.0, 689.0, 96.0, 689.0, 128.0, 618.5, 128.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 3 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 5 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 2 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 642.5, 189.0, 441.5, 189.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 607.5, 189.0, 441.5, 189.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 441.333344, 66.0, 441.5, 66.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 618.5, 189.0, 441.5, 189.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 3 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 392.100006, 188.0, 441.5, 188.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
