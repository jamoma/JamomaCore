{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 69.0, 132.0, 895.0, 446.0 ],
		"bglocked" : 0,
		"defrect" : [ 69.0, 132.0, 895.0, 446.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "out[2]",
					"patching_rect" : [ 40.0, 345.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"id" : "obj-11",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t l l",
					"fontsize" : 10.0,
					"patching_rect" : [ 40.0, 80.0, 32.5, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "multiout",
					"text" : "jcom.multi.out~",
					"fontsize" : 10.0,
					"patching_rect" : [ 275.0, 95.0, 545.0, 19.0 ],
					"numinlets" : 2,
					"id" : "obj-2",
					"numoutlets" : 32,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "multiin",
					"text" : "jcom.multi.in~",
					"fontsize" : 10.0,
					"patching_rect" : [ 275.0, 315.0, 542.0, 19.0 ],
					"numinlets" : 32,
					"id" : "obj-3",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "messages",
					"text" : "p messages",
					"fontsize" : 10.0,
					"patching_rect" : [ 170.0, 125.0, 74.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-4",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 175.0, 140.0, 812.0, 326.0 ],
						"bglocked" : 0,
						"defrect" : [ 175.0, 140.0, 812.0, 326.0 ],
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
									"text" : "what is blurall?",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 153.0, 77.0, 87.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-10",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /blurall /dimensions /numSpeakers /numSources /audio/gain /info",
									"fontsize" : 10.0,
									"patching_rect" : [ 175.0, 55.0, 424.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-12",
									"numoutlets" : 7,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"fontsize" : 10.0,
									"patching_rect" : [ 25.0, 115.0, 54.0, 19.0 ],
									"numinlets" : 2,
									"id" : "obj-6",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"fontsize" : 10.0,
									"patching_rect" : [ 25.0, 90.0, 41.0, 19.0 ],
									"numinlets" : 2,
									"id" : "obj-7",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscinstance",
									"fontsize" : 10.0,
									"patching_rect" : [ 25.0, 55.0, 140.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-8",
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p source_position",
									"fontsize" : 10.0,
									"patching_rect" : [ 25.0, 213.0, 725.0, 19.0 ],
									"numinlets" : 5,
									"id" : "obj-1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 72.0, 44.0, 857.0, 786.0 ],
										"bglocked" : 0,
										"defrect" : [ 72.0, 44.0, 857.0, 786.0 ],
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
													"text" : "p set_matrix",
													"fontsize" : 10.0,
													"patching_rect" : [ 75.0, 95.0, 74.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-63",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 25.0, 69.0, 1003.0, 562.0 ],
														"bglocked" : 0,
														"defrect" : [ 25.0, 69.0, 1003.0, 562.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.dataspace @dataspace position @input xyz @output aed",
																	"linecount" : 3,
																	"fontsize" : 10.0,
																	"patching_rect" : [ 95.0, 160.0, 143.0, 43.0 ],
																	"numinlets" : 1,
																	"id" : "obj-1",
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl join",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 615.0, 220.0, 63.0, 19.0 ],
																	"numinlets" : 2,
																	"id" : "obj-59",
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 615.0, 176.0, 33.0, 19.0 ],
																	"numinlets" : 2,
																	"id" : "obj-60",
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl slice 1",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 615.0, 130.0, 62.0, 19.0 ],
																	"numinlets" : 2,
																	"id" : "obj-61",
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setcell $1 plane 5 val $2, getcell $1",
																	"linecount" : 2,
																	"fontsize" : 10.0,
																	"patching_rect" : [ 615.0, 250.0, 148.0, 29.0 ],
																	"numinlets" : 2,
																	"id" : "obj-62",
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl join",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 420.0, 220.0, 63.0, 19.0 ],
																	"numinlets" : 2,
																	"id" : "obj-56",
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 420.0, 160.0, 33.0, 19.0 ],
																	"numinlets" : 2,
																	"id" : "obj-57",
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl slice 1",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 420.0, 130.0, 62.0, 19.0 ],
																	"numinlets" : 2,
																	"id" : "obj-58",
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setcell $1 plane 4 val $2, getcell $1",
																	"linecount" : 2,
																	"fontsize" : 10.0,
																	"patching_rect" : [ 420.0, 250.0, 141.0, 29.0 ],
																	"numinlets" : 2,
																	"id" : "obj-54",
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.dataspace @dataspace gain @input midi @output linear",
																	"linecount" : 4,
																	"fontsize" : 10.0,
																	"patching_rect" : [ 465.0, 155.0, 100.0, 55.0 ],
																	"numinlets" : 1,
																	"id" : "obj-53",
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "* 5.",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 300.0, 160.0, 48.0, 19.0 ],
																	"numinlets" : 2,
																	"id" : "obj-44",
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl join",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 255.0, 220.0, 63.0, 19.0 ],
																	"numinlets" : 2,
																	"id" : "obj-8",
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 255.0, 160.0, 33.0, 19.0 ],
																	"numinlets" : 2,
																	"id" : "obj-9",
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl slice 1",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 255.0, 130.0, 62.0, 19.0 ],
																	"numinlets" : 2,
																	"id" : "obj-10",
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl join",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 50.0, 220.0, 63.0, 19.0 ],
																	"numinlets" : 2,
																	"id" : "obj-11",
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 50.0, 160.0, 33.0, 19.0 ],
																	"numinlets" : 2,
																	"id" : "obj-12",
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl slice 1",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 50.0, 130.0, 62.0, 19.0 ],
																	"numinlets" : 2,
																	"id" : "obj-13",
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.oscroute /position /blur /gain /active",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 50.0, 80.0, 732.0, 19.0 ],
																	"numinlets" : 1,
																	"id" : "obj-29",
																	"numoutlets" : 5,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setcell $1 plane 3 val $2, getcell $1",
																	"linecount" : 2,
																	"fontsize" : 10.0,
																	"patching_rect" : [ 255.0, 250.0, 141.0, 29.0 ],
																	"numinlets" : 2,
																	"id" : "obj-30",
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setcell $1 plane 0 val $2, setcell $1 plane 1 val $3, setcell $1 plane 2 val $4, getcell $1",
																	"linecount" : 4,
																	"fontsize" : 10.0,
																	"patching_rect" : [ 50.0, 250.0, 133.0, 53.0 ],
																	"numinlets" : 2,
																	"id" : "obj-31",
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
																	"numinlets" : 0,
																	"id" : "obj-51",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 50.0, 370.0, 25.0, 25.0 ],
																	"numinlets" : 1,
																	"id" : "obj-55",
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-61", 0 ],
																	"destination" : [ "obj-60", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-60", 0 ],
																	"destination" : [ "obj-59", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-59", 0 ],
																	"destination" : [ "obj-62", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-56", 0 ],
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-53", 0 ],
																	"destination" : [ "obj-56", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-58", 1 ],
																	"destination" : [ "obj-53", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-57", 0 ],
																	"destination" : [ "obj-56", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-58", 0 ],
																	"destination" : [ "obj-57", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-44", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-44", 0 ],
																	"destination" : [ "obj-8", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 1 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 2 ],
																	"destination" : [ "obj-58", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 3 ],
																	"destination" : [ "obj-61", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-61", 1 ],
																	"destination" : [ "obj-59", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-51", 0 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-55", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-55", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-54", 0 ],
																	"destination" : [ "obj-55", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-62", 0 ],
																	"destination" : [ "obj-55", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 1 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-11", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontsize" : 10.0,
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Verdana",
														"fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "the gate prevents a stupid error message if you create the module",
													"linecount" : 3,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0,
													"patching_rect" : [ 695.0, 220.0, 145.0, 43.0 ],
													"numinlets" : 1,
													"id" : "obj-52",
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "del 100",
													"fontsize" : 10.0,
													"patching_rect" : [ 560.0, 145.0, 49.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-50",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1",
													"fontsize" : 10.0,
													"patching_rect" : [ 560.0, 170.0, 25.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-35",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.init",
													"fontsize" : 10.0,
													"patching_rect" : [ 560.0, 115.0, 55.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-34",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 0",
													"fontsize" : 10.0,
													"patching_rect" : [ 560.0, 210.0, 52.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-33",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p init",
													"fontsize" : 10.0,
													"patching_rect" : [ 95.0, 290.0, 37.0, 19.0 ],
													"numinlets" : 0,
													"id" : "obj-69",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 25.0, 69.0, 461.0, 269.0 ],
														"bglocked" : 0,
														"defrect" : [ 25.0, 69.0, 461.0, 269.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setcell $1 plane 4 val 1., setcell $1 plane 5 val 1.",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 90.0, 140.0, 259.0, 17.0 ],
																	"numinlets" : 2,
																	"id" : "obj-55",
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "uzi 32 0",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 55.0, 110.0, 52.0, 19.0 ],
																	"numinlets" : 2,
																	"id" : "obj-35",
																	"numoutlets" : 3,
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang", "bang", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.init",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 55.0, 75.0, 55.0, 19.0 ],
																	"numinlets" : 1,
																	"id" : "obj-34",
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 90.0, 170.0, 25.0, 25.0 ],
																	"numinlets" : 1,
																	"id" : "obj-63",
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-55", 0 ],
																	"destination" : [ "obj-63", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 2 ],
																	"destination" : [ "obj-55", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontsize" : 10.0,
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Verdana",
														"fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "-  active state (1 or 0)",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0,
													"patching_rect" : [ 75.0, 485.0, 176.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-68",
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "-  gain",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0,
													"patching_rect" : [ 75.0, 469.0, 164.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-67",
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 1.",
													"fontsize" : 10.0,
													"patching_rect" : [ 475.0, 545.0, 38.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-66",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 1.",
													"fontsize" : 10.0,
													"patching_rect" : [ 475.0, 580.0, 38.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-65",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend",
													"fontsize" : 10.0,
													"patching_rect" : [ 325.0, 655.0, 53.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-49",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontsize" : 10.0,
													"patching_rect" : [ 325.0, 605.0, 71.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-47",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim 20",
													"fontsize" : 10.0,
													"patching_rect" : [ 625.0, 170.0, 49.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-46",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b f",
													"fontsize" : 10.0,
													"patching_rect" : [ 625.0, 145.0, 70.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-45",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.dataspace @dataspace gain @input midi @output linear",
													"linecount" : 4,
													"fontsize" : 10.0,
													"patching_rect" : [ 625.0, 85.0, 98.0, 55.0 ],
													"numinlets" : 1,
													"id" : "obj-48",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 641.0, 25.0, 29.0, 29.0 ],
													"numinlets" : 0,
													"id" : "obj-43",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 552.0, 25.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-42",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 400.0, 25.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-15",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"fontsize" : 10.0,
													"patching_rect" : [ 30.0, 100.0, 25.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-14",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend getcell",
													"fontsize" : 10.0,
													"patching_rect" : [ 220.0, 305.0, 89.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-16",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 32 0",
													"fontsize" : 10.0,
													"patching_rect" : [ 180.0, 275.0, 57.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-17",
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"fontsize" : 10.0,
													"patching_rect" : [ 180.0, 95.0, 349.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-18",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 180.0, 25.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-19",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- spread (we call it  blur now)",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0,
													"patching_rect" : [ 75.0, 453.0, 174.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-20",
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- dist",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0,
													"patching_rect" : [ 75.0, 436.0, 126.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-21",
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- ele",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0,
													"patching_rect" : [ 75.0, 419.0, 120.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-22",
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "6 planes:",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0,
													"patching_rect" : [ 75.0, 380.0, 123.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-23",
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- azi",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0,
													"patching_rect" : [ 75.0, 402.0, 120.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-24",
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"fontsize" : 10.0,
													"patching_rect" : [ 310.0, 470.0, 36.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-25",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l i",
													"fontsize" : 10.0,
													"patching_rect" : [ 330.0, 410.0, 35.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-26",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "<",
													"fontsize" : 10.0,
													"patching_rect" : [ 380.0, 440.0, 33.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-27",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route cell",
													"fontsize" : 10.0,
													"patching_rect" : [ 330.0, 380.0, 66.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-28",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.matrix #0_source_positions 6 float32 32",
													"fontsize" : 10.0,
													"patching_rect" : [ 75.0, 340.0, 275.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-32",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "jit_matrix", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"fontsize" : 10.0,
													"patching_rect" : [ 310.0, 520.0, 34.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-36",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "vbap",
													"fontsize" : 10.0,
													"patching_rect" : [ 405.0, 605.0, 87.0, 19.0 ],
													"numinlets" : 5,
													"id" : "obj-37",
													"numoutlets" : 5,
													"fontname" : "Verdana",
													"outlettype" : [ "list", "int", "int", "int", "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 s 0. 0. 0. 0. 0. 0.",
													"fontsize" : 10.0,
													"patching_rect" : [ 310.0, 495.0, 170.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-38",
													"numoutlets" : 8,
													"fontname" : "Verdana",
													"outlettype" : [ "int", "", "float", "float", "float", "float", "float", "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 75.0, 25.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-39",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 325.0, 685.0, 26.0, 26.0 ],
													"numinlets" : 1,
													"id" : "obj-40",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "If speaker setup is updated, source positions are refreshed",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0,
													"patching_rect" : [ 210.0, 65.0, 309.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-41",
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-17", 2 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [ 414.5, 644.0, 334.5, 644.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-63", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-63", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-50", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 569.5, 251.5, 189.5, 251.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 1 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 1 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [ 519.5, 483.0, 414.5, 483.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-17", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-27", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 1 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-25", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-66", 0 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
													"midpoints" : [ 229.5, 335.0, 84.5, 335.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 1 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 5 ],
													"destination" : [ "obj-37", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 3 ],
													"destination" : [ "obj-37", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 2 ],
													"destination" : [ "obj-37", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 6 ],
													"destination" : [ "obj-66", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 7 ],
													"destination" : [ "obj-66", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 1 ],
													"destination" : [ "obj-65", 1 ],
													"hidden" : 0,
													"midpoints" : [ 685.5, 573.0, 503.5, 573.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-65", 0 ],
													"destination" : [ "obj-37", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-69", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 0 ],
													"destination" : [ "obj-33", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p loudspeaker_setup",
									"fontsize" : 10.0,
									"patching_rect" : [ 200.0, 185.0, 150.0, 19.0 ],
									"numinlets" : 3,
									"id" : "obj-2",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 95.0, 75.0, 847.0, 714.0 ],
										"bglocked" : 0,
										"defrect" : [ 95.0, 75.0, 847.0, 714.0 ],
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
													"text" : "zl join",
													"fontsize" : 10.0,
													"patching_rect" : [ 270.0, 135.0, 41.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-27",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"fontsize" : 10.0,
													"patching_rect" : [ 320.0, 65.0, 54.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-7",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.dataspace @dataspace position @input xyz @output aed",
													"linecount" : 3,
													"fontsize" : 10.0,
													"patching_rect" : [ 355.0, 90.0, 143.0, 43.0 ],
													"numinlets" : 1,
													"id" : "obj-6",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.init",
													"fontsize" : 10.0,
													"patching_rect" : [ 265.0, 260.0, 55.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-30",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "sort -1 -1",
													"fontsize" : 10.0,
													"patching_rect" : [ 265.0, 285.0, 57.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-25",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "number of speakers",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0,
													"patching_rect" : [ 630.0, 10.0, 112.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-28",
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "dimensions",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0,
													"patching_rect" : [ 530.0, 10.0, 68.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-26",
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 630.0, 36.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-5",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 532.0, 36.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-4",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend",
													"fontsize" : 10.0,
													"patching_rect" : [ 290.0, 585.0, 53.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-33",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set ls-directions",
													"fontsize" : 10.0,
													"patching_rect" : [ 485.0, 530.0, 136.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-32",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p list_round",
													"fontsize" : 10.0,
													"patching_rect" : [ 290.0, 535.0, 81.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-1",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 374.0, 271.0, 508.0, 247.0 ],
														"bglocked" : 0,
														"defrect" : [ 374.0, 271.0, 508.0, 247.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl group 256",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 49.0, 165.0, 67.0, 17.0 ],
																	"numinlets" : 2,
																	"id" : "obj-1",
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "round",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 66.0, 139.0, 34.0, 17.0 ],
																	"numinlets" : 1,
																	"id" : "obj-2",
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "iter",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 66.0, 118.0, 25.0, 17.0 ],
																	"numinlets" : 1,
																	"id" : "obj-3",
																	"numoutlets" : 1,
																	"fontname" : "Arial",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 49.0, 92.0, 27.0, 17.0 ],
																	"numinlets" : 1,
																	"id" : "obj-4",
																	"numoutlets" : 2,
																	"fontname" : "Arial",
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 49.0, 72.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"id" : "obj-5",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 49.0, 187.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"id" : "obj-6",
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "Angles have to be rounded to int.",
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontsize" : 9.0,
																	"patching_rect" : [ 145.0, 130.0, 157.0, 17.0 ],
																	"numinlets" : 1,
																	"id" : "obj-7",
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "define_loudspeakers seems to treat float angles as radians instead of degrees.",
																	"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontsize" : 9.0,
																	"patching_rect" : [ 145.0, 151.0, 362.0, 17.0 ],
																	"numinlets" : 1,
																	"id" : "obj-8",
																	"numoutlets" : 0,
																	"fontname" : "Arial"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontsize" : 10.0,
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Arial",
														"fontname" : "Arial"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_refresh_speaker-setup",
													"fontsize" : 10.0,
													"patching_rect" : [ 70.0, 66.0, 153.0, 19.0 ],
													"numinlets" : 0,
													"id" : "obj-2",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"fontsize" : 10.0,
													"patching_rect" : [ 290.0, 610.0, 45.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-3",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 0",
													"fontsize" : 10.0,
													"patching_rect" : [ 290.0, 505.0, 62.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-8",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"fontsize" : 10.0,
													"patching_rect" : [ 290.0, 460.0, 43.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-9",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl group 256",
													"fontsize" : 10.0,
													"patching_rect" : [ 320.0, 425.0, 85.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-10",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"fontsize" : 10.0,
													"patching_rect" : [ 630.0, 240.0, 34.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-11",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim",
													"fontsize" : 10.0,
													"patching_rect" : [ 70.0, 322.0, 36.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-12",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b dump",
													"fontsize" : 10.0,
													"patching_rect" : [ 70.0, 264.0, 71.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-13",
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "bang", "dump" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 0",
													"fontsize" : 10.0,
													"patching_rect" : [ 320.0, 380.0, 98.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-14",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll",
													"fontsize" : 10.0,
													"patching_rect" : [ 320.0, 355.0, 61.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-15",
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "", "" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"fontsize" : 10.0,
													"patching_rect" : [ 532.0, 275.0, 33.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-16",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "clip 2 3",
													"fontsize" : 10.0,
													"patching_rect" : [ 532.0, 227.0, 54.0, 19.0 ],
													"numinlets" : 3,
													"id" : "obj-17",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 2",
													"fontsize" : 10.0,
													"patching_rect" : [ 630.0, 350.0, 35.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-18",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "define_loudspeakers 3 45 0 -45 0 135 0 -135 0",
													"fontsize" : 10.0,
													"patching_rect" : [ 290.0, 645.0, 291.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-20",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 320.0, 36.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-21",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 290.0, 675.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-22",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Speaker setup is always refreshed when audio is started, in case number of voices in or out has been changed.",
													"linecount" : 3,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0,
													"patching_rect" : [ 70.0, 15.0, 215.0, 43.0 ],
													"numinlets" : 1,
													"id" : "obj-23",
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [ 541.5, 254.0, 494.5, 254.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-17", 0 ],
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
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-18", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-14", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [ 639.5, 493.0, 342.5, 493.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-13", 2 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-22", 0 ],
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
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-9", 0 ],
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
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [ 494.5, 568.0, 301.0, 568.0, 301.0, 569.0, 299.5, 569.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-6", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-27", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /source /speaker/position",
									"fontsize" : 10.0,
									"patching_rect" : [ 25.0, 145.0, 216.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 25.0, 15.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-4",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 25.0, 245.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-5",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 133.0, 172.0, 209.5, 172.0 ]
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-8", 0 ],
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 2 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 1 ],
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
									"source" : [ "obj-12", 4 ],
									"destination" : [ "obj-1", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 3 ],
									"destination" : [ "obj-1", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 2 ],
									"destination" : [ "obj-2", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 3 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 5 ],
									"destination" : [ "obj-1", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 40.0, 45.0, 24.0, 24.0 ],
					"numinlets" : 0,
					"id" : "obj-5",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p scripting",
					"fontsize" : 10.0,
					"patching_rect" : [ 60.0, 125.0, 97.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-6",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 160.0, 115.0, 1106.0, 689.0 ],
						"bglocked" : 0,
						"defrect" : [ 160.0, 115.0, 1106.0, 689.0 ],
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
									"text" : "prepend set",
									"fontsize" : 10.0,
									"patching_rect" : [ 460.0, 145.0, 71.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-31",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script send matrix ramp $1",
									"fontsize" : 10.0,
									"patching_rect" : [ 460.0, 105.0, 148.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-30",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script send matrix ramp 10",
									"fontsize" : 10.0,
									"patching_rect" : [ 45.0, 435.0, 148.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-23",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_refresh_speaker-setup",
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 180.0, 178.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-1",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script delete matrix",
									"fontsize" : 10.0,
									"patching_rect" : [ 695.0, 405.0, 130.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-2",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /numSources /numSpeakers /interpolationtime",
									"fontsize" : 10.0,
									"patching_rect" : [ 260.0, 70.0, 324.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Changes can not take place while audio is running",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 635.0, 310.0, 269.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Only apply script if either /source/voices or /destination/voices has changed",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 505.0, 255.0, 402.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-5",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0",
									"fontsize" : 10.0,
									"patching_rect" : [ 240.0, 280.0, 71.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-6",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $i1 != $i3 || $i2 !=$i4 then $i1 $i2",
									"fontsize" : 10.0,
									"patching_rect" : [ 240.0, 255.0, 197.0, 19.0 ],
									"numinlets" : 4,
									"id" : "obj-7",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"fontsize" : 10.0,
									"patching_rect" : [ 360.0, 105.0, 34.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-8",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p connect_from_matrix",
									"fontsize" : 10.0,
									"patching_rect" : [ 240.0, 405.0, 149.0, 19.0 ],
									"numinlets" : 2,
									"id" : "obj-9",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 44.0, 74.0, 458.0, 378.0 ],
										"bglocked" : 0,
										"defrect" : [ 44.0, 74.0, 458.0, 378.0 ],
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
													"text" : "append",
													"fontsize" : 10.0,
													"patching_rect" : [ 305.0, 275.0, 48.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-13",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set multiin",
													"fontsize" : 10.0,
													"patching_rect" : [ 305.0, 215.0, 109.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-11",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend script connect matrix",
													"fontsize" : 10.0,
													"patching_rect" : [ 90.0, 210.0, 162.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-10",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "was: \nsprintf script connect matrix %ld multiin %ld",
													"linecount" : 2,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0,
													"patching_rect" : [ 135.0, 115.0, 257.0, 31.0 ],
													"numinlets" : 1,
													"id" : "obj-9",
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 120.0, 30.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-1",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"fontsize" : 10.0,
													"patching_rect" : [ 50.0, 80.0, 31.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-2",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 0 0",
													"fontsize" : 10.0,
													"patching_rect" : [ 50.0, 120.0, 58.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-5",
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 50.0, 30.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-6",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 305.0, 310.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-7",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 1 ],
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
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [ 99.5, 264.0, 314.5, 264.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 2 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 2 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 98.5, 186.0, 314.5, 186.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p connect_to_matrix",
									"fontsize" : 10.0,
									"patching_rect" : [ 400.0, 405.0, 131.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-10",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "was: sprintf script connect multiout %ld matrix %ld",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : 10.0,
													"patching_rect" : [ 145.0, 120.0, 272.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-2",
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "append",
													"fontsize" : 10.0,
													"patching_rect" : [ 485.0, 260.0, 48.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-14",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set matrix",
													"fontsize" : 10.0,
													"patching_rect" : [ 485.0, 215.0, 107.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-10",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend script connect multiout",
													"fontsize" : 10.0,
													"patching_rect" : [ 295.0, 215.0, 172.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-9",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script connect messages 0 matrix 0",
													"fontsize" : 10.0,
													"patching_rect" : [ 65.0, 215.0, 216.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-1",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 4 0",
													"fontsize" : 10.0,
													"patching_rect" : [ 45.0, 120.0, 58.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-4",
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 45.0, 30.0, 25.0, 25.0 ],
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
													"patching_rect" : [ 65.0, 330.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-6",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [ 304.5, 249.0, 494.5, 249.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [ 494.5, 291.0, 74.5, 291.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
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
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 93.5, 192.0, 304.5, 192.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [ 93.5, 192.0, 494.5, 192.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p new_matrix",
									"fontsize" : 10.0,
									"patching_rect" : [ 555.0, 405.0, 93.0, 19.0 ],
									"numinlets" : 2,
									"id" : "obj-11",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 44.0, 74.0, 650.0, 361.0 ],
										"bglocked" : 0,
										"defrect" : [ 44.0, 74.0, 650.0, 361.0 ],
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
													"text" : "append 1.",
													"fontsize" : 10.0,
													"patching_rect" : [ 405.0, 90.0, 62.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-8",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontsize" : 10.0,
													"patching_rect" : [ 405.0, 125.0, 71.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-7",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "append",
													"fontsize" : 10.0,
													"patching_rect" : [ 405.0, 185.0, 48.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-6",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend script newdefault matrix 275 260 matrix~",
													"fontsize" : 10.0,
													"patching_rect" : [ 50.0, 90.0, 267.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-5",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 405.0, 23.0, 24.0, 24.0 ],
													"numinlets" : 0,
													"id" : "obj-1",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 50.0, 23.0, 24.0, 24.0 ],
													"numinlets" : 0,
													"id" : "obj-3",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 405.0, 240.0, 24.0, 24.0 ],
													"numinlets" : 1,
													"id" : "obj-4",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [ 59.5, 159.0, 414.5, 159.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
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
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 35.0, 58.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-12",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 0",
									"fontsize" : 10.0,
									"patching_rect" : [ 90.0, 100.0, 41.0, 19.0 ],
									"numinlets" : 2,
									"id" : "obj-13",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 240.0, 555.0, 22.0, 22.0 ],
									"numinlets" : 1,
									"id" : "obj-14",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i i b",
									"fontsize" : 10.0,
									"patching_rect" : [ 240.0, 355.0, 475.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-15",
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "int", "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 260.0, 30.0, 22.0, 22.0 ],
									"numinlets" : 0,
									"id" : "obj-16",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i 1",
									"fontsize" : 10.0,
									"patching_rect" : [ 260.0, 155.0, 32.0, 19.0 ],
									"numinlets" : 2,
									"id" : "obj-17",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"fontsize" : 10.0,
									"patching_rect" : [ 240.0, 185.0, 36.0, 19.0 ],
									"numinlets" : 2,
									"id" : "obj-18",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 100.0, 50.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-19",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dspstate~",
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 60.0, 67.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-20",
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "float", "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "voices",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 290.0, 30.0, 58.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-21",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 469.5, 136.0, 976.0, 136.0, 976.0, 520.0, 249.5, 520.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 469.5, 227.0, 54.5, 227.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 2 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 54.5, 491.0, 249.5, 491.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 249.5, 385.0, 54.5, 385.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 3 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [ 301.5, 337.0, 638.5, 337.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 2 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-7", 3 ],
									"hidden" : 0,
									"midpoints" : [ 301.5, 307.0, 453.0, 307.0, 453.0, 245.0, 427.5, 245.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 2 ],
									"hidden" : 0,
									"midpoints" : [ 249.5, 311.0, 457.0, 311.0, 457.0, 242.0, 368.166656, 242.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [ 301.5, 337.0, 379.5, 337.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-18", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 55.0, 131.0, 269.5, 131.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 704.5, 475.0, 249.5, 475.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 409.5, 466.0, 249.5, 466.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 564.5, 471.0, 249.5, 471.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-15", 0 ],
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
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 39.5, 92.0, 99.5, 92.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontsize" : 10.0,
					"patching_rect" : [ 60.0, 155.0, 76.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "out[1]",
					"patching_rect" : [ 275.0, 350.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"id" : "obj-8",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"varname" : "in[1]",
					"patching_rect" : [ 275.0, 50.0, 24.0, 24.0 ],
					"numinlets" : 0,
					"id" : "obj-9",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : "W - omni"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "matrix",
					"text" : "matrix~ 1 0 1.",
					"fontsize" : 10.0,
					"patching_rect" : [ 275.0, 260.0, 100.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-10",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "list" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-10", 0 ],
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 49.5, 107.0, 179.5, 107.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
