{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 273.0, 44.0, 980.0, 478.0 ],
		"bglocked" : 0,
		"defrect" : [ 273.0, 44.0, 980.0, 478.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return info/filename @type msg_symbol @description \"returns the name of the loaded file\"",
					"linecount" : 4,
					"patching_rect" : [ 296.0, 390.0, 146.0, 52.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-50",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return info/length @type msg_int @description \"returns the length in [ms] of the internal buffer\"",
					"linecount" : 4,
					"patching_rect" : [ 147.0, 390.0, 147.0, 52.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-49",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return info/playername @type msg_symbol @description \"returns the name of the internal buffer\"",
					"linecount" : 4,
					"patching_rect" : [ 9.0, 389.0, 135.0, 52.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-48",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"sig" : 0.0,
					"patching_rect" : [ 465.0, 393.0, 86.0, 20.0 ],
					"interval" : 250.0,
					"numoutlets" : 2,
					"fontsize" : 11.595187,
					"outlettype" : [ "signal", "float" ],
					"mode" : 2,
					"fontname" : "Arial",
					"id" : "obj-46",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"sig" : 0.0,
					"patching_rect" : [ 610.0, 437.0, 86.0, 20.0 ],
					"interval" : 250.0,
					"numoutlets" : 2,
					"fontsize" : 11.595187,
					"outlettype" : [ "signal", "float" ],
					"mode" : 2,
					"fontname" : "Arial",
					"id" : "obj-44",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"sig" : 0.0,
					"patching_rect" : [ 703.0, 188.0, 86.0, 20.0 ],
					"interval" : 250.0,
					"numoutlets" : 2,
					"fontsize" : 11.595187,
					"outlettype" : [ "signal", "float" ],
					"mode" : 2,
					"fontname" : "Arial",
					"id" : "obj-41",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 607.0, 187.0, 50.0, 18.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-43",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b",
					"patching_rect" : [ 413.0, 146.0, 32.5, 18.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "bang", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-31",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 742.0, 437.0, 24.0, 24.0 ],
					"numoutlets" : 0,
					"id" : "obj-1",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop, loopinterp 1",
					"linecount" : 2,
					"patching_rect" : [ 408.0, 172.0, 62.0, 27.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-42",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.init",
					"patching_rect" : [ 411.0, 127.0, 47.0, 18.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-40",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p done&loopsync",
					"patching_rect" : [ 681.0, 282.0, 80.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "signal" ],
					"fontname" : "Arial",
					"id" : "obj-2",
					"numinlets" : 4,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 262.0, 339.0, 830.0, 424.0 ],
						"bglocked" : 0,
						"defrect" : [ 262.0, 339.0, 830.0, 424.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "begin~",
									"patching_rect" : [ 487.0, 281.0, 41.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"id" : "obj-22",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "begin~",
									"patching_rect" : [ 415.0, 292.0, 41.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"id" : "obj-21",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"patching_rect" : [ 106.0, 174.0, 22.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-24",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"patching_rect" : [ 106.0, 144.0, 32.5, 18.0 ],
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"id" : "obj-38",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"patching_rect" : [ 106.0, 122.0, 46.0, 18.0 ],
									"numoutlets" : 3,
									"fontsize" : 10.0,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial",
									"id" : "obj-32",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 1.",
									"patching_rect" : [ 106.0, 99.0, 33.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-31",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b f",
									"patching_rect" : [ 541.0, 237.0, 32.5, 18.0 ],
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "float" ],
									"fontname" : "Arial",
									"id" : "obj-20",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 0.",
									"patching_rect" : [ 541.0, 261.0, 32.5, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-12",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "selector~ 3",
									"patching_rect" : [ 300.0, 351.0, 244.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"id" : "obj-30",
									"numinlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : " sample_time",
									"patching_rect" : [ 558.0, 327.0, 69.0, 18.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Arial",
									"id" : "obj-50",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : " loop_time",
									"patching_rect" : [ 396.0, 331.0, 57.0, 18.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Arial",
									"id" : "obj-49",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : " normalized",
									"patching_rect" : [ 326.0, 292.0, 63.0, 18.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Arial",
									"id" : "obj-48",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~ 0.",
									"patching_rect" : [ 450.0, 322.0, 32.5, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"id" : "obj-45",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"patching_rect" : [ 560.0, 190.0, 22.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-44",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 3",
									"patching_rect" : [ 639.0, 93.0, 32.5, 18.0 ],
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "int" ],
									"fontname" : "Arial",
									"id" : "obj-39",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 2",
									"patching_rect" : [ 586.0, 93.0, 32.5, 18.0 ],
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "int" ],
									"fontname" : "Arial",
									"id" : "obj-37",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p thru",
									"patching_rect" : [ 532.0, 123.0, 36.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"id" : "obj-36",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 270.0, 210.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 270.0, 210.0 ],
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
													"patching_rect" : [ 125.0, 110.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"id" : "obj-2",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 123.0, 78.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"id" : "obj-1",
													"numinlets" : 0,
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"globalpatchername" : "",
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p thru",
									"patching_rect" : [ 600.0, 124.0, 36.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-35",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 69.0, 270.0, 210.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 270.0, 210.0 ],
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
													"patching_rect" : [ 125.0, 110.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"id" : "obj-2",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 123.0, 78.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"id" : "obj-1",
													"numinlets" : 0,
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"globalpatchername" : "",
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 1",
									"patching_rect" : [ 532.0, 93.0, 32.5, 18.0 ],
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "int" ],
									"fontname" : "Arial",
									"id" : "obj-34",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"patching_rect" : [ 532.0, 144.0, 32.5, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-33",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"patching_rect" : [ 532.0, 190.0, 25.5, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-28",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel normalized loop_time sample_time",
									"patching_rect" : [ 532.0, 71.0, 181.0, 18.0 ],
									"numoutlets" : 4,
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "bang", "bang", "" ],
									"fontname" : "Arial",
									"id" : "obj-27",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"patching_rect" : [ 532.0, 166.0, 46.0, 18.0 ],
									"numoutlets" : 3,
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Arial",
									"id" : "obj-26",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /active /mode",
									"patching_rect" : [ 474.0, 50.0, 135.0, 18.0 ],
									"numoutlets" : 3,
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-23",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+~ 0.",
									"patching_rect" : [ 526.0, 327.0, 33.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"id" : "obj-16",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "toggle",
									"patching_rect" : [ 504.0, 26.0, 52.0, 18.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Arial",
									"id" : "obj-18",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 474.0, 22.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-19",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 300.0, 375.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"id" : "obj-17",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~ 0.",
									"patching_rect" : [ 526.0, 301.0, 33.5, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"id" : "obj-15",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "stop",
									"patching_rect" : [ 754.0, 8.0, 35.0, 18.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Arial",
									"id" : "obj-14",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "start",
									"patching_rect" : [ 712.0, 8.0, 35.0, 18.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 760.0, 33.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 714.0, 32.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"patching_rect" : [ 52.0, 202.0, 25.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 0",
									"patching_rect" : [ 52.0, 178.0, 39.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"patching_rect" : [ 51.0, 134.0, 40.0, 17.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t f b",
									"patching_rect" : [ 50.0, 92.0, 29.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Arial",
									"id" : "obj-4",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 0.",
									"patching_rect" : [ 51.0, 113.0, 27.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-5",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 0",
									"patching_rect" : [ 51.0, 154.0, 31.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "snapshot~ 100",
									"patching_rect" : [ 50.0, 68.0, 70.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-7",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-8",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 51.0, 248.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-9",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-31", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-30", 1 ],
									"hidden" : 0,
									"midpoints" : [ 59.0, 61.0, 384.5, 61.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 59.0, 61.0, 459.0, 61.0, 459.0, 267.0, 535.5, 267.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [ 59.0, 61.0, 459.0, 61.0, 459.0, 268.0, 459.5, 268.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-30", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 569.5, 219.0, 309.0, 219.0, 309.0, 357.0, 309.5, 357.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 541.5, 214.0, 309.0, 214.0, 309.0, 357.0, 309.5, 357.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-30", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [ 723.5, 66.0, 723.0, 66.0, 723.0, 318.0, 549.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 483.5, 142.0, 541.5, 142.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 541.5, 141.0, 541.5, 141.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-28", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 1 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 1 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 2 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 1 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-34", 0 ],
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
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 723.5, 234.0, 550.5, 234.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-45", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 769.5, 258.0, 550.5, 258.0 ]
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
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-15", 0 ],
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
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #1_xxx_done",
					"patching_rect" : [ 652.0, 311.0, 81.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Arial",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"id" : "obj-3",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 0 bang",
					"patching_rect" : [ 76.0, 85.0, 100.0, 17.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "bang", "" ],
					"fontname" : "Arial",
					"id" : "obj-4",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "float 1.",
					"patching_rect" : [ 635.0, 106.0, 49.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"id" : "obj-5",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b 1.",
					"patching_rect" : [ 789.0, 121.0, 40.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "float" ],
					"fontname" : "Arial",
					"id" : "obj-6",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 0",
					"patching_rect" : [ 755.0, 106.0, 22.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"id" : "obj-7",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1",
					"patching_rect" : [ 706.0, 105.0, 22.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"id" : "obj-8",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 755.0, 129.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-9",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1 0",
					"patching_rect" : [ 706.0, 79.0, 116.0, 17.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "bang", "" ],
					"fontname" : "Arial",
					"id" : "obj-10",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"patching_rect" : [ 616.0, 151.0, 29.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-11",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b f",
					"patching_rect" : [ 635.0, 127.0, 29.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "float" ],
					"fontname" : "Arial",
					"id" : "obj-12",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 1.",
					"patching_rect" : [ 556.0, 185.0, 35.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"id" : "obj-13",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1.",
					"patching_rect" : [ 585.0, 110.0, 24.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"id" : "obj-14",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t -1.",
					"patching_rect" : [ 556.0, 110.0, 28.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"id" : "obj-15",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1 0",
					"patching_rect" : [ 556.0, 82.0, 69.0, 17.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "bang", "" ],
					"fontname" : "Arial",
					"id" : "obj-16",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 569.0, 430.0, 24.0, 24.0 ],
					"numoutlets" : 0,
					"id" : "obj-17",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "append 0 -1 2",
					"patching_rect" : [ 166.0, 150.0, 72.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-18",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend import",
					"patching_rect" : [ 166.0, 106.0, 78.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-19",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#0_sample",
					"patching_rect" : [ 80.0, 270.0, 55.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-21",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p play",
					"patching_rect" : [ 389.0, 77.0, 37.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-22",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "stop",
									"patching_rect" : [ 117.0, 75.0, 35.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"patching_rect" : [ 50.0, 50.0, 41.0, 17.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "startloop",
									"patching_rect" : [ 50.0, 75.0, 64.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 50.0, 167.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-5",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 70.5, 71.0, 126.5, 71.0 ]
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
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
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
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "int",
					"patching_rect" : [ 246.0, 295.0, 26.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"id" : "obj-26",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "info~ #0_sample",
					"patching_rect" : [ 199.0, 246.0, 105.0, 17.0 ],
					"numoutlets" : 8,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "list", "float", "float", "float", "float", "float", "" ],
					"fontname" : "Arial",
					"id" : "obj-27",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /start /stop",
					"patching_rect" : [ 463.0, 230.0, 306.0, 17.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-28",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 242.0, 0.0, 23.0, 23.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-29",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 520.0, 430.0, 24.0, 24.0 ],
					"numoutlets" : 0,
					"id" : "obj-30",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend loop",
					"patching_rect" : [ 316.0, 76.0, 69.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-32",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sig~ 1.",
					"patching_rect" : [ 556.0, 206.0, 37.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"id" : "obj-33",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "groove~ #0_sample 2",
					"patching_rect" : [ 520.0, 282.0, 106.0, 17.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "signal", "signal", "signal" ],
					"fontname" : "Arial",
					"id" : "obj-34",
					"numinlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "import 0 -1 2",
					"patching_rect" : [ 76.0, 139.0, 72.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-35",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "buffer~ #0_sample 4000 2",
					"patching_rect" : [ 76.0, 175.0, 142.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-36",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /sf_open /loop /play /sample /reverse /speed/ratio /speed/active /direct /loopsync",
					"patching_rect" : [ 242.0, 47.0, 681.0, 17.0 ],
					"numoutlets" : 10,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-37",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"patching_rect" : [ 357.0, 293.0, 51.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-38",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 2 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 8 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [ 839.944458, 275.0, 710.833313, 275.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 251.5, 80.0, 85.5, 80.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 2 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 3 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 4 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 5 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 6 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 7 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"color" : [ 0.533333, 0.74902, 0.533333, 1.0 ],
					"midpoints" : [ 766.388916, 76.0, 835.0, 76.0, 835.0, 260.0, 529.5, 260.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-2", 3 ],
					"hidden" : 0,
					"midpoints" : [ 616.0, 268.0, 751.5, 268.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [ 472.5, 250.0, 731.166687, 250.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 594.5, 152.0, 565.5, 152.0 ]
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
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 1 ],
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
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 715.5, 103.0, 644.5, 103.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 764.0, 147.0, 625.5, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [ 654.5, 179.0, 581.5, 179.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [ 819.5, 181.0, 581.5, 181.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 625.5, 173.0, 565.5, 173.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 798.5, 177.0, 565.5, 177.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 7 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [ 294.5, 285.0, 366.5, 285.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 6 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 282.214294, 290.0, 255.5, 290.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 2 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 398.5, 273.0, 529.5, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-34", 1 ],
					"hidden" : 0,
					"midpoints" : [ 472.5, 250.0, 573.0, 250.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-34", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 325.5, 273.0, 529.5, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 208.5, 197.0, 89.5, 197.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
