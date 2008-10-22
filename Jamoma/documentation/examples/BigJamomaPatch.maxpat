{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 17.0, 44.0, 1396.0, 724.0 ],
		"bglocked" : 0,
		"defrect" : [ 17.0, 44.0, 1396.0, 724.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
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
					"maxclass" : "comment",
					"text" : "Notice the subpatch \"mappers\" below, where you can map several data flows, as the mouse position, or audio amplitudes of any module. For further explanation, use jmod.cont_mapper.maxhelp",
					"linecount" : 8,
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 85.0, 159.0, 117.0 ],
					"fontname" : "Arial",
					"id" : "obj-43",
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This is a quite big patch, organized in \"tracks\"",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 20.0, 163.0, 39.0 ],
					"fontname" : "Arial",
					"id" : "obj-41",
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 14.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "unmutes all modules  in a row",
					"linecount" : 3,
					"numinlets" : 1,
					"patching_rect" : [ 115.0, 480.0, 64.0, 41.0 ],
					"fontname" : "Arial",
					"id" : "obj-36",
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"numinlets" : 2,
					"patching_rect" : [ 15.0, 475.0, 32.5, 18.0 ],
					"hidden" : 1,
					"fontname" : "Arial",
					"id" : "obj-34",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 445.0, 20.0, 20.0 ],
					"id" : "obj-33",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "use the mouse as a global gain",
					"numinlets" : 1,
					"patching_rect" : [ 40.0, 445.0, 149.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-32",
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 0. 1. 80. 110.",
					"numinlets" : 6,
					"patching_rect" : [ 15.0, 415.0, 121.0, 18.0 ],
					"hidden" : 1,
					"fontname" : "Arial",
					"id" : "obj-17",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /position/x",
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 390.0, 121.0, 18.0 ],
					"hidden" : 1,
					"fontname" : "Arial",
					"id" : "obj-5",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.send jcom.remote.module.to",
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 595.0, 163.0, 18.0 ],
					"hidden" : 1,
					"fontname" : "Arial",
					"id" : "obj-2",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~[1]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 510.0, 545.0, 300.0, 140.0 ],
					"id" : "obj-12",
					"numoutlets" : 1,
					"name" : "jmod.output~.maxpat",
					"outlettype" : [ "" ],
					"args" : [ "/output~.2" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 90.0, 495.0, 20.0, 20.0 ],
					"id" : "obj-10",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/*/audio/mute $1",
					"numinlets" : 2,
					"patching_rect" : [ 90.0, 535.0, 83.0, 16.0 ],
					"fontname" : "Arial",
					"id" : "obj-8",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/*/audio/gain $1 ramp 100",
					"linecount" : 2,
					"numinlets" : 2,
					"patching_rect" : [ 15.0, 535.0, 68.0, 27.0 ],
					"fontname" : "Arial",
					"id" : "obj-7",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 505.0, 50.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-6",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mouse/1",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 310.0, 150.0, 70.0 ],
					"id" : "obj-28",
					"numoutlets" : 1,
					"name" : "jmod.mouse.maxpat",
					"outlettype" : [ "" ],
					"args" : [ "/mouse" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p mappers",
					"numinlets" : 0,
					"patching_rect" : [ 30.0, 625.0, 96.0, 27.0 ],
					"fontname" : "Arial",
					"id" : "obj-116",
					"numoutlets" : 0,
					"fontsize" : 18.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 27.0, 59.0, 1231.0, 612.0 ],
						"bglocked" : 0,
						"defrect" : [ 27.0, 59.0, 1231.0, 612.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"visible" : 1,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[9]",
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"lockeddragscroll" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 620.0, 535.0, 600.0, 70.0 ],
									"id" : "obj-9",
									"numoutlets" : 1,
									"name" : "jmod.cont_mapper.maxpat",
									"outlettype" : [ "" ],
									"args" : [ "/mapper.16" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[10]",
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"lockeddragscroll" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 620.0, 460.0, 600.0, 70.0 ],
									"id" : "obj-10",
									"numoutlets" : 1,
									"name" : "jmod.cont_mapper.maxpat",
									"outlettype" : [ "" ],
									"args" : [ "/mapper.15" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[11]",
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"lockeddragscroll" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 620.0, 385.0, 600.0, 70.0 ],
									"id" : "obj-11",
									"numoutlets" : 1,
									"name" : "jmod.cont_mapper.maxpat",
									"outlettype" : [ "" ],
									"args" : [ "/mapper.14" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[12]",
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"lockeddragscroll" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 620.0, 310.0, 600.0, 70.0 ],
									"id" : "obj-12",
									"numoutlets" : 1,
									"name" : "jmod.cont_mapper.maxpat",
									"outlettype" : [ "" ],
									"args" : [ "/mapper.13" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[13]",
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"lockeddragscroll" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 620.0, 235.0, 600.0, 70.0 ],
									"id" : "obj-13",
									"numoutlets" : 1,
									"name" : "jmod.cont_mapper.maxpat",
									"outlettype" : [ "" ],
									"args" : [ "/mapper.12" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[14]",
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"lockeddragscroll" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 620.0, 160.0, 600.0, 70.0 ],
									"id" : "obj-14",
									"numoutlets" : 1,
									"name" : "jmod.cont_mapper.maxpat",
									"outlettype" : [ "" ],
									"args" : [ "/mapper.11" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[15]",
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"lockeddragscroll" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 620.0, 85.0, 600.0, 70.0 ],
									"id" : "obj-15",
									"numoutlets" : 1,
									"name" : "jmod.cont_mapper.maxpat",
									"outlettype" : [ "" ],
									"args" : [ "/mapper.10" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[16]",
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"lockeddragscroll" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 620.0, 10.0, 600.0, 70.0 ],
									"id" : "obj-16",
									"numoutlets" : 1,
									"name" : "jmod.cont_mapper.maxpat",
									"outlettype" : [ "" ],
									"args" : [ "/mapper.9" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[8]",
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"lockeddragscroll" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 10.0, 535.0, 600.0, 70.0 ],
									"id" : "obj-8",
									"numoutlets" : 1,
									"name" : "jmod.cont_mapper.maxpat",
									"outlettype" : [ "" ],
									"args" : [ "/mapper.8" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[7]",
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"lockeddragscroll" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 10.0, 460.0, 600.0, 70.0 ],
									"id" : "obj-7",
									"numoutlets" : 1,
									"name" : "jmod.cont_mapper.maxpat",
									"outlettype" : [ "" ],
									"args" : [ "/mapper.7" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[6]",
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"lockeddragscroll" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 10.0, 385.0, 600.0, 70.0 ],
									"id" : "obj-6",
									"numoutlets" : 1,
									"name" : "jmod.cont_mapper.maxpat",
									"outlettype" : [ "" ],
									"args" : [ "/mapper.6" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[5]",
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"lockeddragscroll" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 10.0, 310.0, 600.0, 70.0 ],
									"id" : "obj-5",
									"numoutlets" : 1,
									"name" : "jmod.cont_mapper.maxpat",
									"outlettype" : [ "" ],
									"args" : [ "/mapper.5" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[4]",
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"lockeddragscroll" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 10.0, 235.0, 600.0, 70.0 ],
									"id" : "obj-4",
									"numoutlets" : 1,
									"name" : "jmod.cont_mapper.maxpat",
									"outlettype" : [ "" ],
									"args" : [ "/mapper.4" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[3]",
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"lockeddragscroll" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 10.0, 160.0, 600.0, 70.0 ],
									"id" : "obj-3",
									"numoutlets" : 1,
									"name" : "jmod.cont_mapper.maxpat",
									"outlettype" : [ "" ],
									"args" : [ "/mapper.3" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[2]",
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"lockeddragscroll" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 10.0, 85.0, 600.0, 70.0 ],
									"id" : "obj-2",
									"numoutlets" : 1,
									"name" : "jmod.cont_mapper.maxpat",
									"outlettype" : [ "" ],
									"args" : [ "/mapper.2" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/mapper[1]",
									"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
									"lockeddragscroll" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 10.0, 10.0, 600.0, 70.0 ],
									"id" : "obj-1",
									"numoutlets" : 1,
									"name" : "jmod.cont_mapper.maxpat",
									"outlettype" : [ "" ],
									"args" : [ "/mapper.1" ]
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/limiter~[6]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 105.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 1805.0, 429.999969, 300.0, 105.0 ],
					"id" : "obj-74",
					"numoutlets" : 3,
					"name" : "jmod.limiter~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/limiter~.6" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~[6]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 1805.0, 545.0, 300.0, 140.0 ],
					"id" : "obj-75",
					"numoutlets" : 1,
					"name" : "jmod.output~.maxpat",
					"outlettype" : [ "" ],
					"args" : [ "/output~.6" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/saturation~[6]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 1805.0, 349.999969, 300.0, 70.0 ],
					"id" : "obj-76",
					"numoutlets" : 3,
					"name" : "jmod.saturation~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/saturation~.6" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/multidelay~[6]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 1805.0, 264.999969, 300.0, 70.0 ],
					"id" : "obj-77",
					"numoutlets" : 3,
					"name" : "jmod.multidelay~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/multidelay~.6" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~[6]",
					"presentation_rect" : [ 1410.0, 150.000092, 300.0, 140.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 1805.0, 20.0, 300.0, 140.0 ],
					"presentation" : 1,
					"id" : "obj-78",
					"numoutlets" : 3,
					"name" : "jmod.input~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/input~.6" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~[6]",
					"presentation_rect" : [ 1411.0, 316.000092, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 1806.0, 181.000015, 300.0, 70.0 ],
					"presentation" : 1,
					"id" : "obj-79",
					"numoutlets" : 3,
					"name" : "jmod.filter~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/filter~.6" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/limiter~[5]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 105.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 1485.0, 430.000061, 300.0, 105.0 ],
					"id" : "obj-68",
					"numoutlets" : 3,
					"name" : "jmod.limiter~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/limiter~.5" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~[5]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 1485.0, 545.0, 300.0, 140.0 ],
					"id" : "obj-69",
					"numoutlets" : 1,
					"name" : "jmod.output~.maxpat",
					"outlettype" : [ "" ],
					"args" : [ "/output~.5" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/saturation~[5]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 1485.0, 350.000061, 300.0, 70.0 ],
					"id" : "obj-70",
					"numoutlets" : 3,
					"name" : "jmod.saturation~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/saturation~.5" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/multidelay~[5]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 1485.0, 265.000061, 300.0, 70.0 ],
					"id" : "obj-71",
					"numoutlets" : 3,
					"name" : "jmod.multidelay~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/multidelay~.5" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~[5]",
					"presentation_rect" : [ 1395.0, 135.000092, 300.0, 140.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 1485.0, 20.00008, 300.0, 140.0 ],
					"presentation" : 1,
					"id" : "obj-72",
					"numoutlets" : 3,
					"name" : "jmod.input~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/input~.5" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~[5]",
					"presentation_rect" : [ 1396.0, 301.000092, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 1486.0, 181.000092, 300.0, 70.0 ],
					"presentation" : 1,
					"id" : "obj-73",
					"numoutlets" : 3,
					"name" : "jmod.filter~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/filter~.5" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/limiter~[4]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 105.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 1160.0, 430.000031, 300.0, 105.0 ],
					"id" : "obj-62",
					"numoutlets" : 3,
					"name" : "jmod.limiter~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/limiter~.4" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~[4]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 1160.0, 545.0, 300.0, 140.0 ],
					"id" : "obj-63",
					"numoutlets" : 1,
					"name" : "jmod.output~.maxpat",
					"outlettype" : [ "" ],
					"args" : [ "/output~.4" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/saturation~[4]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 1160.0, 350.000031, 300.0, 70.0 ],
					"id" : "obj-64",
					"numoutlets" : 3,
					"name" : "jmod.saturation~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/saturation~.4" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/multidelay~[4]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 1160.0, 265.000031, 300.0, 70.0 ],
					"id" : "obj-65",
					"numoutlets" : 3,
					"name" : "jmod.multidelay~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/multidelay~.4" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~[4]",
					"presentation_rect" : [ 1070.0, 135.000061, 300.0, 140.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 1160.0, 20.000053, 300.0, 140.0 ],
					"presentation" : 1,
					"id" : "obj-66",
					"numoutlets" : 3,
					"name" : "jmod.input~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/input~.4" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~[4]",
					"presentation_rect" : [ 1071.0, 301.000061, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 1161.0, 181.000061, 300.0, 70.0 ],
					"presentation" : 1,
					"id" : "obj-67",
					"numoutlets" : 3,
					"name" : "jmod.filter~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/filter~.4" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/limiter~[3]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 105.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 835.0, 430.0, 300.0, 105.0 ],
					"id" : "obj-56",
					"numoutlets" : 3,
					"name" : "jmod.limiter~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/limiter~.3" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~[3]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 835.0, 545.0, 300.0, 140.0 ],
					"id" : "obj-57",
					"numoutlets" : 1,
					"name" : "jmod.output~.maxpat",
					"outlettype" : [ "" ],
					"args" : [ "/output~.3" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/saturation~[3]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 835.0, 350.0, 300.0, 70.0 ],
					"id" : "obj-58",
					"numoutlets" : 3,
					"name" : "jmod.saturation~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/saturation~.3" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/multidelay~[3]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 835.0, 265.0, 300.0, 70.0 ],
					"id" : "obj-59",
					"numoutlets" : 3,
					"name" : "jmod.multidelay~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/multidelay~.3" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~[3]",
					"presentation_rect" : [ 745.0, 135.000031, 300.0, 140.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 835.0, 20.000027, 300.0, 140.0 ],
					"presentation" : 1,
					"id" : "obj-60",
					"numoutlets" : 3,
					"name" : "jmod.input~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/input~.3" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~[3]",
					"presentation_rect" : [ 746.0, 301.000031, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 836.0, 181.000031, 300.0, 70.0 ],
					"presentation" : 1,
					"id" : "obj-61",
					"numoutlets" : 3,
					"name" : "jmod.filter~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/filter~.3" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/limiter~[2]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 105.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 510.0, 429.999969, 300.0, 105.0 ],
					"id" : "obj-50",
					"numoutlets" : 3,
					"name" : "jmod.limiter~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/limiter~.2" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/saturation~[2]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 510.0, 349.999969, 300.0, 70.0 ],
					"id" : "obj-52",
					"numoutlets" : 3,
					"name" : "jmod.saturation~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/saturation~.2" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/multidelay~[2]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 510.0, 264.999969, 300.0, 70.0 ],
					"id" : "obj-53",
					"numoutlets" : 3,
					"name" : "jmod.multidelay~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/multidelay~.2" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~[2]",
					"presentation_rect" : [ 420.0, 135.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 510.0, 20.0, 300.0, 140.0 ],
					"presentation" : 1,
					"id" : "obj-54",
					"numoutlets" : 3,
					"name" : "jmod.input~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/input~.2" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~[2]",
					"presentation_rect" : [ 421.0, 301.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 511.0, 181.0, 300.0, 70.0 ],
					"presentation" : 1,
					"id" : "obj-55",
					"numoutlets" : 3,
					"name" : "jmod.filter~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/filter~.2" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/limiter~",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 105.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 185.0, 430.0, 300.0, 105.0 ],
					"id" : "obj-42",
					"numoutlets" : 3,
					"name" : "jmod.limiter~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/limiter~.1" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 185.0, 545.0, 300.0, 140.0 ],
					"id" : "obj-49",
					"numoutlets" : 1,
					"name" : "jmod.output~.maxpat",
					"outlettype" : [ "" ],
					"args" : [ "/output~.1" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/saturation~",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 185.0, 349.999969, 300.0, 70.0 ],
					"id" : "obj-24",
					"numoutlets" : 3,
					"name" : "jmod.saturation~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/saturation~.1" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/multidelay~",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 3,
					"patching_rect" : [ 185.0, 264.999969, 300.0, 70.0 ],
					"id" : "obj-37",
					"numoutlets" : 3,
					"name" : "jmod.multidelay~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/multidelay~.1" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"presentation_rect" : [ 405.0, 120.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 185.0, 19.999973, 300.0, 140.0 ],
					"presentation" : 1,
					"id" : "obj-25",
					"numoutlets" : 3,
					"name" : "jmod.input~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/input~1" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~",
					"presentation_rect" : [ 406.0, 286.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 185.0, 180.999969, 300.0, 70.0 ],
					"presentation" : 1,
					"id" : "obj-26",
					"numoutlets" : 3,
					"name" : "jmod.filter~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/filter~.1" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 230.0, 150.0, 70.0 ],
					"id" : "obj-35",
					"numoutlets" : 1,
					"name" : "jmod.control.maxpat",
					"outlettype" : [ "" ],
					"args" : [ "/control" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-77", 2 ],
					"destination" : [ "obj-76", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 1 ],
					"destination" : [ "obj-76", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 2 ],
					"destination" : [ "obj-74", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 1 ],
					"destination" : [ "obj-74", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 1 ],
					"destination" : [ "obj-70", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 2 ],
					"destination" : [ "obj-70", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 1 ],
					"destination" : [ "obj-68", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 2 ],
					"destination" : [ "obj-68", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 2 ],
					"destination" : [ "obj-64", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 1 ],
					"destination" : [ "obj-64", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 2 ],
					"destination" : [ "obj-62", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 1 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 1 ],
					"destination" : [ "obj-58", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 2 ],
					"destination" : [ "obj-58", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 1 ],
					"destination" : [ "obj-56", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 2 ],
					"destination" : [ "obj-56", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 2 ],
					"destination" : [ "obj-52", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 1 ],
					"destination" : [ "obj-52", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 2 ],
					"destination" : [ "obj-50", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 1 ],
					"destination" : [ "obj-50", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 2 ],
					"destination" : [ "obj-24", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 2 ],
					"destination" : [ "obj-42", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 2 ],
					"destination" : [ "obj-12", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 1 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 1 ],
					"destination" : [ "obj-75", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 2 ],
					"destination" : [ "obj-75", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 1 ],
					"destination" : [ "obj-77", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 2 ],
					"destination" : [ "obj-77", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 1 ],
					"destination" : [ "obj-79", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 2 ],
					"destination" : [ "obj-79", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 2 ],
					"destination" : [ "obj-69", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 1 ],
					"destination" : [ "obj-69", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 2 ],
					"destination" : [ "obj-71", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 1 ],
					"destination" : [ "obj-71", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 2 ],
					"destination" : [ "obj-73", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 1 ],
					"destination" : [ "obj-73", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 1 ],
					"destination" : [ "obj-63", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 2 ],
					"destination" : [ "obj-63", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 1 ],
					"destination" : [ "obj-65", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 2 ],
					"destination" : [ "obj-65", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 1 ],
					"destination" : [ "obj-67", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 2 ],
					"destination" : [ "obj-67", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 2 ],
					"destination" : [ "obj-57", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 1 ],
					"destination" : [ "obj-57", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 1 ],
					"destination" : [ "obj-59", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 2 ],
					"destination" : [ "obj-59", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 2 ],
					"destination" : [ "obj-61", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 1 ],
					"destination" : [ "obj-61", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 2 ],
					"destination" : [ "obj-53", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 1 ],
					"destination" : [ "obj-53", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 2 ],
					"destination" : [ "obj-55", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 1 ],
					"destination" : [ "obj-55", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 2 ],
					"destination" : [ "obj-49", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 1 ],
					"destination" : [ "obj-49", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-37", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 2 ],
					"destination" : [ "obj-37", 2 ],
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
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [ 99.5, 582.0, 24.5, 582.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-34", 1 ],
					"hidden" : 1,
					"midpoints" : [ 24.5, 439.0, 38.0, 439.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
