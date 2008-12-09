{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 594.0, 45.0, 722.0, 651.0 ],
		"bglocked" : 0,
		"defrect" : [ 594.0, 45.0, 722.0, 651.0 ],
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
					"maxclass" : "newobj",
					"text" : "deferlow",
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 495.0, 285.0, 53.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim 300",
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 495.0, 259.0, 55.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Arial",
					"id" : "obj-25",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 200.0, 95.0, 167.0, 16.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/write",
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 530.0, 95.0, 76.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 \\\"mydefault\\\"",
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 370.0, 95.0, 157.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return delete @type msg_int @description \"Delete Nth voice.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 234.0, 414.0, 185.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return aed @type msg_list @description \"Position of Nth voice as list of polar coordinates (index, azi, ele, dist, active).\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 114.0, 458.0, 324.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 114.0, 223.0, 46.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 234.0, 311.0, 49.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 234.0, 287.0, 41.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "open" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 234.0, 263.0, 151.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Inspector",
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 234.0, 343.0, 68.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 100.0, 100.0, 1126.0, 586.0 ],
						"bglocked" : 0,
						"defrect" : [ 100.0, 100.0, 1126.0, 586.0 ],
						"openrect" : [ 5.0, 44.0, 581.0, 488.0 ],
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
						"title" : "Speaker setup",
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p hideChannels",
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 783.0, 38.0, 94.0, 20.0 ],
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 536.0, 91.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 536.0, 91.0, 640.0, 480.0 ],
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
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 123",
													"fontname" : "Verdana",
													"id" : "obj-21",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 398.0, 249.0, 41.0, 19.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 29",
													"fontname" : "Verdana",
													"id" : "obj-20",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 398.0, 226.0, 33.0, 19.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i 8",
													"fontname" : "Verdana",
													"id" : "obj-12",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 398.0, 205.0, 32.5, 19.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window size 100 100 410 $1, window title, window exec",
													"linecount" : 4,
													"fontname" : "Verdana",
													"id" : "obj-10",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 397.0, 272.0, 97.0, 53.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window size 100 100 700 587, window title, window exec",
													"linecount" : 3,
													"fontname" : "Verdana",
													"id" : "obj-9",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 503.0, 278.0, 144.0, 41.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script show x2, script show y2, script show z2",
													"linecount" : 3,
													"fontname" : "Verdana",
													"id" : "obj-7",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 519.0, 334.0, 88.0, 41.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.thru",
													"fontname" : "Verdana",
													"id" : "obj-6",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 418.0, 413.0, 59.0, 19.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script hide x2, script hide y2, script hide z2",
													"linecount" : 3,
													"fontname" : "Verdana",
													"id" : "obj-5",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 412.0, 333.0, 87.0, 41.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1",
													"fontname" : "Verdana",
													"id" : "obj-3",
													"numinlets" : 1,
													"numoutlets" : 3,
													"patching_rect" : [ 412.0, 157.0, 196.0, 19.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "bang", "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 16",
													"fontname" : "Verdana",
													"id" : "obj-2",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 411.0, 133.0, 35.0, 19.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.init",
													"fontname" : "Verdana",
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 129.0, 161.0, 54.0, 19.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.thru",
													"fontname" : "Verdana",
													"id" : "obj-8",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 188.0, 289.0, 59.0, 19.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-24",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 344.0, 28.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "combine ch 1 @triggers 1",
													"fontname" : "Verdana",
													"id" : "obj-23",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 240.0, 212.0, 140.0, 19.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "combine ch 1 @triggers 1",
													"fontname" : "Verdana",
													"id" : "obj-22",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 94.0, 211.0, 140.0, 19.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 32",
													"fontname" : "Verdana",
													"id" : "obj-19",
													"numinlets" : 2,
													"numoutlets" : 3,
													"patching_rect" : [ 308.0, 134.0, 46.0, 19.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "bang", "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i i",
													"fontname" : "Verdana",
													"id" : "obj-18",
													"numinlets" : 1,
													"numoutlets" : 3,
													"patching_rect" : [ 344.0, 90.0, 46.0, 19.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "bang", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "split 1 8",
													"fontname" : "Verdana",
													"id" : "obj-17",
													"numinlets" : 3,
													"numoutlets" : 2,
													"patching_rect" : [ 329.0, 185.0, 51.0, 19.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-16",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 198.0, 437.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend script hide",
													"fontname" : "Verdana",
													"id" : "obj-15",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 239.0, 235.0, 108.0, 19.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend script show",
													"fontname" : "Verdana",
													"id" : "obj-14",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 93.0, 235.0, 112.0, 19.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"color" : [ 0.87451, 0.25098, 0.717647, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 1 ],
													"destination" : [ "obj-23", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-22", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 2 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 2 ],
													"destination" : [ "obj-17", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 2 ],
													"destination" : [ "obj-12", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"color" : [ 0.87451, 0.25098, 0.717647, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"varname" : "z2",
									"text" : "z",
									"presentation_rect" : [ 525.0, 4.0, 26.0, 19.0 ],
									"fontname" : "Verdana",
									"hidden" : 1,
									"id" : "obj-52",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 626.0, 268.0, 150.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"varname" : "y2",
									"text" : "y",
									"presentation_rect" : [ 469.0, 4.0, 26.0, 19.0 ],
									"fontname" : "Verdana",
									"hidden" : 1,
									"id" : "obj-53",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 625.0, 244.0, 150.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"varname" : "x2",
									"text" : "x",
									"presentation_rect" : [ 419.0, 4.0, 26.0, 19.0 ],
									"fontname" : "Verdana",
									"hidden" : 1,
									"id" : "obj-54",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 624.0, 331.0, 150.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "z",
									"presentation_rect" : [ 242.0, 4.0, 26.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-51",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 622.0, 293.0, 150.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "y",
									"presentation_rect" : [ 186.0, 4.0, 26.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-50",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 621.0, 383.0, 150.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch32",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 295.0, 456.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-3",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 32 ],
									"patching_rect" : [ 302.0, 450.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch31",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 295.0, 427.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-4",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 31 ],
									"patching_rect" : [ 302.0, 421.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch30",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 295.0, 398.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-5",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 30 ],
									"patching_rect" : [ 302.0, 392.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch29",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 295.0, 369.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-6",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 29 ],
									"patching_rect" : [ 302.0, 363.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch28",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 295.0, 340.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-7",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 28 ],
									"patching_rect" : [ 302.0, 334.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch27",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 295.0, 311.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-8",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 27 ],
									"patching_rect" : [ 302.0, 305.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch26",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 295.0, 282.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-9",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 26 ],
									"patching_rect" : [ 302.0, 276.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch25",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 295.0, 253.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-10",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 25 ],
									"patching_rect" : [ 302.0, 247.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch24",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 295.0, 224.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-11",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 24 ],
									"patching_rect" : [ 302.0, 218.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch23",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 295.0, 195.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-12",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 23 ],
									"patching_rect" : [ 302.0, 189.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch22",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 295.0, 166.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-13",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 22 ],
									"patching_rect" : [ 302.0, 160.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch21",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 295.0, 137.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-14",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 21 ],
									"patching_rect" : [ 302.0, 131.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch20",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 295.0, 108.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-15",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 20 ],
									"patching_rect" : [ 302.0, 102.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch19",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 295.0, 79.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-16",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 19 ],
									"patching_rect" : [ 302.0, 73.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch18",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 295.0, 50.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-17",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 18 ],
									"patching_rect" : [ 302.0, 44.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch17",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 295.0, 21.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-18",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 17 ],
									"patching_rect" : [ 302.0, 15.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"hidden" : 1,
									"id" : "obj-20",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 782.0, 104.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"hidden" : 1,
									"id" : "obj-21",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 782.0, 9.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 100 100 700 635, window exec",
									"presentation_rect" : [ 21.0, 57.0, 231.0, 17.0 ],
									"fontname" : "Verdana",
									"hidden" : 1,
									"id" : "obj-22",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 609.0, -12.0, 231.0, 17.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"presentation_rect" : [ 21.0, 24.0, 263.0, 17.0 ],
									"fontname" : "Verdana",
									"hidden" : 1,
									"id" : "obj-23",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 609.0, -45.0, 263.0, 17.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"presentation_rect" : [ 21.0, 40.0, 173.0, 17.0 ],
									"fontname" : "Verdana",
									"hidden" : 1,
									"id" : "obj-24",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 609.0, -29.0, 173.0, 17.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"presentation_rect" : [ 21.0, 95.0, 65.0, 19.0 ],
									"fontname" : "Verdana",
									"hidden" : 1,
									"id" : "obj-25",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 620.0, 30.0, 65.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "grow", "close", "zoom", "nofloat", "menu", "minimize", ";", "#Q", "window", "constrain", 2, 2, 32768, 32768, ";", "#Q", "window", "size", 100, 100, 1226, 686, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch16",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 8.0, 456.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-28",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 16 ],
									"patching_rect" : [ 15.0, 450.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch15",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 8.0, 427.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-29",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 15 ],
									"patching_rect" : [ 15.0, 421.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch14",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 8.0, 398.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-30",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 14 ],
									"patching_rect" : [ 15.0, 392.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch13",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 8.0, 369.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-31",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 13 ],
									"patching_rect" : [ 15.0, 363.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch12",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 8.0, 340.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-32",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 12 ],
									"patching_rect" : [ 15.0, 334.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch11",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 8.0, 311.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-33",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 11 ],
									"patching_rect" : [ 15.0, 305.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch10",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 8.0, 282.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-34",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 10 ],
									"patching_rect" : [ 15.0, 276.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch9",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 8.0, 253.0, 284.0, 31.0 ],
									"hidden" : 1,
									"id" : "obj-35",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 9 ],
									"patching_rect" : [ 15.0, 247.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch8",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 8.0, 224.0, 284.0, 31.0 ],
									"id" : "obj-36",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 8 ],
									"patching_rect" : [ 15.0, 218.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch7",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 8.0, 195.0, 284.0, 31.0 ],
									"id" : "obj-37",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 7 ],
									"patching_rect" : [ 15.0, 189.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch6",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 8.0, 166.0, 284.0, 31.0 ],
									"id" : "obj-38",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 6 ],
									"patching_rect" : [ 15.0, 160.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch5",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 8.0, 137.0, 284.0, 31.0 ],
									"id" : "obj-39",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 5 ],
									"patching_rect" : [ 15.0, 131.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch4",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 8.0, 108.0, 284.0, 31.0 ],
									"id" : "obj-40",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 4 ],
									"patching_rect" : [ 15.0, 102.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch3",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 8.0, 79.0, 284.0, 31.0 ],
									"id" : "obj-41",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 3 ],
									"patching_rect" : [ 15.0, 73.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch2",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 8.0, 50.0, 284.0, 31.0 ],
									"id" : "obj-42",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 2 ],
									"patching_rect" : [ 15.0, 44.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch1",
									"lockeddragscroll" : 1,
									"presentation_rect" : [ 8.0, 21.0, 284.0, 31.0 ],
									"id" : "obj-43",
									"numinlets" : 0,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 1 ],
									"patching_rect" : [ 15.0, 15.0, 282.0, 23.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "x",
									"presentation_rect" : [ 136.0, 4.0, 26.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-45",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 620.0, 357.0, 150.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voices:",
					"presentation_rect" : [ 17.0, 36.0, 46.0, 19.0 ],
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 35.0, 46.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 50.0, 95.0, 137.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"presentation_rect" : [ 67.0, 36.0, 21.0, 19.0 ],
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"triangle" : 0,
					"numoutlets" : 2,
					"patching_rect" : [ 261.0, 213.0, 21.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p jalg.sur.speaker.setup",
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 114.0, 391.0, 139.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 729.0, 356.0, 598.0, 546.0 ],
						"bglocked" : 0,
						"defrect" : [ 729.0, 356.0, 598.0, 546.0 ],
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
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 245.0, 458.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 245.0, 416.0, 52.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 273.0, 360.0, 27.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Filtered to only pass the positions of active voices, the rest are set to inactive",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 336.0, 336.0, 213.0, 31.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 138.0, 458.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 245.0, 117.0, 51.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace position @input xyz @output aed",
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 286.0, 95.0, 322.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 245.0, 74.0, 52.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 270.0, 157.0, 38.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 245.0, 278.0, 38.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t dump i",
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 13.0, 186.0, 51.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "dump", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 4,
									"patching_rect" : [ 270.0, 237.0, 53.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "", "" ],
									"save" : [ "#N", "coll", ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 270.0, 198.0, 39.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 270.0, 179.0, 21.0, 17.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"fontname" : "Verdana",
									"id" : "obj-15",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 138.0, 393.0, 117.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : ">",
									"fontname" : "Verdana",
									"id" : "obj-16",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 273.0, 336.0, 27.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"fontname" : "Verdana",
									"id" : "obj-17",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 273.0, 305.0, 21.0, 17.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-18",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 245.0, 27.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /numSpeakers",
									"fontname" : "Verdana",
									"id" : "obj-19",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 13.0, 162.0, 158.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-20",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 13.0, 49.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "List of index, azi, ele, dist",
									"fontname" : "Verdana",
									"id" : "obj-21",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 245.0, 5.0, 138.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "All positions are dumped if number of voices is changed, in order to update active status.",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-22",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 336.0, 234.0, 236.0, 31.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The others are set to inactive",
									"fontname" : "Verdana",
									"id" : "obj-23",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 336.0, 418.0, 183.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-11", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 282.5, 385.0, 147.5, 385.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-2", 0 ],
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
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 22.5, 231.0, 279.5, 231.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
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
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [ 54.5, 330.0, 290.5, 330.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"Describe speaker setup as sets of xyz coordinates.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 20.0, 145.0, 372.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-21",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 20.0, 85.0, 21.0, 21.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-22",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 310.0, 21.0, 21.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices",
					"text" : "jcom.parameter numSpeakers @repetitions/allow 0 @type msg_int @range/bounds 0 32 @range/clipmode both @priority 1 @description \"Number of speakers to setup.\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 299.0, 206.0, 413.0, 43.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_panel" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"id" : "obj-24",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0,
					"midpoints" : [ 243.5, 374.0, 243.5, 374.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 209.5, 132.0, 29.5, 132.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 123.5, 261.0, 220.0, 261.0, 220.0, 260.0, 243.5, 260.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 59.5, 132.0, 29.5, 132.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 379.5, 132.0, 29.5, 132.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 539.5, 132.0, 29.5, 132.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-18", 0 ],
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
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
