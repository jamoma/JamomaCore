{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 8.0, 58.0, 383.0, 667.0 ],
		"bglocked" : 0,
		"defrect" : [ 8.0, 58.0, 383.0, 667.0 ],
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
					"maxclass" : "bpatcher",
					"id" : "obj-41",
					"name" : "jmod.output~.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"numinlets" : 3,
					"args" : [ "/output~" ],
					"numoutlets" : 1,
					"patching_rect" : [ 25.0, 455.0, 300.0, 140.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p controlling_the _module",
					"id" : "obj-39",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 620.0, 155.0, 20.0 ],
					"fontsize" : 10.970939,
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
									"text" : "s jmod.limi.cmd",
									"hidden" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 704.0, 533.0, 99.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"id" : "obj-2",
									"name" : "jmod.attr_params.maxpat",
									"numinlets" : 1,
									"args" : [ "/preamp" ],
									"numoutlets" : 1,
									"patching_rect" : [ 433.0, 529.0, 374.0, 143.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.limi.cmd",
									"hidden" : 1,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 309.0, 334.0, 99.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"id" : "obj-4",
									"name" : "jmod.preset_params.maxpat",
									"numinlets" : 0,
									"args" : [ "jmod.limiter~" ],
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 325.0, 374.0, 347.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.limi.cmd",
									"hidden" : 1,
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 308.0, 105.0, 99.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"id" : "obj-6",
									"name" : "jmod.gain_params.maxpat",
									"numinlets" : 0,
									"args" : [  ],
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 100.0, 374.0, 221.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/mode linear",
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 689.0, 427.0, 72.0, 16.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/mode exponential",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 689.0, 409.0, 102.0, 16.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.limi.cmd",
									"hidden" : 1,
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 692.0, 379.0, 88.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/release 500 ramp 3000",
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 571.0, 481.0, 129.0, 16.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/lookahead 10 ramp 3000",
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 571.0, 463.0, 137.0, 16.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/threshold -6 ramp 3000",
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 571.0, 445.0, 131.0, 16.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/postamp 6 ramp 5000",
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 571.0, 427.0, 123.0, 16.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/preamp 6 ramp 5000",
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 571.0, 409.0, 118.0, 16.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triscale" : 0.9,
									"numoutlets" : 2,
									"patching_rect" : [ 439.0, 481.0, 35.0, 18.0 ],
									"fontsize" : 9.873845,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triscale" : 0.9,
									"numoutlets" : 2,
									"patching_rect" : [ 439.0, 463.0, 35.0, 18.0 ],
									"fontsize" : 9.873845,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-24",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triscale" : 0.9,
									"numoutlets" : 2,
									"patching_rect" : [ 439.0, 445.0, 35.0, 18.0 ],
									"fontsize" : 9.873845,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triscale" : 0.9,
									"numoutlets" : 2,
									"patching_rect" : [ 439.0, 427.0, 35.0, 18.0 ],
									"fontsize" : 9.873845,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"triscale" : 0.9,
									"numoutlets" : 2,
									"patching_rect" : [ 439.0, 409.0, 35.0, 18.0 ],
									"fontsize" : 9.873845,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/release $1",
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 476.0, 481.0, 65.0, 16.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/lookahead $1",
									"id" : "obj-28",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 476.0, 463.0, 80.0, 16.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/threshold $1",
									"id" : "obj-29",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 476.0, 445.0, 75.0, 16.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/postamp $1",
									"id" : "obj-30",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 476.0, 427.0, 72.0, 16.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/preamp $1",
									"id" : "obj-31",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 476.0, 409.0, 67.0, 16.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"id" : "obj-36",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 433.0, 403.0, 373.0, 120.0 ],
									"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Module specific attributes",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-37",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 437.0, 374.0, 236.0, 28.0 ],
									"fontsize" : 17.334082
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"id" : "obj-38",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 433.0, 372.0, 373.0, 27.0 ],
									"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ],
									"rounded" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
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
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
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
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
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
					"text" : "jmod.limiter~",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 20.0, 136.0, 28.0 ],
					"fontsize" : 18.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "stereo limiter",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 50.0, 79.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-9",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 10.0, 280.0, 65.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control",
					"id" : "obj-12",
					"name" : "jmod.control.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"numinlets" : 1,
					"args" : [ "/control" ],
					"numoutlets" : 1,
					"patching_rect" : [ 25.0, 95.0, 150.0, 70.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.input~",
					"id" : "obj-14",
					"name" : "jmod.input~.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"numinlets" : 1,
					"args" : [ "/input~" ],
					"numoutlets" : 3,
					"patching_rect" : [ 25.0, 185.0, 300.0, 140.0 ],
					"outlettype" : [ "", "signal", "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.limi.cmd",
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 25.0, 330.0, 87.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mode exponential",
					"id" : "obj-33",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 25.0, 430.0, 107.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/limiter~",
					"id" : "obj-35",
					"name" : "jmod.limiter~.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 3,
					"args" : [ "/limiter~" ],
					"numoutlets" : 3,
					"patching_rect" : [ 25.0, 350.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-35", 2 ],
					"destination" : [ "obj-41", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-41", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-33", 1 ],
					"hidden" : 0,
					"midpoints" : [ 34.5, 425.0, 122.5, 425.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 2 ],
					"destination" : [ "obj-35", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-35", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
