{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 235.0, 44.0, 380.0, 615.0 ],
		"bglocked" : 0,
		"defrect" : [ 235.0, 44.0, 380.0, 615.0 ],
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
					"text" : "prepend /frequency",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"patching_rect" : [ 45.0, 235.0, 107.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"patching_rect" : [ 45.0, 210.0, 65.0, 19.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~",
					"numinlets" : 3,
					"name" : "jmod.output~.maxpat",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"args" : [ "/output~" ],
					"id" : "obj-3",
					"lockeddragscroll" : 1,
					"patching_rect" : [ 45.0, 370.0, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p standard-messages",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 105.0, 117.0, 19.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 493.0, 667.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 493.0, 667.0 ],
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
									"maxclass" : "bpatcher",
									"numinlets" : 0,
									"name" : "jmod.preset_params.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"args" : [ "jmod.delay~" ],
									"id" : "obj-1",
									"lockeddragscroll" : 1,
									"patching_rect" : [ 50.0, 255.0, 374.0, 347.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numinlets" : 0,
									"name" : "jmod.gain_params.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"args" : [  ],
									"id" : "obj-2",
									"lockeddragscroll" : 1,
									"patching_rect" : [ 50.0, 22.0, 374.0, 221.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"hidden" : 1,
									"numoutlets" : 0,
									"id" : "obj-3",
									"patching_rect" : [ 50.0, 636.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mtof",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"patching_rect" : [ 45.0, 185.0, 34.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "kslider",
					"numinlets" : 2,
					"hkeycolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"presentation_rect" : [ 0.0, 0.0, 245.0, 35.0 ],
					"id" : "obj-6",
					"range" : 60,
					"patching_rect" : [ 45.0, 145.0, 245.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.sine~",
					"numinlets" : 1,
					"fontsize" : 17.334082,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 20.0, 189.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Playing simple waveforms",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 50.0, 242.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"rounded" : 15,
					"numoutlets" : 0,
					"id" : "obj-9",
					"patching_rect" : [ 10.0, 10.0, 355.0, 65.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/ui/freeze 0",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"patching_rect" : [ 43.0, 344.0, 131.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control",
					"numinlets" : 1,
					"name" : "jmod.control.maxpat",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"args" : [ "/control" ],
					"id" : "obj-13",
					"lockeddragscroll" : 1,
					"patching_rect" : [ 45.0, 530.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/sine~",
					"numinlets" : 1,
					"name" : "jmod.sine~.maxpat",
					"numoutlets" : 2,
					"outlettype" : [ "", "signal" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"args" : [ "/sine~" ],
					"id" : "obj-14",
					"lockeddragscroll" : 1,
					"patching_rect" : [ 45.0, 265.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "aa = antialised",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"patching_rect" : [ 260.0, 240.0, 84.0, 19.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [ 54.5, 337.0, 164.5, 337.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-3", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [ 335.5, 354.0, 195.0, 354.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"color" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"midpoints" : [ 29.5, 256.0, 54.5, 256.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
