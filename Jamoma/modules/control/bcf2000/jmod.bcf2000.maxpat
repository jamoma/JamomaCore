{
	"patcher" : 	{
		"rect" : [ 42.0, 59.0, 801.0, 727.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 42.0, 59.0, 801.0, 727.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend port",
					"patching_rect" : [ 496.0, 442.0, 67.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-1",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0__outport",
					"patching_rect" : [ 496.0, 467.0, 76.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-2",
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend port",
					"patching_rect" : [ 242.0, 442.0, 67.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-3",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0__inport",
					"patching_rect" : [ 242.0, 467.0, 70.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-4",
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar MIDIOUT 2",
					"patching_rect" : [ 385.0, 379.0, 81.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-5",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar MIDIIN 2",
					"patching_rect" : [ 127.0, 379.0, 72.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-6",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"patching_rect" : [ 163.0, 322.0, 48.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-7",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "MIDIIN",
					"patching_rect" : [ 79.0, 21.0, 100.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"labelclick" : 1,
					"types" : [  ],
					"id" : "obj-8",
					"numoutlets" : 3,
					"items" : [ "to MaxMSP 1", ",", "to MaxMSP 2", ",", "from MaxMSP 1", ",", "from MaxMSP 2" ],
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "MIDIOUT",
					"patching_rect" : [ 79.0, 41.0, 100.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"labelclick" : 1,
					"types" : [  ],
					"id" : "obj-9",
					"numoutlets" : 3,
					"items" : [ "AU DLS Synth 1", ",", "from MaxMSP 1", ",", "from MaxMSP 2", ",", "to MaxMSP 1", ",", "to MaxMSP 2" ],
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiinfo",
					"patching_rect" : [ 127.0, 356.0, 46.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-10",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiinfo",
					"patching_rect" : [ 385.0, 355.0, 46.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-11",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p bcf2000",
					"patching_rect" : [ 119.0, 270.0, 103.0, 28.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-12",
					"numoutlets" : 0,
					"fontsize" : 15.799999,
					"patcher" : 					{
						"rect" : [ 100.0, 100.0, 544.0, 358.0 ],
						"bgcolor" : [ 0.188235, 0.188235, 0.188235, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 100.0, 100.0, 544.0, 358.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[4]",
									"text" : "p Foot_Switch",
									"patching_rect" : [ 581.0, 92.0, 74.0, 17.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patcher" : 									{
										"rect" : [ 10.0, 59.0, 366.0, 305.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 366.0, 305.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxfadetime" : 200,
										"boxanimatetime" : 200,
										"scrollanimatetime" : 200,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 127",
													"patching_rect" : [ 186.0, 169.0, 38.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-1",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 64",
													"patching_rect" : [ 69.0, 82.0, 30.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-2",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"id" : "obj-3",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__outport",
													"patching_rect" : [ 203.0, 199.0, 76.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-4",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"patching_rect" : [ 69.0, 27.0, 70.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-5",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlout 93 1",
													"patching_rect" : [ 186.0, 225.0, 60.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 3,
													"id" : "obj-6",
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 93 1",
													"patching_rect" : [ 69.0, 53.0, 54.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-7",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "foot\/switch",
													"text" : "jcom.parameter foot\/switch @type msg_toggle @repetitions 1 @ramp/drive none @priority 1 @description \"Foot Pedal: Switch.\"",
													"linecount" : 2,
													"patching_rect" : [ 46.0, 127.0, 290.0, 28.0 ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-8",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 46.0, 161.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"id" : "obj-9",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar FootSwitch",
									"patching_rect" : [ 581.0, 113.0, 84.0, 17.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-2",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[2]",
									"text" : "p Button_4",
									"patching_rect" : [ 677.0, 218.0, 59.0, 17.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patcher" : 									{
										"rect" : [ 10.0, 59.0, 350.0, 303.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 350.0, 303.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxfadetime" : 200,
										"boxanimatetime" : 200,
										"scrollanimatetime" : 200,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 127",
													"patching_rect" : [ 176.0, 168.0, 38.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-1",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 64",
													"patching_rect" : [ 69.0, 94.0, 30.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-2",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"id" : "obj-3",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__outport",
													"patching_rect" : [ 195.0, 190.0, 76.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-4",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"patching_rect" : [ 69.0, 27.0, 70.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-5",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlout 92 1",
													"patching_rect" : [ 176.0, 215.0, 60.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 3,
													"id" : "obj-6",
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 92 1",
													"patching_rect" : [ 69.0, 63.0, 54.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-7",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "button\/4",
													"text" : "jcom.parameter button\/4 @type msg_toggle @repetitions 1 @ramp/drive none @priority 1 @description \"Button 4.\"",
													"linecount" : 2,
													"patching_rect" : [ 46.0, 127.0, 270.0, 28.0 ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-8",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 46.0, 161.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"id" : "obj-9",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Button4",
									"patching_rect" : [ 677.0, 239.0, 69.0, 17.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-4",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[3]",
									"text" : "p Button_2",
									"patching_rect" : [ 677.0, 163.0, 59.0, 17.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-5",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patcher" : 									{
										"rect" : [ 10.0, 59.0, 350.0, 315.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 350.0, 315.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxfadetime" : 200,
										"boxanimatetime" : 200,
										"scrollanimatetime" : 200,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 127",
													"patching_rect" : [ 165.0, 175.0, 38.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-1",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 64",
													"patching_rect" : [ 69.0, 90.0, 30.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-2",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"id" : "obj-3",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__outport",
													"patching_rect" : [ 179.0, 209.0, 76.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-4",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"patching_rect" : [ 69.0, 27.0, 70.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-5",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlout 90 1",
													"patching_rect" : [ 165.0, 236.0, 60.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 3,
													"id" : "obj-6",
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 90 1",
													"patching_rect" : [ 69.0, 60.0, 54.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-7",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "button\/2",
													"text" : "jcom.parameter button\/2 @type msg_toggle @repetitions 1 @ramp/drive none @description \"Button 2.\"",
													"linecount" : 2,
													"patching_rect" : [ 46.0, 127.0, 248.0, 28.0 ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-8",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 46.0, 161.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"id" : "obj-9",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Button2",
									"patching_rect" : [ 677.0, 184.0, 69.0, 17.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-6",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"linecount" : 2,
									"patching_rect" : [ 440.0, 51.0, 93.0, 26.0 ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"hidden" : 1,
									"id" : "obj-7",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 100 100 644 432, window flags nogrow, window exec, savewindow 1",
									"linecount" : 6,
									"patching_rect" : [ 440.0, 83.0, 90.0, 68.0 ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"hidden" : 1,
									"id" : "obj-8",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p front",
									"patching_rect" : [ 431.0, 31.0, 41.0, 17.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-9",
									"numoutlets" : 1,
									"outlettype" : [ "front" ],
									"fontsize" : 9.0,
									"patcher" : 									{
										"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxfadetime" : 200,
										"boxanimatetime" : 200,
										"scrollanimatetime" : 200,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"patching_rect" : [ 50.0, 71.0, 32.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"hidden" : 1,
													"id" : "obj-1",
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute \/open_inspector",
													"patching_rect" : [ 50.0, 50.0, 151.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"hidden" : 1,
													"id" : "obj-2",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t front",
													"patching_rect" : [ 50.0, 92.0, 40.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"hidden" : 1,
													"id" : "obj-3",
													"numoutlets" : 1,
													"outlettype" : [ "front" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"id" : "obj-4",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 50.0, 114.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"id" : "obj-5",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 1
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 1
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Control",
									"patching_rect" : [ 490.0, 228.0, 43.0, 17.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-10",
									"numoutlets" : 0,
									"frgb" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
									"textcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Switch",
									"patching_rect" : [ 438.0, 228.0, 43.0, 17.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-11",
									"numoutlets" : 0,
									"frgb" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
									"textcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"varname" : "FootControl",
									"patching_rect" : [ 493.0, 245.0, 36.0, 10.0 ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"slidercolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"numinlets" : 1,
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"setminmax" : [ 0.0, 127.0 ],
									"id" : "obj-12",
									"numoutlets" : 2,
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"orientation" : 0,
									"outlettype" : [ "", "" ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"settype" : 0,
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"contdata" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[1]",
									"text" : "p Foot_Control",
									"patching_rect" : [ 677.0, 92.0, 76.0, 17.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-13",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patcher" : 									{
										"rect" : [ 10.0, 59.0, 499.0, 296.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 499.0, 296.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxfadetime" : 200,
										"boxanimatetime" : 200,
										"scrollanimatetime" : 200,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set 1",
													"patching_rect" : [ 46.0, 198.0, 71.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-1",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"patching_rect" : [ 46.0, 175.0, 51.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-2",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"patching_rect" : [ 96.0, 76.0, 62.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-3",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
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
													"text" : "r #0__outport",
													"patching_rect" : [ 198.0, 180.0, 76.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-5",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"patching_rect" : [ 69.0, 27.0, 70.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-6",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlout 94 1",
													"patching_rect" : [ 184.0, 207.0, 60.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 3,
													"id" : "obj-7",
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 94 1",
													"patching_rect" : [ 69.0, 103.0, 54.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-8",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "foot\/control",
													"text" : "jcom.parameter foot\/control @type msg_int @range/bounds 0 127 @range/clipmode both @repetitions 1 @ramp/drive scheduler @priority 1 @description \"Foot Pedal: Continuous Controller.\"",
													"linecount" : 3,
													"patching_rect" : [ 46.0, 127.0, 286.0, 38.0 ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-9",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 46.0, 219.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"id" : "obj-10",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar FootControl",
									"patching_rect" : [ 677.0, 113.0, 86.0, 17.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-14",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jsui",
									"varname" : "FootSwitch",
									"patching_rect" : [ 438.0, 245.0, 36.0, 10.0 ],
									"numinlets" : 1,
									"jsarguments" : [ " ", " ", 74, 74, 74, 0, 0, 0, 162, 226, 132 ],
									"id" : "obj-15",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"filename" : "jcom.jsui_texttoggle.js"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Foot",
									"patching_rect" : [ 438.0, 210.0, 29.0, 17.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-16",
									"numoutlets" : 0,
									"frgb" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
									"textcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jsui",
									"varname" : "Button4",
									"patching_rect" : [ 493.0, 306.0, 36.0, 10.0 ],
									"numinlets" : 1,
									"jsarguments" : [ " ", " ", 74, 74, 74, 0, 0, 0, 162, 226, 132 ],
									"id" : "obj-17",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"filename" : "jcom.jsui_texttoggle.js"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jsui",
									"varname" : "Button2",
									"patching_rect" : [ 493.0, 295.0, 36.0, 10.0 ],
									"numinlets" : 1,
									"jsarguments" : [ " ", " ", 74, 74, 74, 0, 0, 0, 162, 226, 132 ],
									"id" : "obj-18",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"filename" : "jcom.jsui_texttoggle.js"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jsui",
									"varname" : "Button3",
									"patching_rect" : [ 437.0, 306.0, 36.0, 10.0 ],
									"numinlets" : 1,
									"jsarguments" : [ " ", " ", 74, 74, 74, 0, 0, 0, 162, 226, 132 ],
									"id" : "obj-19",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"filename" : "jcom.jsui_texttoggle.js"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jsui",
									"varname" : "Button1",
									"patching_rect" : [ 437.0, 295.0, 36.0, 10.0 ],
									"numinlets" : 1,
									"jsarguments" : [ " ", " ", 74, 74, 74, 0, 0, 0, 162, 226, 132 ],
									"id" : "obj-20",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"filename" : "jcom.jsui_texttoggle.js"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[10]",
									"text" : "p Button_3",
									"patching_rect" : [ 581.0, 218.0, 59.0, 17.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-21",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patcher" : 									{
										"rect" : [ 10.0, 59.0, 364.0, 285.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 364.0, 285.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxfadetime" : 200,
										"boxanimatetime" : 200,
										"scrollanimatetime" : 200,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 127",
													"patching_rect" : [ 176.0, 164.0, 38.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-1",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 64",
													"patching_rect" : [ 69.0, 102.0, 30.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-2",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"id" : "obj-3",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__outport",
													"patching_rect" : [ 190.0, 190.0, 76.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-4",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"patching_rect" : [ 69.0, 27.0, 70.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-5",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlout 91 1",
													"patching_rect" : [ 176.0, 217.0, 60.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 3,
													"id" : "obj-6",
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 91 1",
													"patching_rect" : [ 69.0, 78.0, 54.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-7",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "button\/3",
													"text" : "jcom.parameter button\/3 @type msg_toggle @repetitions 1 @ramp/drive none @priority 1 @description \"Button 3.\"",
													"linecount" : 2,
													"patching_rect" : [ 46.0, 127.0, 270.0, 28.0 ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-8",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 46.0, 161.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"id" : "obj-9",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Button3",
									"patching_rect" : [ 581.0, 239.0, 69.0, 17.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-22",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[9]",
									"text" : "p Button_1",
									"patching_rect" : [ 581.0, 163.0, 59.0, 17.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-23",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patcher" : 									{
										"rect" : [ 10.0, 59.0, 349.0, 310.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 349.0, 310.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxfadetime" : 200,
										"boxanimatetime" : 200,
										"scrollanimatetime" : 200,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 64",
													"patching_rect" : [ 69.0, 86.0, 30.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-1",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 127",
													"patching_rect" : [ 176.0, 164.0, 38.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-2",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"id" : "obj-3",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__outport",
													"patching_rect" : [ 193.0, 194.0, 76.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-4",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"patching_rect" : [ 69.0, 33.0, 70.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-5",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlout 89 1",
													"patching_rect" : [ 176.0, 222.0, 60.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 3,
													"id" : "obj-6",
													"numoutlets" : 0,
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 89 1",
													"patching_rect" : [ 69.0, 56.0, 54.0, 17.0 ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-7",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "button\/1",
													"text" : "jcom.parameter button\/1 @type msg_toggle @repetitions 1 @ramp/drive none @priority 1 @description \"Button 1.\"",
													"linecount" : 2,
													"patching_rect" : [ 46.0, 127.0, 270.0, 28.0 ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-8",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 46.0, 161.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"id" : "obj-9",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Button1",
									"patching_rect" : [ 581.0, 184.0, 69.0, 17.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-24",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"patching_rect" : [ 431.0, 162.0, 61.0, 17.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-25",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 431.0, 13.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"hidden" : 1,
									"id" : "obj-26",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 48 48 48",
									"patching_rect" : [ 431.0, 182.0, 88.0, 17.0 ],
									"fontname" : "Verdana",
									"numinlets" : 4,
									"hidden" : 1,
									"id" : "obj-27",
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.bcf2000.mxt[7]",
									"patching_rect" : [ 378.0, 8.0, 51.0, 316.0 ],
									"name" : "jalg.bcf2000.maxpat",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"id" : "obj-28",
									"numoutlets" : 0,
									"args" : [ "#0_", 8 ],
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.bcf2000.mxt[6]",
									"patching_rect" : [ 325.0, 8.0, 51.0, 316.0 ],
									"name" : "jalg.bcf2000.maxpat",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"id" : "obj-29",
									"numoutlets" : 0,
									"args" : [ "#0_", 7 ],
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.bcf2000.mxt[5]",
									"patching_rect" : [ 272.0, 8.0, 51.0, 316.0 ],
									"name" : "jalg.bcf2000.maxpat",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"id" : "obj-30",
									"numoutlets" : 0,
									"args" : [ "#0_", 6 ],
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.bcf2000.mxt[4]",
									"patching_rect" : [ 219.0, 8.0, 51.0, 316.0 ],
									"name" : "jalg.bcf2000.maxpat",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"id" : "obj-31",
									"numoutlets" : 0,
									"args" : [ "#0_", 5 ],
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.bcf2000.mxt[3]",
									"patching_rect" : [ 166.0, 8.0, 51.0, 316.0 ],
									"name" : "jalg.bcf2000.maxpat",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"id" : "obj-32",
									"numoutlets" : 0,
									"args" : [ "#0_", 4 ],
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.bcf2000.mxt[2]",
									"patching_rect" : [ 113.0, 8.0, 51.0, 316.0 ],
									"name" : "jalg.bcf2000.maxpat",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"id" : "obj-33",
									"numoutlets" : 0,
									"args" : [ "#0_", 3 ],
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.bcf2000.mxt[1]",
									"patching_rect" : [ 60.0, 8.0, 51.0, 316.0 ],
									"name" : "jalg.bcf2000.maxpat",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"id" : "obj-34",
									"numoutlets" : 0,
									"args" : [ "#0_", 2 ],
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.bcf2000.mxt",
									"patching_rect" : [ 7.0, 8.0, 51.0, 316.0 ],
									"name" : "jalg.bcf2000.maxpat",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"id" : "obj-35",
									"numoutlets" : 0,
									"args" : [ "#0_", 1 ],
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Buttons",
									"patching_rect" : [ 438.0, 273.0, 44.0, 17.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-36",
									"numoutlets" : 0,
									"frgb" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
									"textcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 431.0, 202.0, 106.0, 60.0 ],
									"rounded" : 0,
									"numinlets" : 1,
									"id" : "obj-37",
									"numoutlets" : 0,
									"border" : 1,
									"bgcolor" : [ 0.188235, 0.188235, 0.188235, 1.0 ],
									"bordercolor" : [ 0.517647, 0.517647, 0.517647, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 431.0, 264.0, 106.0, 60.0 ],
									"rounded" : 0,
									"numinlets" : 1,
									"id" : "obj-38",
									"numoutlets" : 0,
									"border" : 1,
									"bgcolor" : [ 0.188235, 0.188235, 0.188235, 1.0 ],
									"bordercolor" : [ 0.517647, 0.517647, 0.517647, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [ 449.5, 81.0, 440.5, 81.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [ 590.5, 135.0, 575.0, 135.0, 575.0, 133.0, 575.0, 132.0, 575.0, 85.0, 590.5, 85.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 1,
									"midpoints" : [ 590.5, 206.0, 575.0, 206.0, 575.0, 204.0, 575.0, 203.0, 575.0, 156.0, 590.5, 156.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1,
									"midpoints" : [ 590.5, 261.0, 575.0, 261.0, 575.0, 259.0, 575.0, 258.0, 575.0, 211.0, 590.5, 211.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [ 686.5, 135.0, 671.0, 135.0, 671.0, 133.0, 671.0, 132.0, 671.0, 85.0, 686.5, 85.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [ 686.5, 206.0, 671.0, 206.0, 671.0, 204.0, 671.0, 203.0, 671.0, 156.0, 686.5, 156.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [ 686.5, 261.0, 671.0, 261.0, 671.0, 259.0, 671.0, 258.0, 671.0, 211.0, 686.5, 211.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/preset\/store 1 default, \/preset\/write",
					"patching_rect" : [ 49.0, 72.0, 191.0, 15.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-13",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"patching_rect" : [ 119.0, 173.0, 43.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 0,
					"hidden" : 1,
					"id" : "obj-14",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "MIDI out:",
					"patching_rect" : [ 4.0, 43.0, 65.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-15",
					"numoutlets" : 0,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 119.0, 221.0, 45.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-16",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"patching_rect" : [ 119.0, 197.0, 78.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-17",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "midi_out",
					"text" : "jcom.parameter midi_out @priority 0 @description \"Port to send MIDI messages to.\"",
					"linecount" : 2,
					"patching_rect" : [ 386.0, 406.0, 231.0, 28.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-18",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"patching_rect" : [ 23.0, 364.0, 65.0, 26.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-19",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/init",
					"patching_rect" : [ 185.0, 89.0, 31.0, 15.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-20",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "MIDI in:",
					"patching_rect" : [ 4.0, 21.0, 65.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-21",
					"numoutlets" : 0,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.bcf2000 @size 1U-half @module_type control @inspector 1 @description \"A module interfacing with the Behringer BCF2000 motorized MIDI fader.\"",
					"linecount" : 2,
					"patching_rect" : [ 16.0, 114.0, 406.0, 28.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-22",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 16.0, 90.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"hidden" : 1,
					"id" : "obj-23",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 16.0, 316.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-24",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "midi_in",
					"text" : "jcom.parameter midi_in @priority 0 @description \"Port to receive MIDI messages on.\"",
					"linecount" : 2,
					"patching_rect" : [ 127.0, 406.0, 242.0, 28.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-25",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/midi_out BCF2000",
					"patching_rect" : [ 231.0, 290.0, 153.0, 15.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-26",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"patching_rect" : [ 231.0, 270.0, 61.0, 17.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-27",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/documentation\/generate",
					"patching_rect" : [ 56.0, 89.0, 125.0, 15.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-28",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "\/Jamoma",
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-30",
					"numoutlets" : 1,
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [ 58.5, 110.0, 25.5, 110.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [ 65.5, 110.0, 25.5, 110.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [ 194.5, 110.0, 25.5, 110.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [ 187.5, 260.0, 128.5, 260.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [ 136.5, 440.0, 119.0, 440.0, 119.0, 376.0, 136.5, 376.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [ 189.5, 400.0, 136.5, 400.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [ 187.5, 249.0, 240.5, 249.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [ 172.5, 347.0, 394.5, 347.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [ 395.5, 440.0, 379.0, 440.0, 379.0, 376.0, 394.5, 376.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [ 456.5, 401.0, 395.5, 401.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
