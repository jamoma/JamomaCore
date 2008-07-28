{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 228.0, 170.0, 600.0, 426.0 ],
		"bglocked" : 0,
		"defrect" : [ 228.0, 170.0, 600.0, 426.0 ],
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
					"varname" : "with_pattr[2]",
					"text" : "p jamoma_with_pattrstorage",
					"numinlets" : 0,
					"patching_rect" : [ 49.0, 234.0, 153.0, 18.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 20.0, 74.0, 687.0, 350.0 ],
						"bglocked" : 0,
						"defrect" : [ 20.0, 74.0, 687.0, 350.0 ],
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
									"varname" : "u944001993",
									"text" : "pattrstorage",
									"numinlets" : 1,
									"patching_rect" : [ 422.0, 57.0, 70.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"saved_object_attributes" : 									{
										"client_rect" : [ 20, 74, 660, 314 ],
										"storage_rect" : [ 0, 0, 640, 240 ]
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/time $1",
									"numinlets" : 2,
									"patching_rect" : [ 111.0, 157.0, 51.0, 16.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "jmod.qmetro",
									"text" : "jmod.qmetro.mxt",
									"numinlets" : 1,
									"patching_rect" : [ 111.0, 189.0, 96.0, 18.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"numinlets" : 2,
									"patching_rect" : [ 334.0, 54.0, 33.0, 16.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 442.0, 225.0, 47.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "max",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 442.0, 247.0, 35.0, 18.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "min",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 388.0, 247.0, 35.0, 18.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 550.0, 225.0, 47.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 496.0, 225.0, 47.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 388.0, 225.0, 47.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 334.0, 225.0, 47.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "count",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 334.0, 247.0, 36.0, 18.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "mean",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 496.0, 247.0, 36.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "standard deviation",
									"linecount" : 2,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 550.0, 247.0, 56.0, 30.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.stats",
									"numinlets" : 1,
									"patching_rect" : [ 334.0, 182.0, 282.0, 18.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numoutlets" : 6,
									"outlettype" : [ "int", "float", "float", "float", "float", "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 217.0, 223.0, 93.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b",
									"numinlets" : 1,
									"patching_rect" : [ 44.0, 76.0, 41.0, 18.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.cpu_timer.mxt",
									"numinlets" : 2,
									"patching_rect" : [ 217.0, 148.0, 108.0, 18.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 44.0, 54.0, 15.0, 15.0 ],
									"id" : "obj-19",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "Uzi 120000",
									"numinlets" : 2,
									"patching_rect" : [ 59.0, 126.0, 65.0, 18.0 ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"fontsize" : 9.873845
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-15", 4 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 3 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 2 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 226.5, 173.0, 343.5, 173.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-18", 1 ],
									"hidden" : 0,
									"midpoints" : [ 53.5, 116.0, 315.5, 116.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 2 ],
									"destination" : [ "obj-18", 0 ],
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
									"source" : [ "obj-20", 2 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "with_pattr[1]",
					"text" : "p jamoma_without_pattrstorage",
					"numinlets" : 0,
					"patching_rect" : [ 49.0, 184.0, 169.0, 18.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 20.0, 74.0, 687.0, 350.0 ],
						"bglocked" : 0,
						"defrect" : [ 20.0, 74.0, 687.0, 350.0 ],
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
									"text" : "/time $1",
									"numinlets" : 2,
									"patching_rect" : [ 111.0, 157.0, 51.0, 16.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jmod.qmetro.mxt",
									"numinlets" : 1,
									"patching_rect" : [ 111.0, 189.0, 96.0, 18.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"numinlets" : 2,
									"patching_rect" : [ 334.0, 54.0, 33.0, 16.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 442.0, 225.0, 47.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "max",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 442.0, 247.0, 35.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "min",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 388.0, 247.0, 35.0, 18.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 550.0, 225.0, 47.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 496.0, 225.0, 47.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 388.0, 225.0, 47.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 334.0, 225.0, 47.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "count",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 334.0, 247.0, 36.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "mean",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 496.0, 247.0, 36.0, 18.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "standard deviation",
									"linecount" : 2,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 550.0, 247.0, 56.0, 30.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.stats",
									"numinlets" : 1,
									"patching_rect" : [ 334.0, 182.0, 282.0, 18.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numoutlets" : 6,
									"outlettype" : [ "int", "float", "float", "float", "float", "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 217.0, 223.0, 93.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b",
									"numinlets" : 1,
									"patching_rect" : [ 44.0, 76.0, 41.0, 18.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.cpu_timer.mxt",
									"numinlets" : 2,
									"patching_rect" : [ 217.0, 148.0, 108.0, 18.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 44.0, 54.0, 15.0, 15.0 ],
									"id" : "obj-18",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "Uzi 120000",
									"numinlets" : 2,
									"patching_rect" : [ 59.0, 126.0, 65.0, 18.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"fontsize" : 9.873845
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-14", 4 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 3 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 2 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 226.5, 173.0, 343.5, 173.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"midpoints" : [ 53.5, 116.0, 315.5, 116.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 2 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 2 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "with_pattr",
					"text" : "p with_pattr",
					"numinlets" : 0,
					"patching_rect" : [ 49.0, 124.0, 69.0, 18.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 20.0, 74.0, 653.0, 362.0 ],
						"bglocked" : 0,
						"defrect" : [ 20.0, 74.0, 653.0, 362.0 ],
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
									"varname" : "u977002010",
									"text" : "pattrstorage",
									"numinlets" : 1,
									"patching_rect" : [ 403.0, 54.0, 70.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"saved_object_attributes" : 									{
										"client_rect" : [ 20, 74, 660, 314 ],
										"storage_rect" : [ 0, 0, 640, 240 ]
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "u641002011",
									"text" : "pattr",
									"numinlets" : 1,
									"patching_rect" : [ 66.0, 166.0, 40.0, 18.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.873845,
									"restore" : [ 0 ],
									"saved_object_attributes" : 									{

									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"numinlets" : 2,
									"patching_rect" : [ 293.0, 54.0, 33.0, 16.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 401.0, 225.0, 47.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "max",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 401.0, 247.0, 35.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "min",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 347.0, 247.0, 35.0, 18.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 509.0, 225.0, 47.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 455.0, 225.0, 47.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 347.0, 225.0, 47.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 293.0, 225.0, 47.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "count",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 293.0, 247.0, 36.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "mean",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 455.0, 247.0, 36.0, 18.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "standard deviation",
									"linecount" : 2,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 509.0, 247.0, 56.0, 30.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.stats",
									"numinlets" : 1,
									"patching_rect" : [ 293.0, 182.0, 282.0, 18.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numoutlets" : 6,
									"outlettype" : [ "int", "float", "float", "float", "float", "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 176.0, 223.0, 93.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b",
									"numinlets" : 1,
									"patching_rect" : [ 44.0, 76.0, 41.0, 18.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.cpu_timer",
									"numinlets" : 2,
									"patching_rect" : [ 176.0, 148.0, 108.0, 18.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 44.0, 54.0, 15.0, 15.0 ],
									"id" : "obj-18",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "number",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 111.0, 168.0, 55.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qmetro",
									"numinlets" : 2,
									"patching_rect" : [ 79.0, 217.0, 44.0, 18.0 ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "Uzi 120000",
									"numinlets" : 2,
									"patching_rect" : [ 59.0, 126.0, 65.0, 18.0 ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"fontsize" : 9.873845
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-16", 2 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"midpoints" : [ 53.5, 116.0, 274.5, 116.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 185.5, 173.0, 302.5, 173.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 4 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 3 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 2 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 2 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p metro_only",
					"numinlets" : 0,
					"patching_rect" : [ 49.0, 74.0, 75.0, 18.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 20.0, 74.0, 653.0, 362.0 ],
						"bglocked" : 0,
						"defrect" : [ 20.0, 74.0, 653.0, 362.0 ],
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
									"text" : "clear",
									"numinlets" : 2,
									"patching_rect" : [ 293.0, 54.0, 33.0, 16.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 401.0, 225.0, 47.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "max",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 401.0, 247.0, 35.0, 18.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "min",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 347.0, 247.0, 35.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 509.0, 225.0, 47.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 455.0, 225.0, 47.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 347.0, 225.0, 47.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 293.0, 225.0, 47.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "count",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 293.0, 247.0, 36.0, 18.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "mean",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 455.0, 247.0, 36.0, 18.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "standard deviation",
									"linecount" : 2,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 509.0, 247.0, 56.0, 30.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.stats",
									"numinlets" : 1,
									"patching_rect" : [ 293.0, 182.0, 282.0, 18.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numoutlets" : 6,
									"outlettype" : [ "int", "float", "float", "float", "float", "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 176.0, 223.0, 93.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b",
									"numinlets" : 1,
									"patching_rect" : [ 44.0, 76.0, 41.0, 18.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.cpu_timer.mxt",
									"numinlets" : 2,
									"patching_rect" : [ 176.0, 148.0, 108.0, 18.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 44.0, 54.0, 15.0, 15.0 ],
									"id" : "obj-16",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 111.0, 168.0, 55.0, 18.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qmetro",
									"numinlets" : 2,
									"patching_rect" : [ 79.0, 217.0, 44.0, 18.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "Uzi 120000",
									"numinlets" : 2,
									"patching_rect" : [ 59.0, 126.0, 65.0, 18.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"fontsize" : 9.873845
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 4 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 3 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 2 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 185.5, 173.0, 302.5, 173.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [ 53.5, 116.0, 274.5, 116.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 2 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-18", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 2 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
 ],
		"lines" : [  ]
	}

}
