{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 507.0, 155.0, 579.0, 524.0 ],
		"bglocked" : 0,
		"defrect" : [ 507.0, 155.0, 579.0, 524.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"outlettype" : [ "bang", "bang", "", "int" ],
					"patching_rect" : [ 227.0, 251.0, 86.0, 45.0 ],
					"presentation" : 1,
					"dragtrack" : 1,
					"id" : "obj-23",
					"handoff" : "",
					"numinlets" : 1,
					"hilite" : 0,
					"presentation_rect" : [ 1.0, 21.0, 231.0, 47.0 ],
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 512.0, 414.0, 53.0, 43.0 ],
					"presentation" : 1,
					"id" : "obj-30",
					"numinlets" : 1,
					"presentation_rect" : [ 178.0, 23.0, 53.0, 43.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_frgb4b",
					"outlettype" : [ "" ],
					"patching_rect" : [ 512.0, 395.0, 66.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-31",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 443.0, 416.0, 53.0, 43.0 ],
					"presentation" : 1,
					"id" : "obj-28",
					"numinlets" : 1,
					"presentation_rect" : [ 120.0, 23.0, 53.0, 43.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_frgb3b",
					"outlettype" : [ "" ],
					"patching_rect" : [ 443.0, 397.0, 66.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 370.0, 416.0, 53.0, 43.0 ],
					"presentation" : 1,
					"id" : "obj-27",
					"numinlets" : 1,
					"presentation_rect" : [ 62.0, 23.0, 53.0, 43.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_frgb2b",
					"outlettype" : [ "" ],
					"patching_rect" : [ 370.0, 397.0, 66.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_frgb1b",
					"outlettype" : [ "" ],
					"patching_rect" : [ 301.0, 397.0, 66.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 304.0, 416.0, 53.0, 43.0 ],
					"presentation" : 1,
					"id" : "obj-21",
					"numinlets" : 1,
					"presentation_rect" : [ 4.0, 23.0, 53.0, 43.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 235.0, 21.0, 60.0, 45.0 ],
					"presentation" : 1,
					"id" : "obj-37",
					"numinlets" : 1,
					"presentation_rect" : [ 237.0, 22.0, 60.0, 45.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"outlettype" : [ "" ],
					"patching_rect" : [ 1.0, 0.0, 300.0, 70.0 ],
					"has_preview" : 1,
					"presentation" : 1,
					"has_panel" : 1,
					"id" : "obj-22",
					"prefix" : "video",
					"numinlets" : 1,
					"has_freeze" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numoutlets" : 1,
					"has_mute" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 80.0, 203.0, 52.0, 17.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"patching_rect" : [ 119.0, 290.0, 47.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"outlettype" : [ "open" ],
					"patching_rect" : [ 119.0, 269.0, 37.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route /panel/open",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 119.0, 249.0, 92.0, 17.0 ],
					"hidden" : 1,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p panel",
					"outlettype" : [ "" ],
					"patching_rect" : [ 119.0, 317.0, 100.0, 19.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 91.0, 44.0, 843.0, 309.0 ],
						"bglocked" : 0,
						"defrect" : [ 91.0, 44.0, 843.0, 309.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_frgb4b",
									"patching_rect" : [ 1856.0, 836.0, 67.0, 17.0 ],
									"id" : "obj-100",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_frgb3b",
									"patching_rect" : [ 1850.0, 738.0, 67.0, 17.0 ],
									"id" : "obj-98",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_frgb1b",
									"patching_rect" : [ 1844.0, 625.0, 67.0, 17.0 ],
									"id" : "obj-96",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_frgb2b",
									"patching_rect" : [ 1853.0, 515.0, 67.0, 17.0 ],
									"id" : "obj-94",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 2.55",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 2063.0, 766.0, 41.0, 19.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 2.55",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1932.0, 766.0, 41.0, 19.0 ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 2.55",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 2056.0, 665.0, 41.0, 19.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 2.55",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1925.0, 665.0, 41.0, 19.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 2.55",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 2050.0, 554.0, 41.0, 19.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 2.55",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1919.0, 554.0, 41.0, 19.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 2.55",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 2063.0, 445.0, 41.0, 19.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 2.55",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1932.0, 445.0, 41.0, 19.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 184.0, 171.0, 68.0, 19.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p scale",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1789.0, 814.0, 45.0, 19.0 ],
									"id" : "obj-172",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 50.0, 94.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 179.0, 203.0, 25.0, 25.0 ],
													"id" : "obj-2",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 1.",
													"outlettype" : [ "" ],
													"patching_rect" : [ 184.0, 120.0, 110.0, 17.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "vexpr $f1 / 100.",
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 79.0, 93.0, 19.0 ],
													"id" : "obj-32",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bordercolor $1 $2 $3 1.",
													"outlettype" : [ "" ],
													"patching_rect" : [ 41.0, 121.0, 130.0, 17.0 ],
													"id" : "obj-27",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
													"id" : "obj-115",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 52.0, 215.0, 25.0, 25.0 ],
													"id" : "obj-118",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-118", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-115", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p scale",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1783.0, 715.0, 45.0, 19.0 ],
									"id" : "obj-150",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 50.0, 94.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 179.0, 203.0, 25.0, 25.0 ],
													"id" : "obj-2",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 1.",
													"outlettype" : [ "" ],
													"patching_rect" : [ 184.0, 120.0, 110.0, 17.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "vexpr $f1 / 100.",
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 79.0, 93.0, 19.0 ],
													"id" : "obj-32",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bordercolor $1 $2 $3 1.",
													"outlettype" : [ "" ],
													"patching_rect" : [ 41.0, 121.0, 130.0, 17.0 ],
													"id" : "obj-27",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
													"id" : "obj-115",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 52.0, 215.0, 25.0, 25.0 ],
													"id" : "obj-118",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-118", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-115", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p scale",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1774.0, 601.0, 45.0, 19.0 ],
									"id" : "obj-126",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 50.0, 94.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 179.0, 203.0, 25.0, 25.0 ],
													"id" : "obj-2",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 1.",
													"outlettype" : [ "" ],
													"patching_rect" : [ 184.0, 120.0, 110.0, 17.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "vexpr $f1 / 100.",
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 79.0, 93.0, 19.0 ],
													"id" : "obj-32",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bordercolor $1 $2 $3 1.",
													"outlettype" : [ "" ],
													"patching_rect" : [ 41.0, 121.0, 130.0, 17.0 ],
													"id" : "obj-27",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
													"id" : "obj-115",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 52.0, 215.0, 25.0, 25.0 ],
													"id" : "obj-118",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-118", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-115", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p scale",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1788.0, 493.0, 45.0, 19.0 ],
									"id" : "obj-120",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 50.0, 94.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 179.0, 203.0, 25.0, 25.0 ],
													"id" : "obj-2",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bgcolor $1 $2 $3 1.",
													"outlettype" : [ "" ],
													"patching_rect" : [ 184.0, 120.0, 110.0, 17.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "vexpr $f1 / 100.",
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 79.0, 93.0, 19.0 ],
													"id" : "obj-32",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bordercolor $1 $2 $3 1.",
													"outlettype" : [ "" ],
													"patching_rect" : [ 41.0, 121.0, 130.0, 17.0 ],
													"id" : "obj-27",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
													"id" : "obj-115",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 52.0, 215.0, 25.0, 25.0 ],
													"id" : "obj-118",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-115", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-118", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_frgb4",
									"patching_rect" : [ 1789.0, 836.0, 62.0, 17.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tap.colorspace @mode hsl2rgb @autopack 1 @outputtype packed",
									"outlettype" : [ "int", "int", "int", "" ],
									"patching_rect" : [ 1789.0, 792.0, 309.0, 17.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"fontsize" : 9.0,
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_frgb3",
									"patching_rect" : [ 1783.0, 737.0, 62.0, 17.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tap.colorspace @mode hsl2rgb @autopack 1 @outputtype packed",
									"outlettype" : [ "int", "int", "int", "" ],
									"patching_rect" : [ 1783.0, 693.0, 309.0, 17.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"fontsize" : 9.0,
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_frgb1",
									"patching_rect" : [ 1777.0, 625.0, 62.0, 17.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_frgb4",
									"outlettype" : [ "" ],
									"patching_rect" : [ 646.0, -3.0, 62.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_frgb3",
									"outlettype" : [ "" ],
									"patching_rect" : [ 435.0, -2.0, 62.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_frgb1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, -2.0, 62.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_frgb2",
									"outlettype" : [ "" ],
									"patching_rect" : [ 228.0, -1.0, 62.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_frgb2",
									"patching_rect" : [ 1788.0, 517.0, 62.0, 17.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tap.colorspace @mode hsl2rgb @autopack 1 @outputtype packed",
									"outlettype" : [ "int", "int", "int", "" ],
									"patching_rect" : [ 1787.0, 471.0, 309.0, 17.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"fontsize" : 9.0,
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tap.colorspace @mode hsl2rgb @autopack 1 @outputtype packed",
									"outlettype" : [ "int", "int", "int", "" ],
									"patching_rect" : [ 1773.0, 581.0, 309.0, 17.0 ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"fontsize" : 9.0,
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "4",
									"patching_rect" : [ 201.0, 264.0, 150.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-23",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 418.0, 243.0, 24.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3",
									"patching_rect" : [ 201.0, 247.0, 150.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-24",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 418.0, 226.0, 24.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2",
									"patching_rect" : [ 201.0, 230.0, 150.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-25",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 418.0, 209.0, 24.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1",
									"patching_rect" : [ 201.0, 213.0, 150.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-26",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 418.0, 192.0, 24.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "off",
									"patching_rect" : [ 201.0, 197.0, 150.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-27",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 418.0, 176.0, 24.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l clear",
									"outlettype" : [ "", "", "clear" ],
									"patching_rect" : [ -1.0, 167.0, 52.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-28",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 57.0, 323.0, 15.0, 15.0 ],
									"hidden" : 1,
									"id" : "obj-29",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p WatchTheCrop",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 57.0, 344.0, 108.0, 17.0 ],
									"id" : "obj-30",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 517.0, 190.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 517.0, 190.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack f f",
													"outlettype" : [ "" ],
													"patching_rect" : [ 237.0, 254.0, 44.0, 17.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack f f",
													"outlettype" : [ "" ],
													"patching_rect" : [ 160.0, 256.0, 44.0, 17.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 240.",
													"outlettype" : [ "float" ],
													"patching_rect" : [ 280.0, 231.0, 40.0, 17.0 ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 320.",
													"outlettype" : [ "float" ],
													"patching_rect" : [ 237.0, 231.0, 40.0, 17.0 ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 240.",
													"outlettype" : [ "float" ],
													"patching_rect" : [ 194.0, 231.0, 40.0, 17.0 ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 320.",
													"outlettype" : [ "float" ],
													"patching_rect" : [ 152.0, 231.0, 40.0, 17.0 ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack f f f f",
													"outlettype" : [ "float", "float", "float", "float" ],
													"patching_rect" : [ 175.0, 204.0, 68.0, 17.0 ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "srcdimend $1 $2, dstdimend $1 $2",
													"outlettype" : [ "" ],
													"patching_rect" : [ 321.0, 314.0, 187.0, 15.0 ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "srcdimstart $1 $2, dstdimstart $1 $2",
													"outlettype" : [ "" ],
													"patching_rect" : [ 82.0, 317.0, 182.0, 15.0 ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route bounds1 bounds2 bounds3 bounds4",
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 55.0, 50.0, 202.0, 17.0 ],
													"hidden" : 1,
													"id" : "obj-10",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 5
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "switch 4 1",
													"outlettype" : [ "" ],
													"patching_rect" : [ -2.0, 108.0, 212.0, 17.0 ],
													"id" : "obj-11",
													"fontname" : "Verdana",
													"numinlets" : 5,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 357.0, 31.0, 15.0, 15.0 ],
													"id" : "obj-12",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 55.0, 30.0, 15.0, 15.0 ],
													"id" : "obj-13",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 83.0, 338.0, 15.0, 15.0 ],
													"id" : "obj-14",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 321.0, 366.0, 15.0, 15.0 ],
													"id" : "obj-15",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 366.0, 93.0, 7.5, 93.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-11", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 2 ],
													"destination" : [ "obj-11", 3 ],
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
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 3 ],
													"destination" : [ "obj-11", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 3 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 1 ],
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
													"source" : [ "obj-7", 2 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-2", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.pwindow",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 227.0, 191.0, 160.0, 120.0 ],
									"presentation" : 1,
									"id" : "obj-31",
									"numinlets" : 1,
									"presentation_rect" : [ 444.0, 170.0, 160.0, 120.0 ],
									"numoutlets" : 2,
									"depthbuffer" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.matrix @usesrcdim 1 @usedstdim 1",
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 41.0, 380.0, 194.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-32",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "suckah",
									"outlettype" : [ "" ],
									"patching_rect" : [ 19.0, 191.0, 160.0, 121.0 ],
									"presentation" : 1,
									"compatibility" : 1,
									"id" : "obj-33",
									"numinlets" : 1,
									"presentation_rect" : [ 236.0, 170.0, 160.0, 121.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"outlettype" : [ "" ],
									"offset" : 18,
									"patching_rect" : [ 185.0, 196.0, 39.0, 92.0 ],
									"presentation" : 1,
									"flagmode" : 1,
									"id" : "obj-34",
									"numinlets" : 1,
									"presentation_rect" : [ 401.0, 174.0, 39.0, 92.0 ],
									"numoutlets" : 1,
									"itemtype" : 0,
									"size" : 5,
									"value" : 1,
									"disabled" : [ 0, 0, 0, 0, 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 218.0, 451.0, 15.0, 15.0 ],
									"hidden" : 1,
									"id" : "obj-35",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.pwindow",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 19.0, 191.0, 160.0, 120.0 ],
									"presentation" : 1,
									"id" : "obj-36",
									"numinlets" : 1,
									"presentation_rect" : [ 236.0, 170.0, 160.0, 120.0 ],
									"numoutlets" : 2,
									"depthbuffer" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Size4",
									"outlettype" : [ "" ],
									"patching_rect" : [ 1256.0, 395.0, 59.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-37",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "4/getsize",
									"text" : "jcom.parameter color.4/size/active @type msg_toggle @description \"calculate the size of the recognized color area for colortracker 4\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1329.0, 388.0, 553.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-38",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Size3",
									"outlettype" : [ "" ],
									"patching_rect" : [ 1256.0, 362.0, 59.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-39",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "3/getsize",
									"text" : "jcom.parameter color.3/size/active @type msg_toggle @description \"calculate the size of the recognized color area for colortracker 3\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1329.0, 355.0, 553.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-40",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Size2",
									"outlettype" : [ "" ],
									"patching_rect" : [ 1254.0, 331.0, 59.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-41",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "2/getsize",
									"text" : "jcom.parameter color.2/size/active @type msg_toggle @description \"calculate the size of the recognized color area for colortracker 2\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1327.0, 324.0, 553.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-42",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Size1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 1252.0, 297.0, 59.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-43",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "1/getsize",
									"text" : "jcom.parameter color.1/size/active @type msg_toggle @description \"calculate the size of the recognized color area for colortracker 1\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1325.0, 290.0, 553.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-44",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Center4",
									"outlettype" : [ "" ],
									"patching_rect" : [ 979.0, 262.0, 70.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-45",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "4/getcenter",
									"text" : "jcom.parameter color.4/center/active @type msg_toggle @description \"calculate the center of the recognized color area for colortracker 4\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1052.0, 255.0, 575.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-46",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Center3",
									"outlettype" : [ "" ],
									"patching_rect" : [ 979.0, 231.0, 70.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-47",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "3/getcenter",
									"text" : "jcom.parameter color.3/center/active @type msg_toggle @description \"calculate the center of the recognized color area for colortracker 3\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1052.0, 224.0, 575.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-48",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Center2",
									"outlettype" : [ "" ],
									"patching_rect" : [ 979.0, 200.0, 70.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-49",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "2/getcenter",
									"text" : "jcom.parameter color.2/center/active @type msg_toggle @description \"calculate the center of the recognized color area for colortracker 2\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1052.0, 193.0, 575.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-50",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Center1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 979.0, 166.0, 70.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-51",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "1/getcenter",
									"text" : "jcom.parameter color.1/center/active @type msg_toggle @description \"calculate the center of the recognized color area for colortracker 1\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1052.0, 159.0, 575.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-52",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Bounds4",
									"outlettype" : [ "" ],
									"patching_rect" : [ 991.0, 128.0, 71.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-53",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "4/getbounds",
									"text" : "jcom.parameter color.4/bounds/active @type msg_toggle @description \"calculate the boundaries for colortracker 4\"",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1064.0, 121.0, 538.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-54",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Bounds3",
									"outlettype" : [ "" ],
									"patching_rect" : [ 990.0, 97.0, 71.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-55",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "3/getbounds",
									"text" : "jcom.parameter color.3/bounds/active @type msg_toggle @description \"calculate the boundaries for colortracker 3\"",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1063.0, 90.0, 538.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-56",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Bounds2",
									"outlettype" : [ "" ],
									"patching_rect" : [ 989.0, 66.0, 71.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-57",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "2/getbounds",
									"text" : "jcom.parameter color.2/bounds/active @type msg_toggle @description \"calculate the boundaries for colortracker 2\"",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1062.0, 59.0, 538.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-58",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Bounds1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 988.0, 33.0, 71.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-59",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "1/getbounds",
									"text" : "jcom.parameter color.1/bounds/active @type msg_toggle @description \"calculate the boundaries for colortracker 1\"",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1061.0, 26.0, 538.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-60",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"varname" : "Active4",
									"outlettype" : [ "" ],
									"patching_rect" : [ 650.0, 25.0, 63.0, 18.0 ],
									"presentation" : 1,
									"flagmode" : 1,
									"id" : "obj-61",
									"numinlets" : 1,
									"presentation_rect" : [ 638.0, 11.0, 63.0, 18.0 ],
									"numoutlets" : 1,
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"varname" : "Active3",
									"outlettype" : [ "" ],
									"patching_rect" : [ 440.0, 25.0, 63.0, 18.0 ],
									"presentation" : 1,
									"flagmode" : 1,
									"id" : "obj-62",
									"numinlets" : 1,
									"presentation_rect" : [ 428.0, 11.0, 63.0, 18.0 ],
									"numoutlets" : 1,
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"varname" : "Active2",
									"outlettype" : [ "" ],
									"patching_rect" : [ 229.0, 25.0, 63.0, 18.0 ],
									"presentation" : 1,
									"flagmode" : 1,
									"id" : "obj-63",
									"numinlets" : 1,
									"presentation_rect" : [ 217.0, 11.0, 63.0, 18.0 ],
									"numoutlets" : 1,
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "active",
									"patching_rect" : [ 667.0, 26.0, 42.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-64",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 655.0, 12.0, 42.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Size",
									"patching_rect" : [ 817.0, 140.0, 32.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-65",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 807.0, 127.0, 32.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Center (X/Y)",
									"patching_rect" : [ 735.0, 140.0, 75.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-66",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 726.0, 126.0, 75.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Boundaries",
									"patching_rect" : [ 669.0, 140.0, 67.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-67",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 653.0, 126.0, 67.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"varname" : "Size4",
									"outlettype" : [ "" ],
									"patching_rect" : [ 803.0, 136.0, 44.0, 18.0 ],
									"presentation" : 1,
									"flagmode" : 1,
									"id" : "obj-68",
									"numinlets" : 1,
									"presentation_rect" : [ 793.0, 127.0, 44.0, 18.0 ],
									"numoutlets" : 1,
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"varname" : "Bounds4",
									"outlettype" : [ "" ],
									"patching_rect" : [ 654.0, 136.0, 63.0, 18.0 ],
									"presentation" : 1,
									"flagmode" : 1,
									"id" : "obj-69",
									"numinlets" : 1,
									"presentation_rect" : [ 638.0, 127.0, 63.0, 18.0 ],
									"numoutlets" : 1,
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"varname" : "Center4",
									"outlettype" : [ "" ],
									"patching_rect" : [ 721.0, 136.0, 63.0, 18.0 ],
									"presentation" : 1,
									"flagmode" : 1,
									"id" : "obj-70",
									"numinlets" : 1,
									"presentation_rect" : [ 713.0, 127.0, 63.0, 18.0 ],
									"numoutlets" : 1,
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "active",
									"patching_rect" : [ 456.0, 26.0, 42.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-71",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 444.0, 12.0, 42.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Size",
									"patching_rect" : [ 606.0, 140.0, 32.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-72",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 596.0, 127.0, 32.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Center (X/Y)",
									"patching_rect" : [ 524.0, 140.0, 75.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-73",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 515.0, 126.0, 75.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Boundaries",
									"patching_rect" : [ 458.0, 140.0, 67.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-74",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 441.0, 126.0, 67.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"varname" : "Size3",
									"outlettype" : [ "" ],
									"patching_rect" : [ 592.0, 136.0, 44.0, 18.0 ],
									"presentation" : 1,
									"flagmode" : 1,
									"id" : "obj-75",
									"numinlets" : 1,
									"presentation_rect" : [ 582.0, 127.0, 44.0, 18.0 ],
									"numoutlets" : 1,
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"varname" : "Bounds3",
									"outlettype" : [ "" ],
									"patching_rect" : [ 443.0, 136.0, 63.0, 18.0 ],
									"presentation" : 1,
									"flagmode" : 1,
									"id" : "obj-76",
									"numinlets" : 1,
									"presentation_rect" : [ 428.0, 127.0, 63.0, 18.0 ],
									"numoutlets" : 1,
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"varname" : "Center3",
									"outlettype" : [ "" ],
									"patching_rect" : [ 510.0, 136.0, 63.0, 18.0 ],
									"presentation" : 1,
									"flagmode" : 1,
									"id" : "obj-77",
									"numinlets" : 1,
									"presentation_rect" : [ 501.0, 127.0, 63.0, 18.0 ],
									"numoutlets" : 1,
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "active",
									"patching_rect" : [ 245.0, 26.0, 42.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-78",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 233.0, 12.0, 42.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Size",
									"patching_rect" : [ 395.0, 140.0, 32.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-79",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 385.0, 127.0, 32.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Center (X/Y)",
									"patching_rect" : [ 313.0, 140.0, 75.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-80",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 303.0, 126.0, 75.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Boundaries",
									"patching_rect" : [ 247.0, 140.0, 67.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-81",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 230.0, 126.0, 67.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"varname" : "Size2",
									"outlettype" : [ "" ],
									"patching_rect" : [ 381.0, 136.0, 44.0, 18.0 ],
									"presentation" : 1,
									"flagmode" : 1,
									"id" : "obj-82",
									"numinlets" : 1,
									"presentation_rect" : [ 371.0, 127.0, 44.0, 18.0 ],
									"numoutlets" : 1,
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"varname" : "Bounds2",
									"outlettype" : [ "" ],
									"patching_rect" : [ 232.0, 136.0, 63.0, 18.0 ],
									"presentation" : 1,
									"flagmode" : 1,
									"id" : "obj-83",
									"numinlets" : 1,
									"presentation_rect" : [ 216.0, 127.0, 63.0, 18.0 ],
									"numoutlets" : 1,
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"varname" : "Center2",
									"outlettype" : [ "" ],
									"patching_rect" : [ 299.0, 136.0, 63.0, 18.0 ],
									"presentation" : 1,
									"flagmode" : 1,
									"id" : "obj-84",
									"numinlets" : 1,
									"presentation_rect" : [ 290.0, 127.0, 63.0, 18.0 ],
									"numoutlets" : 1,
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "active",
									"patching_rect" : [ 34.0, 26.0, 42.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-85",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 22.0, 12.0, 42.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"varname" : "Active1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 19.0, 25.0, 63.0, 18.0 ],
									"presentation" : 1,
									"flagmode" : 1,
									"id" : "obj-86",
									"numinlets" : 1,
									"presentation_rect" : [ 7.0, 11.0, 63.0, 18.0 ],
									"numoutlets" : 1,
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Size",
									"patching_rect" : [ 186.0, 139.0, 32.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-87",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 175.0, 127.0, 32.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Center (X/Y)",
									"patching_rect" : [ 102.0, 140.0, 75.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-88",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 90.0, 126.0, 75.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Boundaries",
									"patching_rect" : [ 36.0, 140.0, 67.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-89",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 16.0, 127.0, 67.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"varname" : "Size1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.0, 136.0, 44.0, 18.0 ],
									"presentation" : 1,
									"flagmode" : 1,
									"id" : "obj-90",
									"numinlets" : 1,
									"presentation_rect" : [ 158.0, 127.0, 44.0, 18.0 ],
									"numoutlets" : 1,
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"varname" : "Bounds1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 21.0, 136.0, 63.0, 18.0 ],
									"presentation" : 1,
									"flagmode" : 1,
									"id" : "obj-91",
									"numinlets" : 1,
									"presentation_rect" : [ 4.0, 127.0, 63.0, 18.0 ],
									"numoutlets" : 1,
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"varname" : "Center1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 88.0, 136.0, 63.0, 18.0 ],
									"presentation" : 1,
									"flagmode" : 1,
									"id" : "obj-92",
									"numinlets" : 1,
									"presentation_rect" : [ 76.0, 127.0, 63.0, 18.0 ],
									"numoutlets" : 1,
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p learnHSL",
									"outlettype" : [ "" ],
									"patching_rect" : [ 219.0, 431.0, 58.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-93",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 360.0, 213.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 360.0, 213.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend /color.1/brightness",
													"outlettype" : [ "" ],
													"patching_rect" : [ 277.0, 292.0, 137.0, 17.0 ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend /color.1/saturation",
													"outlettype" : [ "" ],
													"patching_rect" : [ 132.0, 290.0, 136.0, 17.0 ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend /color.1/hue",
													"outlettype" : [ "" ],
													"patching_rect" : [ 17.0, 288.0, 107.0, 17.0 ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p",
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 549.0, 90.0, 87.0, 19.0 ],
													"id" : "obj-49",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 3,
													"patcher" : 													{
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
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set /color.4/brightness",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 258.0, 126.0, 114.0, 15.0 ],
																	"id" : "obj-4",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set /color.4/saturation",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 135.0, 131.0, 112.0, 15.0 ],
																	"id" : "obj-5",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set /color.4/hue",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 31.0, 128.0, 83.0, 15.0 ],
																	"id" : "obj-6",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 45.666656, 40.0, 25.0, 25.0 ],
																	"id" : "obj-45",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 16.0, 211.0, 25.0, 25.0 ],
																	"id" : "obj-46",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 140.0, 221.0, 25.0, 25.0 ],
																	"id" : "obj-47",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 275.0, 215.0, 25.0, 25.0 ],
																	"id" : "obj-48",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-48", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-47", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-46", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-45", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-45", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-45", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontsize" : 10.0,
														"fontname" : "Verdana",
														"globalpatchername" : "",
														"default_fontface" : 0,
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p",
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 451.0, 90.0, 93.0, 19.0 ],
													"id" : "obj-44",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 3,
													"patcher" : 													{
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
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set /color.3/brightness",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 206.0, 143.0, 114.0, 15.0 ],
																	"id" : "obj-7",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set /color.3/saturation",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 96.0, 132.0, 112.0, 15.0 ],
																	"id" : "obj-8",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set /color.3/hue",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 2.0, 126.0, 83.0, 15.0 ],
																	"id" : "obj-9",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 45.666656, 40.0, 25.0, 25.0 ],
																	"id" : "obj-40",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 10.0, 211.0, 25.0, 25.0 ],
																	"id" : "obj-41",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 51.0, 211.0, 25.0, 25.0 ],
																	"id" : "obj-42",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 217.0, 215.0, 25.0, 25.0 ],
																	"id" : "obj-43",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-43", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-42", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-41", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-40", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-40", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-40", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontsize" : 10.0,
														"fontname" : "Verdana",
														"globalpatchername" : "",
														"default_fontface" : 0,
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p",
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 341.0, 89.0, 96.0, 19.0 ],
													"id" : "obj-39",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 3,
													"patcher" : 													{
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
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set /color.2/brightness",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 262.0, 98.0, 114.0, 15.0 ],
																	"id" : "obj-10",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set /color.2/saturation",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 139.0, 99.0, 112.0, 15.0 ],
																	"id" : "obj-11",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set /color.2/hue",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 100.0, 83.0, 15.0 ],
																	"id" : "obj-12",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 47.666656, 40.0, 25.0, 25.0 ],
																	"id" : "obj-35",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 50.0, 211.0, 25.0, 25.0 ],
																	"id" : "obj-36",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 54.0, 211.0, 25.0, 25.0 ],
																	"id" : "obj-37",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 84.0, 211.0, 25.0, 25.0 ],
																	"id" : "obj-38",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontsize" : 10.0,
														"fontname" : "Verdana",
														"globalpatchername" : "",
														"default_fontface" : 0,
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p",
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 248.0, 88.0, 89.0, 19.0 ],
													"id" : "obj-34",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 3,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 523.0, 197.0, 640.0, 480.0 ],
														"bglocked" : 0,
														"defrect" : [ 523.0, 197.0, 640.0, 480.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set /color.1/brightness",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 251.0, 92.0, 114.0, 15.0 ],
																	"id" : "obj-13",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set /color.1/saturation",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 132.0, 92.0, 112.0, 15.0 ],
																	"id" : "obj-14",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set /color.1/hue",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 44.0, 92.0, 83.0, 15.0 ],
																	"id" : "obj-15",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 46.333328, 40.0, 25.0, 25.0 ],
																	"id" : "obj-30",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 20.0, 212.0, 25.0, 25.0 ],
																	"id" : "obj-31",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 72.0, 214.0, 25.0, 25.0 ],
																	"id" : "obj-32",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 219.0, 215.0, 25.0, 25.0 ],
																	"id" : "obj-33",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontsize" : 10.0,
														"fontname" : "Verdana",
														"globalpatchername" : "",
														"default_fontface" : 0,
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 197.0, -3.0, 24.0, 19.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 196.0, 20.0, 24.0, 19.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 0",
													"outlettype" : [ "" ],
													"patching_rect" : [ 24.0, 36.0, 47.0, 17.0 ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1 2 3 4 0",
													"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "" ],
													"patching_rect" : [ 275.0, 52.0, 390.0, 17.0 ],
													"id" : "obj-16",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 6
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.thru",
													"outlettype" : [ "" ],
													"patching_rect" : [ 487.0, 158.0, 59.0, 19.0 ],
													"id" : "obj-17",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.thru",
													"outlettype" : [ "" ],
													"patching_rect" : [ 393.0, 161.0, 59.0, 19.0 ],
													"id" : "obj-18",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.thru",
													"outlettype" : [ "" ],
													"patching_rect" : [ 300.0, 162.0, 59.0, 19.0 ],
													"id" : "obj-19",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 255.",
													"outlettype" : [ "float" ],
													"patching_rect" : [ 166.0, 105.0, 40.0, 17.0 ],
													"id" : "obj-20",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 0.01",
													"outlettype" : [ "float" ],
													"patching_rect" : [ 166.0, 86.0, 40.0, 17.0 ],
													"id" : "obj-21",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 255.",
													"outlettype" : [ "float" ],
													"patching_rect" : [ 95.0, 107.0, 40.0, 17.0 ],
													"id" : "obj-22",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 0.01",
													"outlettype" : [ "float" ],
													"patching_rect" : [ 95.0, 88.0, 40.0, 17.0 ],
													"id" : "obj-23",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tap.colorspace @mode rgb2hsl @outputtype split",
													"outlettype" : [ "int", "int", "int", "" ],
													"patching_rect" : [ 23.0, 55.0, 234.0, 17.0 ],
													"id" : "obj-24",
													"fontname" : "Verdana",
													"numinlets" : 3,
													"fontsize" : 9.0,
													"numoutlets" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 276.0, 29.0, 15.0, 15.0 ],
													"id" : "obj-25",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 53.0, 12.0, 15.0, 15.0 ],
													"id" : "obj-26",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 47.0, 331.0, 15.0, 15.0 ],
													"id" : "obj-27",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 2 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 3 ],
													"destination" : [ "obj-2", 0 ],
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
													"source" : [ "obj-16", 4 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 1 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 2 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 3 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 2 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 1 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 2 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 2 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 2 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 2 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-5", 0 ],
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
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Brightness Variation",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"patching_rect" : [ 750.0, 111.0, 65.0, 31.0 ],
									"presentation" : 1,
									"id" : "obj-95",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 741.0, 95.0, 65.0, 31.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Brightness",
									"patching_rect" : [ 656.0, 117.0, 65.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-97",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 644.0, 98.0, 65.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Saturation Variation",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"patching_rect" : [ 750.0, 80.0, 64.0, 31.0 ],
									"presentation" : 1,
									"id" : "obj-99",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 742.0, 64.0, 64.0, 31.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Saturation",
									"patching_rect" : [ 655.0, 91.0, 65.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-101",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 643.0, 68.0, 65.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Hue Variation",
									"presentation_linecount" : 2,
									"patching_rect" : [ 750.0, 61.0, 78.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-103",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 747.0, 34.0, 53.0, 31.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Tracker 4",
									"patching_rect" : [ 725.0, 24.0, 71.0, 21.0 ],
									"presentation" : 1,
									"id" : "obj-104",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 713.0, 10.0, 71.0, 21.0 ],
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Hue",
									"patching_rect" : [ 686.0, 68.0, 34.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-106",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 678.0, 36.0, 34.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Brightness Variation",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"patching_rect" : [ 540.0, 110.0, 65.0, 31.0 ],
									"presentation" : 1,
									"id" : "obj-108",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 531.0, 95.0, 65.0, 31.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Brightness",
									"patching_rect" : [ 446.0, 116.0, 65.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-110",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 434.0, 98.0, 65.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Saturation Variation",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"patching_rect" : [ 540.0, 79.0, 64.0, 31.0 ],
									"presentation" : 1,
									"id" : "obj-112",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 532.0, 64.0, 64.0, 31.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Saturation",
									"patching_rect" : [ 445.0, 90.0, 65.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-114",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 433.0, 68.0, 65.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Hue Variation",
									"presentation_linecount" : 2,
									"patching_rect" : [ 540.0, 60.0, 78.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-116",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 537.0, 33.0, 53.0, 31.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Tracker 3",
									"patching_rect" : [ 515.0, 24.0, 71.0, 21.0 ],
									"presentation" : 1,
									"id" : "obj-117",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 503.0, 10.0, 71.0, 21.0 ],
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Hue",
									"patching_rect" : [ 476.0, 67.0, 34.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-119",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 468.0, 36.0, 34.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Brightness Variation",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"patching_rect" : [ 332.0, 110.0, 65.0, 31.0 ],
									"presentation" : 1,
									"id" : "obj-121",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 323.0, 95.0, 65.0, 31.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Brightness",
									"patching_rect" : [ 238.0, 116.0, 65.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-123",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 226.0, 98.0, 65.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Saturation Variation",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"patching_rect" : [ 332.0, 79.0, 64.0, 31.0 ],
									"presentation" : 1,
									"id" : "obj-125",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 324.0, 64.0, 64.0, 31.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Saturation",
									"patching_rect" : [ 237.0, 90.0, 65.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-127",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 225.0, 68.0, 65.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Hue Variation",
									"presentation_linecount" : 2,
									"patching_rect" : [ 332.0, 60.0, 78.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-129",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 329.0, 33.0, 53.0, 31.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Tracker 2",
									"patching_rect" : [ 307.0, 24.0, 71.0, 21.0 ],
									"presentation" : 1,
									"id" : "obj-130",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 295.0, 10.0, 71.0, 21.0 ],
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Hue",
									"patching_rect" : [ 268.0, 67.0, 34.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-132",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 260.0, 36.0, 34.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ -7.0, 137.0, 15.0, 15.0 ],
									"hidden" : 1,
									"id" : "obj-133",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 346.0, 792.0, 30.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-134",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 801.0, 99.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "4/brightness/variation",
									"text" : "jcom.parameter color.4/brightness/variation @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode low @description \"Brightness toleranz for colortracker 4\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 391.0, 793.0, 601.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-135",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 346.0, 759.0, 30.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-136",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 594.0, 99.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "3/brightness/variation",
									"text" : "jcom.parameter color.3/brightness/variation @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode low @description \"Brightness toleranz for colortracker 3\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 391.0, 760.0, 601.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-137",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 346.0, 726.0, 30.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-138",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 385.0, 99.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "2/brightness/variation",
									"text" : "jcom.parameter color.2/brightness/variation @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode low @description \"Brightness toleranz for colortracker 2\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 390.0, 727.0, 601.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-139",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 1271.0, 848.0, 50.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-140",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 710.0, 99.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "4/brightness",
									"text" : "jcom.parameter color.4/brightness @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode low @description \"Brightness value for colortracker 4\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1333.0, 845.0, 408.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-141",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 1271.0, 721.0, 50.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-142",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 498.0, 99.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "3/brightness",
									"text" : "jcom.parameter color.3/brightness @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode low @description \"Brightness value for colortracker 3\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1332.0, 723.0, 408.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-143",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 1261.0, 505.0, 50.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-144",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 288.0, 99.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "2/brightness",
									"text" : "jcom.parameter color.2/brightness @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode low @description \"Brightness value for colortracker 2\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1325.0, 507.0, 408.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-145",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 1261.0, 615.0, 50.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-146",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 80.0, 99.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "1/brightness",
									"text" : "jcom.parameter color.1/brightness @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode both @description \"Brightness value for colortracker 1\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1315.0, 611.0, 413.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-147",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 346.0, 693.0, 30.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-148",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 174.0, 99.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "1/brightness/variation",
									"text" : "jcom.parameter color.1/brightness/variation @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode low @description \"Brightness toleranz for colortracker 1\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 390.0, 694.0, 601.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-149",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Brightness Variation",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"patching_rect" : [ 122.0, 109.0, 65.0, 31.0 ],
									"presentation" : 1,
									"id" : "obj-151",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 113.0, 95.0, 65.0, 31.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Brightness",
									"patching_rect" : [ 28.0, 115.0, 65.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-153",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 21.0, 97.0, 65.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Saturation Variation",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"patching_rect" : [ 122.0, 78.0, 64.0, 31.0 ],
									"presentation" : 1,
									"id" : "obj-155",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 114.0, 64.0, 64.0, 31.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 346.0, 627.0, 30.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-156",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 801.0, 69.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "4/saturation/variation",
									"text" : "jcom.parameter color.4/saturation/variation @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode low @description \"Saturation toleranz for colortracker 4\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 387.0, 622.0, 600.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-157",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 346.0, 585.0, 30.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-158",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 594.0, 69.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "3/saturation/variation",
									"text" : "jcom.parameter color.3/saturation/variation @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode low @description \"Saturation toleranz for colortracker 3\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 385.0, 586.0, 600.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-159",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 346.0, 547.0, 30.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-160",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 385.0, 69.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "2/saturation/variation",
									"text" : "jcom.parameter color.2/saturation/variation @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode low @description \"Saturation toleranz for colortracker 2\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 387.0, 548.0, 600.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-161",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 1271.0, 806.0, 50.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-162",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 710.0, 69.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "4/saturation",
									"text" : "jcom.parameter color.4/saturation @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode low @description \"Saturation value for colortracker 4\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1334.0, 808.0, 407.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-163",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 1271.0, 686.0, 50.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-164",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 498.0, 69.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "3/saturation",
									"text" : "jcom.parameter color.3/saturation @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode low @description \"Saturation value for colortracker 3\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1330.0, 688.0, 407.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-165",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 1261.0, 473.0, 50.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-166",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 288.0, 69.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "2/saturation",
									"text" : "jcom.parameter color.2/saturation @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode low @description \"Saturation value for colortracker 2\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1327.0, 475.0, 407.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-167",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 1261.0, 574.0, 50.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-168",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 80.0, 69.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "1/saturation",
									"text" : "jcom.parameter color.1/saturation @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode both @description \"Saturation value for colortracker 1\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1315.0, 576.0, 412.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-169",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 346.0, 516.0, 30.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-170",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 174.0, 69.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "1/saturation/variation",
									"text" : "jcom.parameter color.1/saturation/variation @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode low @description \"Saturation toleranz for colortracker 1\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 387.0, 511.0, 600.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-171",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Saturation",
									"patching_rect" : [ 27.0, 89.0, 65.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-173",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 20.0, 67.0, 65.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 346.0, 440.0, 30.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-174",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 801.0, 37.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "4/hue/variation",
									"text" : "jcom.parameter color.4/hue/variation @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode low @description \"Hue toleranz for colortracker 4\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 386.0, 440.0, 571.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-175",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 346.0, 405.0, 30.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-176",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 594.0, 37.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "3/hue/variation",
									"text" : "jcom.parameter color.3/hue/variation @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode low @description \"Hue toleranz for colortracker 3\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 386.0, 405.0, 571.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-177",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 346.0, 370.0, 30.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-178",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 385.0, 37.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "2/hue/variation",
									"text" : "jcom.parameter color.2/hue/variation @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode low @description \"Hue toleranz for colortracker 2\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 386.0, 370.0, 571.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-179",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 346.0, 338.0, 30.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-180",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 174.0, 37.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "1/hue/variation",
									"text" : "jcom.parameter color.1/hue/variation @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode low @description \"Hue toleranz for colortracker 1\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 383.0, 332.0, 571.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-181",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Hue Variation",
									"presentation_linecount" : 2,
									"patching_rect" : [ 122.0, 59.0, 78.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-183",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 119.0, 32.0, 53.0, 31.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Tracker 1",
									"patching_rect" : [ 88.0, 24.0, 71.0, 21.0 ],
									"presentation" : 1,
									"id" : "obj-184",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 76.0, 10.0, 71.0, 21.0 ],
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 1271.0, 773.0, 50.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-186",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 710.0, 37.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "4/hue",
									"text" : "jcom.parameter color.4/hue @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode low @description \"Hue value for colortracker 4\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1341.0, 768.0, 439.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-187",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 1271.0, 656.0, 50.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-188",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 498.0, 37.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "3/hue",
									"text" : "jcom.parameter color.3/hue @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode low @description \"Hue value for colortracker 3\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1332.0, 651.0, 439.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-189",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 1261.0, 441.0, 50.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-190",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 288.0, 37.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "2/hue",
									"text" : "jcom.parameter color.2/hue @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode low @description \"Hue value for colortracker 2\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1322.0, 441.0, 439.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-191",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 1261.0, 548.0, 50.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-192",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triangle" : 0,
									"presentation_rect" : [ 80.0, 37.0, 30.0, 19.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "1/hue",
									"text" : "jcom.parameter color.1/hue @type msg_int @range/bounds 0 255 @ramp/drive scheduler @range/clipmode both @description \"Hue value for colortracker 1\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1315.0, 542.0, 444.0, 28.0 ],
									"hidden" : 1,
									"id" : "obj-193",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess patcher Colortracker",
									"outlettype" : [ "" ],
									"patching_rect" : [ 658.0, 256.0, 149.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-194",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 100 100 400 615, window exec",
									"outlettype" : [ "" ],
									"patching_rect" : [ 570.0, 240.0, 214.0, 15.0 ],
									"hidden" : 1,
									"id" : "obj-199",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 555.0, 261.0, 59.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-200",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "nogrow", "close", "zoom", "nofloat", "menu", "minimize", ";", "#Q", "window", "constrain", 2, 2, 32768, 32768, ";", "#Q", "window", "size", 91, 44, 934, 379, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"outlettype" : [ "" ],
									"patching_rect" : [ 527.0, 218.0, 239.0, 15.0 ],
									"hidden" : 1,
									"id" : "obj-202",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"outlettype" : [ "" ],
									"patching_rect" : [ 490.0, 203.0, 158.0, 15.0 ],
									"hidden" : 1,
									"id" : "obj-203",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Hue",
									"patching_rect" : [ 58.0, 66.0, 34.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-204",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 46.0, 36.0, 34.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 645.0, 17.0, 208.0, 147.0 ],
									"presentation" : 1,
									"id" : "obj-205",
									"border" : 3,
									"numinlets" : 1,
									"presentation_rect" : [ 633.0, 3.0, 208.0, 147.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 435.0, 17.0, 208.0, 147.0 ],
									"presentation" : 1,
									"id" : "obj-206",
									"border" : 3,
									"numinlets" : 1,
									"presentation_rect" : [ 423.0, 3.0, 208.0, 147.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 225.0, 17.0, 208.0, 147.0 ],
									"presentation" : 1,
									"id" : "obj-207",
									"border" : 3,
									"numinlets" : 1,
									"presentation_rect" : [ 213.0, 3.0, 208.0, 147.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 14.0, 17.0, 208.0, 147.0 ],
									"presentation" : 1,
									"id" : "obj-208",
									"border" : 3,
									"numinlets" : 1,
									"presentation_rect" : [ 2.0, 3.0, 208.0, 147.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 19.0, 513.0, 208.0, 147.0 ],
									"presentation" : 1,
									"id" : "obj-247",
									"border" : 3,
									"numinlets" : 1,
									"presentation_rect" : [ 232.0, 161.0, 378.0, 136.0 ],
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-145", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-19", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-167", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-134", 0 ],
									"destination" : [ "obj-135", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-135", 0 ],
									"destination" : [ "obj-134", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-136", 0 ],
									"destination" : [ "obj-137", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-137", 0 ],
									"destination" : [ "obj-136", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-138", 0 ],
									"destination" : [ "obj-139", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-139", 0 ],
									"destination" : [ "obj-138", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-148", 0 ],
									"destination" : [ "obj-149", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-149", 0 ],
									"destination" : [ "obj-148", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-156", 0 ],
									"destination" : [ "obj-157", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-157", 0 ],
									"destination" : [ "obj-156", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-158", 0 ],
									"destination" : [ "obj-159", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-159", 0 ],
									"destination" : [ "obj-158", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-160", 0 ],
									"destination" : [ "obj-161", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-161", 0 ],
									"destination" : [ "obj-160", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-170", 0 ],
									"destination" : [ "obj-171", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-171", 0 ],
									"destination" : [ "obj-170", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-174", 0 ],
									"destination" : [ "obj-175", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-175", 0 ],
									"destination" : [ "obj-174", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-176", 0 ],
									"destination" : [ "obj-177", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-177", 0 ],
									"destination" : [ "obj-176", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-178", 0 ],
									"destination" : [ "obj-179", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-179", 0 ],
									"destination" : [ "obj-178", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-180", 0 ],
									"destination" : [ "obj-181", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-181", 0 ],
									"destination" : [ "obj-180", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-140", 0 ],
									"destination" : [ "obj-141", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-141", 0 ],
									"destination" : [ "obj-140", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-162", 0 ],
									"destination" : [ "obj-163", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-163", 0 ],
									"destination" : [ "obj-162", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-187", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-186", 0 ],
									"destination" : [ "obj-187", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-187", 0 ],
									"destination" : [ "obj-186", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-142", 0 ],
									"destination" : [ "obj-143", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 0 ],
									"destination" : [ "obj-142", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-164", 0 ],
									"destination" : [ "obj-165", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-165", 0 ],
									"destination" : [ "obj-164", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-189", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-188", 0 ],
									"destination" : [ "obj-189", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-189", 0 ],
									"destination" : [ "obj-188", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 0 ],
									"destination" : [ "obj-146", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-146", 0 ],
									"destination" : [ "obj-147", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-169", 0 ],
									"destination" : [ "obj-168", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-168", 0 ],
									"destination" : [ "obj-169", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-193", 1 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-193", 0 ],
									"destination" : [ "obj-192", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-192", 0 ],
									"destination" : [ "obj-193", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 0 ],
									"destination" : [ "obj-145", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-145", 0 ],
									"destination" : [ "obj-144", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-166", 0 ],
									"destination" : [ "obj-167", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-167", 0 ],
									"destination" : [ "obj-166", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-190", 0 ],
									"destination" : [ "obj-191", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-191", 0 ],
									"destination" : [ "obj-190", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-205", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-206", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-207", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-208", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-203", 0 ],
									"destination" : [ "obj-200", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-202", 0 ],
									"destination" : [ "obj-200", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-199", 0 ],
									"destination" : [ "obj-200", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-93", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-93", 0 ],
									"hidden" : 1,
									"midpoints" : [ 28.5, 425.0, 228.5, 425.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-30", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 1,
									"midpoints" : [ 8.5, 365.0, 50.5, 365.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 2 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 1,
									"midpoints" : [ 41.5, 365.0, 50.5, 365.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 155.5, 372.0, 50.5, 372.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 66.5, 372.0, 50.5, 372.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 1 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-133", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-194", 0 ],
									"destination" : [ "obj-200", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-120", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-120", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-191", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-22", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-6", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-169", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-165", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-163", 1 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-141", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-120", 1 ],
									"destination" : [ "obj-94", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-126", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-126", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-150", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-150", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-172", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-172", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-126", 1 ],
									"destination" : [ "obj-96", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-150", 1 ],
									"destination" : [ "obj-98", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-172", 1 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.tap.colortrack%.maxpat",
					"outlettype" : [ "" ],
					"patching_rect" : [ 241.0, 374.0, 138.0, 17.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"outlettype" : [ "" ],
					"patching_rect" : [ 100.0, 90.0, 191.0, 15.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out 1",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 182.0, 410.0, 58.0, 17.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"outlettype" : [ "" ],
					"patching_rect" : [ 112.0, 108.0, 125.0, 15.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.hub",
					"text" : "jcom.hub jmod.tap.colotrack% @module_type video @description \"A fast colortracker made by Tap.Tools\"",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 19.0, 154.0, 494.0, 17.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"patching_rect" : [ 215.0, 439.0, 78.0, 17.0 ],
					"id" : "obj-13",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 184.0, 443.0, 13.0, 13.0 ],
					"id" : "obj-14",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"patching_rect" : [ 79.0, 182.0, 13.0, 13.0 ],
					"id" : "obj-15",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"patching_rect" : [ 94.0, 182.0, 69.0, 17.0 ],
					"id" : "obj-16",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"outlettype" : [ "" ],
					"patching_rect" : [ 242.0, 108.0, 31.0, 15.0 ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 6.0, 192.0, 13.0, 13.0 ],
					"id" : "obj-19",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"patching_rect" : [ 6.0, 105.0, 13.0, 13.0 ],
					"id" : "obj-20",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 106.0, 236.0, 128.5, 236.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [ 128.5, 272.0, 128.5, 272.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [ 106.0, 236.0, 369.5, 236.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"midpoints" : [ 89.5, 367.0, 250.5, 367.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [ 250.5, 398.0, 234.0, 398.0, 234.0, 313.0, 209.5, 313.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"midpoints" : [ 89.5, 402.0, 191.5, 402.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"midpoints" : [ 89.5, 309.0, 128.5, 309.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 130.0, 28.5, 130.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 251.5, 130.0, 28.5, 130.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 121.5, 130.0, 28.5, 130.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
