{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 82.0, 44.0, 784.0, 710.0 ],
		"bglocked" : 0,
		"defrect" : [ 82.0, 44.0, 784.0, 710.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.scene3D~",
					"id" : "obj-15",
					"fontname" : "Verdana",
					"patching_rect" : [ 24.0, 26.0, 164.0, 28.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 17.334082,
					"numoutlets" : 0,
					"presentation_rect" : [ 275.0, 7.0, 164.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Spatial Scene Manipulation",
					"id" : "obj-39",
					"fontname" : "Verdana",
					"patching_rect" : [ 24.0, 52.0, 345.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 275.0, 33.0, 345.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 15,
					"id" : "obj-40",
					"patching_rect" : [ 19.0, 22.0, 351.0, 53.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 270.0, 3.0, 351.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "source 2: reference point for translate",
					"linecount" : 2,
					"id" : "obj-38",
					"fontname" : "Verdana",
					"patching_rect" : [ 391.0, 340.0, 150.0, 31.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 552.0, 300.0, 207.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "source 1: reference point for stretch",
					"linecount" : 2,
					"id" : "obj-33",
					"fontname" : "Verdana",
					"patching_rect" : [ 376.0, 325.0, 150.0, 31.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 554.0, 283.0, 207.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mute Output for individual sources",
					"linecount" : 2,
					"id" : "obj-24",
					"fontname" : "Verdana",
					"patching_rect" : [ 272.0, 229.0, 150.0, 31.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 250.0, 224.0, 191.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p load",
					"id" : "obj-27",
					"fontname" : "Arial",
					"patching_rect" : [ 552.0, 494.0, 43.0, 20.0 ],
					"numinlets" : 0,
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 682.0, 46.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 682.0, 46.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "delay 100",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"patching_rect" : [ 68.0, 151.0, 60.0, 19.0 ],
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"id" : "obj-13",
									"fontname" : "Verdana",
									"patching_rect" : [ 68.0, 128.0, 24.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-10",
									"patching_rect" : [ 166.0, 136.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-1",
									"patching_rect" : [ 68.0, 235.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/load_script vimic8-5ch.txt",
									"id" : "obj-27",
									"fontname" : "Arial",
									"patching_rect" : [ 68.0, 178.0, 139.0, 15.0 ],
									"presentation" : 1,
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"presentation_rect" : [ 515.0, 557.0, 139.0, 15.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route jmod.scene3D",
									"id" : "obj-3",
									"fontname" : "Arial",
									"patching_rect" : [ 68.0, 81.0, 118.0, 20.0 ],
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route module.initialized",
									"id" : "obj-2",
									"fontname" : "Arial",
									"patching_rect" : [ 68.0, 56.0, 133.0, 20.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"presentation_rect" : [ 507.0, 171.0, 133.0, 20.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"id" : "obj-14",
									"fontname" : "Arial",
									"patching_rect" : [ 68.0, 106.0, 56.0, 20.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"presentation_rect" : [ 471.0, 109.0, 56.0, 20.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.receive notifications",
									"id" : "obj-8",
									"fontname" : "Arial",
									"patching_rect" : [ 68.0, 33.0, 145.0, 20.0 ],
									"presentation" : 1,
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"presentation_rect" : [ 469.0, 87.0, 145.0, 20.0 ],
									"outlettype" : [ "", "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
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
					"text" : "Output Scene",
					"id" : "obj-29",
					"fontname" : "Verdana",
					"patching_rect" : [ 311.0, 561.0, 150.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 284.0, 566.0, 82.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Input Scene",
					"id" : "obj-25",
					"fontname" : "Verdana",
					"patching_rect" : [ 345.0, 89.0, 150.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 288.0, 76.0, 77.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"id" : "obj-45",
					"fontname" : "Verdana",
					"patching_rect" : [ 494.0, 597.0, 100.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 586.0, 171.0, 464.0, 329.0 ],
						"bglocked" : 0,
						"defrect" : [ 586.0, 171.0, 464.0, 329.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s cmd",
									"id" : "obj-13",
									"fontname" : "Verdana",
									"patching_rect" : [ 12.0, 261.0, 40.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"id" : "obj-12",
									"fontname" : "Verdana",
									"patching_rect" : [ 339.0, 210.0, 70.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"patching_rect" : [ 16.0, 235.0, 47.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack i i",
									"id" : "obj-10",
									"fontname" : "Verdana",
									"patching_rect" : [ 102.0, 126.0, 59.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "combine /output/source. 1 /position/xyz:/enable @triggers 1",
									"id" : "obj-5",
									"fontname" : "Verdana",
									"patching_rect" : [ 15.0, 209.0, 318.0, 19.0 ],
									"numinlets" : 3,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "listfunnel 1",
									"id" : "obj-2",
									"fontname" : "Verdana",
									"patching_rect" : [ 56.0, 79.0, 66.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "list" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-43",
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
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
					"maxclass" : "newobj",
					"text" : "pak i i i i i i i i",
					"id" : "obj-42",
					"fontname" : "Verdana",
					"patching_rect" : [ 494.0, 573.0, 181.5, 19.0 ],
					"numinlets" : 8,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"id" : "obj-41",
					"fontname" : "Verdana",
					"patching_rect" : [ 551.0, 518.0, 32.5, 17.0 ],
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-35",
					"patching_rect" : [ 657.0, 545.0, 20.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 226.0, 223.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-36",
					"patching_rect" : [ 634.0, 545.0, 20.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 203.0, 223.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-37",
					"patching_rect" : [ 610.0, 545.0, 20.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 179.0, 223.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-34",
					"patching_rect" : [ 588.0, 545.0, 20.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 157.0, 223.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-32",
					"patching_rect" : [ 565.0, 545.0, 20.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 134.0, 223.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-30",
					"patching_rect" : [ 542.0, 544.0, 20.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 111.0, 223.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-28",
					"patching_rect" : [ 517.0, 545.0, 20.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 86.0, 223.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-26",
					"patching_rect" : [ 494.0, 545.0, 20.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 63.0, 223.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/order translate rotate",
					"id" : "obj-20",
					"fontname" : "Verdana",
					"patching_rect" : [ 604.0, 414.0, 123.0, 17.0 ],
					"presentation" : 1,
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"presentation_rect" : [ 496.0, 405.0, 123.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/order random translate",
					"id" : "obj-23",
					"fontname" : "Verdana",
					"patching_rect" : [ 534.0, 319.0, 132.0, 17.0 ],
					"presentation" : 1,
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"presentation_rect" : [ 494.0, 366.0, 132.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/order mirror",
					"id" : "obj-9",
					"fontname" : "Verdana",
					"patching_rect" : [ 492.0, 347.0, 162.0, 17.0 ],
					"presentation" : 1,
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"presentation_rect" : [ 492.0, 347.0, 77.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s cmd",
					"id" : "obj-18",
					"fontname" : "Verdana",
					"patching_rect" : [ 546.0, 425.0, 40.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/order translate stretch",
					"id" : "obj-16",
					"fontname" : "Verdana",
					"patching_rect" : [ 549.0, 393.0, 128.0, 17.0 ],
					"presentation" : 1,
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"presentation_rect" : [ 496.0, 386.0, 128.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s cmd",
					"id" : "obj-12",
					"fontname" : "Verdana",
					"patching_rect" : [ 417.0, 182.0, 40.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r cmd",
					"id" : "obj-11",
					"fontname" : "Verdana",
					"patching_rect" : [ 59.0, 227.0, 39.0, 19.0 ],
					"numinlets" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p referencePoints",
					"id" : "obj-8",
					"fontname" : "Verdana",
					"patching_rect" : [ 544.0, 264.0, 98.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 76.0, 187.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 76.0, 187.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.thru",
									"id" : "obj-13",
									"fontname" : "Verdana",
									"patching_rect" : [ 364.0, 314.0, 59.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1 * 10.",
									"id" : "obj-10",
									"fontname" : "Verdana",
									"patching_rect" : [ 487.0, 191.0, 88.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /rotate/reference",
									"id" : "obj-12",
									"fontname" : "Verdana",
									"patching_rect" : [ 487.0, 215.0, 142.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1 * 10.",
									"id" : "obj-6",
									"fontname" : "Verdana",
									"patching_rect" : [ 333.0, 190.0, 88.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /translate/factor",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"patching_rect" : [ 333.0, 214.0, 138.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "-0.473684 0.547368 0.",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"patching_rect" : [ 4.0, 175.0, 147.0, 17.0 ],
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1 * 10.",
									"id" : "obj-5",
									"fontname" : "Verdana",
									"patching_rect" : [ 159.0, 181.0, 88.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 1 2 3",
									"id" : "obj-9",
									"fontname" : "Verdana",
									"patching_rect" : [ 164.0, 140.0, 67.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"id" : "obj-7",
									"fontname" : "Verdana",
									"patching_rect" : [ 123.0, 115.0, 54.0, 19.0 ],
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /stretch/reference",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"patching_rect" : [ 159.0, 205.0, 147.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s cmd",
									"id" : "obj-3",
									"fontname" : "Verdana",
									"patching_rect" : [ 225.0, 374.0, 40.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-2",
									"patching_rect" : [ 373.0, 384.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-1",
									"patching_rect" : [ 221.0, 53.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 2 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
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
					"maxclass" : "bpatcher",
					"id" : "obj-4",
					"patching_rect" : [ 546.0, 42.0, 201.0, 216.0 ],
					"presentation" : 1,
					"name" : "ambimonitor.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"presentation_rect" : [ 555.0, 60.0, 201.0, 216.0 ],
					"args" : [  ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-21",
					"patching_rect" : [ 496.0, 47.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-19",
					"patching_rect" : [ 506.0, 146.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 500",
					"id" : "obj-13",
					"fontname" : "Verdana",
					"patching_rect" : [ 447.0, 97.0, 63.0, 19.0 ],
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/random",
					"id" : "obj-10",
					"fontname" : "Verdana",
					"patching_rect" : [ 408.0, 129.0, 54.0, 17.0 ],
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/source.4/position/xyz 0. 0. 0.",
					"linecount" : 4,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"patching_rect" : [ 272.0, 499.0, 50.0, 53.0 ],
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"id" : "obj-7",
					"fontname" : "Verdana",
					"patching_rect" : [ 58.0, 487.0, 17.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 130.0, 44.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 130.0, 44.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1 * 0.1",
									"id" : "obj-10",
									"fontname" : "Verdana",
									"patching_rect" : [ 376.0, 177.0, 88.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-9",
									"patching_rect" : [ 222.0, 321.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend xyz",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"patching_rect" : [ 305.0, 246.0, 72.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"id" : "obj-7",
									"fontname" : "Verdana",
									"patching_rect" : [ 305.0, 223.0, 59.0, 19.0 ],
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscinstance /source",
									"id" : "obj-2",
									"fontname" : "Verdana",
									"patching_rect" : [ 266.0, 136.0, 138.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-1",
									"patching_rect" : [ 265.0, 87.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
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
					"maxclass" : "bpatcher",
					"id" : "obj-6",
					"patching_rect" : [ 58.0, 510.0, 201.0, 216.0 ],
					"presentation" : 1,
					"name" : "ambimonitor.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"presentation_rect" : [ 58.0, 491.0, 201.0, 216.0 ],
					"args" : [  ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /output",
					"id" : "obj-3",
					"fontname" : "Verdana",
					"patching_rect" : [ 58.0, 464.0, 123.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"id" : "obj-17",
					"fontname" : "Verdana",
					"patching_rect" : [ 162.0, 223.0, 100.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s cmd",
									"id" : "obj-2",
									"fontname" : "Verdana",
									"patching_rect" : [ 303.0, 308.0, 40.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1 * 10.",
									"id" : "obj-1",
									"fontname" : "Verdana",
									"patching_rect" : [ 195.0, 153.0, 88.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"id" : "obj-12",
									"fontname" : "Verdana",
									"patching_rect" : [ 56.0, 235.0, 150.0, 19.0 ],
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"id" : "obj-9",
									"fontname" : "Verdana",
									"patching_rect" : [ 148.0, 120.0, 54.0, 19.0 ],
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "combine /source. 1 /position/xyz @triggers 1",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"patching_rect" : [ 56.0, 212.0, 239.0, 19.0 ],
									"numinlets" : 3,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"id" : "obj-7",
									"fontname" : "Verdana",
									"patching_rect" : [ 108.0, 100.0, 54.0, 19.0 ],
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-15",
									"patching_rect" : [ 113.0, 40.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-16",
									"patching_rect" : [ 55.0, 261.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
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
					"maxclass" : "message",
					"text" : "/stretch/factor 1.",
					"id" : "obj-14",
					"fontname" : "Verdana",
					"patching_rect" : [ 196.0, 461.0, 283.0, 17.0 ],
					"presentation" : 1,
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"presentation_rect" : [ 61.0, 462.0, 283.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"id" : "obj-1",
					"patching_rect" : [ 65.0, 2.0, 201.0, 216.0 ],
					"presentation" : 1,
					"name" : "ambimonitor.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"presentation_rect" : [ 65.0, 2.0, 201.0, 216.0 ],
					"args" : [  ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"id" : "obj-2",
					"patching_rect" : [ 58.0, 249.0, 300.0, 210.0 ],
					"presentation" : 1,
					"name" : "jmod.scene3D.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"presentation_rect" : [ 58.0, 248.0, 300.0, 210.0 ],
					"args" : [ "scene3D" ],
					"outlettype" : [ "", "jit_matrix" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-14", 1 ],
					"hidden" : 0,
					"midpoints" : [ 171.5, 481.0, 483.0, 481.0, 483.0, 456.0, 469.5, 456.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-7", 0 ],
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
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-42", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-42", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-42", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-42", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-42", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-42", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
