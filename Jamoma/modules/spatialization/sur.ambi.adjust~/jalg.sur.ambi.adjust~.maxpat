{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 12.0, 83.0, 873.0, 606.0 ],
		"bglocked" : 0,
		"defrect" : [ 12.0, 83.0, 873.0, 606.0 ],
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
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-1",
					"numinlets" : 1,
					"patching_rect" : [ 146.0, 332.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p setmeter",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 56.0, 440.0, 63.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 15.0, 55.0, 283.0, 283.0 ],
						"bglocked" : 0,
						"defrect" : [ 15.0, 55.0, 283.0, 283.0 ],
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
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"numinlets" : 0,
									"patching_rect" : [ 65.0, 71.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend active",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 65.0, 115.0, 70.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend metering",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 143.0, 115.0, 94.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"numinlets" : 0,
									"patching_rect" : [ 143.0, 71.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-5",
									"numinlets" : 1,
									"patching_rect" : [ 65.0, 176.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 152.5, 154.0, 74.0, 154.0 ]
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
									"destination" : [ "obj-2", 0 ],
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
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-3",
					"numinlets" : 1,
					"patching_rect" : [ 146.0, 510.0, 23.0, 23.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "== 0",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "int" ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 146.0, 308.0, 27.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mute~",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 146.0, 352.0, 34.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"numinlets" : 0,
					"patching_rect" : [ 34.0, 86.0, 21.0, 21.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "monitor",
					"text" : "p monitor",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"numinlets" : 17,
					"patching_rect" : [ 146.0, 442.0, 222.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 138.0, 44.0, 850.0, 656.0 ],
						"bglocked" : 0,
						"defrect" : [ 138.0, 44.0, 850.0, 656.0 ],
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
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-1",
									"numinlets" : 1,
									"patching_rect" : [ 589.0, 94.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "int" ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 633.0, 59.0, 27.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "int" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 633.0, 85.0, 27.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route int",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 28.0, 56.0, 56.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triscale" : 0.9,
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 657.0, 172.0, 35.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 74.0, 103.0, 54.0, 17.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "in[16]",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-7",
									"numinlets" : 0,
									"patching_rect" : [ 560.0, 36.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "in[15]",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-8",
									"numinlets" : 0,
									"patching_rect" : [ 533.0, 36.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "in[14]",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-9",
									"numinlets" : 0,
									"patching_rect" : [ 506.0, 36.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "in[13]",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-10",
									"numinlets" : 0,
									"patching_rect" : [ 479.0, 36.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "in[12]",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-11",
									"numinlets" : 0,
									"patching_rect" : [ 452.0, 36.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "in[11]",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-12",
									"numinlets" : 0,
									"patching_rect" : [ 425.0, 36.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "in[10]",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-13",
									"numinlets" : 0,
									"patching_rect" : [ 398.0, 36.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "in[9]",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-14",
									"numinlets" : 0,
									"patching_rect" : [ 371.0, 36.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "in[8]",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-15",
									"numinlets" : 0,
									"patching_rect" : [ 344.0, 36.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "in[7]",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-16",
									"numinlets" : 0,
									"patching_rect" : [ 317.0, 36.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "in[6]",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-17",
									"numinlets" : 0,
									"patching_rect" : [ 290.0, 36.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "in[5]",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-18",
									"numinlets" : 0,
									"patching_rect" : [ 263.0, 36.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "in[4]",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-19",
									"numinlets" : 0,
									"patching_rect" : [ 236.0, 36.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "in[3]",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-20",
									"numinlets" : 0,
									"patching_rect" : [ 209.0, 36.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "in[2]",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-21",
									"numinlets" : 0,
									"patching_rect" : [ 182.0, 36.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "in[1]",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"id" : "obj-22",
									"numinlets" : 0,
									"patching_rect" : [ 155.0, 36.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend levels",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-23",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 155.0, 535.0, 75.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p amp2mm",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-24",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 155.0, 510.0, 58.0, 17.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 43.0, 74.0, 481.0, 286.0 ],
										"bglocked" : 0,
										"defrect" : [ 43.0, 74.0, 481.0, 286.0 ],
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
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-1",
													"numinlets" : 1,
													"patching_rect" : [ 49.0, 227.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"numinlets" : 0,
													"patching_rect" : [ 49.0, 80.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "vexpr (exp(($f1) * 0.0344014267) * 103.8194883) - 3.819488",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 49.0, 175.0, 316.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "vexpr min(0.\\,$f1)",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 49.0, 155.0, 99.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "vexpr max(-96.\\,$f1)",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 49.0, 135.0, 113.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "vexpr 20. * (log10($f1))",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 49.0, 115.0, 125.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "A similar function for mapping amplitude to displayed levels as used by jcom.meter~",
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 32.0, 52.0, 391.0, 17.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 0 ],
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
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
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
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-25",
									"numinlets" : 1,
									"patching_rect" : [ 155.0, 560.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-26",
									"numinlets" : 0,
									"patching_rect" : [ 28.0, 38.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "pack",
									"text" : "pack f f f f f f f f f f f f f f f f",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-27",
									"fontname" : "Arial",
									"numinlets" : 16,
									"patching_rect" : [ 155.0, 484.0, 209.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dspstate~",
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "float", "int", "int" ],
									"id" : "obj-28",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 633.0, 36.0, 54.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "qmetro",
									"text" : "qmetro 100",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "bang" ],
									"id" : "obj-29",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 633.0, 108.0, 63.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "peakamp~[0]",
									"text" : "peakamp~",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 155.0, 87.0, 54.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "peakamp~[1]",
									"text" : "peakamp~",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-31",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 182.0, 114.0, 54.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "peakamp~[2]",
									"text" : "peakamp~",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-32",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 209.0, 141.0, 54.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "peakamp~[3]",
									"text" : "peakamp~",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-33",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 236.0, 168.0, 54.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "peakamp~[4]",
									"text" : "peakamp~",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-34",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 263.0, 195.0, 54.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "peakamp~[5]",
									"text" : "peakamp~",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-35",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 290.0, 222.0, 54.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "peakamp~[6]",
									"text" : "peakamp~",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-36",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 317.0, 249.0, 54.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "peakamp~[7]",
									"text" : "peakamp~",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-37",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 344.0, 276.0, 54.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "peakamp~[8]",
									"text" : "peakamp~",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-38",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 371.0, 303.0, 54.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "peakamp~[9]",
									"text" : "peakamp~",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-39",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 398.0, 330.0, 54.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "peakamp~[10]",
									"text" : "peakamp~",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-40",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 425.0, 357.0, 54.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "peakamp~[11]",
									"text" : "peakamp~",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-41",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 452.0, 384.0, 54.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "peakamp~[12]",
									"text" : "peakamp~",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-42",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 479.0, 411.0, 54.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "peakamp~[13]",
									"text" : "peakamp~",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-43",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 506.0, 438.0, 54.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "peakamp~[14]",
									"text" : "peakamp~",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-44",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 533.0, 465.0, 54.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "peakamp~[15]",
									"text" : "peakamp~",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-45",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 560.0, 492.0, 54.0, 17.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-29", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
									"midpoints" : [ 37.5, 80.0, 642.5, 80.0 ]
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
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-2", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-27", 15 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-27", 14 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-27", 13 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-27", 12 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-27", 11 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-27", 10 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-27", 9 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-27", 8 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-27", 7 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-27", 6 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-27", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-27", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-27", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-27", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-30", 0 ],
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
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-4", 0 ],
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
					"varname" : "gains",
					"text" : "p gains",
					"numoutlets" : 16,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float" ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 160.0, 155.0, 209.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 70.0, 659.0, 245.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 70.0, 659.0, 245.0 ],
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
									"text" : "p gain",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 560.0, 92.0, 33.0, 17.0 ],
									"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 70.0, 302.0, 303.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 70.0, 302.0, 303.0 ],
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
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 104.0, 31.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 74.0, 28.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"numoutlets" : 4,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "float", "int", "int" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 50.0, 53.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /gain",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 76.0, 90.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "float" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 107.0, 150.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"patching_rect" : [ 107.0, 39.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 174.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
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
									"maxclass" : "newobj",
									"text" : "p gain",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 526.0, 92.0, 33.0, 17.0 ],
									"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 70.0, 302.0, 303.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 70.0, 302.0, 303.0 ],
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
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 104.0, 31.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 74.0, 28.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"numoutlets" : 4,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "float", "int", "int" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 50.0, 53.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /gain",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 76.0, 90.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "float" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 107.0, 150.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"patching_rect" : [ 107.0, 39.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 174.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
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
									"maxclass" : "newobj",
									"text" : "p gain",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 492.0, 92.0, 33.0, 17.0 ],
									"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 70.0, 302.0, 303.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 70.0, 302.0, 303.0 ],
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
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 104.0, 31.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 74.0, 28.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"numoutlets" : 4,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "float", "int", "int" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 50.0, 53.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /gain",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 76.0, 90.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "float" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 107.0, 150.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"patching_rect" : [ 107.0, 39.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 174.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
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
									"maxclass" : "newobj",
									"text" : "p gain",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 458.0, 92.0, 33.0, 17.0 ],
									"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 70.0, 302.0, 303.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 70.0, 302.0, 303.0 ],
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
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 104.0, 31.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 74.0, 28.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"numoutlets" : 4,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "float", "int", "int" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 50.0, 53.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /gain",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 76.0, 90.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "float" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 107.0, 150.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"patching_rect" : [ 107.0, 39.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 174.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
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
									"maxclass" : "newobj",
									"text" : "p gain",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 424.0, 92.0, 33.0, 17.0 ],
									"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 70.0, 302.0, 303.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 70.0, 302.0, 303.0 ],
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
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 104.0, 31.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 74.0, 28.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"numoutlets" : 4,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "float", "int", "int" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 50.0, 53.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /gain",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 76.0, 90.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "float" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 107.0, 150.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"patching_rect" : [ 107.0, 39.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 174.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
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
									"maxclass" : "newobj",
									"text" : "p gain",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 390.0, 92.0, 33.0, 17.0 ],
									"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 70.0, 302.0, 303.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 70.0, 302.0, 303.0 ],
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
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 104.0, 31.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 74.0, 28.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"numoutlets" : 4,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "float", "int", "int" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 50.0, 53.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /gain",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 76.0, 90.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "float" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 107.0, 150.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"patching_rect" : [ 107.0, 39.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 174.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
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
									"maxclass" : "newobj",
									"text" : "p gain",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 356.0, 92.0, 33.0, 17.0 ],
									"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 70.0, 302.0, 303.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 70.0, 302.0, 303.0 ],
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
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 104.0, 31.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 74.0, 28.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"numoutlets" : 4,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "float", "int", "int" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 50.0, 53.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /gain",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 76.0, 90.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "float" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 107.0, 150.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"patching_rect" : [ 107.0, 39.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 174.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
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
									"maxclass" : "newobj",
									"text" : "p gain",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 322.0, 92.0, 33.0, 17.0 ],
									"color" : [ 0.4, 0.4, 0.8, 1.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 240.0, 154.0, 302.0, 303.0 ],
										"bglocked" : 0,
										"defrect" : [ 240.0, 154.0, 302.0, 303.0 ],
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
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 104.0, 31.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 74.0, 28.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"numoutlets" : 4,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "float", "int", "int" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 50.0, 53.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /gain",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 76.0, 90.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "float" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 107.0, 150.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"patching_rect" : [ 107.0, 39.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 174.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
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
									"maxclass" : "newobj",
									"text" : "p gain",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 288.0, 92.0, 33.0, 17.0 ],
									"color" : [ 0.4, 0.4, 0.8, 1.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 70.0, 302.0, 303.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 70.0, 302.0, 303.0 ],
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
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 104.0, 31.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 74.0, 28.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"numoutlets" : 4,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "float", "int", "int" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 50.0, 53.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /gain",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 76.0, 90.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "float" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 107.0, 150.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"patching_rect" : [ 107.0, 39.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 174.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
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
									"maxclass" : "newobj",
									"text" : "p gain",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 254.0, 92.0, 33.0, 17.0 ],
									"color" : [ 0.4, 0.4, 0.8, 1.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 70.0, 302.0, 303.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 70.0, 302.0, 303.0 ],
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
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 104.0, 31.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 74.0, 28.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"numoutlets" : 4,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "float", "int", "int" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 50.0, 53.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /gain",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 76.0, 90.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "float" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 107.0, 150.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"patching_rect" : [ 107.0, 39.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 174.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
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
									"maxclass" : "newobj",
									"text" : "p gain",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 220.0, 92.0, 33.0, 17.0 ],
									"color" : [ 0.4, 0.4, 0.8, 1.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 70.0, 302.0, 303.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 70.0, 302.0, 303.0 ],
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
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 104.0, 31.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 74.0, 28.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"numoutlets" : 4,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "float", "int", "int" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 50.0, 53.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /gain",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 76.0, 90.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "float" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 107.0, 150.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"patching_rect" : [ 107.0, 39.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 174.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
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
									"maxclass" : "newobj",
									"text" : "p gain",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 186.0, 92.0, 33.0, 17.0 ],
									"color" : [ 0.4, 0.4, 0.8, 1.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 70.0, 302.0, 303.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 70.0, 302.0, 303.0 ],
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
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 104.0, 31.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 74.0, 28.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"numoutlets" : 4,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "float", "int", "int" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 50.0, 53.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /gain",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 76.0, 90.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "float" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 107.0, 150.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"patching_rect" : [ 107.0, 39.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 174.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
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
									"maxclass" : "newobj",
									"text" : "p gain",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 152.0, 92.0, 33.0, 17.0 ],
									"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 70.0, 302.0, 303.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 70.0, 302.0, 303.0 ],
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
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 104.0, 31.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 74.0, 28.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"numoutlets" : 4,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "float", "int", "int" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 50.0, 53.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /gain",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 76.0, 90.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "float" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 107.0, 150.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"patching_rect" : [ 107.0, 39.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 174.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
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
									"maxclass" : "newobj",
									"text" : "p gain",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 118.0, 92.0, 33.0, 17.0 ],
									"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 70.0, 302.0, 303.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 70.0, 302.0, 303.0 ],
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
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 104.0, 31.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 74.0, 28.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"numoutlets" : 4,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "float", "int", "int" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 50.0, 53.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /gain",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 76.0, 90.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "float" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 107.0, 150.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"patching_rect" : [ 107.0, 39.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 174.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
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
									"maxclass" : "newobj",
									"text" : "p gain",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 84.0, 92.0, 33.0, 17.0 ],
									"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 70.0, 302.0, 303.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 70.0, 302.0, 303.0 ],
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
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 104.0, 31.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 74.0, 28.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"numoutlets" : 4,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "float", "int", "int" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 50.0, 53.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /gain",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 76.0, 90.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "float" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 107.0, 150.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"patching_rect" : [ 107.0, 39.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 174.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
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
									"maxclass" : "newobj",
									"text" : "p gain",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 92.0, 33.0, 17.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 25.0, 70.0, 302.0, 303.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 70.0, 302.0, 303.0 ],
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
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 104.0, 31.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 74.0, 28.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"numoutlets" : 4,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "float", "int", "int" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 50.0, 53.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /gain",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 76.0, 90.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "float" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 107.0, 150.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"patching_rect" : [ 107.0, 39.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 174.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
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
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /w /x /y /z /r /s /t /u /v /k /l /m /n /o /p /q",
									"numoutlets" : 17,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 50.0, 565.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-19",
									"numinlets" : 1,
									"patching_rect" : [ 560.0, 151.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-20",
									"numinlets" : 1,
									"patching_rect" : [ 526.0, 151.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-21",
									"numinlets" : 1,
									"patching_rect" : [ 492.0, 151.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-22",
									"numinlets" : 1,
									"patching_rect" : [ 458.0, 151.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-23",
									"numinlets" : 1,
									"patching_rect" : [ 424.0, 151.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-24",
									"numinlets" : 1,
									"patching_rect" : [ 390.0, 151.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-25",
									"numinlets" : 1,
									"patching_rect" : [ 356.0, 151.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-26",
									"numinlets" : 1,
									"patching_rect" : [ 322.0, 151.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-27",
									"numinlets" : 1,
									"patching_rect" : [ 288.0, 151.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-28",
									"numinlets" : 1,
									"patching_rect" : [ 254.0, 151.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-29",
									"numinlets" : 1,
									"patching_rect" : [ 220.0, 151.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-30",
									"numinlets" : 1,
									"patching_rect" : [ 186.0, 151.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-31",
									"numinlets" : 1,
									"patching_rect" : [ 152.0, 151.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-32",
									"numinlets" : 1,
									"patching_rect" : [ 118.0, 151.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-33",
									"numinlets" : 1,
									"patching_rect" : [ 84.0, 151.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-34",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 151.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 15 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 14 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 13 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 12 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 11 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 10 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 9 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 8 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 7 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 6 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 5 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 4 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 3 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 2 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-34", 0 ],
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
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-17", 0 ],
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
					"text" : "jcom.oscroute /order /meter",
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 117.0, 144.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-10",
					"numinlets" : 1,
					"patching_rect" : [ 377.0, 510.0, 23.0, 23.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"numinlets" : 0,
					"patching_rect" : [ 377.0, 86.0, 21.0, 21.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-12",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 495.0, 61.0, 17.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p script",
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 322.0, 63.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 28.0, 44.0, 855.0, 554.0 ],
						"bglocked" : 0,
						"defrect" : [ 28.0, 44.0, 855.0, 554.0 ],
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
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-1",
									"numinlets" : 1,
									"patching_rect" : [ 405.0, 400.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Scripting for monitoring",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 490.0, 427.0, 128.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p connect",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 488.0, 355.0, 49.0, 17.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 17.0, 55.0, 821.0, 338.0 ],
										"bglocked" : 0,
										"defrect" : [ 17.0, 55.0, 821.0, 338.0 ],
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
													"maxclass" : "newobj",
													"text" : "sprintf script connect peakamp~[%ld] 0 pack %ld",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 557.0, 162.0, 213.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script connect in[%ld] 0 peakamp~[%ld] 0",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 80.0, 162.0, 211.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script connect qmetro 0 peakamp~[%ld] 0",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 313.0, 162.0, 212.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "int" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 281.0, 103.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi",
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "bang", "int" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 63.0, 40.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 80.0, 238.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [ 290.5, 142.0, 760.5, 142.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [ 290.5, 142.0, 566.5, 142.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [ 290.5, 142.0, 322.5, 142.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 1 ],
													"hidden" : 0,
													"midpoints" : [ 290.5, 148.0, 281.5, 148.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 2 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [ 80.5, 92.0, 290.5, 92.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 322.5, 215.0, 89.0, 215.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 89.5, 215.0, 89.0, 215.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 566.5, 215.0, 89.0, 215.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 2 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [ 80.5, 139.0, 89.5, 139.0 ]
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
									"maxclass" : "newobj",
									"text" : "p delete_peakamp~",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 645.0, 355.0, 103.0, 17.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 44.0, 74.0, 373.0, 299.0 ],
										"bglocked" : 0,
										"defrect" : [ 44.0, 74.0, 373.0, 299.0 ],
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
													"maxclass" : "newobj",
													"text" : "- 1",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "int" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 80.0, 141.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t i b",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 57.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script delete peakamp~[%ld]",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 80.0, 167.0, 180.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi",
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "bang", "int" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 115.0, 40.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i 16",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "int" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 90.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 80.0, 189.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-1", 0 ],
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
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-2", 0 ],
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
									"maxclass" : "newobj",
									"text" : "p new_peakamp~",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 543.0, 355.0, 94.0, 17.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 44.0, 74.0, 526.0, 288.0 ],
										"bglocked" : 0,
										"defrect" : [ 44.0, 74.0, 526.0, 288.0 ],
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
													"maxclass" : "newobj",
													"text" : "+ 155",
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "int" ],
													"id" : "obj-10",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 245.0, 139.0, 36.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 27",
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "int" ],
													"id" : "obj-11",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 245.0, 116.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 87",
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "int" ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 409.0, 132.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 27",
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "int" ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 409.0, 109.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "int" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 80.0, 79.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi",
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "bang", "int" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 59.0, 52.0, 40.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script new peakamp~[%ld] newex %ld %ld 54 9109513 peakamp~",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 3,
													"patching_rect" : [ 80.0, 166.0, 348.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"patching_rect" : [ 59.0, 24.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 80.0, 196.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-5", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-5", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
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
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-6", 0 ],
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
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-6",
									"numinlets" : 1,
									"patching_rect" : [ 488.0, 400.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll #0_voices 1",
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 180.0, 276.0, 76.0, 17.0 ],
									"save" : [ "#N", "coll", "$0_voices", 1, ";", "#T", "flags", 1, 0, ";", "#T", 1, 4, ";", "#T", 2, 9, ";", "#T", 3, 16, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Changes can not take place while audio is running",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 231.0, 182.0, 134.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "int", "int" ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 180.0, 235.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p connect",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 180.0, 355.0, 49.0, 17.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 44.0, 74.0, 959.0, 561.0 ],
										"bglocked" : 0,
										"defrect" : [ 44.0, 74.0, 959.0, 561.0 ],
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
													"maxclass" : "newobj",
													"text" : "sprintf script connect *~[%ld] 0 monitor %ld",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 724.0, 181.0, 190.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script connect gains %ld *~[%ld] 1",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 539.0, 181.0, 181.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script connect *~[%ld] 0 multi.in %ld",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 149.0, 181.0, 189.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script connect multi.out %ld *~[%ld] 0",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 342.0, 181.0, 195.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "int" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 80.0, 97.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi",
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "bang", "int" ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 63.0, 40.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-7",
													"numinlets" : 0,
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-8",
													"numinlets" : 1,
													"patching_rect" : [ 149.0, 230.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 2 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [ 80.5, 93.0, 904.5, 93.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [ 89.5, 148.0, 733.5, 148.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-2", 1 ],
													"hidden" : 0,
													"midpoints" : [ 89.5, 148.0, 710.5, 148.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [ 89.5, 148.0, 548.5, 148.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [ 89.5, 148.0, 527.5, 148.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [ 89.5, 148.0, 351.5, 148.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [ 89.5, 148.0, 328.5, 148.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 548.5, 215.0, 158.0, 215.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 733.5, 215.0, 158.0, 215.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 351.5, 215.0, 158.0, 215.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 158.5, 215.0, 158.0, 215.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [ 89.5, 148.0, 158.5, 148.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 2 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [ 80.5, 92.0, 89.5, 92.0 ]
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
									"maxclass" : "newobj",
									"text" : "p delete_*~",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 303.0, 355.0, 69.0, 17.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 44.0, 74.0, 274.0, 299.0 ],
										"bglocked" : 0,
										"defrect" : [ 44.0, 74.0, 274.0, 299.0 ],
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
													"maxclass" : "newobj",
													"text" : "- 1",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "int" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 80.0, 145.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t i b",
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 57.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script delete *~[%ld]",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 80.0, 173.0, 146.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi",
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "bang", "int" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 117.0, 40.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i 16",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "int" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 90.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-7",
													"numinlets" : 1,
													"patching_rect" : [ 80.0, 195.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-1", 0 ],
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
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-2", 0 ],
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
									"maxclass" : "newobj",
									"text" : "p new_*~",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 235.0, 355.0, 60.0, 17.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 44.0, 74.0, 513.0, 286.0 ],
										"bglocked" : 0,
										"defrect" : [ 44.0, 74.0, 513.0, 286.0 ],
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
													"maxclass" : "newobj",
													"text" : "+ 377",
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "int" ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 351.0, 142.0, 36.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 29",
													"numoutlets" : 1,
													"fontsize" : 10.0,
													"outlettype" : [ "int" ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 351.0, 122.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "int" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 80.0, 79.0, 27.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi",
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "bang", "int" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 59.0, 51.0, 40.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script new *~[%ld] newex %ld 254 27 9109513 *~",
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 80.0, 166.0, 290.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"numinlets" : 0,
													"patching_rect" : [ 59.0, 23.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-6",
													"numinlets" : 1,
													"patching_rect" : [ 80.0, 196.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 2 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-2", 0 ],
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
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "bang" ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 47.0, 46.0, 48.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 0",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "int" ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 105.0, 107.0, 31.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-15",
									"numinlets" : 1,
									"patching_rect" : [ 180.0, 400.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "int" ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 199.0, 160.0, 27.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 180.0, 187.0, 29.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "" ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 47.0, 107.0, 32.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dspstate~",
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "float", "int", "int" ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 47.0, 74.0, 54.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "order",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"id" : "obj-20",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 217.0, 41.0, 100.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Only apply script if either voices and/or order is changed",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"id" : "obj-21",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 230.0, 229.0, 151.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-22",
									"numinlets" : 0,
									"patching_rect" : [ 199.0, 41.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Scripting for algorithm",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"id" : "obj-23",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 181.0, 427.0, 123.0, 17.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 189.5, 325.0, 654.5, 325.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 189.5, 325.0, 552.5, 325.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 654.5, 387.0, 497.0, 387.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 552.5, 387.0, 497.0, 387.0 ]
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 189.5, 325.0, 497.5, 325.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 189.5, 331.0, 414.0, 331.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 189.5, 340.0, 312.5, 340.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 189.5, 340.0, 244.5, 340.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 56.5, 146.0, 208.5, 146.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 312.5, 386.0, 189.0, 386.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 244.5, 386.0, 189.0, 386.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 189.5, 340.0, 189.5, 340.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 56.5, 97.0, 114.5, 97.0 ]
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
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-19", 0 ],
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
					"varname" : "multi.out",
					"text" : "jcom.multi.out~",
					"numoutlets" : 32,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-14",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 377.0, 155.0, 417.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "multi.in",
					"text" : "jcom.multi.in~",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"fontname" : "Arial",
					"numinlets" : 32,
					"patching_rect" : [ 377.0, 442.0, 417.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "*~[0]",
					"text" : "*~",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "signal" ],
					"id" : "obj-16",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 377.0, 254.0, 27.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "*~[1]",
					"text" : "*~",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "signal" ],
					"id" : "obj-17",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 406.0, 254.0, 27.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "*~[2]",
					"text" : "*~",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "signal" ],
					"id" : "obj-18",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 435.0, 254.0, 27.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "*~[3]",
					"text" : "*~",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "signal" ],
					"id" : "obj-19",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 464.0, 254.0, 27.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "*~[4]",
					"text" : "*~",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "signal" ],
					"id" : "obj-20",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 493.0, 254.0, 27.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "*~[5]",
					"text" : "*~",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "signal" ],
					"id" : "obj-21",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 522.0, 254.0, 27.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "*~[6]",
					"text" : "*~",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "signal" ],
					"id" : "obj-22",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 551.0, 254.0, 27.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "*~[7]",
					"text" : "*~",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "signal" ],
					"id" : "obj-23",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 580.0, 254.0, 27.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "*~[8]",
					"text" : "*~",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "signal" ],
					"id" : "obj-24",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 609.0, 254.0, 27.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "*~[9]",
					"text" : "*~",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "signal" ],
					"id" : "obj-25",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 638.0, 254.0, 27.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "*~[10]",
					"text" : "*~",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "signal" ],
					"id" : "obj-26",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 667.0, 254.0, 27.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "*~[11]",
					"text" : "*~",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "signal" ],
					"id" : "obj-27",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 696.0, 254.0, 27.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "*~[12]",
					"text" : "*~",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "signal" ],
					"id" : "obj-28",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 725.0, 254.0, 27.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "*~[13]",
					"text" : "*~",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "signal" ],
					"id" : "obj-29",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 754.0, 254.0, 27.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "*~[14]",
					"text" : "*~",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "signal" ],
					"id" : "obj-30",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 783.0, 254.0, 27.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "*~[15]",
					"text" : "*~",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "signal" ],
					"id" : "obj-31",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 812.0, 254.0, 27.0, 17.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 15 ],
					"destination" : [ "obj-31", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 15 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 14 ],
					"destination" : [ "obj-30", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 14 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 13 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 13 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 12 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 12 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 11 ],
					"destination" : [ "obj-27", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 11 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 10 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 10 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 9 ],
					"destination" : [ "obj-25", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 9 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 8 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 8 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 7 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 7 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-15", 15 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 6 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-15", 14 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 6 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-15", 13 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 5 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-15", 12 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 5 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-15", 11 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 4 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-15", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-15", 9 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 4 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-15", 8 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 3 ],
					"destination" : [ "obj-19", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-15", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 3 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-15", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 2 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-15", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 2 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-15", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-15", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-15", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-16", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-7", 16 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-7", 15 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-7", 14 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-7", 13 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-7", 12 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-7", 11 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-7", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-7", 9 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-7", 8 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-7", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-7", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-7", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-7", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-7", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-7", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 2 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 2 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
