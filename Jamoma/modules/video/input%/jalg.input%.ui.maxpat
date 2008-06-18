{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 0.0, 41.0, 1400.0, 955.0 ],
		"bglocked" : 0,
		"defrect" : [ 0.0, 41.0, 1400.0, 955.0 ],
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
					"maxclass" : "textbutton",
					"varname" : "synth_noise_on",
					"prototypename" : "jamoma audio",
					"rounded" : 8.0,
					"fontname" : "Verdana",
					"id" : "obj-37",
					"numinlets" : 1,
					"presentation_rect" : [ 12.780001, 256.783295, 28.956347, 15.0 ],
					"fontsize" : 8.0,
					"mode" : 1,
					"numoutlets" : 3,
					"border" : 1,
					"patching_rect" : [ 16.63237, 557.265015, 28.508503, 15.933016 ],
					"outlettype" : [ "int", "", "int" ],
					"text" : "noise",
					"presentation" : 1,
					"texton" : "noise"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "synth_color_on_but",
					"prototypename" : "jamoma audio",
					"rounded" : 8.0,
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numinlets" : 1,
					"presentation_rect" : [ 12.780001, 372.995331, 28.956347, 15.0 ],
					"fontsize" : 8.0,
					"mode" : 1,
					"numoutlets" : 3,
					"border" : 1,
					"patching_rect" : [ 16.99231, 626.392883, 26.642473, 15.933016 ],
					"outlettype" : [ "int", "", "int" ],
					"text" : "color",
					"presentation" : 1,
					"texton" : "color"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "file_audio",
					"prototypename" : "jamoma audio",
					"rounded" : 8.0,
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 1,
					"presentation_rect" : [ 85.361336, 124.0, 28.956347, 15.0 ],
					"fontsize" : 8.0,
					"mode" : 1,
					"numoutlets" : 3,
					"border" : 1,
					"patching_rect" : [ 804.299805, 489.562744, 42.503723, 15.933016 ],
					"outlettype" : [ "int", "", "int" ],
					"text" : "audio",
					"presentation" : 1,
					"texton" : "audio"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "file_open",
					"prototypename" : "jamoma open",
					"rounded" : 8.0,
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 1,
					"presentation_rect" : [ 1.931239, 124.0, 27.266159, 15.000001 ],
					"fontsize" : 8.0,
					"numoutlets" : 3,
					"border" : 1,
					"patching_rect" : [ 803.522278, 322.744537, 28.017475, 15.000001 ],
					"outlettype" : [ "int", "", "int" ],
					"text" : "open",
					"presentation" : 1,
					"texton" : "recording"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "file_on",
					"prototypename" : "jamoma on/off",
					"rounded" : 8.0,
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 1,
					"presentation_rect" : [ 31.819288, 124.0, 18.461647, 15.0 ],
					"fontsize" : 8.0,
					"mode" : 1,
					"numoutlets" : 3,
					"border" : 1,
					"patching_rect" : [ 806.553772, 388.886536, 21.466906, 15.933016 ],
					"outlettype" : [ "int", "", "int" ],
					"text" : "on",
					"presentation" : 1,
					"texton" : "off"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "camera_on",
					"prototypename" : "jamoma on off",
					"rounded" : 8.0,
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 1,
					"presentation_rect" : [ 13.978568, 24.000206, 19.964277, 15.0 ],
					"fontsize" : 8.0,
					"mode" : 1,
					"numoutlets" : 3,
					"border" : 1,
					"patching_rect" : [ 801.294556, 65.821198, 21.466906, 15.933016 ],
					"outlettype" : [ "int", "", "int" ],
					"text" : "on",
					"presentation" : 1,
					"texton" : "off"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "camera_settings",
					"prototypename" : "jamoma settings",
					"rounded" : 8.0,
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 1,
					"presentation_rect" : [ 48.4772, 24.315992, 39.287197, 15.000001 ],
					"fontsize" : 8.0,
					"numoutlets" : 3,
					"border" : 1,
					"patching_rect" : [ 799.040649, 1.208125, 39.287197, 15.000001 ],
					"outlettype" : [ "int", "", "int" ],
					"text" : "settings",
					"presentation" : 1,
					"texton" : "recording"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1_noise_off",
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 0,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 124.0, 560.0, 82.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1_file_off",
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 0,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 871.0, 387.0, 71.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1_camera_off",
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 0,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 885.0, 66.0, 93.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p offsets_etc",
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 212.0, 65.0, 72.0, 18.0 ],
					"outlettype" : [ "" ],
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
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 4,
									"patching_rect" : [ 50.0, 64.0, 243.0, 18.0 ],
									"outlettype" : [ "bang", "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #1_noise_off",
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 505.0, 199.0, 89.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #1_file_off",
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 403.0, 199.0, 100.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #1_camera_off",
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 301.0, 199.0, 99.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 0",
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 204.0, 109.0, 32.0, 18.0 ],
									"outlettype" : [ "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 0",
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 127.0, 109.0, 32.0, 18.0 ],
									"outlettype" : [ "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 0",
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 50.0, 109.0, 32.0, 18.0 ],
									"outlettype" : [ "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "offset 0 -240",
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 204.0, 199.0, 73.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "offset 0 -120",
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 127.0, 199.0, 73.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "offset 0 -19",
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 199.0, 67.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-11",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 235.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-12", 0 ],
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
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-1", 2 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 226.5, 165.0, 310.5, 165.0 ]
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
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 226.5, 163.0, 412.5, 163.0 ]
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
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 72.5, 180.0, 514.5, 180.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 171.0, 514.5, 171.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "file_loop",
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-5",
					"numinlets" : 1,
					"presentation_rect" : [ 53.0, 122.0, 29.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"align" : 1,
					"patching_rect" : [ 484.0, 286.0, 84.0, 19.0 ],
					"outlettype" : [ "int", "", "" ],
					"presentation" : 1,
					"labelclick" : 1,
					"items" : [ "=", ",", "=>", ",", "<=>" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "camera/camera",
					"text" : "jcom.parameter camera/camera @type msg_int @description \"Choose camera\"",
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 805.0, 292.0, 404.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "camera/device",
					"text" : "jcom.parameter camera/device @type msg_int @description \"Input device type\"",
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 805.0, 223.0, 410.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1_camera",
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 0,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 806.0, 248.0, 74.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #1_device",
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 0,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 806.0, 181.0, 68.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file/framedump",
					"text" : "jcom.parameter file/framedump @type msg_toggle @repetitions/allow 0 @description \"Turn on or off framedump of the video\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 803.0, 449.0, 363.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "synth/color",
					"text" : "jcom.parameter synth/color @type msg_generic @description \"List of RGB colors\"",
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 17.0, 715.0, 417.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p scale",
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 284.0, 245.0, 43.0, 18.0 ],
					"outlettype" : [ "" ],
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
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 76.0, 46.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "*[3]",
									"text" : "* 100",
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 50.0, 38.0, 18.0 ],
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "*[2]",
									"text" : "* 100",
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 92.0, 50.0, 38.0, 18.0 ],
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-4",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 92.0, 30.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-5",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 98.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
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
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 1 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file/loop_points",
					"text" : "jcom.parameter file/loop_points @type msg_list @repetitions/allow 0 @description \"List of low and high loop point values\"",
					"linecount" : 4,
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 284.0, 306.0, 185.0, 54.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-17",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 484.0, 308.0, 15.0, 15.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"varname" : "file_loop_points",
					"size" : 1763,
					"id" : "obj-18",
					"numinlets" : 2,
					"presentation_rect" : [ 117.0, 121.0, 115.0, 13.0 ],
					"numoutlets" : 2,
					"patching_rect" : [ 285.0, 224.0, 85.0, 15.0 ],
					"outlettype" : [ "", "" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "synth/noise/size/y",
					"text" : "jcom.parameter synth/noise/size/y @type msg_int @repetitions/allow 0 @ramp/drive scheduler @range/bounds 1 480 @range/clipmode low @description \"x size of noise matrix\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 474.0, 683.0, 325.0, 42.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file/audio",
					"text" : "jcom.parameter file/audio @type msg_toggle @repetitions/allow 0 @description \"Turn audio in the video file on or off\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 804.0, 510.0, 333.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 435.0, 74.0, 39.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "synth/noise/size/x",
					"text" : "jcom.parameter synth/noise/size/x @type msg_int @repetitions/allow 0 @ramp/drive scheduler @range/bounds 1 640 @range/clipmode low @description \"x size of noise matrix\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-26",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 470.0, 448.0, 325.0, 42.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "x",
					"fontname" : "Verdana",
					"id" : "obj-27",
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"presentation_rect" : [ 112.0, 265.0, 17.0, 19.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 108.0, 267.0, 17.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "synth_noise_size_y",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"minimum" : 1,
					"id" : "obj-28",
					"numinlets" : 1,
					"presentation_rect" : [ 124.0, 265.0, 32.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 474.0, 661.0, 32.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Size",
					"fontname" : "Verdana",
					"id" : "obj-29",
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"presentation_rect" : [ 53.0, 265.0, 30.0, 19.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 51.0, 267.0, 30.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "synth_noise_size_x",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"minimum" : 1,
					"id" : "obj-30",
					"numinlets" : 1,
					"presentation_rect" : [ 82.0, 265.0, 32.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 470.0, 427.0, 32.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "synth_noise_planes",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"minimum" : 1,
					"id" : "obj-31",
					"numinlets" : 1,
					"maximum" : 4,
					"presentation_rect" : [ 160.0, 243.0, 32.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 19.0, 426.0, 32.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim 100",
					"fontname" : "Verdana",
					"id" : "obj-32",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 516.0, 244.0, 52.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "setminmax 0 $1",
					"fontname" : "Verdana",
					"id" : "obj-33",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 514.0, 193.0, 89.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route time duration",
					"fontname" : "Verdana",
					"id" : "obj-34",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 395.0, 23.0, 105.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"fontname" : "Verdana",
					"id" : "obj-35",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 799.0, 21.0, 22.0, 18.0 ],
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"fontname" : "Verdana",
					"id" : "obj-36",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 804.0, 341.0, 22.0, 18.0 ],
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file/counter",
					"text" : "jcom.parameter file/counter @type msg_int @repetitions/allow 0 @description \"Video file time counter\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-39",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 526.0, 122.0, 303.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file/rate",
					"text" : "jcom.parameter file/rate @type msg_float @repetitions/allow 0 @ramp/drive scheduler @range/bounds -2. 2. @range/clipmode none @description \"Playback rate of video file\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-41",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 804.0, 634.0, 446.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file/size",
					"text" : "jcom.parameter file/size @type msg_int @repetitions/allow 0 @description \"Select size of video playback\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-43",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 804.0, 572.0, 307.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file/loop",
					"text" : "jcom.parameter file/loop @type msg_toggle @repetitions/allow 0 @description \"Turn looping on or off\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-45",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 484.0, 327.0, 298.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file/on",
					"text" : "jcom.parameter file/on @type msg_toggle @repetitions/allow 0 @description \"Turn video on or off\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-47",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 804.0, 409.0, 289.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[2]",
					"text" : "jcom.message file/read @description \"Open dialog to select video file\"",
					"fontname" : "Verdana",
					"id" : "obj-49",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 804.0, 362.0, 358.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "synth/noise/planes",
					"text" : "jcom.parameter synth/noise/planes @type msg_int @range/bounds 1 4 @range/clipmode both @ramp/drive none @description \"Number of matrix planes\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-51",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 17.0, 446.0, 421.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "synth/noise/rate",
					"text" : "jcom.parameter synth/noise/rate @type msg_int @ramp/drive scheduler @repetitions/allow 0 @range/bounds 2 1000 @range/clipmode low @description \"Metro speed for noise\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-53",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 17.0, 512.0, 471.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rate",
					"fontname" : "Verdana",
					"id" : "obj-54",
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"presentation_rect" : [ 53.0, 244.0, 31.0, 19.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 53.0, 245.0, 31.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Planes",
					"fontname" : "Verdana",
					"id" : "obj-55",
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"presentation_rect" : [ 122.0, 243.0, 41.0, 19.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 125.0, 245.0, 41.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "synth_color_on_butz",
					"id" : "obj-56",
					"numinlets" : 1,
					"presentation_rect" : [ 275.911224, 298.420654, 25.0, 15.0 ],
					"numoutlets" : 2,
					"filename" : "jcom.jsui_texttoggle.js",
					"patching_rect" : [ 122.830185, 617.535889, 25.0, 15.0 ],
					"outlettype" : [ "", "" ],
					"presentation" : 1,
					"jsarguments" : [ "color", "color" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "swatch",
					"varname" : "synth_color_sw",
					"id" : "obj-57",
					"numinlets" : 3,
					"presentation_rect" : [ 54.0, 365.0, 128.0, 32.0 ],
					"numoutlets" : 2,
					"patching_rect" : [ 17.0, 682.0, 128.0, 32.0 ],
					"outlettype" : [ "", "float" ],
					"presentation" : 1,
					"compatibility" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "synth_noise_rate",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"minimum" : 2,
					"id" : "obj-58",
					"numinlets" : 1,
					"presentation_rect" : [ 82.0, 243.0, 32.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 18.0, 492.0, 32.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "camera/size",
					"text" : "jcom.parameter camera/size @type msg_int @description \"Resolution of captured image\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-60",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 847.0, 133.0, 233.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "camera_size",
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-61",
					"numinlets" : 1,
					"presentation_rect" : [ 12.435526, 42.0, 75.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 848.0, 113.0, 55.0, 19.0 ],
					"outlettype" : [ "int", "", "" ],
					"presentation" : 1,
					"labelclick" : 1,
					"items" : [ 640, 480, ",", 320, 240, ",", 160, 120, ",", 80, 60 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[1]",
					"text" : "jcom.message camera/settings @description \"Open dialog for camera settings\"",
					"fontname" : "Verdana",
					"id" : "obj-63",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 799.0, 42.0, 403.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "file_counter",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"id" : "obj-65",
					"numinlets" : 1,
					"presentation_rect" : [ 160.040146, 147.0, 69.959846, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 436.0, 98.0, 51.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 1 $1",
					"fontname" : "Verdana",
					"id" : "obj-66",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 436.0, 123.0, 49.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "file_rate",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"id" : "obj-67",
					"numinlets" : 1,
					"presentation_rect" : [ 31.0, 147.0, 35.0, 18.0 ],
					"triangle" : 0,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 805.0, 614.0, 32.0, 18.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "rate",
					"fontname" : "Verdana",
					"id" : "obj-68",
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"presentation_rect" : [ 1.0, 147.0, 29.0, 19.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 146.0, 29.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"contdata" : 1,
					"orientation" : 0,
					"bgcolor" : [ 0.678431, 0.678431, 0.678431, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"settype" : 0,
					"id" : "obj-69",
					"numinlets" : 1,
					"setstyle" : 1,
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"presentation_rect" : [ 117.0, 134.0, 115.0, 12.0 ],
					"numoutlets" : 2,
					"slidercolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 515.0, 220.0, 85.0, 15.0 ],
					"outlettype" : [ "", "" ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"presentation" : 1,
					"compatibility" : 1,
					"setminmax" : [ 0.0, 253.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "file_size",
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-71",
					"numinlets" : 1,
					"presentation_rect" : [ 71.0, 147.0, 84.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 806.0, 551.0, 46.0, 19.0 ],
					"outlettype" : [ "int", "", "" ],
					"presentation" : 1,
					"labelclick" : 1,
					"items" : [ "native", "size", ",", 640, 480, ",", 320, 240, ",", 160, 120, ",", 80, 60 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Camera",
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-72",
					"numinlets" : 1,
					"presentation_rect" : [ 103.0, 42.0, 100.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 806.0, 273.0, 100.0, 19.0 ],
					"outlettype" : [ "int", "", "" ],
					"presentation" : 1,
					"labelclick" : 1,
					"items" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Device",
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-73",
					"numinlets" : 1,
					"presentation_rect" : [ 103.0, 24.0, 100.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 806.0, 204.0, 100.0, 19.0 ],
					"outlettype" : [ "int", "", "" ],
					"presentation" : 1,
					"labelclick" : 1,
					"items" : [ "DV Video", ",", "IIDC FireWire Video", ",", "USB Video Class Video" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "synth/color/on",
					"text" : "jcom.parameter synth/color/on @type msg_toggle @range/bounds 0 1 @range/clipmode both @repetitions/allow 0 @ramp/drive none @description \"Turn video color synth on or off\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-76",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 17.0, 644.0, 469.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "synth/noise/on",
					"text" : "jcom.parameter synth/noise/on @type msg_toggle @range/bounds 0 1 @range/clipmode both @repetitions/allow 0 @ramp/drive none @description \"Turn video noise on or off\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-78",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 17.0, 582.0, 458.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "synth_noise_onz",
					"id" : "obj-79",
					"numinlets" : 1,
					"presentation_rect" : [ 258.108063, 263.426605, 25.0, 15.0 ],
					"numoutlets" : 2,
					"filename" : "jcom.jsui_texttoggle.js",
					"patching_rect" : [ 89.30864, 554.535889, 25.0, 15.0 ],
					"outlettype" : [ "", "" ],
					"presentation" : 1,
					"jsarguments" : [ "noise", "noise" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontname" : "Verdana",
					"id" : "obj-80",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 212.0, 85.0, 64.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-81",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 212.0, 17.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "camera/on",
					"text" : "jcom.parameter camera/on @type msg_toggle @description \"Turn camera on\"",
					"fontname" : "Verdana",
					"id" : "obj-83",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 800.0, 86.0, 400.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This almost works. There is a problem with setting max values after looping is turned off.",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-84",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"patching_rect" : [ 530.0, 9.0, 175.0, 42.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1",
					"fontname" : "Verdana",
					"id" : "obj-86",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 389.0, 271.0, 22.0, 18.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "speedlim 1000",
					"fontname" : "Verdana",
					"id" : "obj-87",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 389.0, 245.0, 81.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak set 0 100",
					"fontname" : "Verdana",
					"id" : "obj-88",
					"numinlets" : 3,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 284.0, 183.0, 77.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 0",
					"fontname" : "Verdana",
					"id" : "obj-89",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 284.0, 157.0, 32.0, 18.0 ],
					"outlettype" : [ "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "/[2]",
					"text" : "/ 100",
					"fontname" : "Verdana",
					"id" : "obj-90",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 362.0, 159.0, 37.0, 18.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "size $1",
					"fontname" : "Verdana",
					"id" : "obj-91",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 362.0, 183.0, 43.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.141176, 0.141176, 0.141176, 1.0 ],
					"rounded" : 0,
					"id" : "obj-92",
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, -1.0, 239.0, 413.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, -1.0, 239.0, 413.0 ],
					"presentation" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 26.5, 675.036133, 7.930625, 675.036133, 7.930625, 621.387756, 26.49231, 621.387756 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 26.5, 618.588745, 8.86364, 618.588745, 8.86364, 551.411682, 26.13237, 551.411682 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 813.5, 542.44928, 797.896301, 542.44928, 797.896301, 483.095398, 813.799805, 483.095398 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 813.5, 442.524384, 791.885742, 442.524384, 791.885742, 383.921844, 816.053772, 383.921844 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 809.5, 110.443268, 794.139709, 110.443268, 794.139709, 62.359123, 810.794556, 62.359123 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-35", 0 ],
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
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [ 523.5, 208.0, 524.5, 208.0 ]
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
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 404.5, 60.0, 444.5, 60.0 ]
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
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [ 525.5, 264.0, 498.0, 264.0, 498.0, 93.0, 445.5, 93.0 ]
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
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [ 404.5, 120.0, 445.5, 120.0 ]
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
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-80", 0 ],
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
					"source" : [ "obj-89", 0 ],
					"destination" : [ "obj-88", 0 ],
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
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 447.5, 60.0, 516.0, 60.0, 516.0, 180.0, 523.5, 180.0 ]
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
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-91", 0 ],
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
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-17", 0 ],
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
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [ 894.5, 84.0, 809.5, 84.0 ]
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [ 880.5, 407.0, 813.5, 407.0 ]
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
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [ 856.5, 164.0, 832.0, 164.0, 832.0, 110.0, 857.5, 110.0 ]
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [ 814.5, 243.0, 792.0, 243.0, 792.0, 201.0, 815.5, 201.0 ]
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
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [ 814.5, 311.0, 792.0, 311.0, 792.0, 269.0, 815.5, 269.0 ]
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
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [ 813.5, 603.0, 801.0, 603.0, 801.0, 546.0, 815.5, 546.0 ]
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
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [ 813.5, 666.0, 801.0, 666.0, 801.0, 609.0, 814.5, 609.0 ]
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
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-15", 1 ],
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
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-18", 0 ],
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
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 445.5, 117.0, 535.5, 117.0 ]
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
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-51", 0 ],
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
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-53", 0 ],
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
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 479.5, 492.0, 456.0, 492.0, 456.0, 423.0, 479.5, 423.0 ]
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
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 483.5, 726.0, 471.0, 726.0, 471.0, 657.0, 483.5, 657.0 ]
				}

			}
 ]
	}

}
