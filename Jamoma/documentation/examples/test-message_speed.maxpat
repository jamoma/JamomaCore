{
	"patcher" : 	{
		"rect" : [ 228.0, 170.0, 600.0, 426.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 228.0, 170.0, 600.0, 426.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "with_pattr[2]",
					"text" : "p jamoma_with_pattrstorage",
					"patching_rect" : [ 49.0, 234.0, 142.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patcher" : 					{
						"rect" : [ 20.0, 74.0, 687.0, 350.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 20.0, 74.0, 687.0, 350.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "u339011095",
									"text" : "pattrstorage",
									"patching_rect" : [ 422.0, 57.0, 67.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"client_rect" : [ 20, 74, 660, 314 ],
										"storage_rect" : [ 0, 0, 640, 240 ]
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/time $1",
									"patching_rect" : [ 111.0, 157.0, 51.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "jmod.qmetro",
									"text" : "jmod.qmetro.mxt",
									"patching_rect" : [ 111.0, 189.0, 88.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"patching_rect" : [ 334.0, 54.0, 33.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 442.0, 225.0, 47.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "max",
									"patching_rect" : [ 442.0, 247.0, 35.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "min",
									"patching_rect" : [ 388.0, 247.0, 35.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 550.0, 225.0, 47.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 496.0, 225.0, 47.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 388.0, 225.0, 47.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 334.0, 225.0, 47.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "count",
									"patching_rect" : [ 334.0, 247.0, 35.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "mean",
									"patching_rect" : [ 496.0, 247.0, 33.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "standard deviation",
									"linecount" : 2,
									"patching_rect" : [ 550.0, 247.0, 52.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.stats",
									"patching_rect" : [ 334.0, 182.0, 282.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 6,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "float", "float", "float", "float", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 217.0, 223.0, 93.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b",
									"patching_rect" : [ 44.0, 76.0, 40.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-17",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.cpu_timer.mxt",
									"patching_rect" : [ 217.0, 148.0, 102.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-18",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 44.0, 54.0, 15.0, 15.0 ],
									"id" : "obj-19",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "Uzi 120000",
									"patching_rect" : [ 59.0, 126.0, 63.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-20",
									"numinlets" : 2,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "bang", "int" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 2 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 2 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-18", 1 ],
									"hidden" : 0,
									"midpoints" : [ 53.5, 116.0, 309.5, 116.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0
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
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 2 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 3 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 4 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "with_pattr[1]",
					"text" : "p jamoma_without_pattrstorage",
					"patching_rect" : [ 49.0, 184.0, 156.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patcher" : 					{
						"rect" : [ 20.0, 74.0, 687.0, 350.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 20.0, 74.0, 687.0, 350.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/time $1",
									"patching_rect" : [ 111.0, 157.0, 51.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jmod.qmetro.mxt",
									"patching_rect" : [ 111.0, 189.0, 88.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"patching_rect" : [ 334.0, 54.0, 33.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 442.0, 225.0, 47.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "max",
									"patching_rect" : [ 442.0, 247.0, 35.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "min",
									"patching_rect" : [ 388.0, 247.0, 35.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 550.0, 225.0, 47.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 496.0, 225.0, 47.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 388.0, 225.0, 47.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 334.0, 225.0, 47.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "count",
									"patching_rect" : [ 334.0, 247.0, 35.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "mean",
									"patching_rect" : [ 496.0, 247.0, 33.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "standard deviation",
									"linecount" : 2,
									"patching_rect" : [ 550.0, 247.0, 52.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.stats",
									"patching_rect" : [ 334.0, 182.0, 282.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 6,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "float", "float", "float", "float", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 217.0, 223.0, 93.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b",
									"patching_rect" : [ 44.0, 76.0, 40.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.cpu_timer.mxt",
									"patching_rect" : [ 217.0, 148.0, 102.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-17",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 44.0, 54.0, 15.0, 15.0 ],
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "Uzi 120000",
									"patching_rect" : [ 59.0, 126.0, 63.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-19",
									"numinlets" : 2,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "bang", "int" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 2 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 2 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"midpoints" : [ 53.5, 116.0, 309.5, 116.0 ]
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 2 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 3 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 4 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "with_pattr",
					"text" : "p with_pattr",
					"patching_rect" : [ 49.0, 124.0, 67.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patcher" : 					{
						"rect" : [ 20.0, 74.0, 653.0, 362.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 20.0, 74.0, 653.0, 362.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "u680019236",
									"text" : "pattrstorage",
									"patching_rect" : [ 403.0, 54.0, 67.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"saved_object_attributes" : 									{
										"client_rect" : [ 20, 74, 660, 314 ],
										"storage_rect" : [ 0, 0, 640, 240 ]
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "u971011222",
									"text" : "pattr",
									"patching_rect" : [ 66.0, 166.0, 40.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"save2" : [ "#X", "prestore", 1, 0, 0, ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"patching_rect" : [ 293.0, 54.0, 33.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 401.0, 225.0, 47.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "max",
									"patching_rect" : [ 401.0, 247.0, 35.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "min",
									"patching_rect" : [ 347.0, 247.0, 35.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 509.0, 225.0, 47.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 455.0, 225.0, 47.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 347.0, 225.0, 47.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 293.0, 225.0, 47.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "count",
									"patching_rect" : [ 293.0, 247.0, 35.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "mean",
									"patching_rect" : [ 455.0, 247.0, 33.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "standard deviation",
									"linecount" : 2,
									"patching_rect" : [ 509.0, 247.0, 52.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.stats",
									"patching_rect" : [ 293.0, 182.0, 282.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 6,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "float", "float", "float", "float", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 176.0, 223.0, 93.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b",
									"patching_rect" : [ 44.0, 76.0, 40.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.cpu_timer.mxt",
									"patching_rect" : [ 176.0, 148.0, 102.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-17",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 44.0, 54.0, 15.0, 15.0 ],
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "number",
									"patching_rect" : [ 111.0, 168.0, 55.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-19",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qmetro",
									"patching_rect" : [ 79.0, 217.0, 42.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-20",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "Uzi 120000",
									"patching_rect" : [ 59.0, 126.0, 63.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-21",
									"numinlets" : 2,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "bang", "int" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 2 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 2 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"midpoints" : [ 53.5, 116.0, 268.5, 116.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0
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
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 2 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 3 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 4 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p metro_only",
					"patching_rect" : [ 49.0, 74.0, 70.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patcher" : 					{
						"rect" : [ 20.0, 74.0, 653.0, 362.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 20.0, 74.0, 653.0, 362.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"patching_rect" : [ 293.0, 54.0, 33.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 401.0, 225.0, 47.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "max",
									"patching_rect" : [ 401.0, 247.0, 35.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "min",
									"patching_rect" : [ 347.0, 247.0, 35.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 509.0, 225.0, 47.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 455.0, 225.0, 47.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 347.0, 225.0, 47.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 293.0, 225.0, 47.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "count",
									"patching_rect" : [ 293.0, 247.0, 35.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "mean",
									"patching_rect" : [ 455.0, 247.0, 33.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "standard deviation",
									"linecount" : 2,
									"patching_rect" : [ 509.0, 247.0, 52.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.stats",
									"patching_rect" : [ 293.0, 182.0, 282.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 6,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "float", "float", "float", "float", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 176.0, 223.0, 93.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b",
									"patching_rect" : [ 44.0, 76.0, 40.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.cpu_timer.mxt",
									"patching_rect" : [ 176.0, 148.0, 102.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-15",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 44.0, 54.0, 15.0, 15.0 ],
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 111.0, 168.0, 55.0, 17.0 ],
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-17",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qmetro",
									"patching_rect" : [ 79.0, 217.0, 42.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-18",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "Uzi 120000",
									"patching_rect" : [ 59.0, 126.0, 63.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-19",
									"numinlets" : 2,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "bang", "int" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 2 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-18", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 2 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [ 53.5, 116.0, 268.5, 116.0 ]
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 2 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 3 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 4 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
 ],
		"lines" : [  ]
	}

}
