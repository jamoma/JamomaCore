{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 223.0, 176.0, 324.0, 311.0 ],
		"bglocked" : 0,
		"defrect" : [ 223.0, 176.0, 324.0, 311.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 2.0, 2.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 208.0, 140.0, 15.0, 15.0 ],
					"id" : "obj-1",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "out 2",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 224.0, 139.0, 33.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-2",
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 74.0, 138.0, 15.0, 15.0 ],
					"id" : "obj-5",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "out~ 2",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 88.0, 138.0, 38.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-6",
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p volume",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 98.0, 192.0, 175.0, 17.0 ],
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"id" : "obj-7",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 549.0, 211.0, 392.0, 272.0 ],
						"bglocked" : 0,
						"defrect" : [ 549.0, 211.0, 392.0, 272.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 2.0, 2.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 91.0, 37.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 45.0, 108.0, 15.0, 15.0 ],
									"outlettype" : [ "signal" ],
									"id" : "obj-2",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 45.0, 155.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /volume /preamp_gain",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"patching_rect" : [ 91.0, 62.0, 210.0, 17.0 ],
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p vol",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 91.0, 82.0, 110.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-5",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 794.0, 392.0, 317.0, 264.0 ],
										"bglocked" : 0,
										"defrect" : [ 794.0, 392.0, 317.0, 264.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 2.0, 2.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r Z.volcurv",
													"numinlets" : 0,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"patching_rect" : [ 53.0, 21.0, 61.0, 17.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tm.explinlog 0.2",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 0,
													"patching_rect" : [ 46.0, 50.0, 83.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b f",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"patching_rect" : [ 128.0, 46.0, 50.0, 17.0 ],
													"outlettype" : [ "bang", "float" ],
													"fontname" : "Arial",
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"patching_rect" : [ 168.0, 68.0, 50.0, 17.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 128.0, 22.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 12.0, 10.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 0.",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"patching_rect" : [ 32.0, 101.0, 146.0, 17.0 ],
													"outlettype" : [ "float" ],
													"fontname" : "Arial",
													"id" : "obj-7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 33.0, 144.0, 15.0, 15.0 ],
													"id" : "obj-8",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r Z.slew",
													"numinlets" : 0,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"patching_rect" : [ 189.0, 100.0, 58.0, 17.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 1. 10",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"patching_rect" : [ 33.0, 122.0, 165.0, 17.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-10"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "line~ 1.",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"patching_rect" : [ 91.0, 103.0, 50.0, 17.0 ],
									"outlettype" : [ "signal", "bang" ],
									"fontname" : "Arial",
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~ 1.",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 45.0, 130.0, 56.0, 17.0 ],
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"id" : "obj-7"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p looper",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 5,
					"patching_rect" : [ 22.0, 75.0, 212.0, 17.0 ],
					"outlettype" : [ "signal", "signal", "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-10",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 446.0, 125.0, 691.0, 490.0 ],
						"bglocked" : 0,
						"defrect" : [ 446.0, 125.0, 691.0, 490.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 2.0, 2.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 354.0, 302.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "delay~ 100 100",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 422.0, 204.0, 76.0, 17.0 ],
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "-~",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 398.0, 224.0, 41.0, 17.0 ],
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 218.0, 78.0, 29.0, 17.0 ],
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 352.0, 276.0, 93.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "edge~",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"patching_rect" : [ 402.0, 244.0, 41.0, 17.0 ],
									"outlettype" : [ "bang", "bang" ],
									"fontname" : "Arial",
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 314.0, 300.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 156.0, 296.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 22.0, 27.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p operations",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"patching_rect" : [ 248.0, 274.0, 85.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"id" : "obj-11",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 191.0, 151.0, 1022.0, 504.0 ],
										"bglocked" : 0,
										"defrect" : [ 191.0, 151.0, 1022.0, 504.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 2.0, 2.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 908.0, 206.0, 15.0, 15.0 ],
													"id" : "obj-44",
													"comment" : "to waveform"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_bfbg",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 0,
													"patching_rect" : [ 594.0, 424.0, 88.0, 19.0 ],
													"fontname" : "Arial",
													"id" : "obj-43"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_buf",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 0,
													"patching_rect" : [ 530.0, 424.0, 61.0, 19.0 ],
													"fontname" : "Arial",
													"id" : "obj-42"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_lgth",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 0,
													"patching_rect" : [ 715.0, 175.0, 59.0, 19.0 ],
													"fontname" : "Arial",
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1.",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"patching_rect" : [ 771.0, 220.0, 28.0, 19.0 ],
													"outlettype" : [ "float" ],
													"fontname" : "Arial",
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : ";\r\n#0_wf snap zero, clipdraw 1, vzoom 1.;\r\n#0_buf loopinterp 1;\r\n",
													"linecount" : 3,
													"numinlets" : 2,
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"patching_rect" : [ 14.0, 74.0, 236.0, 42.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_wf",
													"numinlets" : 0,
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"patching_rect" : [ 404.0, 366.0, 59.0, 19.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p loopsize",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 2,
													"patching_rect" : [ 722.0, 145.0, 60.0, 19.0 ],
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"id" : "obj-5",
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 220.0, 182.0, 1031.0, 574.0 ],
														"bglocked" : 0,
														"defrect" : [ 220.0, 182.0, 1031.0, 574.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 2.0, 2.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 468.0, 380.0, 15.0, 15.0 ],
																	"id" : "obj-3",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 702.0, 145.0, 15.0, 15.0 ],
																	"id" : "obj-4",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p oto",
																	"numinlets" : 1,
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 597.0, 152.0, 61.0, 20.0 ],
																	"outlettype" : [ "int" ],
																	"fontname" : "Arial",
																	"id" : "obj-10",
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 477.0, 196.0, 377.0, 288.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 477.0, 196.0, 377.0, 288.0 ],
																		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
																		"openinpresentation" : 0,
																		"default_fontsize" : 12.0,
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"gridonopen" : 0,
																		"gridsize" : [ 2.0, 2.0 ],
																		"gridsnaponopen" : 0,
																		"toolbarvisible" : 1,
																		"boxanimatetime" : 200,
																		"imprint" : 0,
																		"metadata" : [  ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 88.0, 123.0, 15.0, 15.0 ],
																					"id" : "obj-1",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "pipe 1000",
																					"numinlets" : 2,
																					"fontsize" : 9.0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 21.0, 63.0, 50.0, 17.0 ],
																					"outlettype" : [ "" ],
																					"fontname" : "Arial",
																					"id" : "obj-2"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t 1 0",
																					"numinlets" : 1,
																					"fontsize" : 9.0,
																					"numoutlets" : 2,
																					"patching_rect" : [ 21.0, 42.0, 60.0, 17.0 ],
																					"outlettype" : [ "int", "int" ],
																					"fontname" : "Arial",
																					"id" : "obj-3"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "r return",
																					"numinlets" : 0,
																					"fontsize" : 9.0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 21.0, 21.0, 50.0, 17.0 ],
																					"outlettype" : [ "" ],
																					"fontname" : "Arial",
																					"id" : "obj-4"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "gate 1 1",
																					"numinlets" : 2,
																					"fontsize" : 9.0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 71.0, 88.0, 50.0, 17.0 ],
																					"outlettype" : [ "" ],
																					"fontname" : "Arial",
																					"id" : "obj-5"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 111.0, 67.0, 15.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-6",
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-5", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 1 ],
																					"destination" : [ "obj-1", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 71.5, 76.0, 97.0, 76.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-1", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 80.5, 115.0, 97.0, 115.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 1 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 30.5, 84.0, 80.5, 84.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-2", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontface" : 0,
																		"fontsize" : 12.0,
																		"default_fontname" : "Arial",
																		"globalpatchername" : "",
																		"default_fontsize" : 12.0,
																		"fontname" : "Arial",
																		"default_fontface" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pak 0. 0.",
																	"numinlets" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 316.0, 386.0, 64.0, 20.0 ],
																	"outlettype" : [ "" ],
																	"fontname" : "Arial",
																	"id" : "obj-11"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setloop $1 $2",
																	"numinlets" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 316.0, 435.0, 94.0, 18.0 ],
																	"outlettype" : [ "" ],
																	"fontname" : "Arial",
																	"id" : "obj-12"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s #0_buf",
																	"numinlets" : 1,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 283.0, 468.0, 66.0, 20.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-13"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "f",
																	"numinlets" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 412.0, 386.0, 39.0, 20.0 ],
																	"outlettype" : [ "float" ],
																	"fontname" : "Arial",
																	"id" : "obj-14"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 1",
																	"numinlets" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"patching_rect" : [ 597.0, 174.0, 34.0, 20.0 ],
																	"outlettype" : [ "bang", "" ],
																	"fontname" : "Arial",
																	"id" : "obj-15"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "f",
																	"numinlets" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 276.0, 384.0, 36.0, 20.0 ],
																	"outlettype" : [ "float" ],
																	"fontname" : "Arial",
																	"id" : "obj-16"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1",
																	"numinlets" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 502.0, 198.0, 34.0, 20.0 ],
																	"outlettype" : [ "int" ],
																	"fontname" : "Arial",
																	"id" : "obj-17"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 2 1",
																	"numinlets" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"patching_rect" : [ 314.0, 311.0, 70.0, 20.0 ],
																	"outlettype" : [ "", "" ],
																	"fontname" : "Arial",
																	"id" : "obj-18"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s #0_splgth",
																	"numinlets" : 1,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 708.0, 486.0, 79.0, 20.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-19"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s #0_sele",
																	"numinlets" : 1,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 804.0, 394.0, 64.0, 20.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-20"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s #0_selb",
																	"numinlets" : 1,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 660.0, 394.0, 64.0, 20.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-21"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "split 0 10",
																	"numinlets" : 3,
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"patching_rect" : [ 668.0, 465.0, 64.0, 20.0 ],
																	"outlettype" : [ "int", "int" ],
																	"fontname" : "Arial",
																	"id" : "obj-22"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "!-",
																	"numinlets" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 668.0, 444.0, 158.0, 20.0 ],
																	"outlettype" : [ "int" ],
																	"fontname" : "Arial",
																	"id" : "obj-23"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s #0_rend",
																	"numinlets" : 1,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 856.0, 394.0, 73.0, 20.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-24"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 2 1",
																	"numinlets" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"patching_rect" : [ 672.0, 355.0, 87.0, 20.0 ],
																	"outlettype" : [ "", "" ],
																	"fontname" : "Arial",
																	"id" : "obj-25"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 2 1",
																	"numinlets" : 2,
																	"fontsize" : 12.0,
																	"numoutlets" : 2,
																	"patching_rect" : [ 800.0, 354.0, 89.0, 20.0 ],
																	"outlettype" : [ "", "" ],
																	"fontname" : "Arial",
																	"id" : "obj-26"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p wfkeys",
																	"numinlets" : 0,
																	"fontsize" : 12.0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 765.0, 317.0, 62.0, 20.0 ],
																	"outlettype" : [ "int" ],
																	"fontname" : "Arial",
																	"id" : "obj-27",
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 710.0, 179.0, 404.0, 413.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 710.0, 179.0, 404.0, 413.0 ],
																		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
																		"openinpresentation" : 0,
																		"default_fontsize" : 12.0,
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"gridonopen" : 0,
																		"gridsize" : [ 2.0, 2.0 ],
																		"gridsnaponopen" : 0,
																		"toolbarvisible" : 1,
																		"boxanimatetime" : 200,
																		"imprint" : 0,
																		"metadata" : [  ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "metro 250",
																					"numinlets" : 2,
																					"fontsize" : 9.0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 47.0, 61.0, 55.0, 17.0 ],
																					"outlettype" : [ "bang" ],
																					"fontname" : "Arial",
																					"id" : "obj-1"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "toggle",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 47.0, 43.0, 15.0, 15.0 ],
																					"outlettype" : [ "int" ],
																					"id" : "obj-2"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "loadbang",
																					"linecount" : 2,
																					"numinlets" : 1,
																					"fontsize" : 9.0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 47.0, 22.0, 45.0, 27.0 ],
																					"outlettype" : [ "bang" ],
																					"fontname" : "Arial",
																					"id" : "obj-3"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "toggle",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 87.0, 109.0, 15.0, 15.0 ],
																					"outlettype" : [ "int" ],
																					"id" : "obj-4"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "toggle",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 104.0, 138.0, 15.0, 15.0 ],
																					"outlettype" : [ "int" ],
																					"id" : "obj-5"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "s #0_wf",
																					"numinlets" : 1,
																					"fontsize" : 9.0,
																					"numoutlets" : 0,
																					"patching_rect" : [ 206.0, 297.0, 61.0, 17.0 ],
																					"fontname" : "Arial",
																					"id" : "obj-6"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 1",
																					"numinlets" : 2,
																					"fontsize" : 9.0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 129.0, 131.0, 40.0, 17.0 ],
																					"outlettype" : [ "int" ],
																					"fontname" : "Arial",
																					"id" : "obj-7"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "change",
																					"numinlets" : 1,
																					"fontsize" : 9.0,
																					"numoutlets" : 3,
																					"patching_rect" : [ 128.0, 110.0, 40.0, 17.0 ],
																					"outlettype" : [ "", "int", "int" ],
																					"fontname" : "Arial",
																					"id" : "obj-8"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 149.0, 155.0, 15.0, 15.0 ],
																					"id" : "obj-9",
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 253.0, 201.0, 15.0, 15.0 ],
																					"outlettype" : [ "bang" ],
																					"id" : "obj-10"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 217.0, 211.0, 15.0, 15.0 ],
																					"outlettype" : [ "bang" ],
																					"id" : "obj-11"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 179.0, 203.0, 15.0, 15.0 ],
																					"outlettype" : [ "bang" ],
																					"id" : "obj-12"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 182.0, 109.0, 15.0, 15.0 ],
																					"outlettype" : [ "bang" ],
																					"id" : "obj-13"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "<< 1",
																					"numinlets" : 2,
																					"fontsize" : 9.0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 259.0, 106.0, 27.0, 17.0 ],
																					"outlettype" : [ "int" ],
																					"fontname" : "Arial",
																					"id" : "obj-14"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "change",
																					"numinlets" : 1,
																					"fontsize" : 9.0,
																					"numoutlets" : 3,
																					"patching_rect" : [ 206.0, 151.0, 40.0, 17.0 ],
																					"outlettype" : [ "", "int", "int" ],
																					"fontname" : "Arial",
																					"id" : "obj-15"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "select 0 1 2",
																					"numinlets" : 1,
																					"fontsize" : 9.0,
																					"numoutlets" : 4,
																					"patching_rect" : [ 206.0, 175.0, 107.0, 17.0 ],
																					"outlettype" : [ "bang", "bang", "bang", "" ],
																					"fontname" : "Arial",
																					"id" : "obj-16"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "|",
																					"numinlets" : 2,
																					"fontsize" : 9.0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 206.0, 128.0, 27.0, 17.0 ],
																					"outlettype" : [ "int" ],
																					"fontname" : "Arial",
																					"id" : "obj-17"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "change",
																					"numinlets" : 1,
																					"fontsize" : 9.0,
																					"numoutlets" : 3,
																					"patching_rect" : [ 47.0, 151.0, 40.0, 17.0 ],
																					"outlettype" : [ "", "int", "int" ],
																					"fontname" : "Arial",
																					"id" : "obj-18"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "constrain $1",
																					"numinlets" : 2,
																					"fontsize" : 9.0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 47.0, 175.0, 65.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"fontname" : "Arial",
																					"id" : "obj-19"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "loadbang",
																					"linecount" : 2,
																					"numinlets" : 1,
																					"fontsize" : 9.0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 129.0, 203.0, 45.0, 27.0 ],
																					"outlettype" : [ "bang" ],
																					"fontname" : "Arial",
																					"id" : "obj-20"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "modifiers",
																					"numinlets" : 1,
																					"fontsize" : 9.0,
																					"numoutlets" : 5,
																					"patching_rect" : [ 47.0, 83.0, 225.0, 17.0 ],
																					"outlettype" : [ "int", "int", "int", "int", "int" ],
																					"fontname" : "Arial",
																					"id" : "obj-21"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "mode move",
																					"numinlets" : 2,
																					"fontsize" : 9.0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 270.0, 199.0, 58.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"fontname" : "Arial",
																					"id" : "obj-22"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "mode select",
																					"numinlets" : 2,
																					"fontsize" : 9.0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 206.0, 243.0, 61.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"fontname" : "Arial",
																					"id" : "obj-23"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "mode loop",
																					"numinlets" : 2,
																					"fontsize" : 9.0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 238.0, 221.0, 52.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"fontname" : "Arial",
																					"id" : "obj-24"
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-16", 2 ],
																					"destination" : [ "obj-22", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-21", 4 ],
																					"destination" : [ "obj-14", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-16", 2 ],
																					"destination" : [ "obj-10", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-16", 1 ],
																					"destination" : [ "obj-24", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-14", 0 ],
																					"destination" : [ "obj-17", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-16", 1 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-22", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 279.5, 280.0, 215.5, 280.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-24", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 247.5, 280.0, 215.5, 280.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-23", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 215.5, 280.0, 215.5, 280.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-20", 0 ],
																					"destination" : [ "obj-23", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 138.5, 231.0, 215.5, 231.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-16", 0 ],
																					"destination" : [ "obj-23", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-16", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-17", 0 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-21", 3 ],
																					"destination" : [ "obj-17", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-13", 0 ],
																					"destination" : [ "obj-17", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-14", 0 ],
																					"destination" : [ "obj-13", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-16", 0 ],
																					"destination" : [ "obj-12", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-7", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-21", 2 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-21", 2 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-18", 0 ],
																					"destination" : [ "obj-19", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-21", 0 ],
																					"destination" : [ "obj-18", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-21", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-1", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-2", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontface" : 0,
																		"fontsize" : 12.0,
																		"default_fontname" : "Arial",
																		"globalpatchername" : "",
																		"default_fontsize" : 12.0,
																		"fontname" : "Arial",
																		"default_fontface" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s #0_rst",
																	"numinlets" : 1,
																	"fontsize" : 12.0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 726.0, 394.0, 64.0, 20.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-28"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 66.0, 36.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-29",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.oscroute /display/start /display/length /selection/start /selection/end /direction /triggermode",
																	"numinlets" : 1,
																	"fontsize" : 12.0,
																	"numoutlets" : 7,
																	"patching_rect" : [ 67.0, 57.0, 841.0, 20.0 ],
																	"outlettype" : [ "", "", "", "", "", "", "" ],
																	"fontname" : "Arial",
																	"id" : "obj-30"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 1 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-23", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 774.5, 350.0, 809.5, 350.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 1 ],
																	"destination" : [ "obj-28", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 1 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 774.5, 351.0, 681.5, 351.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 1 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 374.5, 360.0, 421.5, 360.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-18", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 325.5, 456.0, 292.5, 456.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 421.5, 459.0, 292.5, 459.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 323.5, 360.0, 285.5, 360.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 4 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 5 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 6 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 2 ],
																	"destination" : [ "obj-16", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 3 ],
																	"destination" : [ "obj-14", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 3 ],
																	"destination" : [ "obj-26", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 2 ],
																	"destination" : [ "obj-25", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 3 ],
																	"destination" : [ "obj-11", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 2 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontname" : "Arial",
														"globalpatchername" : "",
														"default_fontsize" : 12.0,
														"fontname" : "Arial",
														"default_fontface" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 390.0, 428.0, 15.0, 15.0 ],
													"id" : "obj-6",
													"comment" : "to waveform"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "replace",
													"numinlets" : 2,
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"patching_rect" : [ 306.0, 346.0, 60.0, 17.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "append 1",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"patching_rect" : [ 390.0, 216.0, 93.0, 19.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-10"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /buffername",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 2,
													"patching_rect" : [ 279.0, 69.0, 241.0, 19.0 ],
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"id" : "obj-13"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /inputrec /input",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 3,
													"patching_rect" : [ 598.0, 94.0, 183.0, 19.0 ],
													"outlettype" : [ "", "", "" ],
													"fontname" : "Arial",
													"id" : "obj-15"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 280.0, 49.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-16",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "replace",
													"numinlets" : 2,
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"patching_rect" : [ 80.0, 24.0, 60.0, 17.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-17"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 3,
													"patching_rect" : [ 554.0, 274.0, 62.0, 19.0 ],
													"outlettype" : [ "", "int", "int" ],
													"fontname" : "Arial",
													"id" : "obj-18"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel bang 0.",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 3,
													"patching_rect" : [ 771.0, 196.0, 68.0, 19.0 ],
													"outlettype" : [ "bang", "bang", "" ],
													"fontname" : "Arial",
													"id" : "obj-19"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 2,
													"patching_rect" : [ 278.0, 186.0, 137.0, 19.0 ],
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"id" : "obj-20"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b l",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 3,
													"patching_rect" : [ 278.0, 241.0, 80.0, 19.0 ],
													"outlettype" : [ "bang", "bang", "" ],
													"fontname" : "Arial",
													"id" : "obj-21"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.qball",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 2,
													"patching_rect" : [ 14.0, 50.0, 53.0, 19.0 ],
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"id" : "obj-22"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"patching_rect" : [ 279.0, 212.0, 75.0, 19.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-23"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /normalize",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 2,
													"patching_rect" : [ 771.0, 173.0, 153.0, 19.0 ],
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"id" : "obj-25"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_wf",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 0,
													"patching_rect" : [ 771.0, 269.0, 57.0, 19.0 ],
													"fontname" : "Arial",
													"id" : "obj-26"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_bfbg",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 0,
													"patching_rect" : [ 256.0, 420.0, 88.0, 19.0 ],
													"fontname" : "Arial",
													"id" : "obj-27"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"numinlets" : 2,
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"patching_rect" : [ 619.0, 188.0, 31.0, 19.0 ],
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"id" : "obj-28"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 1 1 s",
													"numinlets" : 3,
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"patching_rect" : [ 602.0, 233.0, 116.0, 19.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-29"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i #1l",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 3,
													"patching_rect" : [ 602.0, 154.0, 114.0, 19.0 ],
													"outlettype" : [ "bang", "int", "" ],
													"fontname" : "Arial",
													"id" : "obj-30"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s EVE.recoI",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 0,
													"patching_rect" : [ 602.0, 254.0, 72.0, 19.0 ],
													"fontname" : "Arial",
													"id" : "obj-31"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"numinlets" : 2,
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"patching_rect" : [ 602.0, 209.0, 30.0, 19.0 ],
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"id" : "obj-32"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set #0_buff",
													"linecount" : 2,
													"numinlets" : 2,
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"patching_rect" : [ 533.0, 358.0, 54.0, 30.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-33"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_buf",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 0,
													"patching_rect" : [ 332.0, 378.0, 61.0, 19.0 ],
													"fontname" : "Arial",
													"id" : "obj-34"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0",
													"numinlets" : 2,
													"fontsize" : 11.0,
													"numoutlets" : 2,
													"patching_rect" : [ 554.0, 295.0, 60.0, 19.0 ],
													"outlettype" : [ "bang", "" ],
													"fontname" : "Arial",
													"id" : "obj-35"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set #0_buff 1",
													"linecount" : 2,
													"numinlets" : 2,
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"patching_rect" : [ 597.0, 358.0, 54.0, 30.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-36"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"patching_rect" : [ 14.0, 27.0, 54.0, 19.0 ],
													"outlettype" : [ "bang" ],
													"fontname" : "Arial",
													"id" : "obj-37"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend normalize",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"patching_rect" : [ 771.0, 249.0, 111.0, 19.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-38"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "buffer~ #0_buff 10000",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 2,
													"patching_rect" : [ 80.0, 46.0, 140.0, 19.0 ],
													"outlettype" : [ "float", "bang" ],
													"fontname" : "Arial",
													"id" : "obj-39"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set set",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"patching_rect" : [ 388.0, 238.0, 105.0, 19.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-40"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set \\\"tata_toto\\\" 1",
													"numinlets" : 2,
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"patching_rect" : [ 387.0, 292.0, 122.0, 17.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-41"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 2 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [ 829.5, 240.0, 780.5, 240.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-30", 2 ],
													"destination" : [ "obj-29", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 1 ],
													"destination" : [ "obj-29", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-32", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 1 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [ 318.0, 283.0, 396.5, 283.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [ 287.5, 408.0, 265.5, 408.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [ 288.5, 226.0, 287.5, 226.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [ 396.5, 322.0, 399.0, 322.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [ 563.5, 317.0, 606.5, 317.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 2 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [ 348.5, 352.0, 341.5, 352.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [ 563.5, 317.0, 542.5, 317.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [ 607.5, 140.0, 563.5, 140.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 1 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [ 689.5, 179.0, 628.5, 179.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 2 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 1 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 1 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p sel",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"patching_rect" : [ 85.0, 102.0, 45.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"id" : "obj-12",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 674.0, 416.0, 144.0, 126.0 ],
										"bglocked" : 0,
										"defrect" : [ 674.0, 416.0, 144.0, 126.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 2.0, 2.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_sele",
													"numinlets" : 0,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"patching_rect" : [ 62.0, 25.0, 50.0, 17.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_selb",
													"numinlets" : 0,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"patching_rect" : [ 10.0, 25.0, 50.0, 17.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 62.0, 46.0, 15.0, 15.0 ],
													"id" : "obj-3",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 10.0, 45.0, 15.0, 15.0 ],
													"id" : "obj-4",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
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
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_buf",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 76.0, 81.0, 54.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p pitch",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"patching_rect" : [ 50.0, 52.0, 184.0, 17.0 ],
									"outlettype" : [ "float", "", "int" ],
									"fontname" : "Arial",
									"id" : "obj-14",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 579.0, 100.0, 697.0, 455.0 ],
										"bglocked" : 0,
										"defrect" : [ 579.0, 100.0, 697.0, 455.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 2.0, 2.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 626.0, 342.0, 15.0, 15.0 ],
													"id" : "obj-37",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t stop",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 172.0, 136.0, 41.0, 20.0 ],
													"outlettype" : [ "stop" ],
													"fontname" : "Arial",
													"id" : "obj-36"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_buf",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 172.0, 158.0, 66.0, 20.0 ],
													"fontname" : "Arial",
													"id" : "obj-35"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"patching_rect" : [ 154.0, 112.0, 37.0, 20.0 ],
													"outlettype" : [ "bang", "" ],
													"fontname" : "Arial",
													"id" : "obj-34"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "abs 0.",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 434.0, 281.0, 46.0, 20.0 ],
													"outlettype" : [ "float" ],
													"fontname" : "Arial",
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /loopmode /direction /play /pitch",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"numoutlets" : 5,
													"patching_rect" : [ 12.0, 59.0, 309.0, 20.0 ],
													"outlettype" : [ "", "", "", "", "" ],
													"fontname" : "Arial",
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 12.0, 32.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 26.0, 258.0, 34.0, 20.0 ],
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"id" : "obj-4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 83.0, 353.0, 27.0, 20.0 ],
													"outlettype" : [ "float" ],
													"fontname" : "Arial",
													"id" : "obj-5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"patching_rect" : [ 26.0, 284.0, 85.0, 20.0 ],
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"id" : "obj-6"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_sele",
													"numinlets" : 0,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 97.0, 332.0, 64.0, 20.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_bfbg",
													"numinlets" : 0,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 20.0, 84.0, 71.0, 20.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-8"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 11.0, 119.0, 18.0, 20.0 ],
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"id" : "obj-9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "!",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 46.0, 118.0, 18.0, 20.0 ],
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"id" : "obj-10"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"patching_rect" : [ 38.0, 146.0, 37.0, 20.0 ],
													"outlettype" : [ "bang", "" ],
													"fontname" : "Arial",
													"id" : "obj-11"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend loop",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 8.0, 170.0, 83.0, 20.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-12"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 26.0, 352.0, 27.0, 20.0 ],
													"outlettype" : [ "float" ],
													"fontname" : "Arial",
													"id" : "obj-13"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"patching_rect" : [ 84.0, 210.0, 205.0, 20.0 ],
													"outlettype" : [ "bang", "bang" ],
													"fontname" : "Arial",
													"id" : "obj-14"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_selb",
													"numinlets" : 0,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 41.0, 332.0, 70.0, 20.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-15"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_buf",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"numoutlets" : 0,
													"patching_rect" : [ 26.0, 378.0, 66.0, 20.0 ],
													"fontname" : "Arial",
													"id" : "obj-16"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 10",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 554.0, 305.0, 33.0, 20.0 ],
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"id" : "obj-17"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 554.0, 286.0, 64.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"fontname" : "Arial",
													"id" : "obj-18"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 407.0, 351.0, 15.0, 15.0 ],
													"id" : "obj-19",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_splgth",
													"numinlets" : 0,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 343.0, 305.0, 80.0, 20.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-20"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r trslew",
													"numinlets" : 0,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 489.0, 305.0, 64.0, 20.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-21"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr $f3/$f1*$f2",
													"numinlets" : 3,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 407.0, 331.0, 153.0, 20.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-22"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b f",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"numoutlets" : 2,
													"patching_rect" : [ 407.0, 308.0, 62.0, 20.0 ],
													"outlettype" : [ "bang", "float" ],
													"fontname" : "Arial",
													"id" : "obj-23"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 291.0, 312.0, 15.0, 15.0 ],
													"id" : "obj-24",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "if $i1==0 then 1 else -1",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 430.0, 236.0, 155.0, 20.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-25"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "line 1. 2.",
													"numinlets" : 3,
													"fontsize" : 12.0,
													"numoutlets" : 3,
													"patching_rect" : [ 291.0, 205.0, 63.0, 20.0 ],
													"outlettype" : [ "", "", "" ],
													"fontname" : "Arial",
													"id" : "obj-26"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r pslew",
													"numinlets" : 0,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 344.0, 142.0, 55.0, 20.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-27"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 1. 10",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 291.0, 167.0, 71.0, 20.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-28"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 291.0, 245.0, 26.0, 20.0 ],
													"outlettype" : [ "float" ],
													"fontname" : "Arial",
													"id" : "obj-29"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 402.0, 222.0, 24.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"fontname" : "Arial",
													"id" : "obj-30"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 382.0, 220.0, 24.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"fontname" : "Arial",
													"id" : "obj-31"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"numinlets" : 1,
													"fontsize" : 12.0,
													"numoutlets" : 3,
													"patching_rect" : [ 356.0, 198.0, 67.0, 20.0 ],
													"outlettype" : [ "", "int", "int" ],
													"fontname" : "Arial",
													"id" : "obj-32"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 1.",
													"numinlets" : 2,
													"fontsize" : 12.0,
													"numoutlets" : 1,
													"patching_rect" : [ 291.0, 265.0, 158.0, 20.0 ],
													"outlettype" : [ "float" ],
													"fontname" : "Arial",
													"id" : "obj-33"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [ 20.5, 141.0, 141.0, 141.0, 141.0, 99.0, 635.0, 99.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 1 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-12", 0 ],
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
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-22", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-22", 2 ],
													"hidden" : 0,
													"midpoints" : [ 563.5, 326.0, 550.5, 326.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 1 ],
													"destination" : [ "obj-22", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-33", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [ 352.5, 327.0, 416.5, 327.0 ]
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 2 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 1 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-28", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [ 300.5, 238.0, 300.5, 238.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [ 391.5, 243.0, 300.5, 243.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [ 411.5, 243.0, 300.5, 243.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [ 279.5, 236.0, 300.5, 236.0 ]
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
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-5", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [ 93.5, 239.0, 101.5, 239.0 ]
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
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 17.5, 373.0, 35.5, 373.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 92.5, 373.0, 35.5, 373.0 ]
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 29.5, 116.0, 18.0, 116.0 ]
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
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 3 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [ 239.0, 83.0, 300.5, 83.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [ 94.0, 90.0, 330.0, 90.0, 330.0, 162.0, 365.5, 162.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [ 94.0, 90.0, 439.5, 90.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [ 94.0, 153.0, 105.0, 153.0, 105.0, 193.0, 35.5, 193.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 2 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!- 1.",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 189.0, 121.0, 29.0, 17.0 ],
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sig~",
									"linecount" : 2,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 82.0, 24.0, 27.0 ],
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 258.0, 67.0, 17.0 ],
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "trapezoid~ 0.1 0.9",
									"numinlets" : 3,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 98.0, 236.0, 93.0, 17.0 ],
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "groove~ #0_buff",
									"numinlets" : 3,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"patching_rect" : [ 52.0, 122.0, 87.0, 17.0 ],
									"outlettype" : [ "signal", "signal" ],
									"fontname" : "Arial",
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 27.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-20",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 248.0, 300.0, 15.0, 15.0 ],
									"id" : "obj-22",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 305.0, 15.0, 15.0 ],
									"id" : "obj-23",
									"comment" : ""
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
									"source" : [ "obj-14", 2 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 59.0, 47.0, 257.5, 47.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-18", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 142.0, 96.0, 198.5, 96.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-18", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-19", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 85.5, 109.0, 61.5, 109.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-9", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /looper",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"patching_rect" : [ 46.0, 44.0, 221.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 132.0, 139.0, 15.0, 15.0 ],
					"id" : "obj-12",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 22.0, 226.0, 15.0, 15.0 ],
					"id" : "obj-13",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 24.0, 24.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-14",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "out 1",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 148.0, 138.0, 33.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-15",
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "out~ 1",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 56.0, 230.0, 34.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-16",
					"saved_object_attributes" : 					{
						"attr_comment" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "in 1",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 47.0, 22.0, 23.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-17",
					"saved_object_attributes" : 					{
						"attr_comment" : ""
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 2 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 33.0, 40.0, 55.5, 40.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 2 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-5", 0 ],
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
					"source" : [ "obj-10", 3 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 4 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 4 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
