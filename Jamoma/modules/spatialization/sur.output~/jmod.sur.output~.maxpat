{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 58.0, 44.0, 1074.0, 677.0 ],
		"bglocked" : 0,
		"defrect" : [ 58.0, 44.0, 1074.0, 677.0 ],
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
					"maxclass" : "message",
					"text" : "set 0",
					"fontname" : "Arial",
					"id" : "obj-23",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 786.0, 331.0, 32.5, 16.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 1",
					"fontname" : "Arial",
					"id" : "obj-20",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 820.0, 332.0, 32.5, 16.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 0 1",
					"fontname" : "Arial",
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 793.0, 309.0, 46.0, 18.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "bang", "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "RecordButton",
					"prototypename" : "jamoma on off",
					"presentation_rect" : [ 237.0, 21.0, 61.0, 18.0 ],
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 1,
					"bgoveroncolor" : [ 0.8, 0.003922, 0.003922, 1.0 ],
					"mode" : 1,
					"border" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 788.0, 352.0, 51.466908, 17.933016 ],
					"bgoncolor" : [ 0.964706, 0.0, 0.0, 1.0 ],
					"presentation" : 1,
					"text" : "Record",
					"fontsize" : 10.0,
					"texton" : "Record",
					"rounded" : 8.0,
					"outlettype" : [ "", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "record",
					"text" : "jcom.message record/active @type msg_generic @repetitions/allow 1 @description \"record to a sound file, a value of 1 opens save-as dialog and will start recording afterwards; a string value will start the recording and will save the recording under the provided  string; a value of 0 stops recording\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 506.0, 258.0, 605.0, 43.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"hint" : "click to open multicable to dac~ patchbay",
					"handoff" : "",
					"presentation_rect" : [ 4.185687, 40.96286, 296.782593, 26.0 ],
					"id" : "obj-33",
					"numinlets" : 1,
					"numoutlets" : 4,
					"patching_rect" : [ 18.0, 229.0, 115.0, 32.0 ],
					"presentation" : 1,
					"outlettype" : [ "bang", "bang", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "Setup",
					"text" : "Setup: 1 2 3 4 5 6 7 8",
					"presentation_rect" : [ 2.0, 41.0, 296.0, 27.0 ],
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 1,
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"numoutlets" : 4,
					"patching_rect" : [ 12.0, 279.0, 139.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "", "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Offset:",
					"presentation_rect" : [ 62.0, 21.0, 45.0, 19.0 ],
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 85.0, 20.0, 45.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voices:",
					"presentation_rect" : [ 1.0, 21.0, 45.0, 19.0 ],
					"fontname" : "Verdana",
					"id" : "obj-71",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 3.0, 19.0, 45.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"hint" : "",
					"annotation" : "",
					"presentation_rect" : [ 173.0, 21.0, 17.0, 17.0 ],
					"id" : "obj-55",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 574.0, 229.0, 20.0, 20.0 ],
					"presentation" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1",
					"fontname" : "Arial",
					"id" : "obj-41",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 164.213852, 263.395203, 21.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p inspector",
					"fontname" : "Verdana",
					"id" : "obj-39",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 163.846863, 282.827209, 72.0, 20.0 ],
					"fontsize" : 10.970939,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 375.0, 176.0, 217.0, 320.0 ],
						"bglocked" : 0,
						"defrect" : [ 375.0, 176.0, 217.0, 320.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Are you sure that the selected \nfile type and sample type works with the number of voices ??",
									"linecount" : 3,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 29.0, 275.0, 174.0, 43.0 ],
									"fontname" : "Verdana",
									"id" : "obj-25",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 48.0, 242.0, 173.0, 43.0 ],
									"presentation" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "SamptypeMenu",
									"types" : [  ],
									"presentation_rect" : [ 135.0, 258.0, 60.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-59",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 140.0, 404.0, 61.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "int", "", "" ],
									"items" : [ "int8", ",", "int16", ",", "int24", ",", "int32", ",", "float32", ",", "float64", ",", "mulaw", ",", "alaw" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "FiletypeMenu",
									"types" : [  ],
									"presentation_rect" : [ 135.0, 235.0, 60.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-57",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 140.0, 368.0, 61.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "int", "", "" ],
									"items" : [ "aiff", ",", "au", ",", "raw", ",", "wave", ",", "sd2" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Sample type:",
									"linecount" : 2,
									"presentation_rect" : [ 33.0, 259.23526, 77.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-23",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 69.304535, 283.23526, 72.0, 31.0 ],
									"presentation" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "File type:",
									"presentation_rect" : [ 32.0, 235.23526, 63.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-22",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 54.304535, 268.23526, 72.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Recorder settings",
									"linecount" : 4,
									"presentation_rect" : [ 24.0, 211.0, 132.0, 24.0 ],
									"fontname" : "Verdana",
									"id" : "obj-19",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 20.0, 62.0, 75.0 ],
									"presentation" : 1,
									"fontsize" : 14.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"presentation_rect" : [ 25.0, 213.0, 134.0, 20.0 ],
									"id" : "obj-21",
									"numinlets" : 1,
									"border" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 294.0, 22.0, 59.0, 19.0 ],
									"presentation" : 1,
									"rounded" : 10
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"presentation_rect" : [ 13.0, 223.0, 191.0, 92.0 ],
									"id" : "obj-20",
									"numinlets" : 1,
									"border" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 428.0, 22.0, 59.0, 19.0 ],
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "record/samptype",
									"text" : "jcom.parameter record/samptype @type msg_symbol @description \"Recording: Set sample type for sound files.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-54",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 204.0, 398.0, 304.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "record/filetype",
									"text" : "jcom.parameter record/filetype @type msg_symbol @description \"Recording: Set file type for sound files.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 203.0, 361.0, 283.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p FileTypes",
									"fontname" : "Verdana",
									"id" : "obj-56",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 140.0, 339.0, 65.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 14.0, 59.0, 308.0, 314.0 ],
										"bglocked" : 0,
										"defrect" : [ 14.0, 59.0, 308.0, 314.0 ],
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
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 60.0, 265.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"fontname" : "Verdana",
													"id" : "obj-2",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 60.0, 218.0, 89.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.init",
													"fontname" : "Verdana",
													"id" : "obj-3",
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 60.0, 60.0, 54.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "aiff, au, raw, wave",
													"fontname" : "Verdana",
													"id" : "obj-4",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 111.0, 175.0, 101.0, 16.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "aiff, au, raw, wave, sd2",
													"fontname" : "Verdana",
													"id" : "obj-5",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 60.0, 192.0, 126.0, 16.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t clear",
													"fontname" : "Verdana",
													"id" : "obj-6",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 222.0, 164.0, 40.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "clear" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel macintosh windows",
													"fontname" : "Verdana",
													"id" : "obj-7",
													"numinlets" : 1,
													"numoutlets" : 3,
													"patching_rect" : [ 60.0, 151.0, 122.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "bang", "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route os",
													"fontname" : "Verdana",
													"id" : "obj-8",
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 60.0, 125.0, 49.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "js jcom.js_systeminfo.js",
													"fontname" : "Verdana",
													"id" : "obj-9",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 60.0, 99.0, 129.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-4", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [ 231.5, 250.0, 69.0, 250.0 ]
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
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [ 69.5, 95.0, 231.5, 95.0 ]
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
									"text" : "DSP and dac~ settings",
									"fontname" : "Verdana",
									"id" : "obj-67",
									"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 225.0, 339.0, 186.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Limiter settings",
									"linecount" : 3,
									"presentation_rect" : [ 24.0, 6.0, 119.0, 24.0 ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 5.0, 5.0, 62.0, 58.0 ],
									"presentation" : 1,
									"fontsize" : 14.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"presentation_rect" : [ 25.0, 9.0, 117.0, 20.0 ],
									"id" : "obj-17",
									"numinlets" : 1,
									"border" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 279.0, 7.0, 59.0, 19.0 ],
									"presentation" : 1,
									"rounded" : 10
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Release [ms]:",
									"linecount" : 2,
									"presentation_rect" : [ 46.0, 158.23526, 84.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 39.304535, 293.23526, 75.0, 31.0 ],
									"presentation" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Preamp [dB]:",
									"linecount" : 2,
									"presentation_rect" : [ 48.0, 112.23526, 77.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 39.304535, 253.23526, 72.0, 31.0 ],
									"presentation" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "Release",
									"minimum" : 0.0,
									"maximum" : 10000.0,
									"presentation_rect" : [ 158.304504, 158.23526, 39.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-30",
									"numinlets" : 1,
									"triscale" : 0.9,
									"triangle" : 0,
									"numoutlets" : 2,
									"patching_rect" : [ 114.304504, 293.23526, 39.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "Preamp",
									"minimum" : 0.0,
									"maximum" : 48.0,
									"presentation_rect" : [ 158.304504, 112.23526, 39.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numinlets" : 1,
									"triscale" : 0.9,
									"triangle" : 0,
									"numoutlets" : 2,
									"patching_rect" : [ 114.304504, 253.23526, 36.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/release",
									"text" : "jcom.parameter limiter/release @ramp/drive scheduler @type msg_float @range/bounds 0 3000 @range/clipmode low @description \"Limiter: Set release time as ms.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-40",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 159.304504, 288.23526, 462.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/preamp",
									"text" : "jcom.parameter limiter/preamp @ramp/drive scheduler @range/bounds 0 48 @range/clipmode none @type msg_float @description \"Limiter: Preamp as dB.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-43",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 159.304504, 248.23526, 411.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Arial",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 12.0, 437.0, 100.0, 18.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontname" : "Arial",
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 12.0, 412.0, 36.0, 18.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "front" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 12.0, 392.0, 36.0, 18.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "front" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 12.0, 357.0, 25.0, 25.0 ],
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "DC-blocker :",
									"presentation_rect" : [ 98.0, 80.0, 75.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 5.0, 210.0, 75.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Lookahead [Samples] :",
									"linecount" : 3,
									"presentation_rect" : [ 44.0, 56.0, 128.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 165.0, 67.0, 43.0 ],
									"presentation" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Postamp [dB]:",
									"linecount" : 2,
									"presentation_rect" : [ 44.0, 181.0, 88.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 130.0, 60.0, 31.0 ],
									"presentation" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Mode:",
									"presentation_rect" : [ 44.0, 35.0, 62.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 95.0, 62.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Threshold [dB]:",
									"linecount" : 2,
									"presentation_rect" : [ 37.0, 135.0, 95.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 50.0, 52.0, 31.0 ],
									"presentation" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"presentation_rect" : [ 177.0, 80.0, 20.0, 20.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 120.0, 210.0, 20.0, 20.0 ],
									"presentation" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/active[1]",
									"text" : "jcom.parameter limiter/dcblocker/active @type msg_toggle @description \"DC Blocker: Active or bypassed.\"",
									"fontname" : "Verdana",
									"id" : "obj-98",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 150.0, 210.0, 552.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"types" : [  ],
									"presentation_rect" : [ 106.0, 34.0, 92.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-29",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 90.0, 91.5, 66.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "int", "", "" ],
									"labelclick" : 1,
									"items" : [ "exponential", ",", "linear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"presentation_rect" : [ 158.304504, 135.0, 39.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-32",
									"numinlets" : 1,
									"triscale" : 0.9,
									"triangle" : 0,
									"numoutlets" : 2,
									"patching_rect" : [ 113.0, 50.5, 45.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"minimum" : 0,
									"maximum" : 256,
									"presentation_rect" : [ 171.0, 56.0, 27.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-34",
									"numinlets" : 1,
									"triscale" : 0.9,
									"triangle" : 0,
									"numoutlets" : 2,
									"patching_rect" : [ 113.0, 166.5, 45.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/mode",
									"text" : "jcom.parameter limiter/mode @type msg_symbol @description \"Limiter: Set the function to be used for calculating the scaling.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-38",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 160.0, 83.5, 333.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/threshold",
									"text" : "jcom.parameter limiter/threshold @ramp/drive scheduler @range/bounds -24 48 @range/clipmode none @type msg_float @description \"Limiter: Set threshold as dB.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-39",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 160.0, 41.5, 440.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/lookahead",
									"text" : "jcom.parameter limiter/lookahead @ramp/drive scheduler @range/bounds 0 256 @range/clipmode both @type msg_int @description \"Limiter: The number of samples to look ahead.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-41",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 160.0, 157.5, 513.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/postamp",
									"text" : "jcom.parameter limiter/postamp @ramp/drive scheduler @range/bounds -24 48 @range/clipmode none @type msg_float @description \"Limiter: Postamp as dB.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-42",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 160.0, 120.5, 417.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"presentation_rect" : [ 158.304504, 181.0, 39.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-35",
									"numinlets" : 1,
									"triscale" : 0.9,
									"triangle" : 0,
									"numoutlets" : 2,
									"patching_rect" : [ 114.0, 128.5, 45.0, 19.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"presentation_rect" : [ 14.0, 20.0, 191.0, 188.0 ],
									"id" : "obj-14",
									"numinlets" : 1,
									"border" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 413.0, 7.0, 59.0, 19.0 ],
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"presentation_rect" : [ 0.0, 2.0, 215.0, 316.0 ],
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 115.0, 5.0, 155.0, 25.0 ],
									"presentation" : 1,
									"rounded" : 15
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-98", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-98", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 1 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0,
						"fontname" : "Arial",
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
					"varname" : "limiter/active",
					"text" : "jcom.parameter limiter/active @type msg_toggle @description \"Limiter: Active or bypassed.\"",
					"fontname" : "Verdana",
					"id" : "obj-26",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 596.259155, 231.62619, 479.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Limiter:",
					"presentation_rect" : [ 126.0, 20.0, 49.119381, 19.0 ],
					"fontname" : "Verdana",
					"id" : "obj-44",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 506.259186, 231.62619, 61.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"presentation_rect" : [ 102.0, 21.0, 19.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-38",
					"numinlets" : 1,
					"triangle" : 0,
					"numoutlets" : 2,
					"patching_rect" : [ 497.0, 183.0, 19.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"presentation_rect" : [ 43.0, 21.0, 19.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-37",
					"numinlets" : 1,
					"triangle" : 0,
					"numoutlets" : 2,
					"patching_rect" : [ 481.0, 80.0, 19.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Arial",
					"id" : "obj-1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 122.0, 103.0, 191.0, 15.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"fontname" : "Arial",
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 506.0, 106.0, 51.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_number_of_voices",
					"fontname" : "Arial",
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 506.0, 128.0, 120.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontname" : "Arial",
					"id" : "obj-8",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 305.0, 210.0, 43.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "offset",
					"text" : "jcom.parameter offset @type msg_int @repetitions/allow 0 @range/bounds 0 64 @range/clipmode both @description \"Set channel offset for the multicable. Changes only take effect when audio is off.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-9",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 522.0, 181.0, 587.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1",
					"fontname" : "Arial",
					"id" : "obj-13",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 116.0, 277.0, 21.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontname" : "Arial",
					"id" : "obj-14",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 116.0, 320.0, 102.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "i",
					"text" : "p routing",
					"fontname" : "Arial",
					"id" : "obj-17",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 116.0, 299.0, 46.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 190.0, 174.0, 140.0, 507.0 ],
						"bglocked" : 0,
						"defrect" : [ 190.0, 174.0, 140.0, 507.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"title" : "Routing",
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 329.0, 464.0, 27.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-2",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 274.0, 495.0, 36.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_number_of_voices",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-3",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 329.0, 441.0, 120.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-4",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 274.0, 521.0, 42.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "select 0 0",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-5",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 393.0, 47.0, 55.0, 15.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 100 100 260 681, window exec",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-7",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 7.0, 99.0, 214.0, 15.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-8",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 6.0, 66.0, 239.0, 15.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-9",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 7.0, 82.0, 158.0, 15.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 7.0, 122.0, 59.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "grow", "close", "zoom", "nofloat", "menu", "minimize", ";", "#Q", "window", "constrain", 2, 2, 32768, 32768, ";", "#Q", "window", "size", 190, 174, 330, 681, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"hidden" : 1,
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 274.0, 584.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 274.0, 441.0, 51.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend script send Setup set Setup:",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 274.0, 548.0, 175.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 460.0, 47.0, 40.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "front" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 460.0, 67.0, 61.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-16",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 393.0, 17.0, 32.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1 set $2",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-17",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 696.0, 190.0, 54.0, 15.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 274.0, 95.0, 51.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "setup",
									"text" : "jcom.parameter setup @type msg_list @description \"List of output channels that multicable signal is routed to.\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-19",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 274.0, 393.0, 292.0, 27.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-20",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 274.0, 141.0, 71.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-21",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 274.0, 185.0, 51.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-22",
									"numinlets" : 32,
									"numoutlets" : 1,
									"patching_rect" : [ 274.0, 371.0, 417.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31",
									"linecount" : 2,
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-23",
									"numinlets" : 1,
									"numoutlets" : 33,
									"patching_rect" : [ 696.0, 210.0, 378.0, 27.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p thru",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-24",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 247.0, 164.0, 37.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "", "list" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 20.0, 74.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 20.0, 74.0, 600.0, 426.0 ],
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
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 111.0, 101.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-2",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 69.0, 100.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-3",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 111.0, 57.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-4",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 69.0, 57.0, 15.0, 15.0 ],
													"outlettype" : [ "list" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"default_fontsize" : 10.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "listfunnel",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-25",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 274.0, 117.0, 52.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "list" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t select l",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-26",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 85.0, 528.0, 50.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "select", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "1",
									"keymode" : 1,
									"clickmode" : 1,
									"presentation_rect" : [ 15.0, 10.0, 109.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-27",
									"wordwrap" : 0,
									"numinlets" : 1,
									"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"numoutlets" : 4,
									"patching_rect" : [ 16.0, 19.0, 109.0, 17.0 ],
									"presentation" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "", "int", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"rowheight" : 14,
									"selmode" : 0,
									"vscroll" : 0,
									"precision" : 0,
									"gridlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 14.0, 49.0, 57.0, 451.0 ],
									"fontname" : "Geneva",
									"savemode" : 1,
									"id" : "obj-28",
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 2,
									"hscroll" : 0,
									"just" : 1,
									"rows" : 32,
									"rowhead" : 1,
									"numoutlets" : 4,
									"patching_rect" : [ 15.0, 58.0, 57.0, 451.0 ],
									"presentation" : 1,
									"colhead" : 1,
									"hcellcolor" : [ 0.836576, 0.836576, 0.933852, 1.0 ],
									"fontsize" : 10.0,
									"cols" : 1,
									"outlettype" : [ "list", "", "", "" ],
									"colwidth" : 55,
									"bgcolor" : [ 0.992218, 0.992218, 0.992218, 1.0 ],
									"headercolor" : [ 0.743191, 0.743191, 0.743191, 1.0 ],
									"cellmap" : [ [ 0, 0, 1 ], [ 0, 1, 2 ], [ 0, 2, 3 ], [ 0, 3, 4 ], [ 0, 4, 5 ], [ 0, 5, 6 ], [ 0, 6, 7 ], [ 0, 7, 8 ], [ 0, 8, 9 ], [ 0, 9, 10 ], [ 0, 10, 11 ], [ 0, 11, 12 ], [ 0, 12, 13 ], [ 0, 13, 14 ], [ 0, 14, 15 ], [ 0, 15, 16 ], [ 0, 16, 17 ], [ 0, 17, 18 ], [ 0, 18, 19 ], [ 0, 19, 20 ], [ 0, 20, 21 ], [ 0, 21, 22 ], [ 0, 22, 23 ], [ 0, 23, 24 ], [ 0, 24, 25 ], [ 0, 25, 26 ], [ 0, 26, 27 ], [ 0, 27, 28 ], [ 0, 28, 29 ], [ 0, 29, 30 ], [ 0, 30, 31 ], [ 0, 31, 32 ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"rowheight" : 19,
									"selmode" : 0,
									"vscroll" : 0,
									"ignoreclick" : 1,
									"precision" : 0,
									"gridlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 14.0, 30.0, 111.0, 20.0 ],
									"fontname" : "Verdana",
									"savemode" : 1,
									"id" : "obj-29",
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 2,
									"hscroll" : 0,
									"just" : 1,
									"rows" : 1,
									"rowhead" : 1,
									"numoutlets" : 4,
									"patching_rect" : [ 15.0, 39.0, 111.0, 20.0 ],
									"presentation" : 1,
									"colhead" : 1,
									"hcellcolor" : [ 0.836576, 0.836576, 0.933852, 1.0 ],
									"fontsize" : 10.0,
									"cols" : 2,
									"outlettype" : [ "list", "", "", "" ],
									"colwidth" : 55,
									"bgcolor" : [ 0.992218, 0.992218, 0.992218, 1.0 ],
									"headercolor" : [ 0.743191, 0.743191, 0.743191, 1.0 ],
									"cellmap" : [ [ 0, 0, "Multicable" ], [ 1, 0, "Output" ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"varname" : "CellBlock",
									"rowheight" : 14,
									"vscroll" : 0,
									"precision" : 0,
									"gridlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 68.0, 49.0, 57.0, 451.0 ],
									"fontname" : "Verdana",
									"savemode" : 1,
									"id" : "obj-30",
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 2,
									"hscroll" : 0,
									"just" : 1,
									"rows" : 32,
									"numoutlets" : 4,
									"patching_rect" : [ 69.0, 58.0, 57.0, 451.0 ],
									"presentation" : 1,
									"hcellcolor" : [ 0.836576, 0.836576, 0.933852, 1.0 ],
									"fontsize" : 10.0,
									"cols" : 1,
									"outlettype" : [ "list", "", "", "" ],
									"colwidth" : 55,
									"bgcolor" : [ 0.992218, 0.992218, 0.992218, 1.0 ],
									"headercolor" : [ 0.743191, 0.743191, 0.743191, 1.0 ],
									"cellmap" : [ [ 0, 0, 1 ], [ 0, 1, 2 ], [ 0, 2, 3 ], [ 0, 3, 4 ], [ 0, 4, 5 ], [ 0, 5, 6 ], [ 0, 6, 7 ], [ 0, 7, 8 ], [ 0, 8, 9 ], [ 0, 9, 10 ], [ 0, 10, 11 ], [ 0, 11, 12 ], [ 0, 12, 13 ], [ 0, 13, 14 ], [ 0, 14, 15 ], [ 0, 15, 16 ], [ 0, 16, 17 ], [ 0, 17, 18 ], [ 0, 18, 19 ], [ 0, 19, 20 ], [ 0, 20, 21 ], [ 0, 21, 22 ], [ 0, 22, 23 ], [ 0, 23, 24 ], [ 0, 24, 25 ], [ 0, 25, 26 ], [ 0, 26, 27 ], [ 0, 27, 28 ], [ 0, 28, 29 ], [ 0, 29, 30 ], [ 0, 30, 31 ], [ 0, 31, 32 ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"hidden" : 1,
									"id" : "obj-32",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 393.0, -4.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "spray 32",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-33",
									"numinlets" : 1,
									"numoutlets" : 32,
									"patching_rect" : [ 274.0, 210.0, 417.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"presentation_rect" : [ 10.0, 5.0, 121.0, 499.0 ],
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 10.0, 126.0, 508.0 ],
									"presentation" : 1,
									"rounded" : 15
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 1,
									"midpoints" : [ 125.5, 549.0, 138.0, 549.0, 138.0, 18.0, 25.5, 18.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 1,
									"midpoints" : [ 94.5, 551.0, 140.0, 551.0, 140.0, 16.0, 25.5, 16.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 1,
									"midpoints" : [ 25.5, 36.0, 78.5, 36.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 1,
									"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"midpoints" : [ 402.5, 69.0, 363.0, 69.0, 363.0, 1.0, 78.5, 1.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [ 283.5, 429.0, 233.0, 429.0, 233.0, 90.0, 283.5, 90.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-24", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 1,
									"midpoints" : [ 315.5, 206.0, 283.5, 206.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 2 ],
									"destination" : [ "obj-22", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 2 ],
									"destination" : [ "obj-22", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 3 ],
									"destination" : [ "obj-22", 3 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 3 ],
									"destination" : [ "obj-22", 3 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 4 ],
									"destination" : [ "obj-22", 4 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 4 ],
									"destination" : [ "obj-22", 4 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 5 ],
									"destination" : [ "obj-22", 5 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 5 ],
									"destination" : [ "obj-22", 5 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 6 ],
									"destination" : [ "obj-22", 6 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 6 ],
									"destination" : [ "obj-22", 6 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 7 ],
									"destination" : [ "obj-22", 7 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 7 ],
									"destination" : [ "obj-22", 7 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 8 ],
									"destination" : [ "obj-22", 8 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 8 ],
									"destination" : [ "obj-22", 8 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 9 ],
									"destination" : [ "obj-22", 9 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 9 ],
									"destination" : [ "obj-22", 9 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 10 ],
									"destination" : [ "obj-22", 10 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 10 ],
									"destination" : [ "obj-22", 10 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 11 ],
									"destination" : [ "obj-22", 11 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 11 ],
									"destination" : [ "obj-22", 11 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 12 ],
									"destination" : [ "obj-22", 12 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 12 ],
									"destination" : [ "obj-22", 12 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 13 ],
									"destination" : [ "obj-22", 13 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 13 ],
									"destination" : [ "obj-22", 13 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 14 ],
									"destination" : [ "obj-22", 14 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 14 ],
									"destination" : [ "obj-22", 14 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [ 402.5, 40.0, 469.5, 40.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 15 ],
									"destination" : [ "obj-22", 15 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 15 ],
									"destination" : [ "obj-22", 15 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 16 ],
									"destination" : [ "obj-22", 16 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 16 ],
									"destination" : [ "obj-22", 16 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 17 ],
									"destination" : [ "obj-22", 17 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 17 ],
									"destination" : [ "obj-22", 17 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 18 ],
									"destination" : [ "obj-22", 18 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 18 ],
									"destination" : [ "obj-22", 18 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 19 ],
									"destination" : [ "obj-22", 19 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 19 ],
									"destination" : [ "obj-22", 19 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 20 ],
									"destination" : [ "obj-22", 20 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 20 ],
									"destination" : [ "obj-22", 20 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 21 ],
									"destination" : [ "obj-22", 21 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 21 ],
									"destination" : [ "obj-22", 21 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 22 ],
									"destination" : [ "obj-22", 22 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 22 ],
									"destination" : [ "obj-22", 22 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 23 ],
									"destination" : [ "obj-22", 23 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 23 ],
									"destination" : [ "obj-22", 23 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 24 ],
									"destination" : [ "obj-22", 24 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 24 ],
									"destination" : [ "obj-22", 24 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 25 ],
									"destination" : [ "obj-22", 25 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 25 ],
									"destination" : [ "obj-22", 25 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 26 ],
									"destination" : [ "obj-22", 26 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 26 ],
									"destination" : [ "obj-22", 26 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 27 ],
									"destination" : [ "obj-22", 27 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 27 ],
									"destination" : [ "obj-22", 27 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 28 ],
									"destination" : [ "obj-22", 28 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 28 ],
									"destination" : [ "obj-22", 28 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 29 ],
									"destination" : [ "obj-22", 29 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 29 ],
									"destination" : [ "obj-22", 29 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 30 ],
									"destination" : [ "obj-22", 30 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 30 ],
									"destination" : [ "obj-22", 30 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 31 ],
									"destination" : [ "obj-22", 31 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 31 ],
									"destination" : [ "obj-22", 31 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [ 283.5, 138.0, 705.5, 138.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0,
						"fontname" : "Arial",
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
					"text" : "jcom.oscroute /panel/open",
					"fontname" : "Arial",
					"id" : "obj-18",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 164.0, 242.0, 116.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Arial",
					"id" : "obj-19",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 132.0, 124.0, 125.0, 15.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Arial",
					"id" : "obj-21",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 47.0, 113.0, 79.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-22",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 24.0, 112.0, 22.0, 22.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-24",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 459.0, 124.0, 22.0, 22.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sur.output~",
					"fontname" : "Arial",
					"id" : "obj-27",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 305.0, 244.0, 172.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "multichannel signal input",
					"fontname" : "Arial",
					"id" : "obj-28",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 338.0, 124.0, 126.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-29",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 173.0, 20.0, 20.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices",
					"text" : "jcom.parameter numSpeakers @type msg_int @repetitions/allow 0 @range/bounds 2 32 @range/clipmode both @description \"Set number of output channels to use. Changes only take effect when audio is off.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-31",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 506.0, 75.0, 598.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"Send multicable signal to multiple dac~ channels. Includes  limiter and recording device\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-32",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 24.0, 143.0, 255.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_panel" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-36",
					"numinlets" : 1,
					"numoutlets" : 1,
					"prefix" : "audio",
					"has_mute" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-27", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 141.5, 140.0, 33.5, 140.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 131.5, 142.0, 33.5, 142.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 2 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 27.5, 267.0, 125.5, 267.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-14", 0 ],
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
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 797.5, 369.0, 492.0, 369.0, 492.0, 255.0, 515.5, 255.0 ]
				}

			}
 ]
	}

}
