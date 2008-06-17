{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 385.0, 45.0, 714.0, 405.0 ],
		"bglocked" : 0,
		"defrect" : [ 385.0, 45.0, 714.0, 405.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
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
					"text" : "p generic_messages",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"presentation_rect" : [ 5.0, 360.0, 192.0, 27.0 ],
					"id" : "obj-1",
					"patching_rect" : [ 5.0, 360.0, 192.0, 27.0 ],
					"fontsize" : 18.0,
					"presentation" : 1,
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 2.0, 45.0, 382.0, 570.0 ],
						"bglocked" : 0,
						"defrect" : [ 2.0, 45.0, 382.0, 570.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"visible" : 1,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.filter.cmd",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-1",
									"hidden" : 1,
									"patching_rect" : [ 264.0, 233.0, 99.0, 17.0 ],
									"fontsize" : 9.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"presentation_rect" : [ 5.0, 220.0, 374.0, 347.0 ],
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"name" : "jmod.preset_params.maxpat",
									"patching_rect" : [ 5.0, 220.0, 374.0, 347.0 ],
									"presentation" : 1,
									"numinlets" : 0,
									"args" : [ "jmod.filter~" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.filter.cmd",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"id" : "obj-3",
									"hidden" : 1,
									"patching_rect" : [ 263.0, 5.0, 99.0, 17.0 ],
									"fontsize" : 9.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"presentation_rect" : [ 5.0, 0.0, 374.0, 221.0 ],
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"name" : "jmod.gain_params.maxpat",
									"patching_rect" : [ 5.0, 0.0, 374.0, 221.0 ],
									"presentation" : 1,
									"numinlets" : 0,
									"args" : [  ],
									"lockeddragscroll" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.filter.cmd",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-2",
					"hidden" : 1,
					"patching_rect" : [ 273.0, 200.0, 99.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 1,
					"presentation_rect" : [ 2.0, 196.0, 374.0, 154.0 ],
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"name" : "jmod.attr_params.maxpat",
					"patching_rect" : [ 2.0, 196.0, 374.0, 154.0 ],
					"presentation" : 1,
					"numinlets" : 0,
					"args" : [ "/filtergain" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.filter~",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"presentation_rect" : [ 8.0, 21.0, 189.0, 27.0 ],
					"id" : "obj-4",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 8.0, 21.0, 189.0, 27.0 ],
					"fontsize" : 18.0,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "audio filter module",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"presentation_rect" : [ 9.0, 47.0, 266.0, 18.0 ],
					"id" : "obj-5",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 9.0, 47.0, 266.0, 18.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"presentation_rect" : [ 4.0, 4.0, 374.0, 69.0 ],
					"id" : "obj-6",
					"patching_rect" : [ 4.0, 4.0, 374.0, 69.0 ],
					"presentation" : 1,
					"rounded" : 15,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"numoutlets" : 3,
					"fontname" : "Arial",
					"presentation_rect" : [ 9.0, 115.0, 74.0, 17.0 ],
					"id" : "obj-7",
					"outlettype" : [ "int", "", "" ],
					"arrowlink" : 1,
					"types" : [  ],
					"patching_rect" : [ 9.0, 115.0, 74.0, 17.0 ],
					"fontsize" : 9.0,
					"labelclick" : 1,
					"presentation" : 1,
					"items" : [ "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "highshelf" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /filtertype",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"presentation_rect" : [ 85.0, 115.0, 98.0, 17.0 ],
					"id" : "obj-8",
					"outlettype" : [ "" ],
					"patching_rect" : [ 85.0, 115.0, 98.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/q 10 ramp 5000",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"presentation_rect" : [ 142.0, 172.0, 89.0, 15.0 ],
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"patching_rect" : [ 142.0, 172.0, 89.0, 15.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/q $1",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"presentation_rect" : [ 46.0, 172.0, 36.0, 15.0 ],
					"id" : "obj-10",
					"outlettype" : [ "" ],
					"patching_rect" : [ 46.0, 172.0, 36.0, 15.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"presentation_rect" : [ 9.0, 172.0, 35.0, 17.0 ],
					"id" : "obj-11",
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 9.0, 172.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/filtergain $1",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"presentation_rect" : [ 46.0, 154.0, 73.0, 15.0 ],
					"id" : "obj-12",
					"outlettype" : [ "" ],
					"patching_rect" : [ 46.0, 154.0, 73.0, 15.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"presentation_rect" : [ 9.0, 154.0, 35.0, 17.0 ],
					"id" : "obj-13",
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 9.0, 154.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/filtergain 0.2 ramp 5000",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"presentation_rect" : [ 142.0, 154.0, 129.0, 15.0 ],
					"id" : "obj-14",
					"outlettype" : [ "" ],
					"patching_rect" : [ 142.0, 154.0, 129.0, 15.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.filter.cmd",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-15",
					"hidden" : 1,
					"patching_rect" : [ 266.0, 81.0, 85.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.filter.cmd",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"presentation_rect" : [ 391.0, 252.0, 135.0, 17.0 ],
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"patching_rect" : [ 391.0, 252.0, 135.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/cf 5000 ramp 5000",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"presentation_rect" : [ 142.0, 136.0, 105.0, 15.0 ],
					"id" : "obj-17",
					"outlettype" : [ "" ],
					"patching_rect" : [ 142.0, 136.0, 105.0, 15.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Module specific attributes",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"presentation_rect" : [ 8.0, 78.0, 236.0, 27.0 ],
					"id" : "obj-18",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 8.0, 78.0, 236.0, 27.0 ],
					"fontsize" : 18.0,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"presentation_rect" : [ 4.0, 76.0, 373.0, 27.0 ],
					"id" : "obj-19",
					"patching_rect" : [ 4.0, 76.0, 373.0, 27.0 ],
					"presentation" : 1,
					"rounded" : 15,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"presentation_rect" : [ 460.0, 355.0, 65.0, 17.0 ],
					"id" : "obj-20",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 460.0, 355.0, 65.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"presentation_rect" : [ 535.0, 365.0, 160.0, 17.0 ],
					"id" : "obj-21",
					"patching_rect" : [ 535.0, 365.0, 160.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/filtertype lowpass",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"presentation_rect" : [ 395.0, 378.0, 95.0, 15.0 ],
					"id" : "obj-22",
					"outlettype" : [ "" ],
					"patching_rect" : [ 395.0, 378.0, 95.0, 15.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"presentation_rect" : [ 395.0, 355.0, 61.0, 17.0 ],
					"id" : "obj-23",
					"outlettype" : [ "" ],
					"patching_rect" : [ 395.0, 355.0, 61.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control",
					"numoutlets" : 1,
					"presentation_rect" : [ 390.0, 25.0, 149.0, 74.0 ],
					"id" : "obj-24",
					"outlettype" : [ "" ],
					"name" : "jmod.control.maxpat",
					"patching_rect" : [ 390.0, 25.0, 149.0, 74.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"args" : [ "/control" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"numoutlets" : 3,
					"presentation_rect" : [ 390.0, 105.0, 305.0, 141.0 ],
					"id" : "obj-25",
					"outlettype" : [ "", "signal", "signal" ],
					"name" : "jmod.input~.maxpat",
					"patching_rect" : [ 390.0, 105.0, 305.0, 141.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"args" : [ "/input~" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~",
					"numoutlets" : 3,
					"presentation_rect" : [ 391.0, 271.0, 304.0, 75.0 ],
					"id" : "obj-26",
					"outlettype" : [ "", "signal", "signal" ],
					"name" : "jmod.filter~.maxpat",
					"patching_rect" : [ 391.0, 271.0, 304.0, 75.0 ],
					"presentation" : 1,
					"numinlets" : 3,
					"args" : [ "/filter" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/cf $1",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"presentation_rect" : [ 46.0, 136.0, 40.0, 15.0 ],
					"id" : "obj-27",
					"outlettype" : [ "" ],
					"patching_rect" : [ 46.0, 136.0, 40.0, 15.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"presentation_rect" : [ 9.0, 136.0, 35.0, 17.0 ],
					"id" : "obj-28",
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 9.0, 136.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"presentation_rect" : [ 4.0, 107.0, 373.0, 84.0 ],
					"id" : "obj-29",
					"patching_rect" : [ 4.0, 107.0, 373.0, 84.0 ],
					"presentation" : 1,
					"rounded" : 15,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [ 469.5, 375.0, 404.5, 375.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 2 ],
					"destination" : [ "obj-26", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 2 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
