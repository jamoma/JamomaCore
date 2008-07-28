{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 109.0, 56.0, 387.0, 471.0 ],
		"bglocked" : 0,
		"defrect" : [ 109.0, 56.0, 387.0, 471.0 ],
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
					"varname" : "/output~",
					"numoutlets" : 1,
					"name" : "jmod.output~.maxpat",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 40.0, 220.0, 300.0, 140.0 ],
					"args" : [ "/output~" ],
					"numinlets" : 3,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p standard-messages",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 40.0, 90.0, 117.0, 18.0 ],
					"numinlets" : 0,
					"id" : "obj-2",
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
									"numoutlets" : 1,
									"name" : "jmod.preset_params.maxpat",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 50.0, 255.0, 374.0, 347.0 ],
									"args" : [ "jmod.delay~" ],
									"numinlets" : 0,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"name" : "jmod.gain_params.maxpat",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 50.0, 22.0, 374.0, 221.0 ],
									"args" : [  ],
									"numinlets" : 0,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 636.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-3",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
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
					"text" : "jmod.noise~",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 18.0,
					"patching_rect" : [ 25.0, 20.0, 196.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-3",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Different noise functions",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 25.0, 50.0, 299.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-4",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 10.0, 335.0, 65.0 ],
					"numinlets" : 1,
					"rounded" : 15,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/ui/freeze 0",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 40.0, 195.0, 128.0, 16.0 ],
					"numinlets" : 2,
					"id" : "obj-7"
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
					"patching_rect" : [ 40.0, 380.0, 150.0, 70.0 ],
					"args" : [ "/control" ],
					"numinlets" : 1,
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/noise~",
					"numoutlets" : 2,
					"name" : "jmod.noise~.maxpat",
					"outlettype" : [ "", "signal" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"lockeddragscroll" : 1,
					"patching_rect" : [ 40.0, 115.0, 150.0, 70.0 ],
					"args" : [ "/noise~" ],
					"numinlets" : 1,
					"id" : "obj-10"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [ 49.5, 192.0, 158.5, 192.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-1", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"color" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"midpoints" : [  ]
				}

			}
 ]
	}

}
