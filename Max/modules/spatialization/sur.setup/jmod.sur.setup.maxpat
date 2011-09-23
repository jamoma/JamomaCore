{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 1.0, 44.0, 1439.0, 732.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
		"bglocked" : 0,
		"defrect" : [ 1.0, 44.0, 1439.0, 732.0 ],
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
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 503.0, 400.0, 32.5, 19.0 ],
					"text" : "t f f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 501.0, 425.0, 32.5, 19.0 ],
					"text" : "- 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 500.0, 449.0, 56.0, 19.0 ],
					"text" : "sel 1. -1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "incdec",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 503.0, 372.0, 22.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 109.0, 43.0, 32.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.839216, 0.709804, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-22",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 561.0, 437.0, 556.0, 31.0 ],
					"text" : "jcom.message radius/dec @repetitions/allow 1 @type none @description \"change the radius of the speaker arrangement\" @priority 0",
					"varname" : "module_in[3]"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.839216, 0.709804, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-14",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 560.0, 400.0, 553.0, 31.0 ],
					"text" : "jcom.message radius/inc @repetitions/allow 1 @type none @description \"change the radius of the speaker arrangement\" @priority 0",
					"varname" : "module_in[2]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"id" : "obj-12",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 558.0, 285.0, 38.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 98.0, 1.0, 35.0, 17.0 ],
					"rounded" : 8.0,
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 540.0, 346.0, 150.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 107.0, 24.0, 40.0, 19.0 ],
					"text" : "radius"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 132.0, 248.0, 55.0, 19.0 ],
					"text" : "jcom.out"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 535.0, 308.0, 536.0, 19.0 ],
					"text" : "jcom.message dump @type generic @repetitions/allow 1 @description \"Bang to send all positions\""
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.913725, 0.913725, 0.913725, 0.0 ],
					"hint" : "dump",
					"id" : "obj-3",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.713726, 0.713726, 0.713726, 0.0 ],
					"patching_rect" : [ 535.0, 282.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-15",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 543.0, 245.0, 38.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.0, 43.0, 24.0, 19.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-29",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 583.0, 161.0, 339.0, 43.0 ],
					"text" : "jcom.message numSources @type integer @range/bounds 0 32 @repetitions/allow 1 @range/clipmode both @description \"alternative description of number of channels to display.\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-30",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 926.0, 162.0, 346.0, 43.0 ],
					"text" : "jcom.message numSpeakers @type integer @range/bounds 0 32 @repetitions/allow 1 @range/clipmode both @description \"alternative description of number of channels to display.\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-31",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 593.0, 245.0, 580.0, 31.0 ],
					"text" : "jcom.parameter numChannels @repetitions/allow 1 @type integer @range/bounds 0 32 @range/clipmode both @priority 2 @description \"Number of channels in the set.\"",
					"varname" : "voices[4]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1.0, 23.0, 53.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 24.0, 54.0, 19.0 ],
					"text" : "channels"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 486.0, 75.0, 77.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 54.0, 24.0, 38.0, 19.0 ],
					"text" : "type"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 490.0, 315.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 490.0, 315.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-1",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 21.0, 340.0, 34.0 ],
									"text" : "here you can type any note you want, that will help understand your patch and its current usability"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 484.0, 21.0, 113.0, 23.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}
,
					"text" : "p notes_&_bugs",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-2",
					"items" : [ "channel", ",", "microphone", ",", "source", ",", "speaker", ",", "sink" ],
					"labelclick" : 1,
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 485.0, 97.0, 87.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 31.0, 43.0, 67.0, 19.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.8, 0.839216, 0.709804, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 593.0, 97.0, 555.0, 19.0 ],
					"text" : "jcom.parameter type @repetitions/allow 0 @type string @description \"Type of instances\" @priority 1",
					"varname" : "module_in[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 53.0, 101.0, 189.0, 17.0 ],
					"text" : "preset/store 1 default, preset/write"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 18.0, 151.0, 426.0, 19.0 ],
					"text" : "jcom.hub @description \"Describe position of instances as sets of xyz coordinates.\"",
					"varname" : "jcom.hub[1]"
				}

			}
, 			{
				"box" : 				{
					"comment" : "message",
					"id" : "obj-38",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.0, 101.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "message",
					"id" : "obj-39",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 191.0, 22.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-43",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 78.0, 121.0, 135.0, 17.0 ],
					"text" : "documentation/generate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 5.0, 44.0, 581.0, 488.0 ],
						"bglocked" : 0,
						"defrect" : [ 5.0, 44.0, 581.0, 488.0 ],
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"title" : "sources setup",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 1,
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 914.0, 93.0, 124.0, 20.0 ],
									"text" : "sprintf title %ss setup"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 1,
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 923.0, 64.0, 188.0, 19.0 ],
									"text" : "jcom.oscroute /type /numChannels"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 1,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 660.0, 8.0, 59.0, 19.0 ],
									"text" : "jcom.thru"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"hidden" : 1,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "front", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 680.0, 548.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 680.0, 548.0, 600.0, 426.0 ],
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
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 172.0, 108.0, 19.0, 19.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 50.0, 144.0, 18.0 ],
													"text" : "jcom.oscroute /view/panel"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 9.873845,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "front" ],
													"patching_rect" : [ 50.0, 92.0, 40.0, 18.0 ],
													"text" : "t front"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-4",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-5",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 114.0, 19.0, 19.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-2", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-4", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 883.0, 38.0, 42.0, 18.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0
									}
,
									"text" : "p front"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 25 ],
									"hidden" : 1,
									"id" : "obj-10",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 302.0, 247.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 295.0, 253.0, 284.0, 31.0 ],
									"varname" : "ch25"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 24 ],
									"hidden" : 1,
									"id" : "obj-11",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 302.0, 218.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 295.0, 224.0, 284.0, 31.0 ],
									"varname" : "ch24"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 23 ],
									"hidden" : 1,
									"id" : "obj-12",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 302.0, 189.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 295.0, 195.0, 284.0, 31.0 ],
									"varname" : "ch23"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 22 ],
									"hidden" : 1,
									"id" : "obj-13",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 302.0, 160.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 295.0, 166.0, 284.0, 31.0 ],
									"varname" : "ch22"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 21 ],
									"hidden" : 1,
									"id" : "obj-14",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 302.0, 131.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 295.0, 137.0, 284.0, 31.0 ],
									"varname" : "ch21"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 20 ],
									"hidden" : 1,
									"id" : "obj-15",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 302.0, 102.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 295.0, 108.0, 284.0, 31.0 ],
									"varname" : "ch20"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 19 ],
									"hidden" : 1,
									"id" : "obj-16",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 302.0, 73.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 295.0, 79.0, 284.0, 31.0 ],
									"varname" : "ch19"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 18 ],
									"hidden" : 1,
									"id" : "obj-17",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 303.0, 44.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 295.0, 50.0, 284.0, 31.0 ],
									"varname" : "ch18"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 17 ],
									"hidden" : 1,
									"id" : "obj-18",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 302.0, 15.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 295.0, 21.0, 284.0, 31.0 ],
									"varname" : "ch17"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 1,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 127.0, 323.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 127.0, 323.0, 640.0, 480.0 ],
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
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 129.0, 161.0, 54.0, 19.0 ],
													"text" : "jcom.init"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-10",
													"linecount" : 4,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 397.0, 272.0, 104.0, 53.0 ],
													"text" : "window size 100 100 410 $1, window title, window exec"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 398.0, 205.0, 32.5, 19.0 ],
													"text" : "i 8"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 93.0, 235.0, 112.0, 19.0 ],
													"text" : "prepend script show"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 239.0, 235.0, 108.0, 19.0 ],
													"text" : "prepend script hide"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-16",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 198.0, 437.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 329.0, 185.0, 51.0, 19.0 ],
													"text" : "split 1 8"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "int", "int" ],
													"patching_rect" : [ 344.0, 90.0, 46.0, 19.0 ],
													"text" : "t b i i"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"patching_rect" : [ 308.0, 134.0, 46.0, 19.0 ],
													"text" : "uzi 32"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 411.0, 133.0, 35.0, 19.0 ],
													"text" : "> 16"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 398.0, 226.0, 33.0, 19.0 ],
													"text" : "* 29"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 398.0, 249.0, 41.0, 19.0 ],
													"text" : "+ 123"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 94.0, 211.0, 140.0, 19.0 ],
													"text" : "combine ch 1 @triggers 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 240.0, 212.0, 140.0, 19.0 ],
													"text" : "combine ch 1 @triggers 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-24",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 344.0, 28.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 412.0, 157.0, 196.0, 19.0 ],
													"text" : "sel 0 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-5",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 412.0, 333.0, 87.0, 41.0 ],
													"text" : "script hide x2, script hide y2, script hide z2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 418.0, 413.0, 59.0, 19.0 ],
													"text" : "jcom.thru"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-7",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 519.0, 334.0, 88.0, 41.0 ],
													"text" : "script show x2, script show y2, script show z2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 188.0, 289.0, 59.0, 19.0 ],
													"text" : "jcom.thru"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-9",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 503.0, 281.0, 127.0, 41.0 ],
													"text" : "window size 100 100 700 587, window title, window exec"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"color" : [ 0.87451, 0.25098, 0.717647, 1.0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"color" : [ 0.87451, 0.25098, 0.717647, 1.0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-17", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-18", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 2 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-18", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-18", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-19", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-3", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-3", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 1041.0, 92.0, 94.0, 20.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0
									}
,
									"text" : "p hideChannels"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"hidden" : 1,
									"id" : "obj-21",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 883.0, 5.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 1,
									"id" : "obj-22",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 937.0, 307.0, 231.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 21.0, 57.0, 231.0, 17.0 ],
									"text" : "window size 100 100 700 635, window exec"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 1,
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 937.0, 273.0, 263.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 21.0, 24.0, 263.0, 17.0 ],
									"text" : "window flags nogrow, savewindow 1, window exec"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 1,
									"id" : "obj-24",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 937.0, 290.0, 173.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 21.0, 40.0, 173.0, 17.0 ],
									"text" : "window flags grow, window exec"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"hidden" : 1,
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 852.0, 377.0, 65.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 21.0, 95.0, 65.0, 19.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 16 ],
									"hidden" : 1,
									"id" : "obj-28",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 450.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 456.0, 284.0, 31.0 ],
									"varname" : "ch16"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 15 ],
									"hidden" : 1,
									"id" : "obj-29",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 421.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 427.0, 284.0, 31.0 ],
									"varname" : "ch15"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 32 ],
									"hidden" : 1,
									"id" : "obj-3",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 302.0, 450.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 295.0, 456.0, 284.0, 31.0 ],
									"varname" : "ch32"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 14 ],
									"hidden" : 1,
									"id" : "obj-30",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 392.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 398.0, 284.0, 31.0 ],
									"varname" : "ch14"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 13 ],
									"hidden" : 1,
									"id" : "obj-31",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 363.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 369.0, 284.0, 31.0 ],
									"varname" : "ch13"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 12 ],
									"hidden" : 1,
									"id" : "obj-32",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 334.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 340.0, 284.0, 31.0 ],
									"varname" : "ch12"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 11 ],
									"hidden" : 1,
									"id" : "obj-33",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 305.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 311.0, 284.0, 31.0 ],
									"varname" : "ch11"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 10 ],
									"hidden" : 1,
									"id" : "obj-34",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 276.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 282.0, 284.0, 31.0 ],
									"varname" : "ch10"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 9 ],
									"hidden" : 1,
									"id" : "obj-35",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 247.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 253.0, 284.0, 31.0 ],
									"varname" : "ch9"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 8 ],
									"hidden" : 1,
									"id" : "obj-36",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 218.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 224.0, 284.0, 31.0 ],
									"varname" : "ch8"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 7 ],
									"hidden" : 1,
									"id" : "obj-37",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 189.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 195.0, 284.0, 31.0 ],
									"varname" : "ch7"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 6 ],
									"hidden" : 1,
									"id" : "obj-38",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 160.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 166.0, 284.0, 31.0 ],
									"varname" : "ch6"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 5 ],
									"hidden" : 1,
									"id" : "obj-39",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 131.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 137.0, 284.0, 31.0 ],
									"varname" : "ch5"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 31 ],
									"hidden" : 1,
									"id" : "obj-4",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 302.0, 421.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 295.0, 427.0, 284.0, 31.0 ],
									"varname" : "ch31"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 4 ],
									"id" : "obj-40",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 102.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 108.0, 284.0, 31.0 ],
									"varname" : "ch4"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 3 ],
									"id" : "obj-41",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 73.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 79.0, 284.0, 31.0 ],
									"varname" : "ch3"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 2 ],
									"id" : "obj-42",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 44.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 50.0, 284.0, 31.0 ],
									"varname" : "ch2"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 1 ],
									"id" : "obj-43",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 15.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 21.0, 284.0, 31.0 ],
									"varname" : "ch1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-45",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 620.0, 357.0, 150.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 136.0, 4.0, 26.0, 19.0 ],
									"text" : "x"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 30 ],
									"hidden" : 1,
									"id" : "obj-5",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 302.0, 392.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 295.0, 398.0, 284.0, 31.0 ],
									"varname" : "ch30"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-50",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 621.0, 383.0, 150.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 186.0, 4.0, 26.0, 19.0 ],
									"text" : "y"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-51",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 622.0, 293.0, 150.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 242.0, 4.0, 26.0, 19.0 ],
									"text" : "z"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 1,
									"id" : "obj-52",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 626.0, 268.0, 150.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 525.0, 4.0, 26.0, 19.0 ],
									"text" : "z",
									"varname" : "z2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 1,
									"id" : "obj-53",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 625.0, 244.0, 150.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 469.0, 4.0, 26.0, 19.0 ],
									"text" : "y",
									"varname" : "y2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"hidden" : 1,
									"id" : "obj-54",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 624.0, 331.0, 150.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 419.0, 4.0, 26.0, 19.0 ],
									"text" : "x",
									"varname" : "x2"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 29 ],
									"hidden" : 1,
									"id" : "obj-6",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 302.0, 363.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 295.0, 369.0, 284.0, 31.0 ],
									"varname" : "ch29"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 28 ],
									"hidden" : 1,
									"id" : "obj-7",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 302.0, 334.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 295.0, 340.0, 284.0, 31.0 ],
									"varname" : "ch28"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 27 ],
									"hidden" : 1,
									"id" : "obj-8",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 302.0, 305.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 295.0, 311.0, 284.0, 31.0 ],
									"varname" : "ch27"
								}

							}
, 							{
								"box" : 								{
									"args" : [ 26 ],
									"hidden" : 1,
									"id" : "obj-9",
									"lockeddragscroll" : 1,
									"maxclass" : "bpatcher",
									"name" : "jcom.sur.channel.xyz_setup.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 302.0, 276.0, 282.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 295.0, 282.0, 284.0, 31.0 ],
									"varname" : "ch26"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-19", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-46", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 131.0, 215.0, 68.0, 19.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}
,
					"text" : "p Inspector"
				}

			}
, 			{
				"box" : 				{
					"has_panel" : 1,
					"id" : "obj-24",
					"maxclass" : "jcom.ui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"text" : "/editing_this_module"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 131.0, 191.0, 46.0, 19.0 ],
					"text" : "jcom.in"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 62.5, 144.0, 27.5, 144.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-17", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-30", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 87.5, 144.0, 27.5, 144.0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-9", 1 ]
				}

			}
 ]
	}

}
