{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 29.0, 44.0, 1140.0, 642.0 ],
		"bglocked" : 0,
		"defrect" : [ 29.0, 44.0, 1140.0, 642.0 ],
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
					"text" : "prepend /numInstances",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"patching_rect" : [ 502.0, 338.0, 131.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "parameters source.#/position or speaker.#/position are created inside the bpatchers, in the inspector -- which should probably be changed",
					"linecount" : 2,
					"numoutlets" : 0,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-50",
					"fontname" : "Verdana",
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"patching_rect" : [ 312.0, 368.0, 388.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/numInstances",
					"numoutlets" : 0,
					"bgcolor" : [ 0.141176, 0.141176, 0.141176, 1.0 ],
					"textcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"presentation_rect" : [ 0.0, 24.0, 87.0, 19.0 ],
					"frgb" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"patching_rect" : [ 261.0, 192.0, 85.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/type",
					"numoutlets" : 0,
					"bgcolor" : [ 0.141176, 0.141176, 0.141176, 1.0 ],
					"textcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"presentation_rect" : [ 109.0, 24.0, 38.0, 19.0 ],
					"frgb" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"patching_rect" : [ 372.0, 43.0, 77.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p notes_&_bugs",
					"numoutlets" : 0,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"patching_rect" : [ 484.0, 21.0, 113.0, 23.0 ],
					"fontsize" : 14.0,
					"numinlets" : 0,
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
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "here you can type any note you want, that will help understand your patch and its current usability",
									"linecount" : 2,
									"numoutlets" : 0,
									"id" : "obj-1",
									"fontname" : "Arial",
									"patching_rect" : [ 20.0, 21.0, 340.0, 34.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"types" : [  ],
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"presentation_rect" : [ 57.0, 43.0, 87.0, 19.0 ],
					"labelclick" : 1,
					"patching_rect" : [ 371.0, 65.0, 87.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1,
					"items" : [ "speaker", ",", "source" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_in[1]",
					"text" : "jcom.parameter type @repetitions/allow 0 @type msg_symbol @description \"Type of instances\" @priority 1",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-86",
					"fontname" : "Verdana",
					"patching_rect" : [ 479.0, 63.0, 555.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"color" : [ 0.8, 0.839216, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "preset/store 1 default, preset/write",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"patching_rect" : [ 53.0, 101.0, 189.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub[1]",
					"text" : "jcom.hub @description \"Describe position of instances as sets of xyz coordinates.\"",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-37",
					"fontname" : "Verdana",
					"patching_rect" : [ 18.0, 151.0, 426.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-38",
					"patching_rect" : [ 18.0, 101.0, 22.0, 22.0 ],
					"numinlets" : 0,
					"comment" : "message"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-39",
					"patching_rect" : [ 18.0, 191.0, 22.0, 22.0 ],
					"numinlets" : 1,
					"comment" : "message"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "documentation/generate",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-43",
					"fontname" : "Verdana",
					"patching_rect" : [ 78.0, 121.0, 135.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Inspector",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"patching_rect" : [ 239.0, 374.0, 68.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
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
									"text" : "jcom.oscroute /type /numInstances",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-26",
									"fontname" : "Verdana",
									"hidden" : 1,
									"presentation_rect" : [ 1026.0, 67.0, 191.0, 19.0 ],
									"patching_rect" : [ 912.0, 28.0, 191.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p front",
									"numoutlets" : 2,
									"outlettype" : [ "front", "" ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"hidden" : 1,
									"patching_rect" : [ 889.0, 5.0, 42.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 840.0, 548.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 840.0, 548.0, 600.0, 426.0 ],
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
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-1",
													"patching_rect" : [ 172.0, 108.0, 19.0, 19.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /panel/open",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"patching_rect" : [ 50.0, 50.0, 144.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t front",
													"numoutlets" : 1,
													"outlettype" : [ "front" ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"patching_rect" : [ 50.0, 92.0, 40.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-5",
													"patching_rect" : [ 50.0, 114.0, 19.0, 19.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-1", 0 ],
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontname" : "Verdana",
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch25",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"hidden" : 1,
									"presentation_rect" : [ 295.0, 253.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 302.0, 247.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 25 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch24",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"hidden" : 1,
									"presentation_rect" : [ 295.0, 224.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 302.0, 218.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 24 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch23",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"hidden" : 1,
									"presentation_rect" : [ 295.0, 195.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 302.0, 189.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 23 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch22",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"hidden" : 1,
									"presentation_rect" : [ 295.0, 166.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 302.0, 160.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 22 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch21",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-14",
									"hidden" : 1,
									"presentation_rect" : [ 295.0, 137.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 302.0, 131.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 21 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch20",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"hidden" : 1,
									"presentation_rect" : [ 295.0, 108.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 302.0, 102.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 20 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch19",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"hidden" : 1,
									"presentation_rect" : [ 295.0, 79.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 302.0, 73.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 19 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch18",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-17",
									"hidden" : 1,
									"presentation_rect" : [ 295.0, 50.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 303.0, 44.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 18 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch17",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"hidden" : 1,
									"presentation_rect" : [ 295.0, 21.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 302.0, 15.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 17 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p hideChannels",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"hidden" : 1,
									"patching_rect" : [ 1000.0, 60.0, 94.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 393.0, 374.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 393.0, 374.0, 640.0, 480.0 ],
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
													"text" : "jcom.init",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"patching_rect" : [ 129.0, 161.0, 54.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window size 100 100 410 $1, window title, window exec",
													"linecount" : 4,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-10",
													"fontname" : "Verdana",
													"patching_rect" : [ 397.0, 272.0, 97.0, 53.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i 8",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"id" : "obj-12",
													"fontname" : "Verdana",
													"patching_rect" : [ 398.0, 205.0, 32.5, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend script show",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-14",
													"fontname" : "Verdana",
													"patching_rect" : [ 93.0, 235.0, 112.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend script hide",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-15",
													"fontname" : "Verdana",
													"patching_rect" : [ 239.0, 235.0, 108.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-16",
													"patching_rect" : [ 198.0, 437.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "split 1 8",
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"id" : "obj-17",
													"fontname" : "Verdana",
													"patching_rect" : [ 329.0, 185.0, 51.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i i",
													"numoutlets" : 3,
													"outlettype" : [ "bang", "int", "int" ],
													"id" : "obj-18",
													"fontname" : "Verdana",
													"patching_rect" : [ 344.0, 90.0, 46.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 32",
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"id" : "obj-19",
													"fontname" : "Verdana",
													"patching_rect" : [ 308.0, 134.0, 46.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 16",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"patching_rect" : [ 411.0, 133.0, 35.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 29",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"id" : "obj-20",
													"fontname" : "Verdana",
													"patching_rect" : [ 398.0, 226.0, 33.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 123",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"id" : "obj-21",
													"fontname" : "Verdana",
													"patching_rect" : [ 398.0, 249.0, 41.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "combine ch 1 @triggers 1",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-22",
													"fontname" : "Verdana",
													"patching_rect" : [ 94.0, 211.0, 140.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "combine ch 1 @triggers 1",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-23",
													"fontname" : "Verdana",
													"patching_rect" : [ 240.0, 212.0, 140.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-24",
													"patching_rect" : [ 344.0, 28.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1",
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"patching_rect" : [ 412.0, 157.0, 196.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script hide x2, script hide y2, script hide z2",
													"linecount" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"patching_rect" : [ 412.0, 333.0, 87.0, 41.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.thru",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"patching_rect" : [ 418.0, 413.0, 59.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script show x2, script show y2, script show z2",
													"linecount" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"patching_rect" : [ 519.0, 334.0, 88.0, 41.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.thru",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"patching_rect" : [ 188.0, 289.0, 59.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window size 100 100 700 587, window title, window exec",
													"linecount" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"patching_rect" : [ 503.0, 278.0, 144.0, 41.0 ],
													"fontsize" : 10.0,
													"numinlets" : 2
												}

											}
 ],
										"lines" : [ 											{
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"color" : [ 0.87451, 0.25098, 0.717647, 1.0 ],
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
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-22", 1 ],
													"hidden" : 0,
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
													"source" : [ "obj-18", 2 ],
													"destination" : [ "obj-12", 1 ],
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
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-19", 0 ],
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
													"source" : [ "obj-19", 2 ],
													"destination" : [ "obj-17", 0 ],
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
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
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
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-14", 0 ],
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
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-18", 0 ],
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
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-9", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-16", 0 ],
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
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-16", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontname" : "Verdana",
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-20",
									"hidden" : 1,
									"patching_rect" : [ 782.0, 104.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-21",
									"hidden" : 1,
									"patching_rect" : [ 889.0, -28.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 100 100 700 635, window exec",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"hidden" : 1,
									"presentation_rect" : [ 21.0, 57.0, 231.0, 17.0 ],
									"patching_rect" : [ 937.0, 307.0, 231.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"hidden" : 1,
									"presentation_rect" : [ 21.0, 24.0, 263.0, 17.0 ],
									"patching_rect" : [ 937.0, 273.0, 263.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-24",
									"fontname" : "Verdana",
									"hidden" : 1,
									"presentation_rect" : [ 21.0, 40.0, 173.0, 17.0 ],
									"patching_rect" : [ 937.0, 290.0, 173.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"hidden" : 1,
									"presentation_rect" : [ 21.0, 95.0, 65.0, 19.0 ],
									"patching_rect" : [ 852.0, 377.0, 65.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "grow", "close", "zoom", "nofloat", "menu", "minimize", ";", "#Q", "window", "constrain", 2, 2, 32768, 32768, ";", "#Q", "window", "size", 100, 100, 410, 355, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch16",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-28",
									"hidden" : 1,
									"presentation_rect" : [ 8.0, 456.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 15.0, 450.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 16 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch15",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-29",
									"hidden" : 1,
									"presentation_rect" : [ 8.0, 427.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 15.0, 421.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 15 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch32",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"hidden" : 1,
									"presentation_rect" : [ 295.0, 456.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 302.0, 450.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 32 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch14",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-30",
									"hidden" : 1,
									"presentation_rect" : [ 8.0, 398.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 15.0, 392.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 14 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch13",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-31",
									"hidden" : 1,
									"presentation_rect" : [ 8.0, 369.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 15.0, 363.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 13 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch12",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-32",
									"hidden" : 1,
									"presentation_rect" : [ 8.0, 340.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 15.0, 334.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 12 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch11",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-33",
									"hidden" : 1,
									"presentation_rect" : [ 8.0, 311.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 15.0, 305.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 11 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch10",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-34",
									"hidden" : 1,
									"presentation_rect" : [ 8.0, 282.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 15.0, 276.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 10 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch9",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-35",
									"hidden" : 1,
									"presentation_rect" : [ 8.0, 253.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 15.0, 247.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 9 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch8",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-36",
									"presentation_rect" : [ 8.0, 224.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 15.0, 218.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 8 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch7",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-37",
									"presentation_rect" : [ 8.0, 195.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 15.0, 189.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 7 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch6",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-38",
									"presentation_rect" : [ 8.0, 166.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 15.0, 160.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 6 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch5",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-39",
									"presentation_rect" : [ 8.0, 137.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 15.0, 131.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 5 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch31",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"hidden" : 1,
									"presentation_rect" : [ 295.0, 427.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 302.0, 421.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 31 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch4",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-40",
									"presentation_rect" : [ 8.0, 108.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 15.0, 102.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 4 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch3",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-41",
									"presentation_rect" : [ 8.0, 79.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 15.0, 73.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 3 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch2",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-42",
									"presentation_rect" : [ 8.0, 50.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 15.0, 44.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 2 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-43",
									"presentation_rect" : [ 8.0, 21.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 15.0, 15.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 1 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "x",
									"numoutlets" : 0,
									"id" : "obj-45",
									"fontname" : "Verdana",
									"presentation_rect" : [ 136.0, 4.0, 26.0, 19.0 ],
									"patching_rect" : [ 620.0, 357.0, 150.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch30",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"hidden" : 1,
									"presentation_rect" : [ 295.0, 398.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 302.0, 392.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 30 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "y",
									"numoutlets" : 0,
									"id" : "obj-50",
									"fontname" : "Verdana",
									"presentation_rect" : [ 186.0, 4.0, 26.0, 19.0 ],
									"patching_rect" : [ 621.0, 383.0, 150.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "z",
									"numoutlets" : 0,
									"id" : "obj-51",
									"fontname" : "Verdana",
									"presentation_rect" : [ 242.0, 4.0, 26.0, 19.0 ],
									"patching_rect" : [ 622.0, 293.0, 150.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"varname" : "z2",
									"text" : "z",
									"numoutlets" : 0,
									"id" : "obj-52",
									"fontname" : "Verdana",
									"hidden" : 1,
									"presentation_rect" : [ 525.0, 4.0, 26.0, 19.0 ],
									"patching_rect" : [ 626.0, 268.0, 150.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"varname" : "y2",
									"text" : "y",
									"numoutlets" : 0,
									"id" : "obj-53",
									"fontname" : "Verdana",
									"hidden" : 1,
									"presentation_rect" : [ 469.0, 4.0, 26.0, 19.0 ],
									"patching_rect" : [ 625.0, 244.0, 150.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"varname" : "x2",
									"text" : "x",
									"numoutlets" : 0,
									"id" : "obj-54",
									"fontname" : "Verdana",
									"hidden" : 1,
									"presentation_rect" : [ 419.0, 4.0, 26.0, 19.0 ],
									"patching_rect" : [ 624.0, 331.0, 150.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch29",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"hidden" : 1,
									"presentation_rect" : [ 295.0, 369.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 302.0, 363.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 29 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch28",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"hidden" : 1,
									"presentation_rect" : [ 295.0, 340.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 302.0, 334.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 28 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch27",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"hidden" : 1,
									"presentation_rect" : [ 295.0, 311.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 302.0, 305.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 27 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "ch26",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"hidden" : 1,
									"presentation_rect" : [ 295.0, 282.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 302.0, 276.0, 282.0, 23.0 ],
									"presentation" : 1,
									"args" : [ 26 ],
									"numinlets" : 1,
									"name" : "jcom.sur.channel.xyz_setup.maxpat"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-25", 0 ],
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
									"source" : [ "obj-42", 0 ],
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
									"source" : [ "obj-40", 0 ],
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
									"source" : [ "obj-38", 0 ],
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
									"source" : [ "obj-36", 0 ],
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
									"source" : [ "obj-34", 0 ],
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
									"source" : [ "obj-32", 0 ],
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
									"source" : [ "obj-30", 0 ],
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
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"patching_rect" : [ 502.0, 316.0, 53.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"presentation_rect" : [ 9.0, 43.0, 38.0, 19.0 ],
					"triangle" : 0,
					"patching_rect" : [ 220.0, 195.0, 38.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p jalg.sur.speaker.setup",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"patching_rect" : [ 119.0, 422.0, 139.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 593.0, 78.0, 847.0, 743.0 ],
						"bglocked" : 0,
						"defrect" : [ 593.0, 78.0, 847.0, 743.0 ],
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
									"maxclass" : "comment",
									"text" : "parameters source.#/position or speaker.#/position are created inside the bpatchers, in the inspector -- which should probably be changed",
									"linecount" : 2,
									"numoutlets" : 0,
									"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"id" : "obj-50",
									"fontname" : "Verdana",
									"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"patching_rect" : [ 273.0, 26.0, 388.0, 31.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-1",
									"patching_rect" : [ 245.0, 570.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"patching_rect" : [ 245.0, 278.0, 38.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t dump i",
									"numoutlets" : 2,
									"outlettype" : [ "dump", "int" ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"patching_rect" : [ 13.0, 186.0, 51.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"patching_rect" : [ 270.0, 237.0, 53.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
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
									"id" : "obj-13",
									"fontname" : "Verdana",
									"patching_rect" : [ 270.0, 198.0, 39.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"patching_rect" : [ 270.0, 179.0, 21.0, 17.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"patching_rect" : [ 138.0, 393.0, 117.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : ">",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"patching_rect" : [ 273.0, 336.0, 27.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"patching_rect" : [ 273.0, 305.0, 21.0, 17.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"patching_rect" : [ 245.0, 27.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /numInstances",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"patching_rect" : [ 13.0, 162.0, 160.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"patching_rect" : [ 245.0, 416.0, 52.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-20",
									"patching_rect" : [ 13.0, 49.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "List of index, x, y, z,",
									"numoutlets" : 0,
									"id" : "obj-21",
									"fontname" : "Verdana",
									"patching_rect" : [ 245.0, 5.0, 138.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "All positions are dumped if number of voices is changed, in order to update active status.",
									"linecount" : 2,
									"numoutlets" : 0,
									"id" : "obj-22",
									"fontname" : "Verdana",
									"patching_rect" : [ 336.0, 234.0, 236.0, 31.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The others are set to inactive",
									"numoutlets" : 0,
									"id" : "obj-23",
									"fontname" : "Verdana",
									"patching_rect" : [ 336.0, 418.0, 183.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append 0",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-26",
									"fontname" : "Verdana",
									"patching_rect" : [ 246.0, 439.0, 57.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p active-returns",
									"numoutlets" : 0,
									"id" : "obj-28",
									"fontname" : "Verdana",
									"patching_rect" : [ 246.0, 461.0, 91.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 167.0, 351.0, 1213.0, 498.0 ],
										"bglocked" : 0,
										"defrect" : [ 167.0, 351.0, 1213.0, 498.0 ],
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
													"text" : "jcom.return speaker.1/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 181.0, 245.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.15/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-10",
													"fontname" : "Arial",
													"patching_rect" : [ 301.0, 319.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.14/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-11",
													"fontname" : "Arial",
													"patching_rect" : [ 301.0, 296.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.13/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-12",
													"fontname" : "Arial",
													"patching_rect" : [ 301.0, 273.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.12/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-13",
													"fontname" : "Arial",
													"patching_rect" : [ 301.0, 250.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.11/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-14",
													"fontname" : "Arial",
													"patching_rect" : [ 301.0, 227.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.10/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-15",
													"fontname" : "Arial",
													"patching_rect" : [ 301.0, 204.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.9/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-16",
													"fontname" : "Arial",
													"patching_rect" : [ 301.0, 180.0, 245.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.24/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-17",
													"fontname" : "Arial",
													"patching_rect" : [ 558.0, 344.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.23/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-18",
													"fontname" : "Arial",
													"patching_rect" : [ 558.0, 321.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.22/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-19",
													"fontname" : "Arial",
													"patching_rect" : [ 558.0, 298.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.2/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 205.0, 245.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.21/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-20",
													"fontname" : "Arial",
													"patching_rect" : [ 558.0, 275.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.20/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-21",
													"fontname" : "Arial",
													"patching_rect" : [ 558.0, 252.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.19/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-22",
													"fontname" : "Arial",
													"patching_rect" : [ 558.0, 229.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.18/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-23",
													"fontname" : "Arial",
													"patching_rect" : [ 558.0, 206.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.17/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-24",
													"fontname" : "Arial",
													"patching_rect" : [ 558.0, 182.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "spray 33",
													"numoutlets" : 33,
													"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
													"id" : "obj-25",
													"fontname" : "Verdana",
													"patching_rect" : [ 43.0, 125.0, 1130.0, 19.0 ],
													"fontsize" : 10.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.32/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-26",
													"fontname" : "Arial",
													"patching_rect" : [ 816.0, 345.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-27",
													"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.31/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-28",
													"fontname" : "Arial",
													"patching_rect" : [ 816.0, 322.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.30/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-29",
													"fontname" : "Arial",
													"patching_rect" : [ 816.0, 299.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.3/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 228.0, 245.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.29/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-30",
													"fontname" : "Arial",
													"patching_rect" : [ 816.0, 276.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.28/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-31",
													"fontname" : "Arial",
													"patching_rect" : [ 816.0, 253.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.27/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-32",
													"fontname" : "Arial",
													"patching_rect" : [ 817.0, 229.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.26/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-33",
													"fontname" : "Arial",
													"patching_rect" : [ 816.0, 207.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.25/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-34",
													"fontname" : "Arial",
													"patching_rect" : [ 816.0, 183.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.4/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 251.0, 245.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.5/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 274.0, 245.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.6/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 297.0, 245.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.7/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 320.0, 245.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.8/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 343.0, 245.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return speaker.16/active @type msg_int",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"patching_rect" : [ 301.0, 342.0, 251.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-25", 1 ],
													"destination" : [ "obj-1", 0 ],
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
													"source" : [ "obj-25", 14 ],
													"destination" : [ "obj-11", 0 ],
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
													"source" : [ "obj-25", 12 ],
													"destination" : [ "obj-13", 0 ],
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
													"source" : [ "obj-25", 10 ],
													"destination" : [ "obj-15", 0 ],
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
													"source" : [ "obj-25", 24 ],
													"destination" : [ "obj-17", 0 ],
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
													"source" : [ "obj-25", 22 ],
													"destination" : [ "obj-19", 0 ],
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
													"source" : [ "obj-25", 21 ],
													"destination" : [ "obj-20", 0 ],
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
													"source" : [ "obj-25", 19 ],
													"destination" : [ "obj-22", 0 ],
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
													"source" : [ "obj-25", 17 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 32 ],
													"destination" : [ "obj-26", 0 ],
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
													"source" : [ "obj-25", 3 ],
													"destination" : [ "obj-3", 0 ],
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
													"source" : [ "obj-25", 28 ],
													"destination" : [ "obj-31", 0 ],
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
													"source" : [ "obj-25", 26 ],
													"destination" : [ "obj-33", 0 ],
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
													"source" : [ "obj-25", 4 ],
													"destination" : [ "obj-4", 0 ],
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
													"source" : [ "obj-25", 6 ],
													"destination" : [ "obj-6", 0 ],
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
													"source" : [ "obj-25", 8 ],
													"destination" : [ "obj-8", 0 ],
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
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"fontface" : 0,
										"default_fontname" : "Arial",
										"fontsize" : 12.0,
										"default_fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-29",
									"fontname" : "Verdana",
									"patching_rect" : [ 186.0, 417.0, 52.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"patching_rect" : [ 273.0, 360.0, 27.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append 1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-30",
									"fontname" : "Verdana",
									"patching_rect" : [ 186.0, 438.0, 57.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Filtered to only pass the positions of active voices, the rest are set to inactive",
									"linecount" : 2,
									"numoutlets" : 0,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"patching_rect" : [ 336.0, 336.0, 213.0, 31.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-5",
									"patching_rect" : [ 138.0, 458.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"patching_rect" : [ 245.0, 117.0, 51.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace position @input xyz @output aed",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"patching_rect" : [ 286.0, 95.0, 322.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"patching_rect" : [ 245.0, 74.0, 52.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"patching_rect" : [ 270.0, 157.0, 38.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 22.5, 231.0, 279.5, 231.0 ]
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
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
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-3", 0 ],
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
									"destination" : [ "obj-8", 0 ],
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-26", 0 ],
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
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-30", 0 ],
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
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-28", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-9", 0 ],
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
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-13", 1 ],
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
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices",
					"text" : "jcom.parameter numInstances @repetitions/allow 0 @type msg_int @range/bounds 0 32 @range/clipmode both @priority 1 @description \"Number of instances in the set.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"patching_rect" : [ 220.0, 220.0, 583.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"has_panel" : 1,
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return delete @type msg_int @description \"Delete Nth voice.\"",
					"linecount" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"patching_rect" : [ 120.0, 475.0, 185.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return aed @type msg_list @description \"Position of Nth voice as list of polar coordinates (index, azi, ele, dist, active).\"",
					"linecount" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"patching_rect" : [ 120.0, 520.0, 324.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"patching_rect" : [ 119.0, 254.0, 46.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim 300",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"patching_rect" : [ 502.0, 290.0, 55.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0,
					"midpoints" : [ 248.5, 405.0, 248.5, 405.0 ]
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
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 62.5, 144.0, 27.5, 144.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 87.5, 144.0, 27.5, 144.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-10", 0 ],
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
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 229.5, 260.0, 210.5, 260.0, 210.5, 180.0, 229.5, 180.0 ]
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
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
