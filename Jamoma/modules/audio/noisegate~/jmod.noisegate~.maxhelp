{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 81.0, 57.0, 424.0, 546.0 ],
		"bglocked" : 0,
		"defrect" : [ 81.0, 57.0, 424.0, 546.0 ],
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
					"patching_rect" : [ 30.0, 500.0, 151.0, 20.0 ],
					"numinlets" : 0,
					"id" : "obj-29",
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
									"text" : "s jmod.noisegate.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.970939,
									"patching_rect" : [ 704.0, 533.0, 130.0, 20.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-1"
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
									"args" : [ "/threshold" ],
									"numinlets" : 1,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.noisegate.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.970939,
									"patching_rect" : [ 309.0, 334.0, 130.0, 20.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-3"
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
									"args" : [ "jmod.noisegate~" ],
									"numinlets" : 0,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.noisegate.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.970939,
									"patching_rect" : [ 308.0, 105.0, 130.0, 20.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-5"
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
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 10.970939,
									"triscale" : 0.9,
									"patching_rect" : [ 585.0, 480.0, 37.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 10.970939,
									"triscale" : 0.9,
									"patching_rect" : [ 441.0, 480.0, 37.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/release $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.970939,
									"patching_rect" : [ 622.0, 499.0, 71.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 10.970939,
									"triscale" : 0.9,
									"patching_rect" : [ 585.0, 499.0, 37.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/attack $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.970939,
									"patching_rect" : [ 622.0, 480.0, 65.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.noisegate.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.970939,
									"patching_rect" : [ 698.0, 448.0, 130.0, 20.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Module specific attributes",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 17.553501,
									"patching_rect" : [ 440.0, 445.0, 236.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-15",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ],
									"patching_rect" : [ 436.0, 443.0, 373.0, 27.0 ],
									"numinlets" : 1,
									"rounded" : 0,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/threshold $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.970939,
									"patching_rect" : [ 478.0, 499.0, 83.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 10.970939,
									"triscale" : 0.9,
									"patching_rect" : [ 441.0, 499.0, 37.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/lookahead $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.970939,
									"patching_rect" : [ 478.0, 480.0, 88.0, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
									"patching_rect" : [ 436.0, 474.0, 373.0, 47.0 ],
									"numinlets" : 1,
									"rounded" : 0,
									"id" : "obj-27"
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-13", 0 ],
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
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-26", 0 ],
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
					"text" : "jmod.noisegate~",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 18.0,
					"patching_rect" : [ 30.0, 15.0, 205.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-12",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.noisegate.cmd",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.970939,
					"patching_rect" : [ 30.0, 325.0, 129.0, 20.0 ],
					"numinlets" : 0,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.970939,
					"patching_rect" : [ 170.0, 440.0, 160.0, 20.0 ],
					"numinlets" : 2,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/threshold -40",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.970939,
					"patching_rect" : [ 30.0, 440.0, 128.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-19"
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
					"patching_rect" : [ 30.0, 85.0, 150.0, 70.0 ],
					"args" : [ "/control" ],
					"numinlets" : 1,
					"id" : "obj-21"
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
					"patching_rect" : [ 30.0, 175.0, 300.0, 140.0 ],
					"args" : [ "/input~" ],
					"numinlets" : 1,
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/noisegate~",
					"numoutlets" : 3,
					"name" : "jmod.noisegate~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 30.0, 350.0, 300.0, 70.0 ],
					"args" : [ "/noisegate~" ],
					"numinlets" : 3,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "noise gate",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.970939,
					"patching_rect" : [ 30.0, 45.0, 67.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-28",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 10.0, 375.0, 60.0 ],
					"numinlets" : 1,
					"rounded" : 15,
					"id" : "obj-30"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-19", 1 ],
					"hidden" : 0,
					"midpoints" : [ 39.5, 432.0, 148.5, 432.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 2 ],
					"destination" : [ "obj-23", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 2 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
