{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 84.0, 124.0, 797.0, 256.0 ],
		"bglocked" : 0,
		"defrect" : [ 84.0, 124.0, 797.0, 256.0 ],
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
					"text" : "prepend ignoreclick",
					"fontsize" : 10.970939,
					"numoutlets" : 1,
					"patching_rect" : [ 457.0, 157.0, 118.0, 20.0 ],
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass text size color frgb brgb rgb2 range ignoreclick",
					"fontsize" : 10.0,
					"numoutlets" : 9,
					"patching_rect" : [ 335.0, 75.0, 301.0, 19.0 ],
					"hidden" : 1,
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcherargs 0. @size 50 14 @frgb 255 255 255 @brgb 0 0 0 @rgb2 111 111 111 @range 0. 1.",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 293.0, 30.0, 288.0, 31.0 ],
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 155.0, 155.0, 68.0, 19.0 ],
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 260.0, 15.0, 25.0, 25.0 ],
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 130.0, 185.0, 27.0, 27.0 ],
					"hidden" : 1,
					"id" : "obj-5",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p display",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 260.0, 75.0, 53.0, 19.0 ],
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 914.0, 419.0, 341.0, 272.0 ],
						"bglocked" : 0,
						"defrect" : [ 914.0, 419.0, 341.0, 272.0 ],
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
									"text" : "print",
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 179.0, 50.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend range",
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 92.0, 90.0, 81.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 78.0, 66.0, 76.0, 18.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 78.0, 41.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 209.0, 80.0, 51.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 197.0, 50.0, 64.0, 18.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0.",
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 207.0, 101.0, 18.0, 16.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend text",
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patching_rect" : [ 81.0, 167.0, 72.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patching_rect" : [ 41.0, 117.0, 50.0, 18.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 41.0, 204.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 41.0, 90.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set int float text",
									"fontsize" : 9.873845,
									"numoutlets" : 5,
									"patching_rect" : [ 81.0, 138.0, 118.0, 18.0 ],
									"outlettype" : [ "", "", "", "", "" ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 90.5, 193.0, 50.0, 193.0 ]
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 2 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 2 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 0 ],
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
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text size frgb brgb rgb2 range ignoreclick",
					"fontsize" : 10.0,
					"numoutlets" : 8,
					"patching_rect" : [ 260.0, 102.0, 249.0, 19.0 ],
					"hidden" : 1,
					"outlettype" : [ "", "", "", "", "", "", "", "" ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 0.0, 155.0, 148.0, 19.0 ],
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 11,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 118.0, 256.0, 789.0, 556.0 ],
						"bglocked" : 0,
						"defrect" : [ 118.0, 256.0, 789.0, 556.0 ],
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
									"text" : "scale 0. 1. 0. 1.",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 77.0, 392.0, 88.0, 19.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale 0. 1. 0. 1.",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 523.0, 164.0, 88.0, 19.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 1.",
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 102.0, 363.0, 72.0, 19.0 ],
									"outlettype" : [ "float", "float" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 1.",
									"linecount" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 523.0, 96.0, 41.0, 31.0 ],
									"outlettype" : [ "float", "float" ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "range",
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 505.0, 15.0, 79.0, 18.0 ],
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 504.0, 39.0, 27.0, 27.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"numinlets" : 0,
									"comment" : "float, set"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "f",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 722.0, 141.0, 27.0, 19.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel bang",
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 645.0, 81.0, 51.0, 19.0 ],
									"outlettype" : [ "bang", "" ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "rgb",
									"numoutlets" : 1,
									"patching_rect" : [ 461.0, 39.0, 27.0, 27.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"numinlets" : 0,
									"comment" : "rgb2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "rgb2",
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 460.0, 15.0, 55.0, 18.0 ],
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "frgb",
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 360.0, 15.0, 29.0, 18.0 ],
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "brgb",
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 405.0, 15.0, 55.0, 18.0 ],
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 362.0, 39.0, 27.0, 27.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"numinlets" : 0,
									"comment" : "frgb"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 406.0, 39.0, 27.0, 27.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-14",
									"numinlets" : 0,
									"comment" : "brgb"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "text",
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 250.0, 15.0, 32.0, 18.0 ],
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "float",
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 496.0, 100.0, 18.0 ],
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "lcd 4",
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 180.0, 15.0, 35.0, 18.0 ],
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "lcd 3",
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 144.0, 15.0, 35.0, 18.0 ],
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "lcd 2",
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 108.0, 15.0, 35.0, 18.0 ],
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "lcd 1",
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 72.0, 15.0, 35.0, 18.0 ],
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "size",
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 298.0, 15.0, 29.0, 18.0 ],
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend patching_size",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 307.0, 432.0, 125.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 307.0, 39.0, 27.0, 27.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-23",
									"numinlets" : 0,
									"comment" : "size"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 258.0, 39.0, 27.0, 27.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-24",
									"numinlets" : 0,
									"comment" : "text"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "clip 0. 1.",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 77.0, 425.0, 84.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "f",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 591.0, 137.0, 27.0, 19.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 681.0, 104.0, 54.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 645.0, 39.0, 27.0, 27.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-28",
									"numinlets" : 0,
									"comment" : "float, set"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p value",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 77.0, 234.0, 45.0, 19.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-29",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 50.0, 119.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 50.0, 119.0, 600.0, 426.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"patching_rect" : [ 105.0, 104.0, 51.0, 18.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"patching_rect" : [ 50.0, 104.0, 51.0, 18.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 1.",
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 158.0, 27.0, 18.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 72.0, 15.0, 15.0 ],
													"outlettype" : [ "list" ],
													"id" : "obj-4",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 105.0, 72.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 205.0, 15.0, 15.0 ],
													"id" : "obj-6",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p draw",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 22.0, 216.0, 55.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-30",
									"fontname" : "Verdana",
									"numinlets" : 7,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 98.0, 100.0, 1024.0, 607.0 ],
										"bglocked" : 0,
										"defrect" : [ 98.0, 100.0, 1024.0, 607.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "rgb2",
													"fontsize" : 10.0,
													"numoutlets" : 0,
													"patching_rect" : [ 795.0, 35.0, 33.0, 19.0 ],
													"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
													"id" : "obj-38",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "frgb",
													"fontsize" : 10.0,
													"numoutlets" : 0,
													"patching_rect" : [ 640.0, 35.0, 33.0, 19.0 ],
													"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
													"id" : "obj-37",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "brgb",
													"fontsize" : 10.0,
													"numoutlets" : 0,
													"patching_rect" : [ 725.0, 35.0, 33.0, 19.0 ],
													"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
													"id" : "obj-36",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set paintrect \\$1 0 \\$3 \\$4 $1 $2 $3",
													"linecount" : 3,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 730.0, 218.0, 75.0, 41.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set paintrect 0 0 \\$1 \\$4 $1 $2 $3",
													"linecount" : 3,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 802.0, 349.0, 75.0, 41.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set frgb $1 $2 $3",
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 641.0, 306.0, 96.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"varname" : "rgb",
													"numoutlets" : 1,
													"patching_rect" : [ 802.0, 68.0, 22.0, 22.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"numinlets" : 0,
													"comment" : "rgb2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 641.0, 68.0, 23.0, 23.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"numinlets" : 0,
													"comment" : "frgb"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 730.0, 68.0, 22.0, 22.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"comment" : "brgb"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 43.0, 367.0, 22.0, 19.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "frgb 255 255 255",
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 140.0, 405.0, 97.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend write",
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 83.0, 326.0, 78.0, 19.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 99.0, 405.0, 36.0, 19.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-10",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "moveto 3 $1",
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 407.0, 195.0, 72.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-11",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "font Verdana $1",
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 489.0, 195.0, 90.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-12",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 407.0, 173.0, 27.0, 19.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-13",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 489.0, 173.0, 27.0, 19.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-14",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 66.0, 224.0, 28.0, 19.0 ],
													"outlettype" : [ "bang", "" ],
													"id" : "obj-15",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 57.0, 405.0, 36.0, 19.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-16",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 0.8",
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 407.0, 148.0, 37.0, 19.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-17",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 0.78",
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 489.0, 148.0, 41.0, 19.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-18",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack",
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 377.0, 121.0, 45.0, 19.0 ],
													"outlettype" : [ "int", "int" ],
													"id" : "obj-19",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 416.0, 68.0, 22.0, 22.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-20",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "$1 0",
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 272.0, 225.0, 31.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-21",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 1.",
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 272.0, 203.0, 29.0, 19.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-22",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 291.0, 163.0, 52.0, 19.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-23",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 272.0, 68.0, 22.0, 22.0 ],
													"outlettype" : [ "float" ],
													"id" : "obj-24",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim 20",
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 248.0, 331.0, 46.0, 19.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-25",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "paintrect $1 0 $3 $4 0 0 0",
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 278.0, 479.0, 171.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-26",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "paintrect 0 0 $1 $4 111 111 111",
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patching_rect" : [ 248.0, 451.0, 173.0, 17.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-27",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 248.0, 269.0, 36.0, 19.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-28",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 588.0, 162.0, 28.0, 19.0 ],
													"outlettype" : [ "bang", "" ],
													"id" : "obj-29",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"fontsize" : 10.0,
													"numoutlets" : 2,
													"patching_rect" : [ 248.0, 300.0, 39.0, 19.0 ],
													"outlettype" : [ "", "" ],
													"id" : "obj-30",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 588.0, 68.0, 22.0, 22.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-31",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 248.0, 527.0, 22.0, 22.0 ],
													"id" : "obj-32",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 248.0, 68.0, 22.0, 22.0 ],
													"outlettype" : [ "list" ],
													"id" : "obj-33",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 257.5, 357.0, 52.5, 357.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 1 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-16", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [ 416.5, 395.0, 125.5, 395.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 650.5, 399.0, 149.5, 399.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [ 281.5, 254.0, 257.5, 254.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [ 597.5, 264.0, 257.5, 264.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [ 811.5, 432.0, 257.5, 432.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [ 498.5, 501.0, 257.5, 501.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [ 287.5, 510.0, 257.5, 510.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 1 ],
													"destination" : [ "obj-30", 1 ],
													"hidden" : 0,
													"midpoints" : [ 606.5, 298.0, 277.5, 298.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [ 739.5, 472.0, 287.5, 472.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-22", 1 ],
													"hidden" : 0,
													"midpoints" : [ 300.5, 192.0, 291.5, 192.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 77.0, 468.0, 22.0, 22.0 ],
									"id" : "obj-31",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 22.0, 468.0, 22.0, 22.0 ],
									"id" : "obj-32",
									"numinlets" : 1,
									"comment" : "to lcd"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b getsize",
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 229.0, 271.0, 61.0, 19.0 ],
									"outlettype" : [ "bang", "" ],
									"id" : "obj-33",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route size update",
									"fontsize" : 10.0,
									"numoutlets" : 3,
									"patching_rect" : [ 191.0, 190.0, 96.0, 19.0 ],
									"outlettype" : [ "", "", "" ],
									"id" : "obj-34",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 191.0, 39.0, 27.0, 27.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-35",
									"numinlets" : 0,
									"comment" : "lcd 4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 153.0, 39.0, 27.0, 27.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-36",
									"numinlets" : 0,
									"comment" : "lcd 3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 115.0, 39.0, 27.0, 27.0 ],
									"outlettype" : [ "list" ],
									"id" : "obj-37",
									"numinlets" : 0,
									"comment" : "lcd 2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 77.0, 39.0, 27.0, 27.0 ],
									"outlettype" : [ "list" ],
									"id" : "obj-38",
									"numinlets" : 0,
									"comment" : "lcd 1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "float, set, bang",
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 640.0, 15.0, 84.0, 18.0 ],
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"id" : "obj-39",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "to lcd",
									"fontsize" : 9.873845,
									"numoutlets" : 0,
									"patching_rect" : [ 17.0, 496.0, 100.0, 18.0 ],
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"id" : "obj-40",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 316.5, 243.0, 238.5, 243.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 86.5, 92.0, 31.5, 92.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 280.5, 316.0, 31.5, 316.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-30", 1 ],
									"hidden" : 0,
									"midpoints" : [ 532.5, 186.0, 37.5, 186.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-30", 2 ],
									"hidden" : 0,
									"midpoints" : [ 267.5, 131.0, 43.5, 131.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-30", 3 ],
									"hidden" : 0,
									"midpoints" : [ 200.5, 209.0, 49.5, 209.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-30", 4 ],
									"hidden" : 0,
									"midpoints" : [ 371.5, 139.0, 55.5, 139.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-30", 5 ],
									"hidden" : 0,
									"midpoints" : [ 415.5, 145.0, 61.5, 145.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-30", 6 ],
									"hidden" : 0,
									"midpoints" : [ 470.5, 151.0, 67.5, 151.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 731.5, 415.0, 86.5, 415.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 513.5, 355.0, 111.5, 355.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-29", 1 ],
									"hidden" : 0,
									"midpoints" : [ 200.5, 209.0, 112.5, 209.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-1", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-25", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 1 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 600.5, 160.0, 532.5, 160.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-2", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [ 238.5, 296.0, 638.0, 296.0, 638.0, 125.0, 600.5, 125.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 654.5, 128.0, 731.5, 128.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-32", 0 ],
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
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "lcd",
					"varname" : "slider",
					"numoutlets" : 4,
					"patching_rect" : [ 0.0, 0.0, 50.0, 14.0 ],
					"outlettype" : [ "list", "list", "int", "" ],
					"local" : 0,
					"border" : 0,
					"id" : "obj-9",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 7 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [ 591.25, 97.0, 270.0, 97.0, 270.0, 99.0, 269.5, 99.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [ 571.5, 66.0, 345.0, 66.0, 345.0, 72.0, 344.5, 72.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [ 344.5, 97.0, 269.5, 97.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [ 379.75, 97.0, 269.5, 97.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 2 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [ 415.0, 97.0, 269.5, 97.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 3 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [ 450.25, 97.0, 269.5, 97.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 4 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [ 485.5, 97.0, 269.5, 97.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 5 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [ 520.75, 97.0, 269.5, 97.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [ 466.5, 226.0, 234.0, 226.0, 234.0, 226.0, 0.0, 226.0, 0.0, 15.0, -3.0, 15.0, -3.0, -3.0, 9.5, -3.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 6 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 7 ],
					"destination" : [ "obj-8", 10 ],
					"hidden" : 1,
					"midpoints" : [ 499.5, 148.0, 138.5, 148.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [ 269.5, 94.0, 269.5, 94.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 5 ],
					"destination" : [ "obj-8", 9 ],
					"hidden" : 1,
					"midpoints" : [ 433.785706, 144.0, 125.599998, 144.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 4 ],
					"destination" : [ "obj-8", 8 ],
					"hidden" : 1,
					"midpoints" : [ 400.928558, 141.0, 112.699997, 141.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 3 ],
					"destination" : [ "obj-8", 7 ],
					"hidden" : 1,
					"midpoints" : [ 368.071442, 138.0, 99.800003, 138.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 2 ],
					"destination" : [ "obj-8", 6 ],
					"hidden" : 1,
					"midpoints" : [ 335.214294, 133.0, 86.900002, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-8", 5 ],
					"hidden" : 1,
					"midpoints" : [ 302.357147, 128.0, 74.0, 128.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 4 ],
					"hidden" : 1,
					"midpoints" : [ 269.5, 123.0, 61.099998, 123.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [ 9.5, 172.0, -9.0, 172.0, -9.0, -7.0, 9.5, -7.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 1,
					"midpoints" : [ 19.833334, 22.0, 22.4, 22.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 2 ],
					"destination" : [ "obj-8", 2 ],
					"hidden" : 1,
					"midpoints" : [ 30.166666, 29.0, 35.299999, 29.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 3 ],
					"destination" : [ "obj-8", 3 ],
					"hidden" : 1,
					"midpoints" : [ 40.5, 36.0, 48.200001, 36.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
