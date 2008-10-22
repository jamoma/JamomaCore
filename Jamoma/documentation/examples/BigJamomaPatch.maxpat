{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 106.0, 44.0, 1164.0, 826.0 ],
		"bglocked" : 0,
		"defrect" : [ 106.0, 44.0, 1164.0, 826.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "cuelist",
					"presentation" : 1,
					"name" : "jmod.cuelist.maxpat",
					"numinlets" : 1,
					"embed" : 1,
					"id" : "obj-1",
					"numoutlets" : 1,
					"args" : [ "cuelist" ],
					"presentation_rect" : [ 0.0, 455.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 185.0, 595.0, 300.0, 70.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 455.0, 300.0, 70.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 455.0, 300.0, 70.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"presentation" : 1,
									"rounded" : 8.0,
									"numinlets" : 1,
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"border" : 1,
									"presentation_rect" : [ 148.166489, 22.48205, 72.374352, 20.0 ],
									"outlettype" : [ "", "", "int" ],
									"text" : "View",
									"texton" : "View",
									"fontsize" : 10.0,
									"patching_rect" : [ 355.0, 270.0, 36.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"presentation" : 1,
									"rounded" : 8.0,
									"numinlets" : 1,
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"border" : 1,
									"presentation_rect" : [ 52.0, 44.0, 93.215401, 20.0 ],
									"outlettype" : [ "", "", "int" ],
									"text" : "Save Cue Script",
									"texton" : "Save Cue Script",
									"fontsize" : 10.0,
									"patching_rect" : [ 355.0, 186.0, 100.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"presentation" : 1,
									"rounded" : 8.0,
									"numinlets" : 1,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"border" : 1,
									"presentation_rect" : [ 222.245789, 22.48205, 72.664474, 20.0 ],
									"outlettype" : [ "", "", "int" ],
									"text" : "Get State",
									"texton" : "Get State",
									"fontsize" : 10.0,
									"patching_rect" : [ 356.0, 41.0, 100.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.in",
									"numinlets" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 86.0, 185.0, 45.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "CueMenu",
									"presentation" : 1,
									"items" : [ "Select cue", ",", "Init", ",", "audio_on", ",", "fade_ins" ],
									"numinlets" : 1,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"presentation_rect" : [ 147.446152, 44.0, 148.589752, 19.0 ],
									"outlettype" : [ "int", "", "" ],
									"labelclick" : 1,
									"fontsize" : 10.0,
									"types" : [  ],
									"patching_rect" : [ 355.0, 353.0, 146.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p cue_menu",
									"numinlets" : 0,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "clear" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 355.0, 330.0, 70.0, 18.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 302.0, 84.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 302.0, 84.0, 600.0, 426.0 ],
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
													"text" : "sel ---END ---START",
													"numinlets" : 1,
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"fontsize" : 9.873845,
													"patching_rect" : [ 57.0, 110.0, 110.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-2",
													"numoutlets" : 0,
													"patching_rect" : [ 57.0, 239.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"numinlets" : 1,
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 9.873845,
													"patching_rect" : [ 57.0, 198.0, 89.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t \"Select cue\" clear",
													"numinlets" : 1,
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"outlettype" : [ "Select cue", "clear" ],
													"fontsize" : 9.873845,
													"patching_rect" : [ 105.0, 155.0, 103.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0__set_menu",
													"numinlets" : 0,
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontsize" : 9.873845,
													"patching_rect" : [ 57.0, 89.0, 103.0, 18.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 2 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [ 157.5, 144.0, 66.5, 144.0 ]
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
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [ 198.5, 231.0, 66.0, 231.0 ]
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
													"source" : [ "obj-1", 1 ],
													"destination" : [ "obj-4", 0 ],
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
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.message save_script @description \"Save cue script to a file. An argument determines the path and name of the file.  No argument will bring up a file dialog (like saveas) or save the script to the existing file that is in use.\"",
									"linecount" : 3,
									"numinlets" : 1,
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 355.0, 210.0, 407.0, 42.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "listen",
									"text" : "jcom.parameter listen @type msg_toggle @repetitions/allow 0 @description \"Listen to remote change of parameters.\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 355.0, 487.0, 314.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.pass open",
									"numinlets" : 1,
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 86.0, 209.0, 86.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.message view @description \"View current cue script in a text window.\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 355.0, 295.0, 208.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.message remote @type msg_generic @description \"Wireless communication of messages to modules via the bridge.\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 355.0, 416.0, 341.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.message cue @type msg_generic @description \"Recall cue event from cue script.\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 355.0, 375.0, 248.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"numinlets" : 1,
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 86.0, 235.0, 49.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/documentation/generate",
									"numinlets" : 2,
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 38.0, 89.0, 135.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.message load_script @description \"Load cue script from file. <br>NOTE: jcom.cue_list will be watching the file and automatically update if the content of the file is changed. This way you can use an external editor to work on the cue script while Jamoma is running.\"",
									"linecount" : 4,
									"numinlets" : 1,
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 355.0, 126.0, 353.0, 54.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/init",
									"numinlets" : 2,
									"id" : "obj-24",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 180.0, 90.0, 37.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jalg.cuelist #0_",
									"numinlets" : 1,
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 86.0, 264.0, 97.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "jcom.hub",
									"text" : "jcom.hub @module_type control @description \"Manage cue list in text format\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 16.0, 114.0, 278.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-28",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.0, 90.0, 13.0, 13.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-29",
									"numoutlets" : 0,
									"patching_rect" : [ 16.0, 154.0, 13.0, 13.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "jcom.parameter",
									"text" : "jcom.message get_state @description \"Poll state for all bridged modules, and display in text window.\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-30",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 355.0, 66.0, 280.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"presentation" : 1,
									"rounded" : 8.0,
									"numinlets" : 1,
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"mode" : 1,
									"border" : 1,
									"presentation_rect" : [ 3.0, 22.48205, 47.215401, 42.0 ],
									"outlettype" : [ "", "", "int" ],
									"truncate" : 0,
									"text" : "Listen (Off)",
									"texton" : "Listen (On)",
									"fontsize" : 10.0,
									"patching_rect" : [ 355.0, 465.0, 100.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"presentation" : 1,
									"rounded" : 8.0,
									"numinlets" : 1,
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"border" : 1,
									"presentation_rect" : [ 51.9641, 22.0, 94.215401, 20.0 ],
									"outlettype" : [ "", "", "int" ],
									"text" : "Load Cue Script",
									"texton" : "Load Cue Script",
									"fontsize" : 10.0,
									"patching_rect" : [ 355.0, 103.0, 100.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jcom.ui",
									"text" : "/cuelist",
									"presentation" : 1,
									"numinlets" : 1,
									"id" : "obj-32",
									"numoutlets" : 1,
									"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
									"outlettype" : [ "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 364.5, 405.0, 342.0, 405.0, 342.0, 348.0, 364.5, 348.0 ]
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
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 162.5, 259.0, 95.5, 259.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 47.5, 108.0, 25.5, 108.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 189.5, 110.0, 25.5, 110.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 364.5, 519.0, 342.0, 519.0, 342.0, 462.0, 364.5, 462.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~",
					"presentation" : 1,
					"name" : "jmod.output~.maxpat",
					"numinlets" : 3,
					"id" : "obj-49",
					"numoutlets" : 1,
					"args" : [ "/output~" ],
					"presentation_rect" : [ 0.0, 525.0, 300.0, 140.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 510.0, 590.0, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~",
					"presentation" : 1,
					"name" : "jmod.filter~.maxpat",
					"numinlets" : 3,
					"id" : "obj-26",
					"numoutlets" : 3,
					"args" : [ "/filter~.1" ],
					"presentation_rect" : [ 300.0, 210.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 185.0, 331.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mouse/1",
					"presentation" : 1,
					"name" : "jmod.mouse.maxpat",
					"numinlets" : 1,
					"id" : "obj-28",
					"numoutlets" : 1,
					"args" : [ "/mouse" ],
					"presentation_rect" : [ 0.0, 315.0, 150.0, 70.0 ],
					"outlettype" : [ "" ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 15.0, 310.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/saturation~[2]",
					"presentation" : 1,
					"name" : "jmod.saturation~.maxpat",
					"numinlets" : 3,
					"id" : "obj-52",
					"numoutlets" : 3,
					"args" : [ "/saturation~.2" ],
					"presentation_rect" : [ 600.0, 350.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 510.0, 500.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control",
					"presentation" : 1,
					"name" : "jmod.control.maxpat",
					"numinlets" : 1,
					"id" : "obj-35",
					"numoutlets" : 1,
					"args" : [ "/control" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 230.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"presentation" : 1,
					"name" : "jmod.layout.maxpat",
					"numinlets" : 2,
					"id" : "obj-15",
					"numoutlets" : 2,
					"args" : [  ],
					"presentation_rect" : [ 0.0, 70.0, 150.0, 210.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 20.0, 595.0, 150.0, 210.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/saturation~[6]",
					"presentation" : 1,
					"name" : "jmod.saturation~.maxpat",
					"numinlets" : 3,
					"id" : "obj-76",
					"numoutlets" : 3,
					"args" : [ "/saturation~.6" ],
					"presentation_rect" : [ 900.0, 805.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 1805.0, 500.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/multidelay~[6]",
					"presentation" : 1,
					"name" : "jmod.multidelay~.maxpat",
					"numinlets" : 3,
					"id" : "obj-77",
					"numoutlets" : 3,
					"args" : [ "/multidelay~.6" ],
					"presentation_rect" : [ 900.0, 735.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 1805.0, 415.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~[6]",
					"presentation" : 1,
					"name" : "jmod.filter~.maxpat",
					"numinlets" : 3,
					"id" : "obj-79",
					"numoutlets" : 3,
					"args" : [ "/filter~.6" ],
					"presentation_rect" : [ 900.0, 665.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 1806.0, 331.000031, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~[6]",
					"presentation" : 1,
					"name" : "jmod.input~.maxpat",
					"numinlets" : 1,
					"id" : "obj-78",
					"numoutlets" : 3,
					"args" : [ "/input~.6" ],
					"presentation_rect" : [ 900.0, 525.0, 300.0, 140.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 1805.0, 170.000031, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/file_browser_6",
					"presentation" : 1,
					"name" : "jmod.file_browser.maxpat",
					"numinlets" : 1,
					"id" : "obj-40",
					"numoutlets" : 1,
					"args" : [ "/file_browser.6" ],
					"presentation_rect" : [ 900.0, 455.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1805.0, 50.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/saturation~[5]",
					"presentation" : 1,
					"name" : "jmod.saturation~.maxpat",
					"numinlets" : 3,
					"id" : "obj-70",
					"numoutlets" : 3,
					"args" : [ "/saturation~.5" ],
					"presentation_rect" : [ 600.0, 805.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 1485.0, 500.000092, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/multidelay~[5]",
					"presentation" : 1,
					"name" : "jmod.multidelay~.maxpat",
					"numinlets" : 3,
					"id" : "obj-71",
					"numoutlets" : 3,
					"args" : [ "/multidelay~.5" ],
					"presentation_rect" : [ 600.0, 735.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 1485.0, 415.000092, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~[5]",
					"presentation" : 1,
					"name" : "jmod.filter~.maxpat",
					"numinlets" : 3,
					"id" : "obj-73",
					"numoutlets" : 3,
					"args" : [ "/filter~.5" ],
					"presentation_rect" : [ 600.0, 665.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 1486.0, 331.000122, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~[5]",
					"presentation" : 1,
					"name" : "jmod.input~.maxpat",
					"numinlets" : 1,
					"id" : "obj-72",
					"numoutlets" : 3,
					"args" : [ "/input~.5" ],
					"presentation_rect" : [ 600.0, 525.0, 300.0, 140.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 1485.0, 170.000107, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/file_browser_5",
					"presentation" : 1,
					"name" : "jmod.file_browser.maxpat",
					"numinlets" : 1,
					"id" : "obj-38",
					"numoutlets" : 1,
					"args" : [ "/file_browser.5" ],
					"presentation_rect" : [ 600.0, 455.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1485.0, 50.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/saturation~[4]",
					"presentation" : 1,
					"name" : "jmod.saturation~.maxpat",
					"numinlets" : 3,
					"id" : "obj-64",
					"numoutlets" : 3,
					"args" : [ "/saturation~.4" ],
					"presentation_rect" : [ 300.0, 805.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 1160.0, 500.000061, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/multidelay~[4]",
					"presentation" : 1,
					"name" : "jmod.multidelay~.maxpat",
					"numinlets" : 3,
					"id" : "obj-65",
					"numoutlets" : 3,
					"args" : [ "/multidelay~.4" ],
					"presentation_rect" : [ 300.0, 735.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 1160.0, 415.000061, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~[4]",
					"presentation" : 1,
					"name" : "jmod.filter~.maxpat",
					"numinlets" : 3,
					"id" : "obj-67",
					"numoutlets" : 3,
					"args" : [ "/filter~.4" ],
					"presentation_rect" : [ 300.0, 665.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 1161.0, 331.000092, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~[4]",
					"presentation" : 1,
					"name" : "jmod.input~.maxpat",
					"numinlets" : 1,
					"id" : "obj-66",
					"numoutlets" : 3,
					"args" : [ "/input~.4" ],
					"presentation_rect" : [ 300.0, 525.0, 300.0, 140.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 1160.0, 170.000076, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/file_browser_4",
					"presentation" : 1,
					"name" : "jmod.file_browser.maxpat",
					"numinlets" : 1,
					"id" : "obj-30",
					"numoutlets" : 1,
					"args" : [ "/file_browser.4" ],
					"presentation_rect" : [ 300.0, 455.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1160.0, 50.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/saturation~[3]",
					"presentation" : 1,
					"name" : "jmod.saturation~.maxpat",
					"numinlets" : 3,
					"id" : "obj-58",
					"numoutlets" : 3,
					"args" : [ "/saturation~.3" ],
					"presentation_rect" : [ 900.0, 350.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 835.0, 500.000031, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/multidelay~[3]",
					"presentation" : 1,
					"name" : "jmod.multidelay~.maxpat",
					"numinlets" : 3,
					"id" : "obj-59",
					"numoutlets" : 3,
					"args" : [ "/multidelay~.3" ],
					"presentation_rect" : [ 900.0, 280.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 835.0, 415.000031, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~[3]",
					"presentation" : 1,
					"name" : "jmod.filter~.maxpat",
					"numinlets" : 3,
					"id" : "obj-61",
					"numoutlets" : 3,
					"args" : [ "/filter~.3" ],
					"presentation_rect" : [ 900.0, 210.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 836.0, 331.000061, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~[3]",
					"presentation" : 1,
					"name" : "jmod.input~.maxpat",
					"numinlets" : 1,
					"id" : "obj-60",
					"numoutlets" : 3,
					"args" : [ "/input~.3" ],
					"presentation_rect" : [ 900.0, 70.0, 300.0, 140.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 835.0, 170.000061, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/file_browser_3",
					"presentation" : 1,
					"name" : "jmod.file_browser.maxpat",
					"numinlets" : 1,
					"id" : "obj-27",
					"numoutlets" : 1,
					"args" : [ "/file_browser.3" ],
					"presentation_rect" : [ 900.0, 0.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 835.0, 50.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/multidelay~[2]",
					"presentation" : 1,
					"name" : "jmod.multidelay~.maxpat",
					"numinlets" : 3,
					"id" : "obj-53",
					"numoutlets" : 3,
					"args" : [ "/multidelay~.2" ],
					"presentation_rect" : [ 600.0, 280.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 510.0, 415.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~[2]",
					"presentation" : 1,
					"name" : "jmod.filter~.maxpat",
					"numinlets" : 3,
					"id" : "obj-55",
					"numoutlets" : 3,
					"args" : [ "/filter~.2" ],
					"presentation_rect" : [ 600.0, 210.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 511.0, 331.000031, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~[2]",
					"presentation" : 1,
					"name" : "jmod.input~.maxpat",
					"numinlets" : 1,
					"id" : "obj-54",
					"numoutlets" : 3,
					"args" : [ "/input~.2" ],
					"presentation_rect" : [ 600.0, 70.0, 300.0, 140.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 510.0, 170.000031, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/file_browser_2",
					"presentation" : 1,
					"name" : "jmod.file_browser.maxpat",
					"numinlets" : 1,
					"id" : "obj-22",
					"numoutlets" : 1,
					"args" : [ "/file_browser.2" ],
					"presentation_rect" : [ 600.0, 0.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 510.0, 50.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/saturation~",
					"presentation" : 1,
					"name" : "jmod.saturation~.maxpat",
					"numinlets" : 3,
					"id" : "obj-24",
					"numoutlets" : 3,
					"args" : [ "/saturation~.1" ],
					"presentation_rect" : [ 300.0, 350.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 185.0, 500.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/multidelay~",
					"presentation" : 1,
					"name" : "jmod.multidelay~.maxpat",
					"numinlets" : 3,
					"id" : "obj-37",
					"numoutlets" : 3,
					"args" : [ "/multidelay~.1" ],
					"presentation_rect" : [ 300.0, 280.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 185.0, 415.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"presentation" : 1,
					"name" : "jmod.input~.maxpat",
					"numinlets" : 1,
					"id" : "obj-25",
					"numoutlets" : 3,
					"args" : [ "/input~.1" ],
					"presentation_rect" : [ 300.0, 70.0, 300.0, 140.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 185.0, 170.0, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/file_browser_1",
					"presentation" : 1,
					"name" : "jmod.file_browser.maxpat",
					"numinlets" : 1,
					"id" : "obj-20",
					"numoutlets" : 1,
					"args" : [ "/file_browser.1" ],
					"presentation_rect" : [ 300.0, 0.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 185.0, 50.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess /folder ./examples/sounds/",
					"numinlets" : 1,
					"id" : "obj-3",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 380.0, 10.0, 173.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p init",
					"numinlets" : 0,
					"id" : "obj-75",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 105.0, 550.0, 76.0, 18.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 89.0, 69.0, 318.0, 182.0 ],
						"bglocked" : 0,
						"defrect" : [ 89.0, 69.0, 318.0, 182.0 ],
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
									"maxclass" : "newobj",
									"text" : "loadmess /fullscreen 1",
									"numinlets" : 1,
									"id" : "obj-8",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 25.0, 10.0, 108.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numinlets" : 1,
									"id" : "obj-7",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 25.0, 60.0, 48.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess /load_script JamomaDefaultSymphony.txt",
									"numinlets" : 1,
									"id" : "obj-5",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 110.0, 60.0, 240.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess /preset/read BigPatchLayout.xml",
									"numinlets" : 1,
									"id" : "obj-6",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 85.0, 35.0, 201.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numinlets" : 1,
									"id" : "obj-4",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 110.0, 110.0, 48.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numinlets" : 1,
									"id" : "obj-3",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 85.0, 85.0, 48.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 0,
									"patching_rect" : [ 110.0, 140.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-1",
									"numoutlets" : 0,
									"patching_rect" : [ 85.0, 140.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
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
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess /folder ./examples/sounds/",
					"numinlets" : 1,
					"id" : "obj-74",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 185.0, 10.0, 173.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p load_play",
					"numinlets" : 1,
					"id" : "obj-47",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 1805.0, 140.0, 66.0, 18.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 780.0, 44.0, 202.0, 267.0 ],
						"bglocked" : 0,
						"defrect" : [ 780.0, 44.0, 202.0, 267.0 ],
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
									"text" : "jcom.oscroute /file",
									"numinlets" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 57.0, 101.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 l 0",
									"numinlets" : 1,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 113.0, 40.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 47.0, 149.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/soundfile/play $1",
									"numinlets" : 2,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 176.0, 101.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /soundfile/open",
									"numinlets" : 1,
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 84.0, 130.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-6",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 47.0, 34.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 0,
									"patching_rect" : [ 47.0, 196.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
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
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p load_play",
					"numinlets" : 1,
					"id" : "obj-46",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 1485.0, 135.0, 66.0, 18.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 780.0, 44.0, 202.0, 267.0 ],
						"bglocked" : 0,
						"defrect" : [ 780.0, 44.0, 202.0, 267.0 ],
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
									"text" : "jcom.oscroute /file",
									"numinlets" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 57.0, 101.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 l 0",
									"numinlets" : 1,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 113.0, 40.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 47.0, 149.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/soundfile/play $1",
									"numinlets" : 2,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 176.0, 101.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /soundfile/open",
									"numinlets" : 1,
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 84.0, 130.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-6",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 47.0, 34.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 0,
									"patching_rect" : [ 47.0, 196.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
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
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p load_play",
					"numinlets" : 1,
					"id" : "obj-45",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 1160.0, 135.0, 66.0, 18.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 780.0, 44.0, 202.0, 267.0 ],
						"bglocked" : 0,
						"defrect" : [ 780.0, 44.0, 202.0, 267.0 ],
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
									"text" : "jcom.oscroute /file",
									"numinlets" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 57.0, 101.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 l 0",
									"numinlets" : 1,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 113.0, 40.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 47.0, 149.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/soundfile/play $1",
									"numinlets" : 2,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 176.0, 101.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /soundfile/open",
									"numinlets" : 1,
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 84.0, 130.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-6",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 47.0, 34.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 0,
									"patching_rect" : [ 47.0, 196.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
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
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p load_play",
					"numinlets" : 1,
					"id" : "obj-44",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 835.0, 135.0, 66.0, 18.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 780.0, 44.0, 202.0, 267.0 ],
						"bglocked" : 0,
						"defrect" : [ 780.0, 44.0, 202.0, 267.0 ],
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
									"text" : "jcom.oscroute /file",
									"numinlets" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 57.0, 101.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 l 0",
									"numinlets" : 1,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 113.0, 40.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 47.0, 149.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/soundfile/play $1",
									"numinlets" : 2,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 176.0, 101.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /soundfile/open",
									"numinlets" : 1,
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 84.0, 130.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-6",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 47.0, 34.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 0,
									"patching_rect" : [ 47.0, 196.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
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
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p load_play",
					"numinlets" : 1,
					"id" : "obj-42",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 510.0, 135.0, 66.0, 18.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 780.0, 44.0, 202.0, 267.0 ],
						"bglocked" : 0,
						"defrect" : [ 780.0, 44.0, 202.0, 267.0 ],
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
									"text" : "jcom.oscroute /file",
									"numinlets" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 57.0, 101.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 l 0",
									"numinlets" : 1,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 113.0, 40.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 47.0, 149.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/soundfile/play $1",
									"numinlets" : 2,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 176.0, 101.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /soundfile/open",
									"numinlets" : 1,
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 84.0, 130.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-6",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 47.0, 34.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 0,
									"patching_rect" : [ 47.0, 196.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
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
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-16",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 150.0, 810.0, 59.0, 18.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t none",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-14",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "none" ],
					"fontsize" : 9.295724,
					"bgcolor" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"patching_rect" : [ 151.106232, 569.501831, 37.875458, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "hover",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-19",
					"fontname" : "Arial",
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"fontsize" : 9.295724,
					"bgcolor" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"patching_rect" : [ 95.0, 570.0, 53.369965, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p load_play",
					"numinlets" : 1,
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 185.0, 135.0, 66.0, 18.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 780.0, 44.0, 202.0, 267.0 ],
						"bglocked" : 0,
						"defrect" : [ 780.0, 44.0, 202.0, 267.0 ],
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
									"text" : "jcom.oscroute /file",
									"numinlets" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 57.0, 101.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 l 0",
									"numinlets" : 1,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 113.0, 40.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 47.0, 149.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/soundfile/play $1",
									"numinlets" : 2,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 176.0, 101.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /soundfile/open",
									"numinlets" : 1,
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 47.0, 84.0, 130.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-6",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 47.0, 34.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 0,
									"patching_rect" : [ 47.0, 196.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
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
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Notice the subpatch \"mappers\" below, where you can map several data flows, as the mouse position, or audio amplitudes of any module. For further explanation, use jmod.cont_mapper.maxhelp",
					"linecount" : 8,
					"numinlets" : 1,
					"id" : "obj-43",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 15.0, 85.0, 159.0, 117.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This is a quite big patch, organized in \"tracks\"",
					"linecount" : 2,
					"numinlets" : 1,
					"id" : "obj-41",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 14.0,
					"patching_rect" : [ 15.0, 35.0, 163.0, 39.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "unmutes all modules  in a row",
					"linecount" : 3,
					"numinlets" : 1,
					"id" : "obj-36",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 115.0, 485.0, 64.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-34",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 470.0, 32.5, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"id" : "obj-33",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 15.0, 445.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "use the mouse as a global gain",
					"numinlets" : 1,
					"id" : "obj-32",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 40.0, 445.0, 149.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 0. 1. 80. 110.",
					"numinlets" : 6,
					"hidden" : 1,
					"id" : "obj-17",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 415.0, 121.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /position/x",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-5",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 390.0, 121.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.send jcom.remote.module.to",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-2",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 570.0, 163.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"id" : "obj-10",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 90.0, 495.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/*/audio/mute $1",
					"numinlets" : 2,
					"id" : "obj-8",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 90.0, 530.0, 83.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/*/audio/gain $1 ramp 100",
					"linecount" : 2,
					"numinlets" : 2,
					"id" : "obj-7",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 530.0, 68.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"id" : "obj-6",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 500.0, 50.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p mappers",
					"numinlets" : 0,
					"id" : "obj-116",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"fontsize" : 18.0,
					"patching_rect" : [ 70.0, 395.0, 96.0, 27.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 27.0, 59.0, 1231.0, 612.0 ],
						"bglocked" : 0,
						"defrect" : [ 27.0, 59.0, 1231.0, 612.0 ],
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
						"visible" : 1,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[9]",
									"name" : "jmod.cont_mapper.maxpat",
									"numinlets" : 1,
									"id" : "obj-9",
									"numoutlets" : 1,
									"args" : [ "/mapper.16" ],
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 620.0, 535.0, 600.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[10]",
									"name" : "jmod.cont_mapper.maxpat",
									"numinlets" : 1,
									"id" : "obj-10",
									"numoutlets" : 1,
									"args" : [ "/mapper.15" ],
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 620.0, 460.0, 600.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[11]",
									"name" : "jmod.cont_mapper.maxpat",
									"numinlets" : 1,
									"id" : "obj-11",
									"numoutlets" : 1,
									"args" : [ "/mapper.14" ],
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 620.0, 385.0, 600.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[12]",
									"name" : "jmod.cont_mapper.maxpat",
									"numinlets" : 1,
									"id" : "obj-12",
									"numoutlets" : 1,
									"args" : [ "/mapper.13" ],
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 620.0, 310.0, 600.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[13]",
									"name" : "jmod.cont_mapper.maxpat",
									"numinlets" : 1,
									"id" : "obj-13",
									"numoutlets" : 1,
									"args" : [ "/mapper.12" ],
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 620.0, 235.0, 600.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[14]",
									"name" : "jmod.cont_mapper.maxpat",
									"numinlets" : 1,
									"id" : "obj-14",
									"numoutlets" : 1,
									"args" : [ "/mapper.11" ],
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 620.0, 160.0, 600.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[15]",
									"name" : "jmod.cont_mapper.maxpat",
									"numinlets" : 1,
									"id" : "obj-15",
									"numoutlets" : 1,
									"args" : [ "/mapper.10" ],
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 620.0, 85.0, 600.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[16]",
									"name" : "jmod.cont_mapper.maxpat",
									"numinlets" : 1,
									"id" : "obj-16",
									"numoutlets" : 1,
									"args" : [ "/mapper.9" ],
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 620.0, 10.0, 600.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[8]",
									"name" : "jmod.cont_mapper.maxpat",
									"numinlets" : 1,
									"id" : "obj-8",
									"numoutlets" : 1,
									"args" : [ "/mapper.8" ],
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 10.0, 535.0, 600.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[7]",
									"name" : "jmod.cont_mapper.maxpat",
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 1,
									"args" : [ "/mapper.7" ],
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 10.0, 460.0, 600.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[6]",
									"name" : "jmod.cont_mapper.maxpat",
									"numinlets" : 1,
									"id" : "obj-6",
									"numoutlets" : 1,
									"args" : [ "/mapper.6" ],
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 10.0, 385.0, 600.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[5]",
									"name" : "jmod.cont_mapper.maxpat",
									"numinlets" : 1,
									"id" : "obj-5",
									"numoutlets" : 1,
									"args" : [ "/mapper.5" ],
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 10.0, 310.0, 600.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[4]",
									"name" : "jmod.cont_mapper.maxpat",
									"numinlets" : 1,
									"id" : "obj-4",
									"numoutlets" : 1,
									"args" : [ "/mapper.4" ],
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 10.0, 235.0, 600.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[3]",
									"name" : "jmod.cont_mapper.maxpat",
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 1,
									"args" : [ "/mapper.3" ],
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 10.0, 160.0, 600.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[2]",
									"name" : "jmod.cont_mapper.maxpat",
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 1,
									"args" : [ "/mapper.2" ],
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 10.0, 85.0, 600.0, 70.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[1]",
									"name" : "jmod.cont_mapper.maxpat",
									"numinlets" : 1,
									"id" : "obj-1",
									"numoutlets" : 1,
									"args" : [ "/mapper.1" ],
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 10.0, 10.0, 600.0, 70.0 ]
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-77", 2 ],
					"destination" : [ "obj-76", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 1 ],
					"destination" : [ "obj-76", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 1 ],
					"destination" : [ "obj-70", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 2 ],
					"destination" : [ "obj-70", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 2 ],
					"destination" : [ "obj-64", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 1 ],
					"destination" : [ "obj-64", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 1 ],
					"destination" : [ "obj-58", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 2 ],
					"destination" : [ "obj-58", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 2 ],
					"destination" : [ "obj-52", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 1 ],
					"destination" : [ "obj-52", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 2 ],
					"destination" : [ "obj-24", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 1 ],
					"destination" : [ "obj-77", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 2 ],
					"destination" : [ "obj-77", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 1 ],
					"destination" : [ "obj-79", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 2 ],
					"destination" : [ "obj-79", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 2 ],
					"destination" : [ "obj-71", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 1 ],
					"destination" : [ "obj-71", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 2 ],
					"destination" : [ "obj-73", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 1 ],
					"destination" : [ "obj-73", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 1 ],
					"destination" : [ "obj-65", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 2 ],
					"destination" : [ "obj-65", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 1 ],
					"destination" : [ "obj-67", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 2 ],
					"destination" : [ "obj-67", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 1 ],
					"destination" : [ "obj-59", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 2 ],
					"destination" : [ "obj-59", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 2 ],
					"destination" : [ "obj-61", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 1 ],
					"destination" : [ "obj-61", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 2 ],
					"destination" : [ "obj-53", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 1 ],
					"destination" : [ "obj-53", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 2 ],
					"destination" : [ "obj-55", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 1 ],
					"destination" : [ "obj-55", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-37", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 2 ],
					"destination" : [ "obj-37", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [ 99.5, 582.0, 24.5, 582.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-34", 1 ],
					"hidden" : 1,
					"midpoints" : [ 24.5, 459.0, 38.0, 459.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 2 ],
					"destination" : [ "obj-49", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 1 ],
					"destination" : [ "obj-49", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 2 ],
					"destination" : [ "obj-49", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 1 ],
					"destination" : [ "obj-49", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 2 ],
					"destination" : [ "obj-49", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 1 ],
					"destination" : [ "obj-49", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 2 ],
					"destination" : [ "obj-49", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 1 ],
					"destination" : [ "obj-49", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 2 ],
					"destination" : [ "obj-49", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 1 ],
					"destination" : [ "obj-49", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 2 ],
					"destination" : [ "obj-49", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-49", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 2 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [ 194.5, 30.0, 519.5, 30.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [ 194.5, 30.0, 844.5, 30.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [ 194.5, 30.0, 1169.5, 30.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [ 194.5, 30.0, 1494.5, 30.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [ 194.5, 30.0, 1814.5, 30.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 2 ],
					"destination" : [ "obj-26", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
