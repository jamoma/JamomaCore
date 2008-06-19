{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 153.0, 47.0, 793.0, 565.0 ],
		"bglocked" : 0,
		"defrect" : [ 153.0, 47.0, 793.0, 565.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.970939,
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
					"maxclass" : "comment",
					"text" : "%TODO: Add inspector for opening the bcf2000 subpatch",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-5",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 14.0, 476.0, 215.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend port",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 518.0, 461.0, 74.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0__outport",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 518.0, 486.0, 81.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend port",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 242.0, 461.0, 74.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0__inport",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-4",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 242.0, 486.0, 74.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 163.0, 341.0, 54.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "MIDIIN",
					"presentation" : 1,
					"items" : [  ],
					"labelclick" : 1,
					"fontname" : "Verdana",
					"types" : [  ],
					"numinlets" : 1,
					"id" : "obj-8",
					"numoutlets" : 3,
					"presentation_rect" : [ 70.0, 20.575001, 221.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 128.0, 400.0, 100.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "MIDIOUT",
					"presentation" : 1,
					"items" : [ "Microsoft Synthesizer", ",", "Synthé. SW table de sons GS Mic" ],
					"labelclick" : 1,
					"fontname" : "Verdana",
					"types" : [  ],
					"numinlets" : 1,
					"id" : "obj-9",
					"numoutlets" : 3,
					"presentation_rect" : [ 70.0, 41.575001, 221.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 407.0, 399.0, 100.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiinfo",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-10",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 127.0, 375.0, 49.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiinfo",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-11",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 407.0, 374.0, 49.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p bcf2000",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-12",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 119.0, 289.0, 64.0, 19.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 100.0, 100.0, 544.0, 332.0 ],
						"bgcolor" : [ 0.188235, 0.188235, 0.188235, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 100.0, 100.0, 544.0, 332.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "multislider",
									"varname" : "Dial1",
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"presentation" : 1,
									"slidercolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"orientation" : 0,
									"setminmax" : [ 0.0, 127.0 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"numinlets" : 1,
									"settype" : 0,
									"id" : "obj-12",
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"contdata" : 1,
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"numoutlets" : 2,
									"presentation_rect" : [ 492.0, 245.0, 36.0, 10.0 ],
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"outlettype" : [ "", "" ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 748.0, 115.0, 36.0, 10.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"presentation" : 1,
									"bgovercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
									"rounded" : 0.0,
									"bgoveroncolor" : [ 0.45098, 0.882353, 0.25098, 1.0 ],
									"fontname" : "Verdana",
									"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"bgoncolor" : [ 0.635294, 0.886275, 0.517647, 1.0 ],
									"id" : "obj-44",
									"mode" : 1,
									"numoutlets" : 3,
									"texton" : "",
									"presentation_rect" : [ 437.0, 295.0, 36.0, 10.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"text" : "",
									"outlettype" : [ "int", "", "int" ],
									"bgcolor" : [ 0.290196, 0.290196, 0.290196, 1.0 ],
									"patching_rect" : [ 652.0, 189.0, 36.0, 10.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"presentation" : 1,
									"bgovercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
									"rounded" : 0.0,
									"bgoveroncolor" : [ 0.45098, 0.882353, 0.25098, 1.0 ],
									"fontname" : "Verdana",
									"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"bgoncolor" : [ 0.635294, 0.886275, 0.517647, 1.0 ],
									"id" : "obj-43",
									"mode" : 1,
									"numoutlets" : 3,
									"texton" : "",
									"presentation_rect" : [ 492.0, 295.0, 36.0, 10.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"text" : "",
									"outlettype" : [ "int", "", "int" ],
									"bgcolor" : [ 0.290196, 0.290196, 0.290196, 1.0 ],
									"patching_rect" : [ 748.0, 189.0, 36.0, 10.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"presentation" : 1,
									"bgovercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
									"rounded" : 0.0,
									"bgoveroncolor" : [ 0.45098, 0.882353, 0.25098, 1.0 ],
									"fontname" : "Verdana",
									"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"bgoncolor" : [ 0.635294, 0.886275, 0.517647, 1.0 ],
									"id" : "obj-42",
									"mode" : 1,
									"numoutlets" : 3,
									"texton" : "",
									"presentation_rect" : [ 437.0, 245.0, 36.0, 10.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"text" : "",
									"outlettype" : [ "int", "", "int" ],
									"bgcolor" : [ 0.290196, 0.290196, 0.290196, 1.0 ],
									"patching_rect" : [ 652.0, 117.0, 36.0, 10.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"presentation" : 1,
									"bgovercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
									"rounded" : 0.0,
									"bgoveroncolor" : [ 0.45098, 0.882353, 0.25098, 1.0 ],
									"fontname" : "Verdana",
									"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"bgoncolor" : [ 0.635294, 0.886275, 0.517647, 1.0 ],
									"id" : "obj-40",
									"mode" : 1,
									"numoutlets" : 3,
									"texton" : "",
									"presentation_rect" : [ 492.0, 306.0, 36.0, 10.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"text" : "",
									"outlettype" : [ "int", "", "int" ],
									"bgcolor" : [ 0.290196, 0.290196, 0.290196, 1.0 ],
									"patching_rect" : [ 748.0, 242.0, 36.0, 10.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"presentation" : 1,
									"bgovercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
									"rounded" : 0.0,
									"bgoveroncolor" : [ 0.45098, 0.882353, 0.25098, 1.0 ],
									"fontname" : "Verdana",
									"borderoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"bgoncolor" : [ 0.635294, 0.886275, 0.517647, 1.0 ],
									"id" : "obj-39",
									"mode" : 1,
									"numoutlets" : 3,
									"texton" : "",
									"presentation_rect" : [ 437.0, 306.0, 36.0, 10.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"text" : "",
									"outlettype" : [ "int", "", "int" ],
									"bgcolor" : [ 0.290196, 0.290196, 0.290196, 1.0 ],
									"patching_rect" : [ 652.0, 242.0, 36.0, 10.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[4]",
									"text" : "p Foot_Switch",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-1",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 652.0, 91.0, 79.0, 18.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 366.0, 305.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 366.0, 305.0 ],
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
													"text" : "* 127",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-1",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 186.0, 169.0, 38.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 64",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-2",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 69.0, 82.0, 33.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-3",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__outport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-4",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"patching_rect" : [ 203.0, 199.0, 79.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-5",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"patching_rect" : [ 69.0, 27.0, 72.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlout 93 1",
													"fontname" : "Verdana",
													"numinlets" : 3,
													"id" : "obj-6",
													"numoutlets" : 0,
													"fontsize" : 9.873845,
													"patching_rect" : [ 186.0, 225.0, 62.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 93 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-7",
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 69.0, 53.0, 55.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "foot/switch",
													"text" : "jcom.parameter foot/switch @type msg_toggle @repetitions/allow 1 @ramp/drive none @priority 1 @description \"Foot Pedal: Switch.\"",
													"linecount" : 2,
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-8",
													"numoutlets" : 3,
													"fontsize" : 9.873845,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 46.0, 127.0, 345.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-9",
													"numoutlets" : 0,
													"patching_rect" : [ 46.0, 161.0, 15.0, 15.0 ],
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
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
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
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
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[2]",
									"text" : "p Button_4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 748.0, 217.0, 64.0, 18.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 350.0, 303.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 350.0, 303.0 ],
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
													"text" : "* 127",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-1",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 176.0, 168.0, 38.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 64",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-2",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 69.0, 94.0, 33.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-3",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__outport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-4",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"patching_rect" : [ 195.0, 190.0, 79.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-5",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"patching_rect" : [ 69.0, 27.0, 72.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlout 92 1",
													"fontname" : "Verdana",
													"numinlets" : 3,
													"id" : "obj-6",
													"numoutlets" : 0,
													"fontsize" : 9.873845,
													"patching_rect" : [ 176.0, 215.0, 62.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 92 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-7",
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 69.0, 63.0, 55.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "button/4",
													"text" : "jcom.parameter button/4 @type msg_toggle @repetitions/allow 1 @ramp/drive none @priority 1 @description \"Button 4.\"",
													"linecount" : 2,
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-8",
													"numoutlets" : 3,
													"fontsize" : 9.873845,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 46.0, 127.0, 330.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-9",
													"numoutlets" : 0,
													"patching_rect" : [ 46.0, 161.0, 15.0, 15.0 ],
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
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
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-8", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[3]",
									"text" : "p Button_2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-5",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 748.0, 162.0, 64.0, 18.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 350.0, 315.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 350.0, 315.0 ],
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
													"text" : "* 127",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-1",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 165.0, 175.0, 38.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 64",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-2",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 69.0, 90.0, 33.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-3",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__outport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-4",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"patching_rect" : [ 179.0, 209.0, 79.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-5",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"patching_rect" : [ 69.0, 27.0, 72.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlout 90 1",
													"fontname" : "Verdana",
													"numinlets" : 3,
													"id" : "obj-6",
													"numoutlets" : 0,
													"fontsize" : 9.873845,
													"patching_rect" : [ 165.0, 236.0, 62.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 90 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-7",
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 69.0, 60.0, 55.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "button/2",
													"text" : "jcom.parameter button/2 @type msg_toggle @repetitions/allow 1 @ramp/drive none @description \"Button 2.\"",
													"linecount" : 2,
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-8",
													"numoutlets" : 3,
													"fontsize" : 9.873845,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 46.0, 127.0, 330.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-9",
													"numoutlets" : 0,
													"patching_rect" : [ 46.0, 161.0, 15.0, 15.0 ],
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
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
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
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
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"presentation" : 1,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"hidden" : 1,
									"id" : "obj-7",
									"numoutlets" : 1,
									"presentation_rect" : [ 440.0, 51.0, 103.0, 28.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 440.0, 51.0, 103.0, 28.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 100 100 644 432, window flags nogrow, window exec, savewindow 1",
									"linecount" : 6,
									"presentation_linecount" : 6,
									"presentation" : 1,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"hidden" : 1,
									"id" : "obj-8",
									"numoutlets" : 1,
									"presentation_rect" : [ 440.0, 83.0, 94.0, 76.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 440.0, 83.0, 94.0, 76.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p front",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-9",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "front" ],
									"patching_rect" : [ 431.0, 31.0, 42.0, 18.0 ],
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
													"maxclass" : "newobj",
													"text" : "sel 1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"hidden" : 1,
													"id" : "obj-1",
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 50.0, 71.0, 32.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /open_inspector",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"hidden" : 1,
													"id" : "obj-2",
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 50.0, 163.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t front",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"hidden" : 1,
													"id" : "obj-3",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "front" ],
													"patching_rect" : [ 50.0, 92.0, 40.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-4",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-5",
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 114.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Control",
									"presentation" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"frgb" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
									"id" : "obj-10",
									"textcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
									"numoutlets" : 0,
									"presentation_rect" : [ 490.0, 228.0, 44.0, 18.0 ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 490.0, 228.0, 44.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Switch",
									"presentation" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"frgb" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
									"id" : "obj-11",
									"textcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
									"numoutlets" : 0,
									"presentation_rect" : [ 438.0, 228.0, 43.0, 18.0 ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 438.0, 228.0, 43.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[1]",
									"text" : "p Foot_Control",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-13",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 748.0, 91.0, 82.0, 18.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 499.0, 296.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 499.0, 296.0 ],
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
													"text" : "prepend set 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-1",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"patching_rect" : [ 46.0, 198.0, 77.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-2",
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 46.0, 175.0, 53.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-3",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"patching_rect" : [ 96.0, 76.0, 68.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-4",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__outport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-5",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"patching_rect" : [ 224.0, 179.0, 79.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-6",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"patching_rect" : [ 69.0, 27.0, 72.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlout 94 1",
													"fontname" : "Verdana",
													"numinlets" : 3,
													"id" : "obj-7",
													"numoutlets" : 0,
													"fontsize" : 9.873845,
													"patching_rect" : [ 210.0, 206.0, 62.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 94 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-8",
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 69.0, 103.0, 55.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "foot/control",
													"text" : "jcom.parameter foot/control @type msg_int @range/bounds 0 127 @range/clipmode both @repetitions/allow 1 @ramp/drive scheduler @priority 1 @description \"Foot Pedal: Continuous Controller.\"",
													"linecount" : 3,
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-9",
													"numoutlets" : 3,
													"fontsize" : 9.873845,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 46.0, 127.0, 350.0, 42.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-10",
													"numoutlets" : 0,
													"patching_rect" : [ 46.0, 219.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 1 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-2", 0 ],
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Foot",
									"presentation" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"frgb" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
									"id" : "obj-16",
									"textcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
									"numoutlets" : 0,
									"presentation_rect" : [ 438.0, 210.0, 30.0, 18.0 ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 438.0, 210.0, 30.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[10]",
									"text" : "p Button_3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-21",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 652.0, 217.0, 64.0, 18.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 364.0, 285.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 364.0, 285.0 ],
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
													"text" : "* 127",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-1",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 176.0, 164.0, 38.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 64",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-2",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 69.0, 102.0, 33.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-3",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__outport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-4",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"patching_rect" : [ 190.0, 190.0, 79.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-5",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"patching_rect" : [ 69.0, 27.0, 72.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlout 91 1",
													"fontname" : "Verdana",
													"numinlets" : 3,
													"id" : "obj-6",
													"numoutlets" : 0,
													"fontsize" : 9.873845,
													"patching_rect" : [ 176.0, 217.0, 62.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 91 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-7",
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 69.0, 78.0, 55.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "button/3",
													"text" : "jcom.parameter button/3 @type msg_toggle @repetitions/allow 1 @ramp/drive none @priority 1 @description \"Button 3.\"",
													"linecount" : 2,
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-8",
													"numoutlets" : 3,
													"fontsize" : 9.873845,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 46.0, 127.0, 330.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-9",
													"numoutlets" : 0,
													"patching_rect" : [ 46.0, 161.0, 15.0, 15.0 ],
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
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
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-8", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sub patch[9]",
									"text" : "p Button_1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-23",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 652.0, 162.0, 64.0, 18.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 349.0, 310.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 349.0, 310.0 ],
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
													"text" : "> 64",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-1",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 69.0, 86.0, 33.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 127",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"id" : "obj-2",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 176.0, 164.0, 38.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-3",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 46.0, 27.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__outport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-4",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"patching_rect" : [ 193.0, 194.0, 79.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__inport",
													"fontname" : "Verdana",
													"numinlets" : 0,
													"id" : "obj-5",
													"numoutlets" : 1,
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"patching_rect" : [ 69.0, 33.0, 72.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlout 89 1",
													"fontname" : "Verdana",
													"numinlets" : 3,
													"id" : "obj-6",
													"numoutlets" : 0,
													"fontsize" : 9.873845,
													"patching_rect" : [ 176.0, 222.0, 62.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "ctlin 89 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-7",
													"numoutlets" : 2,
													"fontsize" : 9.873845,
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 69.0, 56.0, 55.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "button/1",
													"text" : "jcom.parameter button/1 @type msg_toggle @repetitions/allow 1 @ramp/drive none @priority 1 @description \"Button 1.\"",
													"linecount" : 2,
													"fontname" : "Verdana",
													"numinlets" : 1,
													"id" : "obj-8",
													"numoutlets" : 3,
													"fontsize" : 9.873845,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 46.0, 127.0, 330.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-9",
													"numoutlets" : 0,
													"patching_rect" : [ 46.0, 161.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
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
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-1", 0 ],
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
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-8", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-25",
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 431.0, 162.0, 64.0, 18.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-26",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 431.0, 13.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 48 48 48",
									"fontname" : "Verdana",
									"numinlets" : 4,
									"id" : "obj-27",
									"numoutlets" : 0,
									"fontsize" : 9.873845,
									"patching_rect" : [ 431.0, 182.0, 93.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.bcf2000[7]",
									"presentation" : 1,
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"args" : [ "#0_", 8 ],
									"id" : "obj-28",
									"numoutlets" : 0,
									"presentation_rect" : [ 378.0, 8.0, 51.0, 316.0 ],
									"name" : "jalg.bcf2000.maxpat",
									"patching_rect" : [ 378.0, 8.0, 51.0, 316.0 ],
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.bcf2000[6]",
									"presentation" : 1,
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"args" : [ "#0_", 7 ],
									"id" : "obj-29",
									"numoutlets" : 0,
									"presentation_rect" : [ 325.0, 8.0, 51.0, 316.0 ],
									"name" : "jalg.bcf2000.maxpat",
									"patching_rect" : [ 325.0, 8.0, 51.0, 316.0 ],
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.bcf2000[5]",
									"presentation" : 1,
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"args" : [ "#0_", 6 ],
									"id" : "obj-30",
									"numoutlets" : 0,
									"presentation_rect" : [ 272.0, 8.0, 51.0, 316.0 ],
									"name" : "jalg.bcf2000.maxpat",
									"patching_rect" : [ 272.0, 8.0, 51.0, 316.0 ],
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.bcf2000[4]",
									"presentation" : 1,
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"args" : [ "#0_", 5 ],
									"id" : "obj-31",
									"numoutlets" : 0,
									"presentation_rect" : [ 219.0, 8.0, 51.0, 316.0 ],
									"name" : "jalg.bcf2000.maxpat",
									"patching_rect" : [ 219.0, 8.0, 51.0, 316.0 ],
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.bcf2000[3]",
									"presentation" : 1,
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"args" : [ "#0_", 4 ],
									"id" : "obj-32",
									"numoutlets" : 0,
									"presentation_rect" : [ 166.0, 8.0, 51.0, 316.0 ],
									"name" : "jalg.bcf2000.maxpat",
									"patching_rect" : [ 166.0, 8.0, 51.0, 316.0 ],
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.bcf2000[2]",
									"presentation" : 1,
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"args" : [ "#0_", 3 ],
									"id" : "obj-33",
									"numoutlets" : 0,
									"presentation_rect" : [ 113.0, 8.0, 51.0, 316.0 ],
									"name" : "jalg.bcf2000.maxpat",
									"patching_rect" : [ 113.0, 8.0, 51.0, 316.0 ],
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.bcf2000[1]",
									"presentation" : 1,
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"args" : [ "#0_", 2 ],
									"id" : "obj-34",
									"numoutlets" : 0,
									"presentation_rect" : [ 60.0, 8.0, 51.0, 316.0 ],
									"name" : "jalg.bcf2000.maxpat",
									"patching_rect" : [ 60.0, 8.0, 51.0, 316.0 ],
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jalg.bcf2000",
									"presentation" : 1,
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"args" : [ "#0_", 1 ],
									"id" : "obj-35",
									"numoutlets" : 0,
									"presentation_rect" : [ 7.0, 8.0, 51.0, 316.0 ],
									"name" : "jalg.bcf2000.maxpat",
									"patching_rect" : [ 7.0, 8.0, 51.0, 316.0 ],
									"frozen_box_attributes" : [ "args" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Buttons",
									"presentation" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"frgb" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
									"id" : "obj-36",
									"textcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
									"numoutlets" : 0,
									"presentation_rect" : [ 438.0, 273.0, 47.0, 18.0 ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 438.0, 273.0, 47.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"presentation" : 1,
									"rounded" : 0,
									"numinlets" : 1,
									"id" : "obj-37",
									"numoutlets" : 0,
									"presentation_rect" : [ 431.0, 202.0, 106.0, 60.0 ],
									"border" : 1,
									"bordercolor" : [ 0.517647, 0.517647, 0.517647, 1.0 ],
									"bgcolor" : [ 0.188235, 0.188235, 0.188235, 1.0 ],
									"patching_rect" : [ 431.0, 202.0, 106.0, 60.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"presentation" : 1,
									"rounded" : 0,
									"numinlets" : 1,
									"id" : "obj-38",
									"numoutlets" : 0,
									"presentation_rect" : [ 431.0, 264.0, 106.0, 60.0 ],
									"border" : 1,
									"bordercolor" : [ 0.517647, 0.517647, 0.517647, 1.0 ],
									"bgcolor" : [ 0.188235, 0.188235, 0.188235, 1.0 ],
									"patching_rect" : [ 431.0, 264.0, 106.0, 60.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 757.5, 126.0, 744.0, 126.0, 744.0, 87.0, 757.5, 87.0 ]
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
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 661.5, 129.0, 639.0, 129.0, 639.0, 87.0, 661.5, 87.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 757.5, 201.0, 735.0, 201.0, 735.0, 159.0, 757.5, 159.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 661.5, 201.0, 639.0, 201.0, 639.0, 159.0, 661.5, 159.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 661.5, 252.0, 639.0, 252.0, 639.0, 213.0, 661.5, 213.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 757.5, 252.0, 735.0, 252.0, 735.0, 213.0, 757.5, 213.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 449.5, 81.0, 440.5, 81.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-13",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"patching_rect" : [ 49.0, 91.0, 196.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-14",
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 119.0, 192.0, 46.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "MIDI out:",
					"presentation" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-15",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 10.0, 43.0, 65.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 4.0, 43.0, 65.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-16",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 119.0, 240.0, 49.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-17",
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 119.0, 216.0, 87.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "midi_out",
					"text" : "jcom.parameter midi_out @priority 0 @description \"Port to send MIDI messages to.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-18",
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 407.0, 425.0, 245.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-20",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 194.0, 108.0, 32.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "MIDI in:",
					"presentation" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-21",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 10.0, 21.0, 65.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 4.0, 21.0, 65.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.bcf2000 @module_type control @inspector 1 @description \"A module interfacing with the Behringer BCF2000 motorized MIDI fader.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-22",
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 16.0, 133.0, 598.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-23",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 16.0, 100.0, 24.0, 24.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-24",
					"numoutlets" : 0,
					"patching_rect" : [ 16.0, 335.0, 24.0, 24.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "midi_in",
					"text" : "jcom.parameter midi_in @priority 0 @description \"Port to receive MIDI messages on.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-25",
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 127.0, 425.0, 261.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/ui/freeze 0",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-26",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 231.0, 309.0, 153.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-27",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 231.0, 289.0, 68.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-28",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"patching_rect" : [ 56.0, 108.0, 137.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module.1",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-30",
					"numoutlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 58.5, 129.0, 25.5, 129.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 65.5, 129.0, 25.5, 129.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 203.5, 129.0, 25.5, 129.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 416.5, 456.0, 393.0, 456.0, 393.0, 396.0, 416.5, 396.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 136.5, 456.0, 114.0, 456.0, 114.0, 396.0, 137.5, 396.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-25", 0 ],
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
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 172.5, 366.0, 416.5, 366.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 196.5, 268.0, 240.5, 268.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 196.5, 279.0, 128.5, 279.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
