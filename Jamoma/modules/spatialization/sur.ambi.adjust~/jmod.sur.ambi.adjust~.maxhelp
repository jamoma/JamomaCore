{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 65.0, 44.0, 1215.0, 713.0 ],
		"bglocked" : 0,
		"defrect" : [ 65.0, 44.0, 1215.0, 713.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
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
					"maxclass" : "comment",
					"text" : "jmod.sur.ambi.adjust~",
					"numoutlets" : 0,
					"fontsize" : 17.334082,
					"id" : "obj-71",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 9.0, 28.0, 219.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "display levels and adjust relative weight for ambisonic components",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-72",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 9.0, 54.0, 351.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"rounded" : 15,
					"id" : "obj-73",
					"numinlets" : 1,
					"patching_rect" : [ 4.0, 24.0, 374.0, 54.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/aed 1 -180. 0. 3. 1",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 405.0, 295.0, 102.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "adjust~",
					"numoutlets" : 2,
					"args" : [ "/adjust" ],
					"name" : "jmod.sur.ambi.adjust~.maxpat",
					"outlettype" : [ "", "" ],
					"id" : "obj-3",
					"lockeddragscroll" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 557.0, 378.0, 301.0, 141.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Split multicable signal",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-4",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 867.0, 629.0, 94.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/multi.out~",
					"numoutlets" : 1,
					"args" : [  ],
					"name" : "jmod.sur.output~.maxpat",
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"lockeddragscroll" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 557.0, 604.0, 302.0, 73.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Ambisonic decoding",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-6",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 867.0, 558.0, 100.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Ambisonic encoding",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-7",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 864.0, 323.0, 100.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/multi.in~",
					"numoutlets" : 2,
					"args" : [ "/multi.in" ],
					"name" : "jmod.sur.multi.in~.maxpat",
					"outlettype" : [ "", "" ],
					"id" : "obj-8",
					"lockeddragscroll" : 1,
					"numinlets" : 33,
					"patching_rect" : [ 557.0, 222.0, 301.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "del 500",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "bang" ],
					"hidden" : 1,
					"id" : "obj-9",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 495.0, 249.0, 44.0, 17.0 ],
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.init",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-10",
					"fontname" : "Arial",
					"numinlets" : 0,
					"patching_rect" : [ 495.0, 230.0, 58.0, 17.0 ],
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/voices 1",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"bgcolor" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"hidden" : 1,
					"id" : "obj-11",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 495.0, 268.0, 54.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p ellipse",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-12",
					"fontname" : "Arial",
					"numinlets" : 0,
					"patching_rect" : [ 398.0, 58.0, 47.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 33.0, 59.0, 691.0, 521.0 ],
						"bglocked" : 0,
						"defrect" : [ 33.0, 59.0, 691.0, 521.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
									"text" : "jcom.dataspace @dataspace angle @input rad @output deg",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-28",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 97.0, 279.0, 176.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-1",
									"numinlets" : 1,
									"patching_rect" : [ 147.0, 47.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "swap",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "int" ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 330.0, 318.0, 93.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-3",
									"numinlets" : 1,
									"patching_rect" : [ 330.0, 386.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 0",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 330.0, 345.0, 93.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0. 1.",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 64.0, 318.0, 52.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/aed 1 $2 0. $1 1",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 64.0, 348.0, 91.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "round",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 330.0, 292.0, 34.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "round",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 413.0, 292.0, 34.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 10.",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 413.0, 267.0, 42.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 10.",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 330.0, 267.0, 42.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-12",
									"numinlets" : 1,
									"patching_rect" : [ 64.0, 386.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "line 0. 20",
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 3,
									"patching_rect" : [ 64.0, 153.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cartopol",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "float", "float" ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 64.0, 260.0, 52.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 10.",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 106.0, 207.0, 35.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sin",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 106.0, 180.0, 20.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* -3.",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 64.0, 207.0, 41.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cos",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 64.0, 180.0, 23.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0, 6.283185 9000",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 64.0, 133.0, 95.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 9000",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "bang" ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 64.0, 109.0, 64.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dspstate~",
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "float", "int", "int" ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 64.0, 85.0, 54.0, 17.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 115.5, 246.0, 422.5, 246.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 73.5, 250.0, 339.5, 250.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
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
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Loudspeaker positions are not stored as part of this module. They will be maintained by a separate module to be added in the future.",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-13",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 13.0, 561.0, 322.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Loadspeaker Position",
					"numoutlets" : 0,
					"fontsize" : 18.0,
					"id" : "obj-14",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 462.0, 236.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ],
					"id" : "obj-15",
					"numinlets" : 1,
					"patching_rect" : [ 6.0, 460.0, 373.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Distance",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-16",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 241.0, 495.0, 47.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Elevation",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-17",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 191.0, 495.0, 47.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Azimuth",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-18",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 141.0, 495.0, 47.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-19",
					"fontname" : "Arial",
					"minimum" : 0.0,
					"numinlets" : 1,
					"maximum" : 10.0,
					"patching_rect" : [ 244.0, 517.0, 45.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-20",
					"fontname" : "Arial",
					"minimum" : -90.0,
					"numinlets" : 1,
					"maximum" : 90.0,
					"patching_rect" : [ 193.0, 517.0, 45.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-21",
					"fontname" : "Arial",
					"minimum" : -180.0,
					"numinlets" : 1,
					"maximum" : 180.0,
					"patching_rect" : [ 142.0, 517.0, 45.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-22",
					"fontname" : "Arial",
					"minimum" : 1,
					"numinlets" : 1,
					"maximum" : 16,
					"patching_rect" : [ 91.0, 517.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak /aed i f f f",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"fontname" : "Arial",
					"numinlets" : 5,
					"patching_rect" : [ 40.0, 538.0, 216.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/third $1",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 162.0, 433.0, 53.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-25",
					"fontname" : "Arial",
					"minimum" : 0.0,
					"numinlets" : 1,
					"maximum" : 2.0,
					"patching_rect" : [ 123.0, 433.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/second $1",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-26",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 162.0, 414.0, 61.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-27",
					"fontname" : "Arial",
					"minimum" : 0.0,
					"numinlets" : 1,
					"maximum" : 2.0,
					"patching_rect" : [ 123.0, 414.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/first $1",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-28",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 162.0, 395.0, 52.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-29",
					"fontname" : "Arial",
					"minimum" : 0.0,
					"numinlets" : 1,
					"maximum" : 2.0,
					"patching_rect" : [ 123.0, 395.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/omni $1",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-30",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 162.0, 376.0, 52.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-31",
					"fontname" : "Arial",
					"minimum" : 0.0,
					"numinlets" : 1,
					"maximum" : 2.0,
					"patching_rect" : [ 123.0, 376.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-32",
					"fontname" : "Arial",
					"minimum" : 1,
					"numinlets" : 1,
					"maximum" : 16,
					"patching_rect" : [ 11.0, 377.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "del 500",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "bang" ],
					"id" : "obj-33",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 399.0, 429.0, 44.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.init",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-34",
					"fontname" : "Arial",
					"numinlets" : 0,
					"patching_rect" : [ 399.0, 410.0, 58.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/voices 2, /aed 1 -60. 0. 2., /aed 2 60. 0. 2.",
					"linecount" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-35",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 399.0, 448.0, 128.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/decode~",
					"numoutlets" : 2,
					"args" : [  ],
					"name" : "jmod.sur.ambi.decode~.html",
					"outlettype" : [ "", "" ],
					"id" : "obj-36",
					"lockeddragscroll" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 557.0, 534.0, 302.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/encodeM~",
					"numoutlets" : 2,
					"args" : [  ],
					"name" : "jmod.sur.ambi.encodeM~.html",
					"outlettype" : [ "", "" ],
					"id" : "obj-37",
					"lockeddragscroll" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 557.0, 311.0, 302.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.decode.cmd",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-39",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 262.0, 88.0, 94.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.decode.cmd",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-40",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 263.0, 233.0, 94.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.decode.cmd",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-41",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 263.0, 380.0, 94.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.decode.cmd",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-42",
					"fontname" : "Arial",
					"numinlets" : 0,
					"patching_rect" : [ 461.0, 486.0, 94.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/save_settings",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-43",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 118.0, 311.0, 79.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/load_settings",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-44",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 118.0, 293.0, 76.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/restore_defaults",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-45",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 118.0, 274.0, 92.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-46",
					"numinlets" : 1,
					"patching_rect" : [ 13.0, 274.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mute $1",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-47",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 30.0, 274.0, 53.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 1,
					"args" : [  ],
					"name" : "jmod.gain_params.maxpat",
					"outlettype" : [ "" ],
					"id" : "obj-48",
					"lockeddragscroll" : 1,
					"numinlets" : 0,
					"patching_rect" : [ 5.0, 82.0, 376.0, 139.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "These two can have an optional argument",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-49",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 195.0, 297.0, 100.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"id" : "obj-50",
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 259.0, 373.0, 75.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Module Specific Attributes",
					"numoutlets" : 0,
					"fontsize" : 18.0,
					"id" : "obj-51",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 342.0, 236.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ],
					"id" : "obj-52",
					"numinlets" : 1,
					"patching_rect" : [ 6.0, 340.0, 373.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Muting and Presets",
					"numoutlets" : 0,
					"fontsize" : 18.0,
					"id" : "obj-53",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 8.0, 230.0, 191.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ],
					"id" : "obj-54",
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 228.0, 373.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-55",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 451.0, 611.0, 65.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-56",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 386.0, 634.0, 126.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/control",
					"numoutlets" : 1,
					"args" : [ "/control" ],
					"name" : "jmod.control.maxpat",
					"outlettype" : [ "" ],
					"id" : "obj-58",
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 89.0, 614.0, 151.0, 71.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"numoutlets" : 3,
					"args" : [ "/input~" ],
					"name" : "jmod.input~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"id" : "obj-59",
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 557.0, 66.0, 302.0, 142.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/order",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-60",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 48.0, 396.0, 41.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-61",
					"fontname" : "Arial",
					"minimum" : 1,
					"numinlets" : 1,
					"maximum" : 3,
					"patching_rect" : [ 11.0, 396.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/voices",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-62",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 48.0, 377.0, 45.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"id" : "obj-63",
					"numinlets" : 1,
					"patching_rect" : [ 6.0, 371.0, 373.0, 82.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Index",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-67",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 91.0, 495.0, 34.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"id" : "obj-68",
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 491.0, 373.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"imagemask" : 1,
					"knobpict" : "SliderDefaultKnob.pct",
					"bottommargin" : 4,
					"rightmargin" : 4,
					"leftmargin" : 4,
					"bottomvalue" : -100,
					"id" : "obj-69",
					"topmargin" : 4,
					"leftvalue" : -100,
					"numinlets" : 2,
					"bkgndpict" : "SliderDefaultBkgnd.pct",
					"rightvalue" : 100,
					"patching_rect" : [ 412.0, 84.0, 144.0, 144.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Pack signal on multicable",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-70",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 864.0, 247.0, 100.0, 27.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 1,
					"midpoints" : [ 407.5, 288.0, 497.5, 288.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-56", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [ 470.5, 505.0, 568.0, 505.0, 568.0, 527.0, 566.5, 527.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 408.5, 527.0, 566.5, 527.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"midpoints" : [ 504.5, 285.0, 566.5, 285.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 407.5, 287.0, 566.5, 287.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [ 435.5, 80.0, 421.5, 80.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [ 460.5, 631.0, 395.5, 631.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-23", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-23", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-23", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 1 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [ 708.0, 212.0, 575.3125, 212.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-37", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
