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
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 415.0, 155.0, 49.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-7",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 32.0, 311.0, 73.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/a_slider 0.52",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"patching_rect" : [ 31.0, 331.0, 192.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "some text",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 48.0, 124.0, 306.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-12",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"presentation_rect" : [ 45.0, 45.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"args" : [ "/template" ],
					"patching_rect" : [ 30.0, 237.0, 300.0, 70.0 ],
					"numoutlets" : 1,
					"id" : "obj-8",
					"name" : "nd.jmod.template.control.maxpat",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p presets_and_generic",
					"fontsize" : 13.482065,
					"numinlets" : 0,
					"patching_rect" : [ 413.0, 285.0, 172.0, 23.0 ],
					"numoutlets" : 0,
					"id" : "obj-1",
					"fontname" : "Verdana",
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
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"hidden" : 1,
									"patching_rect" : [ 246.0, 44.0, 111.0, 18.0 ],
									"numoutlets" : 0,
									"id" : "obj-1",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numinlets" : 0,
									"args" : [ "jmod.input~" ],
									"patching_rect" : [ 31.0, 34.0, 374.0, 347.0 ],
									"numoutlets" : 1,
									"id" : "obj-2",
									"name" : "jmod.preset_params.maxpat",
									"outlettype" : [ "" ]
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
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.module-name",
					"fontsize" : 17.334082,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 31.0, 35.0, 189.0, 28.0 ],
					"numoutlets" : 0,
					"id" : "obj-3",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a brief explanation",
					"fontsize" : 9.873845,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 31.0, 63.0, 333.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-4",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 25.0, 27.0, 556.0, 62.0 ],
					"numoutlets" : 0,
					"id" : "obj-5",
					"rounded" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "subsection",
					"fontsize" : 11.556055,
					"numinlets" : 1,
					"patching_rect" : [ 414.0, 131.0, 149.0, 21.0 ],
					"numoutlets" : 0,
					"id" : "obj-37",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/a_slider $1",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 466.0, 157.0, 72.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-41",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.module-name.help",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 437.0, 195.0, 141.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-44",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.module-name.help",
					"fontsize" : 9.873845,
					"numinlets" : 0,
					"hidden" : 1,
					"patching_rect" : [ 30.0, 215.0, 140.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-48",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Section",
					"fontsize" : 17.334082,
					"numinlets" : 1,
					"patching_rect" : [ 413.0, 100.0, 138.0, 28.0 ],
					"numoutlets" : 0,
					"id" : "obj-50",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 405.0, 98.0, 177.0, 27.0 ],
					"numoutlets" : 0,
					"id" : "obj-52",
					"rounded" : 0,
					"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 406.0, 129.0, 176.0, 52.0 ],
					"numoutlets" : 0,
					"id" : "obj-53",
					"rounded" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-41", 0 ],
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
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
 ]
	}

}
