{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 6.0, 44.0, 402.0, 570.0 ],
		"bglocked" : 0,
		"defrect" : [ 6.0, 44.0, 402.0, 570.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Controlling_the_module",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 30.0, 520.0, 141.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-35",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
									"text" : "s jmod.filter.cmd",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"patching_rect" : [ 321.0, 224.0, 99.0, 17.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"name" : "jmod.attr_params.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 2.0, 196.0, 374.0, 154.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 50.0, 220.0, 374.0, 154.0 ],
									"args" : [ "/filtergain" ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numoutlets" : 3,
									"labelclick" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int", "", "" ],
									"presentation_rect" : [ 9.0, 115.0, 74.0, 17.0 ],
									"items" : [ "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "highshelf" ],
									"fontsize" : 9.0,
									"types" : [  ],
									"patching_rect" : [ 57.0, 139.0, 74.0, 17.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-7",
									"arrowlink" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /filtertype",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 85.0, 115.0, 98.0, 17.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 133.0, 139.0, 98.0, 17.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/q 10 ramp 5000",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 142.0, 172.0, 89.0, 15.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 190.0, 196.0, 89.0, 15.0 ],
									"numinlets" : 2,
									"presentation" : 1,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/q $1",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 46.0, 172.0, 36.0, 15.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 94.0, 196.0, 36.0, 15.0 ],
									"numinlets" : 2,
									"presentation" : 1,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"presentation_rect" : [ 9.0, 172.0, 35.0, 17.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 57.0, 196.0, 35.0, 17.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/filtergain $1",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 46.0, 154.0, 73.0, 15.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 94.0, 178.0, 73.0, 15.0 ],
									"numinlets" : 2,
									"presentation" : 1,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"presentation_rect" : [ 9.0, 154.0, 35.0, 17.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 57.0, 178.0, 35.0, 17.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/filtergain 0.2 ramp 5000",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 142.0, 154.0, 129.0, 15.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 190.0, 178.0, 129.0, 15.0 ],
									"numinlets" : 2,
									"presentation" : 1,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.filter.cmd",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"patching_rect" : [ 314.0, 105.0, 85.0, 17.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/cf 5000 ramp 5000",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 142.0, 136.0, 105.0, 15.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 190.0, 160.0, 105.0, 15.0 ],
									"numinlets" : 2,
									"presentation" : 1,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Module specific attributes",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"presentation_rect" : [ 8.0, 78.0, 236.0, 27.0 ],
									"fontsize" : 18.0,
									"patching_rect" : [ 56.0, 102.0, 236.0, 27.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-18",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"presentation_rect" : [ 4.0, 76.0, 373.0, 27.0 ],
									"patching_rect" : [ 52.0, 100.0, 373.0, 27.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"rounded" : 15,
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/cf $1",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 46.0, 136.0, 40.0, 15.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 94.0, 160.0, 40.0, 15.0 ],
									"numinlets" : 2,
									"presentation" : 1,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"presentation_rect" : [ 9.0, 136.0, 35.0, 17.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 57.0, 160.0, 35.0, 17.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"presentation_rect" : [ 4.0, 107.0, 373.0, 84.0 ],
									"patching_rect" : [ 52.0, 131.0, 373.0, 84.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"rounded" : 15,
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.filter.cmd",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"patching_rect" : [ 312.0, 617.0, 99.0, 17.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-31"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"name" : "jmod.preset_params.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 5.0, 220.0, 374.0, 347.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 53.0, 604.0, 374.0, 347.0 ],
									"args" : [ "jmod.filter~" ],
									"numinlets" : 0,
									"presentation" : 1,
									"id" : "obj-32"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.filter.cmd",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"patching_rect" : [ 311.0, 389.0, 99.0, 17.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-33"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"name" : "jmod.gain_params.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 5.0, 0.0, 374.0, 221.0 ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 53.0, 384.0, 374.0, 221.0 ],
									"args" : [  ],
									"numinlets" : 0,
									"presentation" : 1,
									"id" : "obj-34"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
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
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.filter~",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 8.0, 21.0, 228.0, 28.0 ],
					"fontsize" : 18.0,
					"patching_rect" : [ 25.0, 20.0, 119.0, 28.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-4",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "audio filter module",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 9.0, 47.0, 305.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 25.0, 50.0, 105.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-5",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"presentation_rect" : [ 4.0, 4.0, 374.0, 69.0 ],
					"patching_rect" : [ 10.0, 10.0, 335.0, 70.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"rounded" : 15,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.filter.cmd",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 391.0, 252.0, 174.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 30.0, 335.0, 174.0, 19.0 ],
					"numinlets" : 0,
					"presentation" : 1,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 535.0, 365.0, 202.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 170.0, 445.0, 160.0, 19.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/audio/mute 0",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 395.0, 378.0, 121.0, 17.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 30.0, 445.0, 121.0, 17.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control",
					"numoutlets" : 1,
					"name" : "jmod.control.maxpat",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 390.0, 25.0, 150.0, 70.0 ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 30.0, 100.0, 150.0, 70.0 ],
					"args" : [ "/control" ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"numoutlets" : 3,
					"name" : "jmod.input~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"presentation_rect" : [ 390.0, 105.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 30.0, 190.0, 300.0, 140.0 ],
					"args" : [ "/input~" ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~",
					"numoutlets" : 3,
					"name" : "jmod.filter~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"presentation_rect" : [ 391.0, 271.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 30.0, 355.0, 300.0, 70.0 ],
					"args" : [ "/filter~" ],
					"numinlets" : 3,
					"presentation" : 1,
					"id" : "obj-26"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0,
					"midpoints" : [ 39.5, 438.0, 141.5, 438.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 2 ],
					"destination" : [ "obj-21", 1 ],
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-21", 0 ],
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
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
