{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 34.0, 44.0, 407.0, 621.0 ],
		"bglocked" : 0,
		"defrect" : [ 34.0, 44.0, 407.0, 621.0 ],
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
					"numoutlets" : 1,
					"name" : "jmod.output~.maxpat",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"patching_rect" : [ 20.0, 455.0, 300.0, 140.0 ],
					"args" : [ "/output~" ],
					"numinlets" : 3,
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p controlling_jmod.degrade~",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.970939,
					"patching_rect" : [ 210.0, 100.0, 172.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-41",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 1146.0, 626.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 1146.0, 626.0 ],
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
									"text" : "s jmod.degrade.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"patching_rect" : [ 780.0, 510.0, 113.0, 18.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/bitdepth:- 5 ramp 1000",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 973.0, 409.0, 131.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/bitdepth:+ 5 ramp 2000",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 973.0, 391.0, 134.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "shorthand for inc and dec",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"patching_rect" : [ 846.0, 393.0, 79.0, 30.0 ],
									"numinlets" : 1,
									"id" : "obj-3",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/bitdepth:- 4",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 781.0, 449.0, 73.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/bitdepth:+ 3",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 781.0, 431.0, 76.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/bitdepth:-",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 781.0, 408.0, 63.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/bitdepth:+",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 781.0, 390.0, 67.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "change this module's specific parameters remotely : continuously or with a ramp",
									"linecount" : 4,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"patching_rect" : [ 648.0, 65.0, 130.0, 54.0 ],
									"numinlets" : 1,
									"id" : "obj-8",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.degrade.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"patching_rect" : [ 672.0, 122.0, 111.0, 18.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"name" : "jmod.attr_params.maxpat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 401.0, 115.0, 376.0, 497.0 ],
									"args" : [ "/bitdepth" ],
									"numinlets" : 1,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.degrade.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"patching_rect" : [ 281.0, 272.0, 111.0, 18.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"name" : "jmod.preset_params.maxpat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 22.0, 263.0, 374.0, 347.0 ],
									"args" : [ "jmod.degrade~" ],
									"numinlets" : 0,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/bitdepth 3 ramp 5000",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 520.0, 91.0, 122.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.degrade.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"patching_rect" : [ 280.0, 43.0, 111.0, 18.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.degrade.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"patching_rect" : [ 667.0, 43.0, 111.0, 18.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/sr_ratio 0.1 ramp 5000",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 520.0, 72.0, 129.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"name" : "jmod.gain_params.maxpat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 22.0, 38.0, 374.0, 221.0 ],
									"args" : [  ],
									"numinlets" : 0,
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Module specific attributes",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 17.334082,
									"patching_rect" : [ 405.0, 40.0, 236.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-20",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"patching_rect" : [ 402.0, 38.0, 373.0, 27.0 ],
									"numinlets" : 1,
									"rounded" : 0,
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/bitdepth $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 446.0, 91.0, 70.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"triangle" : 0,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"triscale" : 0.9,
									"fontsize" : 9.873845,
									"patching_rect" : [ 411.0, 90.0, 35.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-30"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/sr_ratio $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 446.0, 72.0, 69.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-31"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"triangle" : 0,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"fontsize" : 9.873845,
									"patching_rect" : [ 411.0, 71.0, 35.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-32"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"patching_rect" : [ 402.0, 66.0, 373.0, 47.0 ],
									"numinlets" : 1,
									"rounded" : 0,
									"id" : "obj-33"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "inc or dec by the given number of steps.",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"patching_rect" : [ 854.0, 436.0, 126.0, 30.0 ],
									"numinlets" : 1,
									"id" : "obj-37",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 387.0, -2.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"hidden" : 1,
									"id" : "obj-38",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-17", 0 ],
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
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-10", 0 ],
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
					"text" : "jmod.degrade~",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 18.0,
					"patching_rect" : [ 20.0, 20.0, 207.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-14",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.degrade.cmd",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 20.0, 340.0, 110.0, 18.0 ],
					"numinlets" : 0,
					"hidden" : 1,
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 10.0, 410.0, 73.0, 18.0 ],
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/audio/bypass 0",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 20.0, 435.0, 134.0, 16.0 ],
					"numinlets" : 2,
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/control",
					"numoutlets" : 1,
					"name" : "jmod.control.maxpat",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"patching_rect" : [ 20.0, 100.0, 150.0, 70.0 ],
					"args" : [ "/control" ],
					"numinlets" : 1,
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"numoutlets" : 3,
					"name" : "jmod.input~.maxpat",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"patching_rect" : [ 20.0, 195.0, 300.0, 140.0 ],
					"args" : [ "/input" ],
					"numinlets" : 1,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/degrade~",
					"numoutlets" : 3,
					"name" : "jmod.degrade~.maxpat",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"patching_rect" : [ 20.0, 360.0, 300.0, 70.0 ],
					"args" : [ "/degrade~" ],
					"numinlets" : 3,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "degrade audio signal",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 20.0, 50.0, 113.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-34",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 10.0, 373.0, 68.0 ],
					"numinlets" : 1,
					"rounded" : 15,
					"id" : "obj-35"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-43", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 2 ],
					"destination" : [ "obj-43", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 2 ],
					"destination" : [ "obj-28", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0,
					"midpoints" : [ 29.5, 432.0, 144.5, 432.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
