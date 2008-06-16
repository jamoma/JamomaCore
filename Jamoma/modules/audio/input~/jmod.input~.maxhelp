{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 108.0, 44.0, 813.0, 614.0 ],
		"bglocked" : 0,
		"defrect" : [ 108.0, 44.0, 813.0, 614.0 ],
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
					"text" : "p presets_and_generic",
					"patching_rect" : [ 487.0, 501.0, 214.0, 28.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"fontsize" : 17.334082,
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 436.0, 431.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 436.0, 431.0 ],
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
									"text" : "s jmod.input~.help",
									"hidden" : 1,
									"patching_rect" : [ 287.0, 28.0, 104.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"patching_rect" : [ 19.0, 22.0, 374.0, 347.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"name" : "jmod.preset_params.maxpat",
									"args" : [ "jmod.input~" ],
									"numinlets" : 0,
									"numoutlets" : 1
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
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.input~.help",
					"hidden" : 1,
					"patching_rect" : [ 282.0, 418.0, 104.0, 18.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 10.0, 413.0, 374.0, 143.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"name" : "jmod.attr_params.maxpat",
					"args" : [ "/ch_1" ],
					"numinlets" : 0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.input~.help",
					"hidden" : 1,
					"patching_rect" : [ 270.0, 84.0, 104.0, 18.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 12.0, 79.0, 373.0, 326.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"name" : "jmod.gain_params.maxpat",
					"args" : [  ],
					"numinlets" : 0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 535.0, 277.0, 15.0, 15.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /sf_report",
					"patching_rect" : [ 553.0, 276.0, 134.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.input~",
					"patching_rect" : [ 20.0, 20.0, 198.0, 28.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"fontsize" : 18.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "generic stereo audio input module",
					"patching_rect" : [ 20.0, 50.0, 247.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 11.0, 12.0, 375.0, 63.0 ],
					"id" : "obj-10",
					"rounded" : 15,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/control",
					"patching_rect" : [ 400.0, 10.0, 150.0, 70.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"name" : "jmod.control.maxpat",
					"args" : [  ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"hidden" : 1,
					"patching_rect" : [ 462.0, 259.0, 74.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "adc~: Input Channels",
					"patching_rect" : [ 411.0, 407.0, 136.0, 21.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"fontsize" : 11.556055,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Sources",
					"patching_rect" : [ 411.0, 337.0, 115.0, 21.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"fontsize" : 11.556055,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"maximum" : 512,
					"patching_rect" : [ 426.0, 450.0, 35.0, 18.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 9.873845,
					"triscale" : 0.9,
					"numinlets" : 1,
					"minimum" : 1,
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"maximum" : 512,
					"patching_rect" : [ 426.0, 430.0, 35.0, 18.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 9.873845,
					"triscale" : 0.9,
					"numinlets" : 1,
					"minimum" : 1,
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/ch_2 $1",
					"patching_rect" : [ 463.0, 450.0, 53.0, 16.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/ch_1 $1",
					"patching_rect" : [ 463.0, 430.0, 53.0, 16.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/ui/freeze 0",
					"patching_rect" : [ 400.0, 280.0, 126.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"patching_rect" : [ 401.0, 257.0, 68.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~",
					"patching_rect" : [ 580.0, 255.0, 124.0, 19.0 ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.input~.help",
					"hidden" : 1,
					"patching_rect" : [ 678.0, 311.0, 105.0, 19.0 ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/sf_open",
					"patching_rect" : [ 610.0, 451.0, 52.0, 16.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/sf_open anton.aif",
					"patching_rect" : [ 610.0, 433.0, 100.0, 16.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/loop $1",
					"patching_rect" : [ 627.0, 385.0, 50.0, 16.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 610.0, 385.0, 15.0, 15.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-26",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/play $1",
					"patching_rect" : [ 627.0, 365.0, 50.0, 16.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 610.0, 365.0, 15.0, 15.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-28",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"types" : [  ],
					"patching_rect" : [ 426.0, 359.0, 123.0, 18.0 ],
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"items" : [ "No", "Input", ",", "Live", "Input", ",", "Soundfile", ",", "Test", "Tone:", 1, "kHz", ",", "Test", "Source:", "Pink", "Noise" ],
					"labelclick" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/source_select $1",
					"patching_rect" : [ 426.0, 379.0, 97.0, 16.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.input~.help",
					"patching_rect" : [ 400.0, 85.0, 104.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-31",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"patching_rect" : [ 400.0, 105.0, 300.0, 140.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"id" : "obj-32",
					"name" : "jmod.input~.maxpat",
					"args" : [  ],
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Input Control",
					"patching_rect" : [ 411.0, 306.0, 128.0, 28.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-33",
					"fontname" : "Verdana",
					"fontsize" : 17.334082,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Sound File Control",
					"patching_rect" : [ 595.0, 344.0, 116.0, 21.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-34",
					"fontname" : "Verdana",
					"fontsize" : 11.556055,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 403.0, 304.0, 375.0, 30.0 ],
					"id" : "obj-35",
					"rounded" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 403.0, 405.0, 180.0, 68.0 ],
					"id" : "obj-36",
					"rounded" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 403.0, 335.0, 180.0, 68.0 ],
					"id" : "obj-37",
					"rounded" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 584.0, 335.0, 194.0, 137.0 ],
					"id" : "obj-38",
					"rounded" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-32", 2 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-25", 0 ],
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
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 409.5, 254.0, 562.5, 254.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 409.5, 252.0, 410.5, 252.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 410.5, 276.0, 409.5, 276.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 471.5, 278.0, 409.5, 278.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
