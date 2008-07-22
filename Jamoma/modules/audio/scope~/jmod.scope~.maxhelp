{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 118.0, 51.0, 366.0, 590.0 ],
		"bglocked" : 0,
		"defrect" : [ 118.0, 51.0, 366.0, 590.0 ],
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
					"text" : "p controling_the_module",
					"numoutlets" : 0,
					"id" : "obj-31",
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 540.0, 148.0, 20.0 ],
					"fontsize" : 10.970939,
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
									"maxclass" : "message",
									"text" : "/samples_per_buffer $1",
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 476.0, 369.0, 150.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"id" : "obj-2",
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"patching_rect" : [ 439.0, 369.0, 35.0, 18.0 ],
									"fontsize" : 9.873845,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "change this module's specific parameters remotely : continuously or with a ramp",
									"linecount" : 3,
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numoutlets" : 0,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"patching_rect" : [ 649.0, 350.0, 177.0, 42.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.scope.cmd",
									"hidden" : 1,
									"numoutlets" : 0,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"patching_rect" : [ 705.0, 449.0, 99.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"name" : "jmod.attr_params.maxpat",
									"args" : [ "/range" ],
									"patching_rect" : [ 433.0, 405.0, 374.0, 143.0 ],
									"numinlets" : 1,
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.scope.cmd",
									"hidden" : 1,
									"numoutlets" : 0,
									"id" : "obj-6",
									"fontname" : "Verdana",
									"patching_rect" : [ 309.0, 211.0, 99.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ],
									"name" : "jmod.preset_params.maxpat",
									"args" : [ "jmod.scope~" ],
									"patching_rect" : [ 50.0, 202.0, 374.0, 347.0 ],
									"numinlets" : 0,
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.scope.cmd",
									"hidden" : 1,
									"numoutlets" : 0,
									"id" : "obj-9",
									"fontname" : "Verdana",
									"patching_rect" : [ 308.0, 105.0, 99.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.scope.cmd",
									"hidden" : 1,
									"numoutlets" : 0,
									"id" : "obj-10",
									"fontname" : "Verdana",
									"patching_rect" : [ 697.0, 303.0, 99.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/range 0.1 ramp 5000",
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 550.0, 331.0, 140.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ],
									"name" : "jmod.gain_params.maxpat",
									"args" : [  ],
									"patching_rect" : [ 50.0, 100.0, 371.0, 96.0 ],
									"numinlets" : 0,
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Module specific attributes",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numoutlets" : 0,
									"id" : "obj-14",
									"fontname" : "Verdana",
									"patching_rect" : [ 435.0, 299.0, 236.0, 28.0 ],
									"fontsize" : 17.334082,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"id" : "obj-15",
									"patching_rect" : [ 432.0, 297.0, 373.0, 27.0 ],
									"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ],
									"rounded" : 0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/buffers_per_pixel $1",
									"numoutlets" : 1,
									"id" : "obj-21",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 476.0, 350.0, 140.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"id" : "obj-22",
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"patching_rect" : [ 439.0, 350.0, 35.0, 18.0 ],
									"fontsize" : 9.873845,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/range $1",
									"numoutlets" : 1,
									"id" : "obj-23",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 476.0, 331.0, 84.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"id" : "obj-24",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"patching_rect" : [ 439.0, 331.0, 35.0, 18.0 ],
									"fontsize" : 9.873845,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"id" : "obj-25",
									"patching_rect" : [ 432.0, 325.0, 377.0, 75.0 ],
									"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
									"rounded" : 0,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-9", 0 ],
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
					"text" : "jmod.scope~",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 20.0, 206.0, 28.0 ],
					"fontsize" : 18.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.scope.cmd",
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 330.0, 99.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/range 1.",
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 510.0, 154.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/control",
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "" ],
					"name" : "jmod.control.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"args" : [ "/control" ],
					"patching_rect" : [ 20.0, 90.0, 150.0, 70.0 ],
					"numinlets" : 1,
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"numoutlets" : 3,
					"id" : "obj-19",
					"outlettype" : [ "", "signal", "signal" ],
					"name" : "jmod.input~.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"args" : [ "/input~" ],
					"patching_rect" : [ 20.0, 180.0, 300.0, 140.0 ],
					"numinlets" : 1,
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/scope~",
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "" ],
					"name" : "jmod.scope~.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"args" : [ "/scope~" ],
					"patching_rect" : [ 20.0, 355.0, 300.0, 140.0 ],
					"numinlets" : 3,
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "visualization of signal",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-26",
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 50.0, 146.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"id" : "obj-27",
					"patching_rect" : [ 10.0, 10.0, 330.0, 65.0 ],
					"rounded" : 15,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2",
					"numoutlets" : 0,
					"id" : "obj-29",
					"fontname" : "Verdana",
					"patching_rect" : [ 180.0, 330.0, 114.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 2 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 2 ],
					"destination" : [ "obj-20", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-16", 1 ],
					"hidden" : 0,
					"midpoints" : [ 29.5, 502.0, 164.5, 502.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
