{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 45.0, 51.0, 411.0, 521.0 ],
		"bglocked" : 0,
		"defrect" : [ 45.0, 51.0, 411.0, 521.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
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
					"text" : "p controlling_the_module",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.970939,
					"patching_rect" : [ 25.0, 485.0, 151.0, 20.0 ],
					"numinlets" : 0,
					"id" : "obj-28",
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
									"text" : "prepend mode",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 654.0, 499.0, 82.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "", "" ],
									"items" : [ "s-shaped", ",", "sinus" ],
									"fontsize" : 9.873845,
									"types" : [  ],
									"patching_rect" : [ 654.0, 481.0, 100.0, 18.0 ],
									"numinlets" : 1,
									"labelclick" : 1,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.873845,
									"triscale" : 0.9,
									"patching_rect" : [ 541.0, 481.0, 35.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/preamp $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 578.0, 481.0, 69.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.saturation.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"patching_rect" : [ 704.0, 533.0, 120.0, 18.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"name" : "jmod.attr_params.maxpat",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 433.0, 529.0, 374.0, 143.0 ],
									"args" : [ "/depth" ],
									"numinlets" : 1,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.saturation.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"patching_rect" : [ 309.0, 334.0, 120.0, 18.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"name" : "jmod.preset_params.maxpat",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 50.0, 325.0, 374.0, 347.0 ],
									"args" : [ "jmod.saturation~" ],
									"numinlets" : 0,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.saturation.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"patching_rect" : [ 308.0, 105.0, 120.0, 18.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"name" : "jmod.gain_params.maxpat",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 50.0, 100.0, 374.0, 221.0 ],
									"args" : [  ],
									"numinlets" : 0,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.saturation.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"patching_rect" : [ 689.0, 449.0, 122.0, 18.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.873845,
									"triscale" : 0.9,
									"patching_rect" : [ 440.0, 481.0, 35.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/depth $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 477.0, 481.0, 59.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
									"patching_rect" : [ 434.0, 475.0, 373.0, 44.0 ],
									"numinlets" : 1,
									"rounded" : 0,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Module specific attributes",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 17.334082,
									"patching_rect" : [ 438.0, 446.0, 236.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-26",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ],
									"patching_rect" : [ 434.0, 444.0, 373.0, 27.0 ],
									"numinlets" : 1,
									"rounded" : 0,
									"id" : "obj-27"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
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
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
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
					"text" : "jmod.saturation~",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 18.0,
					"patching_rect" : [ 25.0, 20.0, 285.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-11",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "stereo saturation/distortion effect",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 25.0, 50.0, 181.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-12",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 10.0, 373.0, 64.0 ],
					"numinlets" : 1,
					"rounded" : 15,
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control",
					"numoutlets" : 1,
					"name" : "jmod.control.maxpat",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 25.0, 90.0, 150.0, 70.0 ],
					"args" : [ "/control" ],
					"numinlets" : 1,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 165.0, 435.0, 162.0, 19.0 ],
					"numinlets" : 2,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"numoutlets" : 3,
					"name" : "jmod.input~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 25.0, 180.0, 300.0, 140.0 ],
					"args" : [ "/input~" ],
					"numinlets" : 1,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.saturation.cmd",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 25.0, 325.0, 122.0, 18.0 ],
					"numinlets" : 0,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preamp 24.",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 25.0, 435.0, 126.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/saturation~",
					"numoutlets" : 3,
					"name" : "jmod.saturation~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 25.0, 350.0, 300.0, 70.0 ],
					"args" : [ "/saturation~" ],
					"numinlets" : 3,
					"id" : "obj-24"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0,
					"midpoints" : [ 34.5, 430.0, 141.5, 430.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 2 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 2 ],
					"destination" : [ "obj-24", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
