{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 166.0, 84.0, 1464.0, 885.0 ],
		"bglocked" : 0,
		"defrect" : [ 166.0, 84.0, 1464.0, 885.0 ],
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
					"maxclass" : "newobj",
					"text" : "r #1_noise_off",
					"id" : "obj-1",
					"numinlets" : 0,
					"patching_rect" : [ 124.0, 560.0, 82.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1_file_off",
					"id" : "obj-2",
					"numinlets" : 0,
					"patching_rect" : [ 871.0, 387.0, 71.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1_camera_off",
					"id" : "obj-3",
					"numinlets" : 0,
					"patching_rect" : [ 885.0, 66.0, 93.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p offsets_etc",
					"id" : "obj-4",
					"numinlets" : 1,
					"patching_rect" : [ 212.0, 65.0, 72.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 557.0, 328.0, 676.0, 350.0 ],
						"bglocked" : 0,
						"defrect" : [ 557.0, 328.0, 676.0, 350.0 ],
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
									"text" : "sel 0 1 2",
									"id" : "obj-1",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 64.0, 243.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "bang", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #1_noise_off",
									"id" : "obj-2",
									"numinlets" : 1,
									"patching_rect" : [ 505.0, 199.0, 89.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #1_file_off",
									"id" : "obj-3",
									"numinlets" : 1,
									"patching_rect" : [ 403.0, 199.0, 100.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #1_camera_off",
									"id" : "obj-4",
									"numinlets" : 1,
									"patching_rect" : [ 301.0, 199.0, 99.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 0",
									"id" : "obj-5",
									"numinlets" : 1,
									"patching_rect" : [ 204.0, 109.0, 32.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 0",
									"id" : "obj-6",
									"numinlets" : 1,
									"patching_rect" : [ 127.0, 109.0, 32.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 0",
									"id" : "obj-7",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 109.0, 32.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "offset 0 -240",
									"id" : "obj-8",
									"numinlets" : 2,
									"patching_rect" : [ 204.0, 199.0, 73.0, 16.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "offset 0 -120",
									"id" : "obj-9",
									"numinlets" : 2,
									"patching_rect" : [ 127.0, 199.0, 73.0, 16.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "offset 0 -19",
									"id" : "obj-10",
									"numinlets" : 2,
									"patching_rect" : [ 50.0, 199.0, 67.0, 16.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-11",
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-12",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 235.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 171.0, 514.5, 171.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 72.5, 180.0, 514.5, 180.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 72.5, 182.0, 412.5, 182.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 226.5, 163.0, 412.5, 163.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 173.0, 310.5, 173.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 226.5, 165.0, 310.5, 165.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 2 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontsize" : 10.0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "file_loop",
					"align" : 1,
					"id" : "obj-5",
					"numinlets" : 1,
					"patching_rect" : [ 484.0, 286.0, 84.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"items" : [ "=", ",", "=>", ",", "<=>" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 51.0, 122.0, 29.0, 19.0 ],
					"labelclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "camera/camera",
					"text" : "jcom.parameter camera/camera @type msg_int @description \"Choose camera\"",
					"id" : "obj-7",
					"numinlets" : 1,
					"patching_rect" : [ 805.0, 292.0, 404.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "camera/device",
					"text" : "jcom.parameter camera/device @type msg_int @description \"Input device type\"",
					"id" : "obj-9",
					"numinlets" : 1,
					"patching_rect" : [ 805.0, 223.0, 410.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1_camera",
					"id" : "obj-10",
					"numinlets" : 0,
					"patching_rect" : [ 806.0, 248.0, 74.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1_device",
					"id" : "obj-11",
					"numinlets" : 0,
					"patching_rect" : [ 806.0, 181.0, 68.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file/framedump",
					"text" : "jcom.parameter file/framedump @type msg_toggle @repetitions/allow 0 @description \"Turn on or off framedump of the video\"",
					"linecount" : 2,
					"id" : "obj-12",
					"numinlets" : 1,
					"patching_rect" : [ 803.0, 449.0, 331.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "synth/color",
					"text" : "jcom.parameter synth/color @type msg_generic @description \"List of RGB colors\"",
					"id" : "obj-14",
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 715.0, 417.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p scale",
					"id" : "obj-15",
					"numinlets" : 2,
					"patching_rect" : [ 284.0, 245.0, 43.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 20.0, 74.0, 186.0, 179.0 ],
						"bglocked" : 0,
						"defrect" : [ 20.0, 74.0, 186.0, 179.0 ],
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
									"text" : "pak 0 0",
									"id" : "obj-1",
									"numinlets" : 2,
									"patching_rect" : [ 50.0, 76.0, 46.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "*[3]",
									"text" : "* 100",
									"id" : "obj-2",
									"numinlets" : 2,
									"patching_rect" : [ 50.0, 50.0, 38.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "*[2]",
									"text" : "* 100",
									"id" : "obj-3",
									"numinlets" : 2,
									"patching_rect" : [ 92.0, 50.0, 38.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-4",
									"numinlets" : 0,
									"patching_rect" : [ 92.0, 30.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-5",
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-6",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 98.0, 15.0, 15.0 ],
									"numoutlets" : 0,
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
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-5", 0 ],
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
						"default_fontsize" : 10.0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file/loop_points",
					"text" : "jcom.parameter file/loop_points @type msg_list @repetitions/allow 0 @description \"List of low and high loop point values\"",
					"linecount" : 4,
					"id" : "obj-16",
					"numinlets" : 1,
					"patching_rect" : [ 284.0, 306.0, 168.0, 54.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-17",
					"numinlets" : 1,
					"patching_rect" : [ 484.0, 308.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"varname" : "file_loop_points",
					"id" : "obj-18",
					"numinlets" : 2,
					"patching_rect" : [ 285.0, 224.0, 85.0, 15.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 117.0, 121.0, 115.0, 13.0 ],
					"size" : 1763
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "synth/noise/size/y",
					"text" : "jcom.parameter synth/noise/size/y @type msg_int @repetitions/allow 0 @ramp/drive scheduler @range/bounds 1 480 @range/clipmode low @description \"x size of noise matrix\"",
					"linecount" : 3,
					"id" : "obj-21",
					"numinlets" : 1,
					"patching_rect" : [ 474.0, 683.0, 315.0, 42.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file/audio",
					"text" : "jcom.parameter file/audio @type msg_toggle @repetitions/allow 0 @description \"Turn audio in the video file on or off\"",
					"linecount" : 2,
					"id" : "obj-23",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 510.0, 300.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "file_audio",
					"id" : "obj-24",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 492.0, 25.0, 15.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"filename" : "jcom.jsui_texttoggle.js",
					"presentation_rect" : [ 84.0, 124.0, 25.0, 15.0 ],
					"jsarguments" : [ "audio", "audio" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"id" : "obj-25",
					"numinlets" : 2,
					"patching_rect" : [ 435.0, 74.0, 39.0, 16.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "synth/noise/size/x",
					"text" : "jcom.parameter synth/noise/size/x @type msg_int @repetitions/allow 0 @ramp/drive scheduler @range/bounds 1 640 @range/clipmode low @description \"x size of noise matrix\"",
					"linecount" : 3,
					"id" : "obj-26",
					"numinlets" : 1,
					"patching_rect" : [ 470.0, 448.0, 315.0, 42.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "x",
					"id" : "obj-27",
					"numinlets" : 1,
					"patching_rect" : [ 108.0, 267.0, 17.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 112.0, 265.0, 17.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "synth_noise_size_y",
					"id" : "obj-28",
					"numinlets" : 1,
					"patching_rect" : [ 474.0, 661.0, 32.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 1,
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9,
					"triangle" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 124.0, 265.0, 32.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Size",
					"id" : "obj-29",
					"numinlets" : 1,
					"patching_rect" : [ 51.0, 267.0, 30.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 53.0, 265.0, 30.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "synth_noise_size_x",
					"id" : "obj-30",
					"numinlets" : 1,
					"patching_rect" : [ 470.0, 427.0, 32.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 1,
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9,
					"triangle" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 82.0, 265.0, 32.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "synth_noise_planes",
					"id" : "obj-31",
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 426.0, 32.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 1,
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9,
					"maximum" : 4,
					"triangle" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 160.0, 243.0, 32.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim 100",
					"id" : "obj-32",
					"numinlets" : 2,
					"patching_rect" : [ 516.0, 244.0, 52.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "setminmax 0 $1",
					"id" : "obj-33",
					"numinlets" : 2,
					"patching_rect" : [ 514.0, 193.0, 89.0, 16.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route time duration",
					"id" : "obj-34",
					"numinlets" : 1,
					"patching_rect" : [ 395.0, 23.0, 105.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"id" : "obj-35",
					"numinlets" : 1,
					"patching_rect" : [ 799.0, 21.0, 22.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"id" : "obj-36",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 341.0, 22.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "file_open",
					"id" : "obj-37",
					"numinlets" : 1,
					"patching_rect" : [ 806.0, 324.0, 25.0, 15.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"filename" : "jsui_textbutton.js",
					"presentation_rect" : [ 2.0, 124.0, 25.0, 15.0 ],
					"jsarguments" : [ "open" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file/counter",
					"text" : "jcom.parameter file/counter @type msg_int @repetitions/allow 0 @description \"Video file time counter\"",
					"linecount" : 2,
					"id" : "obj-39",
					"numinlets" : 1,
					"patching_rect" : [ 526.0, 122.0, 273.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file/rate",
					"text" : "jcom.parameter file/rate @type msg_float @repetitions/allow 0 @ramp/drive scheduler @range/bounds -2. 2. @range/clipmode none @description \"Playback rate of video file\"",
					"linecount" : 2,
					"id" : "obj-41",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 634.0, 445.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file/size",
					"text" : "jcom.parameter file/size @type msg_int @repetitions/allow 0 @description \"Select size of video playback\"",
					"linecount" : 2,
					"id" : "obj-43",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 572.0, 274.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file/loop",
					"text" : "jcom.parameter file/loop @type msg_toggle @repetitions/allow 0 @description \"Turn looping on or off\"",
					"linecount" : 2,
					"id" : "obj-45",
					"numinlets" : 1,
					"patching_rect" : [ 484.0, 327.0, 269.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file/on",
					"text" : "jcom.parameter file/on @type msg_toggle @repetitions/allow 0 @description \"Turn video on or off\"",
					"linecount" : 2,
					"id" : "obj-47",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 409.0, 260.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[2]",
					"text" : "jcom.message file/read @description \"Open dialog to select video file\"",
					"id" : "obj-49",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 362.0, 358.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "synth/noise/planes",
					"text" : "jcom.parameter synth/noise/planes @type msg_int @range/bounds 1 4 @range/clipmode both @ramp/drive none @description \"Number of matrix planes\"",
					"linecount" : 2,
					"id" : "obj-51",
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 446.0, 421.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "synth/noise/rate",
					"text" : "jcom.parameter synth/noise/rate @type msg_int @ramp/drive scheduler @repetitions/allow 0 @range/bounds 2 1000 @range/clipmode low @description \"Metro speed for noise\"",
					"linecount" : 2,
					"id" : "obj-53",
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 512.0, 438.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rate",
					"id" : "obj-54",
					"numinlets" : 1,
					"patching_rect" : [ 53.0, 245.0, 31.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 53.0, 244.0, 31.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Planes",
					"id" : "obj-55",
					"numinlets" : 1,
					"patching_rect" : [ 125.0, 245.0, 40.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 122.0, 243.0, 40.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "synth_color_on_but",
					"id" : "obj-56",
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 625.0, 25.0, 15.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"filename" : "jcom.jsui_texttoggle.js",
					"presentation_rect" : [ 11.0, 379.0, 25.0, 15.0 ],
					"jsarguments" : [ "color", "color" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "swatch",
					"varname" : "synth_color_sw",
					"id" : "obj-57",
					"numinlets" : 3,
					"patching_rect" : [ 17.0, 682.0, 128.0, 32.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"presentation_rect" : [ 54.0, 365.0, 128.0, 32.0 ],
					"compatibility" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "synth_noise_rate",
					"id" : "obj-58",
					"numinlets" : 1,
					"patching_rect" : [ 18.0, 492.0, 32.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 2,
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9,
					"triangle" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 82.0, 243.0, 32.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "camera/size",
					"text" : "jcom.parameter camera/size @type msg_int @description \"Resolution of captured image\"",
					"linecount" : 2,
					"id" : "obj-60",
					"numinlets" : 1,
					"patching_rect" : [ 799.0, 133.0, 231.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "camera_size",
					"id" : "obj-61",
					"numinlets" : 1,
					"patching_rect" : [ 800.0, 113.0, 55.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"items" : [ 640, 480, ",", 320, 240, ",", 160, 120, ",", 80, 60 ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 13.0, 41.0, 75.0, 19.0 ],
					"labelclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[1]",
					"text" : "jcom.message camera/settings @description \"Open dialog for camera settings\"",
					"id" : "obj-63",
					"numinlets" : 1,
					"patching_rect" : [ 799.0, 42.0, 403.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "camera_settings",
					"id" : "obj-64",
					"numinlets" : 1,
					"patching_rect" : [ 799.0, 3.0, 35.0, 15.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"filename" : "jsui_textbutton.js",
					"presentation_rect" : [ 53.0, 24.0, 35.0, 15.0 ],
					"jsarguments" : [ "settings" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "file_counter",
					"id" : "obj-65",
					"numinlets" : 1,
					"patching_rect" : [ 436.0, 98.0, 51.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"triscale" : 0.9,
					"triangle" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 179.0, 147.0, 51.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 1 $1",
					"id" : "obj-66",
					"numinlets" : 2,
					"patching_rect" : [ 436.0, 123.0, 49.0, 16.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "file_rate",
					"id" : "obj-67",
					"numinlets" : 1,
					"patching_rect" : [ 805.0, 614.0, 32.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"triscale" : 0.9,
					"triangle" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 31.0, 147.0, 35.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "rate",
					"id" : "obj-68",
					"numinlets" : 1,
					"patching_rect" : [ 4.0, 146.0, 29.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 1.0, 148.0, 29.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"id" : "obj-69",
					"numinlets" : 1,
					"patching_rect" : [ 515.0, 220.0, 85.0, 15.0 ],
					"presentation" : 1,
					"bgcolor" : [ 0.678431, 0.678431, 0.678431, 1.0 ],
					"slidercolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"orientation" : 0,
					"settype" : 0,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"setminmax" : [ 0.0, 253.0 ],
					"outlettype" : [ "", "" ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"setstyle" : 1,
					"presentation_rect" : [ 117.0, 134.0, 115.0, 12.0 ],
					"contdata" : 1,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"compatibility" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "file_on",
					"id" : "obj-70",
					"numinlets" : 1,
					"patching_rect" : [ 807.0, 389.0, 20.0, 15.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"filename" : "jcom.jsui_texttoggle.js",
					"presentation_rect" : [ 29.0, 124.0, 20.0, 15.0 ],
					"jsarguments" : [ "on", "off" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "file_size",
					"id" : "obj-71",
					"numinlets" : 1,
					"patching_rect" : [ 806.0, 551.0, 46.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"items" : [ "native", "size", ",", 640, 480, ",", 320, 240, ",", 160, 120, ",", 80, 60 ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 71.0, 147.0, 84.0, 19.0 ],
					"labelclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Camera",
					"id" : "obj-72",
					"numinlets" : 1,
					"patching_rect" : [ 806.0, 273.0, 100.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"items" : [  ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 103.0, 42.0, 100.0, 19.0 ],
					"labelclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Device",
					"id" : "obj-73",
					"numinlets" : 1,
					"patching_rect" : [ 806.0, 204.0, 100.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"items" : [ "DV Video", ",", "IIDC FireWire Video", ",", "USB Video Class Video" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 103.0, 24.0, 100.0, 19.0 ],
					"labelclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "camera_on",
					"id" : "obj-74",
					"numinlets" : 1,
					"patching_rect" : [ 799.0, 68.0, 20.0, 15.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"filename" : "jcom.jsui_texttoggle.js",
					"presentation_rect" : [ 14.0, 24.0, 20.0, 15.0 ],
					"jsarguments" : [ "on", "off" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "synth/color/on",
					"text" : "jcom.parameter synth/color/on @type msg_toggle @range/bounds 0 1 @range/clipmode both @repetitions/allow 0 @ramp/drive none @description \"Turn video color synth on or off\"",
					"linecount" : 2,
					"id" : "obj-76",
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 644.0, 453.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "synth/noise/on",
					"text" : "jcom.parameter synth/noise/on @type msg_toggle @range/bounds 0 1 @range/clipmode both @repetitions/allow 0 @ramp/drive none @description \"Turn video noise on or off\"",
					"linecount" : 2,
					"id" : "obj-78",
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 582.0, 455.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "synth_noise_on",
					"id" : "obj-79",
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 562.0, 25.0, 15.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"filename" : "jcom.jsui_texttoggle.js",
					"presentation_rect" : [ 14.0, 255.0, 25.0, 15.0 ],
					"jsarguments" : [ "noise", "noise" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"id" : "obj-80",
					"numinlets" : 1,
					"patching_rect" : [ 212.0, 85.0, 64.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-81",
					"numinlets" : 0,
					"patching_rect" : [ 212.0, 17.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "camera/on",
					"text" : "jcom.parameter camera/on @type msg_toggle @description \"Turn camera on\"",
					"id" : "obj-83",
					"numinlets" : 1,
					"patching_rect" : [ 799.0, 86.0, 400.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This almost works. There is a problem with setting max values after looping is turned off.",
					"linecount" : 3,
					"id" : "obj-84",
					"numinlets" : 1,
					"patching_rect" : [ 530.0, 9.0, 175.0, 42.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1",
					"id" : "obj-86",
					"numinlets" : 1,
					"patching_rect" : [ 389.0, 271.0, 22.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "speedlim 1000",
					"id" : "obj-87",
					"numinlets" : 2,
					"patching_rect" : [ 389.0, 245.0, 81.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak set 0 100",
					"id" : "obj-88",
					"numinlets" : 3,
					"patching_rect" : [ 284.0, 183.0, 77.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 0",
					"id" : "obj-89",
					"numinlets" : 2,
					"patching_rect" : [ 284.0, 157.0, 32.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "/[2]",
					"text" : "/ 100",
					"id" : "obj-90",
					"numinlets" : 2,
					"patching_rect" : [ 362.0, 159.0, 37.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "size $1",
					"id" : "obj-91",
					"numinlets" : 2,
					"patching_rect" : [ 362.0, 183.0, 43.0, 16.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-92",
					"numinlets" : 1,
					"patching_rect" : [ 0.0, -1.0, 239.0, 413.0 ],
					"presentation" : 1,
					"bgcolor" : [ 0.141176, 0.141176, 0.141176, 1.0 ],
					"numoutlets" : 0,
					"rounded" : 0,
					"presentation_rect" : [ 0.0, -1.0, 239.0, 413.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 483.5, 726.0, 471.0, 726.0, 471.0, 657.0, 483.5, 657.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 479.5, 492.0, 456.0, 492.0, 456.0, 423.0, 479.5, 423.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [ 26.5, 675.0, 3.0, 675.0, 3.0, 621.0, 25.5, 621.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [ 26.5, 612.0, 3.0, 612.0, 3.0, 558.0, 26.5, 558.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [ 26.5, 543.0, 3.0, 543.0, 3.0, 489.0, 27.5, 489.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 26.5, 477.0, 3.0, 477.0, 3.0, 423.0, 28.5, 423.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [ 535.5, 152.0, 524.0, 152.0, 524.0, 93.0, 445.5, 93.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 445.5, 117.0, 535.5, 117.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 493.5, 357.0, 471.0, 357.0, 471.0, 282.0, 493.5, 282.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [ 813.5, 666.0, 801.0, 666.0, 801.0, 609.0, 814.5, 609.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [ 813.5, 603.0, 801.0, 603.0, 801.0, 546.0, 815.5, 546.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 813.5, 540.0, 789.0, 540.0, 789.0, 486.0, 813.5, 486.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [ 813.5, 441.0, 789.0, 441.0, 789.0, 384.0, 816.5, 384.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [ 814.5, 311.0, 792.0, 311.0, 792.0, 269.0, 815.5, 269.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [ 814.5, 243.0, 792.0, 243.0, 792.0, 201.0, 815.5, 201.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [ 808.5, 164.0, 784.0, 164.0, 784.0, 110.0, 809.5, 110.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 808.5, 104.0, 796.0, 104.0, 796.0, 65.0, 808.5, 65.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 1 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [ 880.5, 407.0, 813.5, 407.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [ 894.5, 84.0, 808.5, 84.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"midpoints" : [ 447.5, 65.0, 371.5, 65.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 447.5, 60.0, 516.0, 60.0, 516.0, 180.0, 523.5, 180.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-88", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-89", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [ 404.5, 120.0, 445.5, 120.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [ 525.5, 264.0, 498.0, 264.0, 498.0, 93.0, 445.5, 93.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 404.5, 60.0, 444.5, 60.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [ 523.5, 208.0, 524.5, 208.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [ 445.5, 216.0, 524.5, 216.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [ 133.5, 579.0, 26.5, 579.0 ]
				}

			}
 ]
	}

}
