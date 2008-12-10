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
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 495.0, 285.0, 53.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim 300",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 495.0, 259.0, 55.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 200.0, 95.0, 167.0, 16.0 ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/write",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 530.0, 95.0, 76.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 \\\"mydefault\\\"",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 370.0, 95.0, 157.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return delete @type msg_int @description \"Delete Nth voice.\"",
					"linecount" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 235.0, 422.0, 185.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return aed @type msg_list @description \"Position of Nth voice as list of polar coordinates (index, azi, ele, dist, active).\"",
					"linecount" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 114.0, 458.0, 324.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 114.0, 223.0, 46.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 234.0, 311.0, 49.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"numoutlets" : 1,
					"outlettype" : [ "open" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 234.0, 287.0, 41.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 234.0, 263.0, 151.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Inspector",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 234.0, 343.0, 68.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-10",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 100.0, 100.0, 310.0, 255.0 ],
						"bglocked" : 0,
						"defrect" : [ 100.0, 100.0, 310.0, 255.0 ],
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
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 783.0, 38.0, 94.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-2",
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
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 398.0, 249.0, 41.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2,
													"id" : "obj-21"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 29",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 398.0, 226.0, 33.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2,
													"id" : "obj-20"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i 8",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 398.0, 205.0, 32.5, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2,
													"id" : "obj-12"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window size 100 100 410 $1, window title, window exec",
													"linecount" : 4,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 397.0, 272.0, 97.0, 53.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2,
													"id" : "obj-10"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window size 100 100 700 587, window title, window exec",
													"linecount" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 503.0, 278.0, 144.0, 41.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2,
													"id" : "obj-9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script show x2, script show y2, script show z2",
													"linecount" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 519.0, 334.0, 88.0, 41.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2,
													"id" : "obj-7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.thru",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 418.0, 413.0, 59.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 1,
													"id" : "obj-6"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script hide x2, script hide y2, script hide z2",
													"linecount" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 412.0, 333.0, 87.0, 41.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2,
													"id" : "obj-5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1",
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 412.0, 157.0, 196.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 1,
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 16",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 411.0, 133.0, 35.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2,
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.init",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 129.0, 161.0, 54.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 1,
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.thru",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 188.0, 289.0, 59.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 1,
													"id" : "obj-8"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 344.0, 28.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-24",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "combine ch 1 @triggers 1",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 240.0, 212.0, 140.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2,
													"id" : "obj-23"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "combine ch 1 @triggers 1",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 94.0, 211.0, 140.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2,
													"id" : "obj-22"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 32",
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 308.0, 134.0, 46.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2,
													"id" : "obj-19"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i i",
													"numoutlets" : 3,
													"outlettype" : [ "bang", "int", "int" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 344.0, 90.0, 46.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 1,
													"id" : "obj-18"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "split 1 8",
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 329.0, 185.0, 51.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 3,
													"id" : "obj-17"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 198.0, 437.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-16",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend script hide",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 239.0, 235.0, 108.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 1,
													"id" : "obj-15"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend script show",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 93.0, 235.0, 112.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 1,
													"id" : "obj-14"
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
										"globalpatchername" : "",
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
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
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"patching_rect" : [ 626.0, 268.0, 150.0, 19.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-52",
									"presentation_rect" : [ 525.0, 4.0, 26.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"varname" : "y2",
									"text" : "y",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"patching_rect" : [ 625.0, 244.0, 150.0, 19.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-53",
									"presentation_rect" : [ 469.0, 4.0, 26.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"varname" : "x2",
									"text" : "x",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"patching_rect" : [ 624.0, 331.0, 150.0, 19.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-54",
									"presentation_rect" : [ 419.0, 4.0, 26.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "z",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"patching_rect" : [ 622.0, 293.0, 150.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-51",
									"presentation_rect" : [ 242.0, 4.0, 26.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "y",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"patching_rect" : [ 621.0, 383.0, 150.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-50",
									"presentation_rect" : [ 186.0, 4.0, 26.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch32",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 32 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 450.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-3",
									"presentation_rect" : [ 295.0, 456.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch31",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 31 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 421.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-4",
									"presentation_rect" : [ 295.0, 427.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch30",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 30 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 392.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-5",
									"presentation_rect" : [ 295.0, 398.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch29",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 29 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 363.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-6",
									"presentation_rect" : [ 295.0, 369.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch28",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 28 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 334.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-7",
									"presentation_rect" : [ 295.0, 340.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch27",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 27 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 305.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-8",
									"presentation_rect" : [ 295.0, 311.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch26",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 26 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 276.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-9",
									"presentation_rect" : [ 295.0, 282.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch25",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 25 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 247.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-10",
									"presentation_rect" : [ 295.0, 253.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch24",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 24 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 218.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-11",
									"presentation_rect" : [ 295.0, 224.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch23",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 23 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 189.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-12",
									"presentation_rect" : [ 295.0, 195.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch22",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 22 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 160.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-13",
									"presentation_rect" : [ 295.0, 166.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch21",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 21 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 131.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-14",
									"presentation_rect" : [ 295.0, 137.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch20",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 20 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 102.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-15",
									"presentation_rect" : [ 295.0, 108.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch19",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 19 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 73.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-16",
									"presentation_rect" : [ 295.0, 79.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch18",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 18 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 44.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-17",
									"presentation_rect" : [ 295.0, 50.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch17",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 17 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 15.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-18",
									"presentation_rect" : [ 295.0, 21.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 782.0, 104.0, 25.0, 25.0 ],
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-20",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 782.0, 9.0, 25.0, 25.0 ],
									"hidden" : 1,
									"numinlets" : 0,
									"id" : "obj-21",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 100 100 700 635, window exec",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 609.0, -12.0, 231.0, 17.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-22",
									"presentation_rect" : [ 21.0, 57.0, 231.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 609.0, -45.0, 263.0, 17.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-23",
									"presentation_rect" : [ 21.0, 24.0, 263.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 609.0, -29.0, 173.0, 17.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-24",
									"presentation_rect" : [ 21.0, 40.0, 173.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 620.0, 30.0, 65.0, 19.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-25",
									"presentation_rect" : [ 21.0, 95.0, 65.0, 19.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "grow", "close", "zoom", "nofloat", "menu", "minimize", ";", "#Q", "window", "constrain", 2, 2, 32768, 32768, ";", "#Q", "window", "size", 100, 100, 410, 355, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch16",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 16 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 450.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-28",
									"presentation_rect" : [ 8.0, 456.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch15",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 15 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 421.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-29",
									"presentation_rect" : [ 8.0, 427.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch14",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 14 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 392.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-30",
									"presentation_rect" : [ 8.0, 398.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch13",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 13 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 363.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-31",
									"presentation_rect" : [ 8.0, 369.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch12",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 12 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 334.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-32",
									"presentation_rect" : [ 8.0, 340.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch11",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 11 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 305.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-33",
									"presentation_rect" : [ 8.0, 311.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch10",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 10 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 276.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-34",
									"presentation_rect" : [ 8.0, 282.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch9",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 9 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 247.0, 282.0, 23.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-35",
									"presentation_rect" : [ 8.0, 253.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch8",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 8 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 218.0, 282.0, 23.0 ],
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-36",
									"presentation_rect" : [ 8.0, 224.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch7",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 7 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 189.0, 282.0, 23.0 ],
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-37",
									"presentation_rect" : [ 8.0, 195.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch6",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 6 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 160.0, 282.0, 23.0 ],
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-38",
									"presentation_rect" : [ 8.0, 166.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch5",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 5 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 131.0, 282.0, 23.0 ],
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-39",
									"presentation_rect" : [ 8.0, 137.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch4",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 4 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 102.0, 282.0, 23.0 ],
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-40",
									"presentation_rect" : [ 8.0, 108.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch3",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 3 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 73.0, 282.0, 23.0 ],
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-41",
									"presentation_rect" : [ 8.0, 79.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch2",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 2 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 44.0, 282.0, 23.0 ],
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-42",
									"presentation_rect" : [ 8.0, 50.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch1",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"args" : [ 1 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 15.0, 282.0, 23.0 ],
									"presentation" : 1,
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"id" : "obj-43",
									"presentation_rect" : [ 8.0, 21.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "x",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"patching_rect" : [ 620.0, 357.0, 150.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-45",
									"presentation_rect" : [ 136.0, 4.0, 26.0, 19.0 ]
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
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Speakers:",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patching_rect" : [ 4.0, 35.0, 46.0, 31.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-11",
					"presentation_rect" : [ 4.0, 36.0, 59.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 50.0, 95.0, 137.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 177.0, 196.0, 21.0, 19.0 ],
					"presentation" : 1,
					"triangle" : 0,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-15",
					"presentation_rect" : [ 67.0, 36.0, 21.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p jalg.sur.speaker.setup",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 114.0, 391.0, 139.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"id" : "obj-18",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 652.0, 78.0, 847.0, 743.0 ],
						"bglocked" : 0,
						"defrect" : [ 652.0, 78.0, 847.0, 743.0 ],
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
									"text" : "append 1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 186.0, 438.0, 57.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-30"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append 0",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 246.0, 439.0, 57.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 186.0, 417.0, 52.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p active-returns",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"patching_rect" : [ 246.0, 461.0, 91.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-28",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 350.0, 65.0, 1213.0, 498.0 ],
										"bglocked" : 0,
										"defrect" : [ 350.0, 65.0, 1213.0, 498.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
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
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.32/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 816.0, 345.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-26"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.31/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 816.0, 322.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-28"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.30/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 816.0, 299.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-29"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.29/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 816.0, 276.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-30"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.28/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 816.0, 253.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-31"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.27/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 817.0, 229.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-32"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.26/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 816.0, 207.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-33"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.25/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 816.0, 183.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-34"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.24/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 558.0, 344.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-17"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.23/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 558.0, 321.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-18"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.22/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 558.0, 298.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-19"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.21/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 558.0, 275.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-20"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.20/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 558.0, 252.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-21"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.19/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 558.0, 229.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-22"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.18/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 558.0, 206.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-23"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.17/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 558.0, 182.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-24"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.16/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 301.0, 342.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.15/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 301.0, 319.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-10"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.14/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 301.0, 296.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-11"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.13/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 301.0, 273.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-12"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.12/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 301.0, 250.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-13"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.11/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 301.0, 227.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-14"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.10/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 301.0, 204.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-15"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.9/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 301.0, 180.0, 245.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-16"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.8/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 343.0, 245.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-8"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.7/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 320.0, 245.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.6/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 297.0, 245.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-6"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.5/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 274.0, 245.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.4/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 251.0, 245.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.3/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 228.0, 245.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.2/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 205.0, 245.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.1/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 181.0, 245.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "spray 33",
													"numoutlets" : 33,
													"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
													"fontname" : "Verdana",
													"patching_rect" : [ 43.0, 125.0, 1130.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 1,
													"id" : "obj-25"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-27",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-25", 32 ],
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
													"source" : [ "obj-25", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 8 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 7 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 6 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 5 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 4 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 3 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 2 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 9 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 10 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 11 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 12 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 13 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 14 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 15 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 16 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 17 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 18 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 19 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 20 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 21 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 22 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 23 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 24 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 25 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 26 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 27 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 28 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 29 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 30 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 31 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 245.0, 570.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 245.0, 416.0, 52.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 273.0, 360.0, 27.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Filtered to only pass the positions of active voices, the rest are set to inactive",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"patching_rect" : [ 336.0, 336.0, 213.0, 31.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 138.0, 458.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"id" : "obj-5",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 245.0, 117.0, 51.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace position @input xyz @output aed",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 286.0, 95.0, 322.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 245.0, 74.0, 52.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 270.0, 157.0, 38.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 245.0, 278.0, 38.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t dump i",
									"numoutlets" : 2,
									"outlettype" : [ "dump", "int" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 13.0, 186.0, 51.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 270.0, 237.0, 53.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-12",
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
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 270.0, 198.0, 39.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 270.0, 179.0, 21.0, 17.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 138.0, 393.0, 117.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : ">",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 273.0, 336.0, 27.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 273.0, 305.0, 21.0, 17.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 245.0, 27.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"id" : "obj-18",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /numSpeakers",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 13.0, 162.0, 158.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.0, 49.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"id" : "obj-20",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "List of index, x, y, z,",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"patching_rect" : [ 245.0, 5.0, 138.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "All positions are dumped if number of voices is changed, in order to update active status.",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"patching_rect" : [ 336.0, 234.0, 236.0, 31.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The others are set to inactive",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"patching_rect" : [ 336.0, 418.0, 183.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-23"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
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
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
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
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
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
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 145.0, 372.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 85.0, 21.0, 21.0 ],
					"numinlets" : 0,
					"id" : "obj-21",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 310.0, 21.0, 21.0 ],
					"numinlets" : 1,
					"id" : "obj-22",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices",
					"text" : "jcom.parameter numSpeakers @repetitions/allow 0 @type msg_int @range/bounds 0 32 @range/clipmode both @priority 1 @description \"Number of speaker channels in the arrangement.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 215.0, 189.0, 581.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numoutlets" : 1,
					"has_panel" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-24",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-6", 0 ],
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
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-23", 0 ],
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
