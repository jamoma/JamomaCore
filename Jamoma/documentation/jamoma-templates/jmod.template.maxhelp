{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 94.0, 327.0, 640.0, 417.0 ],
		"bglocked" : 0,
		"defrect" : [ 94.0, 327.0, 640.0, 417.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 415.0, 155.0, 49.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"id" : "obj-2",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 32.0, 311.0, 73.0, 18.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 31.0, 331.0, 192.0, 16.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "some text",
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 48.0, 124.0, 306.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"id" : "obj-8",
					"presentation_rect" : [ 45.0, 45.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 30.0, 237.0, 300.0, 70.0 ],
					"args" : [ "/template" ],
					"outlettype" : [ "" ],
					"name" : "jmod.template.control.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p presets_and_generic",
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 413.0, 285.0, 172.0, 23.0 ],
					"fontsize" : 13.482065,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 238.0, 214.0, 443.0, 449.0 ],
						"bglocked" : 0,
						"defrect" : [ 238.0, 214.0, 443.0, 449.0 ],
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
									"text" : "s jmod.output~.help",
									"id" : "obj-1",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 246.0, 44.0, 111.0, 18.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"id" : "obj-2",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 31.0, 34.0, 374.0, 347.0 ],
									"args" : [ "jmod.input~" ],
									"outlettype" : [ "" ],
									"name" : "jmod.preset_params.maxpat"
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.module-name",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 35.0, 189.0, 28.0 ],
					"fontsize" : 18.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a brief explanation",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 63.0, 333.0, 18.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"rounded" : 0,
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 27.0, 556.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "subsection",
					"id" : "obj-37",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 414.0, 131.0, 149.0, 21.0 ],
					"fontsize" : 11.556055
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/a_slider $1",
					"id" : "obj-41",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 466.0, 157.0, 72.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.module-name.help",
					"id" : "obj-44",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 437.0, 195.0, 141.0, 18.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.module-name.help",
					"id" : "obj-48",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 30.0, 215.0, 140.0, 18.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Section",
					"id" : "obj-50",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 413.0, 100.0, 138.0, 28.0 ],
					"fontsize" : 18.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ],
					"rounded" : 0,
					"id" : "obj-52",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 405.0, 98.0, 177.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"rounded" : 0,
					"id" : "obj-53",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 406.0, 129.0, 176.0, 52.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
