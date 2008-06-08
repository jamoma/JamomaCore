{
	"patcher" : 	{
		"rect" : [ 8.0, 44.0, 1203.0, 773.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 8.0, 44.0, 1203.0, 773.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1_noise_off",
					"numinlets" : 0,
					"patching_rect" : [ 124.0, 560.0, 79.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1_file_off",
					"numinlets" : 0,
					"patching_rect" : [ 871.0, 387.0, 71.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1_camera_off",
					"numinlets" : 0,
					"patching_rect" : [ 890.0, 91.0, 89.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p offsets_etc",
					"numinlets" : 1,
					"patching_rect" : [ 212.0, 65.0, 70.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"patcher" : 					{
						"rect" : [ 557.0, 328.0, 676.0, 350.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 557.0, 328.0, 676.0, 350.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1 2",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 64.0, 243.0, 17.0 ],
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "bang", "bang", "" ],
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #1_noise_off",
									"numinlets" : 1,
									"patching_rect" : [ 505.0, 199.0, 89.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #1_file_off",
									"numinlets" : 1,
									"patching_rect" : [ 403.0, 199.0, 100.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #1_camera_off",
									"numinlets" : 1,
									"patching_rect" : [ 301.0, 199.0, 99.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 0",
									"numinlets" : 1,
									"patching_rect" : [ 204.0, 109.0, 31.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "int" ],
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 0",
									"numinlets" : 1,
									"patching_rect" : [ 127.0, 109.0, 31.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "int" ],
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 0",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 109.0, 31.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "int" ],
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "offset 0 -240",
									"numinlets" : 2,
									"patching_rect" : [ 204.0, 199.0, 72.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "offset 0 -120",
									"numinlets" : 2,
									"patching_rect" : [ 127.0, 199.0, 72.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "offset 0 -19",
									"numinlets" : 2,
									"patching_rect" : [ 50.0, 199.0, 66.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 235.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-12",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 2 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 225.5, 165.0, 310.5, 165.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 148.5, 173.0, 310.5, 173.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 225.5, 163.0, 412.5, 163.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 71.5, 182.0, 412.5, 182.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 71.5, 180.0, 514.5, 180.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 148.5, 171.0, 514.5, 171.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "file_loop",
					"numinlets" : 1,
					"patching_rect" : [ 49.0, 124.0, 27.0, 17.0 ],
					"types" : [  ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-5",
					"items" : [ "=", ",", "=>", ",", "<=>" ],
					"labelclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Camera",
					"numinlets" : 1,
					"patching_rect" : [ 805.0, 252.0, 68.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "camera\/camera",
					"text" : "jcom.parameter camera\/camera @type msg_int @description \"Choose camera\"",
					"numinlets" : 1,
					"patching_rect" : [ 805.0, 272.0, 368.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Device",
					"numinlets" : 1,
					"patching_rect" : [ 805.0, 203.0, 64.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "camera\/device",
					"text" : "jcom.parameter camera\/device @type msg_int @description \"Input device type\"",
					"numinlets" : 1,
					"patching_rect" : [ 805.0, 223.0, 374.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1_camera",
					"numinlets" : 0,
					"patching_rect" : [ 339.0, 18.0, 70.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1_device",
					"numinlets" : 0,
					"patching_rect" : [ 270.0, 18.0, 66.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file\/framedump",
					"text" : "jcom.parameter file\/framedump @type msg_toggle @repetitions 0 @description \"Turn on or off framedump of the video\"",
					"linecount" : 2,
					"numinlets" : 0,
					"patching_rect" : [ 803.0, 449.0, 301.0, 28.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar synth_color_sw",
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 689.0, 107.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "synth\/color",
					"text" : "jcom.parameter synth\/color @type msg_generic @description \"List of RGB colors\"",
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 710.0, 385.0, 17.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p scale",
					"numinlets" : 2,
					"patching_rect" : [ 284.0, 245.0, 41.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"patcher" : 					{
						"rect" : [ 20.0, 74.0, 186.0, 179.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 20.0, 74.0, 186.0, 179.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0 0",
									"numinlets" : 2,
									"patching_rect" : [ 50.0, 76.0, 43.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "*[3]",
									"text" : "* 100",
									"numinlets" : 2,
									"patching_rect" : [ 50.0, 50.0, 38.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "int" ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "*[2]",
									"text" : "* 100",
									"numinlets" : 2,
									"patching_rect" : [ 92.0, 50.0, 38.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "int" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 92.0, 30.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 98.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-6",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file\/loop_points",
					"text" : "jcom.parameter file\/loop_points @type msg_list @repetitions 0 @description \"List of low and high loop point values\"",
					"linecount" : 4,
					"numinlets" : 1,
					"patching_rect" : [ 284.0, 306.0, 164.0, 49.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 484.0, 308.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"varname" : "file_loop_points",
					"size" : 1763,
					"numinlets" : 2,
					"patching_rect" : [ 104.0, 124.0, 85.0, 15.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar synth_noise_size_x",
					"numinlets" : 1,
					"patching_rect" : [ 472.0, 582.0, 124.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar synth_noise_size_y",
					"numinlets" : 1,
					"patching_rect" : [ 474.0, 662.0, 124.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "synth\/noise\/size\/y",
					"text" : "jcom.parameter synth\/noise\/size\/y @type msg_int @repetitions 0 @ramp/drive scheduler @range/bounds 1 480 @range/clipmode low @description \"x size of noise matrix\"",
					"linecount" : 3,
					"numinlets" : 1,
					"patching_rect" : [ 474.0, 683.0, 264.0, 38.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar file_audio",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 488.0, 78.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file\/audio",
					"text" : "jcom.parameter file\/audio @type msg_toggle @repetitions 0 @description \"Turn audio in the video file on or off\"",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 510.0, 274.0, 28.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "file_audio",
					"numinlets" : 1,
					"patching_rect" : [ 77.0, 124.0, 25.0, 15.0 ],
					"numoutlets" : 2,
					"jsarguments" : [ "audio", "audio" ],
					"outlettype" : [ "", "" ],
					"id" : "obj-24",
					"filename" : "jcom.jsui_texttoggle.js"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"numinlets" : 2,
					"patching_rect" : [ 193.0, 121.0, 39.0, 15.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "synth\/noise\/size\/x",
					"text" : "jcom.parameter synth\/noise\/size\/x @type msg_int @repetitions 0 @ramp/drive scheduler @range/bounds 1 640 @range/clipmode low @description \"x size of noise matrix\"",
					"linecount" : 3,
					"numinlets" : 1,
					"patching_rect" : [ 473.0, 602.0, 285.0, 38.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "x",
					"numinlets" : 1,
					"patching_rect" : [ 108.0, 267.0, 16.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-27",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "synth_noise_size_y",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 122.0, 265.0, 32.0, 17.0 ],
					"transparent" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-28",
					"minimum" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Size",
					"numinlets" : 1,
					"patching_rect" : [ 51.0, 267.0, 30.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-29",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "synth_noise_size_x",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 80.0, 265.0, 32.0, 17.0 ],
					"transparent" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-30",
					"minimum" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "synth_noise_planes",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 160.0, 243.0, 32.0, 17.0 ],
					"transparent" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"maximum" : 4,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-31",
					"minimum" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim 100",
					"numinlets" : 2,
					"patching_rect" : [ 103.0, 172.0, 50.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "setminmax 0 $1",
					"numinlets" : 2,
					"patching_rect" : [ 362.0, 120.0, 83.0, 15.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route time duration",
					"numinlets" : 1,
					"patching_rect" : [ 319.0, 65.0, 97.0, 17.0 ],
					"numoutlets" : 3,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 46.0, 20.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "bang" ],
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 341.0, 20.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "bang" ],
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "file_open",
					"numinlets" : 1,
					"patching_rect" : [ 3.0, 124.0, 25.0, 15.0 ],
					"numoutlets" : 1,
					"jsarguments" : [ "open" ],
					"outlettype" : [ "" ],
					"id" : "obj-37",
					"filename" : "jsui_textbutton.js"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar file_counter",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 674.0, 89.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file\/counter",
					"text" : "jcom.parameter file\/counter @type msg_int @repetitions 0 @description \"Video file time counter\"",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 696.0, 252.0, 28.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar file_rate",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 612.0, 74.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file\/rate",
					"text" : "jcom.parameter file\/rate @type msg_float @repetitions 0 @ramp/drive scheduler @range/bounds -2. 2. @range/clipmode none @description \"Playback rate of video file\"",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 634.0, 338.0, 28.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-41"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar file_size",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 550.0, 73.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file\/size",
					"text" : "jcom.parameter file\/size @type msg_int @repetitions 0 @description \"Select size of video playback\"",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 572.0, 254.0, 28.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar file_loop",
					"numinlets" : 1,
					"patching_rect" : [ 484.0, 287.0, 73.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file\/loop",
					"text" : "jcom.parameter file\/loop @type msg_toggle @repetitions 0 @description \"Turn looping on or off\"",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 484.0, 327.0, 250.0, 28.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-45"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar file_on",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 387.0, 65.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-46"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file\/on",
					"text" : "jcom.parameter file\/on @type msg_toggle @repetitions 0 @description \"Turn video on or off\"",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 409.0, 243.0, 28.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-47"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar file_open",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 320.0, 75.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-48"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[2]",
					"text" : "jcom.message file\/read @description \"Open dialog to select video file\"",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 362.0, 328.0, 17.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-49"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar synth_noise_planes",
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 424.0, 122.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "synth\/noise\/planes",
					"text" : "jcom.parameter synth\/noise\/planes @type msg_int @range/bounds 1 4 @range/clipmode both @ramp/drive none @description \"Number of matrix planes\"",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 446.0, 307.0, 28.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-51"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar synth_noise_rate",
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 490.0, 113.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-52"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "synth\/noise\/rate",
					"text" : "jcom.parameter synth\/noise\/rate @type msg_int @ramp/drive scheduler @repetitions 0 @range/bounds 2 1000 @range/clipmode low @description \"Metro speed for noise\"",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 512.0, 345.0, 28.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-53"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rate",
					"numinlets" : 1,
					"patching_rect" : [ 53.0, 245.0, 30.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-54",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Planes",
					"numinlets" : 1,
					"patching_rect" : [ 125.0, 245.0, 39.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-55",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "synth_color_on_but",
					"numinlets" : 1,
					"patching_rect" : [ 11.0, 379.0, 25.0, 15.0 ],
					"numoutlets" : 2,
					"jsarguments" : [ "color", "color" ],
					"outlettype" : [ "", "" ],
					"id" : "obj-56",
					"filename" : "jcom.jsui_texttoggle.js"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "swatch",
					"varname" : "synth_color_sw",
					"numinlets" : 3,
					"compatibility" : 1,
					"patching_rect" : [ 54.0, 365.0, 128.0, 32.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"id" : "obj-57"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "synth_noise_rate",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 82.0, 243.0, 32.0, 17.0 ],
					"transparent" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-58",
					"minimum" : 2,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar camera_size",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 138.0, 91.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-59"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "camera\/size",
					"text" : "jcom.parameter camera\/size @type msg_int @description \"Resolution of captured image\"",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 158.0, 212.0, 28.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-60"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "camera_size",
					"numinlets" : 1,
					"patching_rect" : [ 13.0, 41.0, 55.0, 17.0 ],
					"types" : [  ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-61",
					"items" : [ 640, 480, ",", 320, 240, ",", 160, 120, ",", 80, 60 ],
					"labelclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar camera_settings",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 25.0, 109.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-62"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxt[1]",
					"text" : "jcom.message camera\/settings @description \"Open dialog for camera settings\"",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 67.0, 367.0, 17.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-63"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "camera_settings",
					"numinlets" : 1,
					"patching_rect" : [ 38.0, 24.0, 35.0, 15.0 ],
					"numoutlets" : 1,
					"jsarguments" : [ "settings" ],
					"outlettype" : [ "" ],
					"id" : "obj-64",
					"filename" : "jsui_textbutton.js"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "file_counter",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 193.0, 145.0, 51.0, 17.0 ],
					"transparent" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-65",
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 1 $1",
					"numinlets" : 2,
					"patching_rect" : [ 193.0, 170.0, 48.0, 15.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-66"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "file_rate",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 23.0, 144.0, 32.0, 17.0 ],
					"transparent" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-67",
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "rate",
					"numinlets" : 1,
					"patching_rect" : [ 4.0, 146.0, 29.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-68",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"slidercolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"numinlets" : 1,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"compatibility" : 1,
					"bgcolor" : [ 0.678431, 0.678431, 0.678431, 1.0 ],
					"patching_rect" : [ 103.0, 145.0, 85.0, 15.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"numoutlets" : 2,
					"contdata" : 1,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"settype" : 0,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"outlettype" : [ "", "" ],
					"orientation" : 0,
					"id" : "obj-69",
					"setstyle" : 1,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"setminmax" : [ 0.0, 253.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "file_on",
					"numinlets" : 1,
					"patching_rect" : [ 29.0, 124.0, 20.0, 15.0 ],
					"numoutlets" : 2,
					"jsarguments" : [ "on", "off" ],
					"outlettype" : [ "", "" ],
					"id" : "obj-70",
					"filename" : "jcom.jsui_texttoggle.js"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "file_size",
					"numinlets" : 1,
					"patching_rect" : [ 49.0, 145.0, 46.0, 17.0 ],
					"types" : [  ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-71",
					"items" : [ "native", "size", ",", 640, 480, ",", 320, 240, ",", 160, 120, ",", 80, 60 ],
					"labelclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Camera",
					"numinlets" : 1,
					"patching_rect" : [ 84.0, 42.0, 100.0, 17.0 ],
					"types" : [  ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-72",
					"items" : [  ],
					"labelclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Device",
					"numinlets" : 1,
					"patching_rect" : [ 84.0, 24.0, 100.0, 17.0 ],
					"types" : [  ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-73",
					"items" : [ "DV Video", ",", "IIDC FireWire Video", ",", "USB Video Class Video" ],
					"labelclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "camera_on",
					"numinlets" : 1,
					"patching_rect" : [ 13.0, 24.0, 20.0, 15.0 ],
					"numoutlets" : 2,
					"jsarguments" : [ "on", "off" ],
					"outlettype" : [ "", "" ],
					"id" : "obj-74",
					"filename" : "jcom.jsui_texttoggle.js"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar synth_color_on_but",
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 622.0, 124.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-75"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "synth\/color\/on",
					"text" : "jcom.parameter synth\/color\/on @type msg_toggle @range/bounds 0 1 @range/clipmode both @repetitions 0 @ramp/drive none @description \"Turn video color synth on or off\"",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 644.0, 359.0, 28.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-76"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar synth_noise_on",
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 560.0, 104.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-77"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "synth\/noise\/on",
					"text" : "jcom.parameter synth\/noise\/on @type msg_toggle @range/bounds 0 1 @range/clipmode both @repetitions 0 @ramp/drive none @description \"Turn video noise on or off\"",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 582.0, 344.0, 28.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-78"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "synth_noise_on",
					"numinlets" : 1,
					"patching_rect" : [ 11.0, 252.0, 25.0, 15.0 ],
					"numoutlets" : 2,
					"jsarguments" : [ "noise", "noise" ],
					"outlettype" : [ "", "" ],
					"id" : "obj-79",
					"filename" : "jcom.jsui_texttoggle.js"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"numinlets" : 1,
					"patching_rect" : [ 212.0, 85.0, 61.0, 17.0 ],
					"numoutlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-80",
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 212.0, 17.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-81",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar camera_on",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 91.0, 83.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-82"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "camera\/on",
					"text" : "jcom.parameter camera\/on @type msg_toggle @description \"Turn camera on\"",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 111.0, 363.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-83"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This almost works. There is a problem with setting max values after looping is turned off.",
					"linecount" : 3,
					"numinlets" : 1,
					"patching_rect" : [ 516.0, 138.0, 175.0, 38.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-84"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar file_loop_points 2",
					"numinlets" : 1,
					"patching_rect" : [ 284.0, 213.0, 115.0, 17.0 ],
					"numoutlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-85"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1",
					"numinlets" : 1,
					"patching_rect" : [ 389.0, 271.0, 21.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "int" ],
					"id" : "obj-86"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "speedlim 1000",
					"numinlets" : 2,
					"patching_rect" : [ 389.0, 245.0, 76.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-87"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak set 0 100",
					"numinlets" : 3,
					"patching_rect" : [ 284.0, 183.0, 72.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-88"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 0",
					"numinlets" : 2,
					"patching_rect" : [ 284.0, 157.0, 32.0, 17.0 ],
					"numoutlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "bang", "" ],
					"id" : "obj-89"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "\/[2]",
					"text" : "\/ 100",
					"numinlets" : 2,
					"patching_rect" : [ 362.0, 159.0, 37.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "int" ],
					"id" : "obj-90"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "size $1",
					"numinlets" : 2,
					"patching_rect" : [ 362.0, 183.0, 43.0, 15.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-91"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"bgcolor" : [ 0.141176, 0.141176, 0.141176, 1.0 ],
					"patching_rect" : [ 0.0, -1.0, 239.0, 413.0 ],
					"rounded" : 0,
					"numoutlets" : 0,
					"id" : "obj-92"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"midpoints" : [ 26.5, 477.0, 14.0, 477.0, 14.0, 420.0, 26.5, 420.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"midpoints" : [ 26.5, 543.0, 14.0, 543.0, 14.0, 486.0, 26.5, 486.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 1,
					"midpoints" : [ 26.5, 613.0, 14.0, 613.0, 14.0, 556.0, 26.5, 556.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 1,
					"midpoints" : [ 133.5, 579.0, 26.5, 579.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 1,
					"midpoints" : [ 26.5, 675.0, 14.0, 675.0, 14.0, 618.0, 26.5, 618.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"midpoints" : [ 371.5, 140.0, 112.5, 140.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [ 328.5, 117.0, 202.5, 117.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-89", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 1,
					"midpoints" : [ 371.5, 205.0, 293.5, 205.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 1 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-88", 2 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 1 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 482.5, 650.0, 467.0, 650.0, 467.0, 577.0, 481.5, 577.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [ 483.5, 730.0, 468.0, 730.0, 468.0, 655.0, 483.5, 655.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [ 493.5, 362.0, 478.0, 362.0, 478.0, 283.0, 493.5, 283.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 1,
					"midpoints" : [ 813.5, 133.0, 797.0, 133.0, 797.0, 86.0, 813.5, 86.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 1,
					"midpoints" : [ 899.5, 109.0, 813.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [ 813.5, 193.0, 797.0, 193.0, 797.0, 133.0, 813.5, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1,
					"midpoints" : [ 813.5, 440.0, 801.0, 440.0, 801.0, 383.0, 813.5, 383.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [ 880.5, 407.0, 813.5, 407.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [ 813.5, 541.0, 801.0, 541.0, 801.0, 484.0, 813.5, 484.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [ 813.5, 603.0, 801.0, 603.0, 801.0, 546.0, 813.5, 546.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [ 813.5, 665.0, 801.0, 665.0, 801.0, 608.0, 813.5, 608.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [ 813.5, 727.0, 801.0, 727.0, 801.0, 670.0, 813.5, 670.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [ 814.5, 245.0, 798.0, 245.0, 798.0, 198.0, 814.5, 198.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [ 814.5, 293.0, 798.0, 293.0, 798.0, 247.0, 814.5, 247.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
