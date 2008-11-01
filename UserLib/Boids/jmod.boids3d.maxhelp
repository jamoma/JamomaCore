{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 102.0, 44.0, 817.0, 603.0 ],
		"bglocked" : 0,
		"defrect" : [ 102.0, 44.0, 817.0, 603.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bird flight and animal flock simulator.",
					"patching_rect" : [ 13.0, 34.0, 212.0, 19.0 ],
					"id" : "obj-31",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "© 1995-98 Eric L. Singer (eric@ericsinger.com)",
					"patching_rect" : [ 38.0, 50.0, 257.0, 19.0 ],
					"id" : "obj-29",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.boids3d",
					"patching_rect" : [ 11.0, 7.0, 197.0, 28.0 ],
					"id" : "obj-27",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 9.0, 2.0, 276.0, 65.0 ],
					"rounded" : 15,
					"id" : "obj-26",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p stuff",
					"patching_rect" : [ 187.0, 188.0, 40.0, 17.0 ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 14.0, 60.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 14.0, 60.0, 600.0, 426.0 ],
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
									"maxclass" : "outlet",
									"patching_rect" : [ 51.0, 114.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "delay 500",
									"patching_rect" : [ 50.0, 50.0, 55.0, 17.0 ],
									"outlettype" : [ "bang" ],
									"hidden" : 1,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rename 55 X",
									"patching_rect" : [ 50.0, 71.0, 67.0, 15.0 ],
									"outlettype" : [ "" ],
									"hidden" : 1,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
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
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p show_/attractpoint",
					"patching_rect" : [ 417.0, 105.0, 107.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 672.0, 369.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 672.0, 369.0, 600.0, 426.0 ],
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
									"text" : "expr 1. / $f1",
									"patching_rect" : [ 132.0, 67.0, 77.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1 * $f2 @scalarmode 1",
									"patching_rect" : [ 59.0, 116.0, 153.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend xyz 55",
									"patching_rect" : [ 56.0, 157.0, 80.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 208.0, 38.0, 15.0, 15.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-6",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 60.0, 210.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
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
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/update",
					"patching_rect" : [ 358.0, 212.0, 45.0, 15.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "For more information about the Boids algorithm, see Craig Reynolds' Web site at \"http://reality.sgi.com/employees/craig/boids.html\".",
					"linecount" : 2,
					"patching_rect" : [ 7.0, 444.0, 349.0, 28.0 ],
					"id" : "obj-4",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "It is based on the same algorithm which was used in Jurassic Park for the herding dinosaurs.",
					"linecount" : 2,
					"patching_rect" : [ 7.0, 413.0, 349.0, 28.0 ],
					"id" : "obj-5",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p mouse2boids",
					"patching_rect" : [ 9.0, 190.0, 99.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 568.0, 310.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 568.0, 310.0, 600.0, 426.0 ],
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
									"text" : "jcom.dataspace @dataspace position @input xyz @output aed",
									"patching_rect" : [ 74.0, 125.0, 324.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 347.0, 170.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 216.0, 235.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"patching_rect" : [ 215.0, 207.0, 62.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append 0.",
									"patching_rect" : [ 50.0, 94.0, 80.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /attractpoint",
									"patching_rect" : [ 51.0, 158.0, 108.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack f f",
									"patching_rect" : [ 50.0, 50.0, 47.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr ($f1-0.5)*1.",
									"patching_rect" : [ 51.0, 70.0, 100.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 87.0, 30.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 51.0, 180.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
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
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.OSCroute /position/x /position/y /mouse_on",
					"patching_rect" : [ 9.0, 167.0, 279.0, 17.0 ],
					"outlettype" : [ "", "", "", "" ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.mouse.mxt",
					"patching_rect" : [ 9.0, 89.0, 150.0, 70.0 ],
					"outlettype" : [ "" ],
					"name" : "jmod.mouse.maxpat",
					"id" : "obj-12",
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"args" : [ "/mouse" ],
					"lockeddragscroll" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "scale[1]",
					"patching_rect" : [ 477.0, 127.0, 35.0, 17.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"triscale" : 0.9,
					"minimum" : 1.0,
					"fontsize" : 9.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "zoom",
					"patching_rect" : [ 513.0, 127.0, 33.0, 17.0 ],
					"id" : "obj-14",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "aed-system",
					"patching_rect" : [ 656.0, 150.0, 78.0, 17.0 ],
					"id" : "obj-15",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ambimonitor",
					"patching_rect" : [ 577.0, 166.0, 100.0, 20.0 ],
					"id" : "obj-16",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ambimonitor",
					"patching_rect" : [ 371.0, 166.0, 100.0, 20.0 ],
					"id" : "obj-17",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p boids2ambimonitor",
					"patching_rect" : [ 371.0, 127.0, 104.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 537.0, 215.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 537.0, 215.0, 600.0, 426.0 ],
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
									"maxclass" : "inlet",
									"patching_rect" : [ 513.0, 24.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 1",
									"patching_rect" : [ 173.0, 217.0, 60.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!/ 1.",
									"patching_rect" : [ 158.0, 238.0, 32.5, 19.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"patching_rect" : [ 42.0, 283.0, 51.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"patching_rect" : [ 42.0, 221.0, 51.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1 * $f2 @scalarmode 1",
									"patching_rect" : [ 83.0, 261.0, 153.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr 10./$f1",
									"patching_rect" : [ 403.0, 209.0, 71.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 537.0, 24.0, 15.0, 15.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-9",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack i f f f",
									"patching_rect" : [ 323.0, 277.0, 65.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 4,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 10.",
									"patching_rect" : [ 374.0, 247.0, 35.0, 17.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack i f f f",
									"patching_rect" : [ 323.0, 196.0, 66.0, 17.0 ],
									"outlettype" : [ "int", "float", "float", "float" ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp /",
									"patching_rect" : [ 323.0, 85.0, 66.0, 17.0 ],
									"outlettype" : [ "", "", "", "", "" ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 5
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend aed",
									"patching_rect" : [ 323.0, 319.0, 65.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 323.0, 375.0, 15.0, 15.0 ],
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 42.0, 23.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp /",
									"patching_rect" : [ 42.0, 187.0, 66.0, 17.0 ],
									"outlettype" : [ "", "", "", "", "" ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 5
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend xyz",
									"patching_rect" : [ 42.0, 309.0, 65.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess substitute \" \"",
									"patching_rect" : [ 368.0, 107.0, 115.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 42.0, 362.0, 15.0, 15.0 ],
									"id" : "obj-20",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 0",
									"patching_rect" : [ 183.0, 138.0, 27.0, 17.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr 32-$i1",
									"patching_rect" : [ 183.0, 92.0, 66.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend delete",
									"patching_rect" : [ 245.0, 304.0, 76.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi",
									"patching_rect" : [ 183.0, 112.0, 40.0, 17.0 ],
									"outlettype" : [ "bang", "bang", "int" ],
									"id" : "obj-24",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i",
									"patching_rect" : [ 183.0, 72.0, 27.0, 17.0 ],
									"outlettype" : [ "int", "int" ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /xyz /number /aed",
									"patching_rect" : [ 42.0, 50.0, 430.0, 17.0 ],
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 4
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 522.0, 360.0, 51.0, 360.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 254.5, 339.0, 51.0, 339.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 2 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 1 ],
									"destination" : [ "obj-21", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 192.5, 162.0, 254.5, 162.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 2 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 522.0, 374.0, 332.0, 374.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 254.5, 340.0, 332.0, 340.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 2 ],
									"destination" : [ "obj-10", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 3 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-10", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 546.0, 192.0, 412.5, 192.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 546.0, 155.0, 167.5, 155.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/attractpoint/xyz -0.271094 0.23625 0.",
					"patching_rect" : [ 24.0, 212.0, 217.0, 15.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.boids3d.mxt",
					"patching_rect" : [ 9.0, 238.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"name" : "jmod.boids3d.maxpat",
					"id" : "obj-20",
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"args" : [ "/boids3d" ],
					"lockeddragscroll" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control.mxt",
					"patching_rect" : [ 160.0, 89.0, 150.0, 70.0 ],
					"outlettype" : [ "" ],
					"name" : "jmod.control.maxpat",
					"id" : "obj-21",
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"args" : [ "/jmod.control" ],
					"lockeddragscroll" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Point of Attraction",
					"patching_rect" : [ 242.0, 213.0, 100.0, 17.0 ],
					"id" : "obj-22",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "xyz-system",
					"patching_rect" : [ 456.0, 151.0, 78.0, 17.0 ],
					"id" : "obj-23",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Based on Simon Fraser's implementation of Craig Reynolds' Boids algorithm. Boids is free for non-commercial use. boids package released under Gnu GPL license.",
					"linecount" : 3,
					"patching_rect" : [ 7.0, 373.0, 349.0, 39.0 ],
					"id" : "obj-24",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "update from external command (module must be turned on)",
					"linecount" : 2,
					"patching_rect" : [ 366.0, 246.0, 155.0, 28.0 ],
					"id" : "obj-25",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 465.5, 147.0, 586.5, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-18", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 2 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 98.5, 207.0, 120.0, 207.0, 120.0, 198.0, 183.0, 198.0, 183.0, 207.0, 237.0, 207.0, 237.0, 195.0, 357.0, 195.0, 357.0, 102.0, 426.5, 102.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 58.5, 209.0, 33.5, 209.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 2 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 367.5, 233.0, 6.0, 233.0, 6.0, 234.0, 18.5, 234.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 18.5, 363.0, 333.0, 363.0, 333.0, 112.0, 380.5, 112.0 ]
				}

			}
 ]
	}

}
