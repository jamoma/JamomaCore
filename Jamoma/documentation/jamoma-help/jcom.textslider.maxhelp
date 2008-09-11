{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 62.0, 80.0, 476.0, 450.0 ],
		"bglocked" : 0,
		"defrect" : [ 62.0, 80.0, 476.0, 450.0 ],
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
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"patching_rect" : [ 387.0, 320.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-10",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ignoreclick $1",
					"fontsize" : 10.970939,
					"numoutlets" : 1,
					"patching_rect" : [ 387.0, 345.0, 85.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 10.0, 320.0, 19.0, 19.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-5",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bang : output value",
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 35.0, 120.0, 160.0, 19.0 ],
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p colors",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 265.0, 320.0, 50.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 641.0, 141.0, 480.0, 106.0 ],
						"bglocked" : 0,
						"defrect" : [ 641.0, 141.0, 480.0, 106.0 ],
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
									"text" : "t b l",
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 310.0, 293.0, 28.0, 19.0 ],
									"hidden" : 1,
									"outlettype" : [ "bang", "" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 310.0, 325.0, 15.0, 15.0 ],
									"hidden" : 1,
									"id" : "obj-4",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 1 b",
									"fontsize" : 10.0,
									"numoutlets" : 3,
									"patching_rect" : [ 97.0, -41.0, 42.0, 19.0 ],
									"hidden" : 1,
									"outlettype" : [ "bang", "int", "bang" ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window title, window exec",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 9.0, 71.0, 141.0, 17.0 ],
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window notitle, window exec",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 9.0, 59.0, 153.0, 17.0 ],
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 100 100 580 206, window exec",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 9.0, 46.0, 231.0, 17.0 ],
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "42",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 238.0, -55.0, 21.0, 17.0 ],
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"patching_rect" : [ -22.0, 213.0, 15.0, 15.0 ],
									"hidden" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-11",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ -1.0, 110.0, 52.0, 19.0 ],
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 100.0, 113.0, 68.0, 19.0 ],
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "frgb 106 148 148",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 0.0, 91.0, 160.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend frgb",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 59.0, 224.0, 73.0, 19.0 ],
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numoutlets" : 1,
									"patching_rect" : [ 0.0, 0.0, 160.0, 10.0 ],
									"outlettype" : [ "" ],
									"orientation" : 1,
									"id" : "obj-20",
									"size" : 256.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "saturation $1",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 0.0, -25.0, 76.0, 17.0 ],
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"patching_rect" : [ 138.0, 213.0, 15.0, 15.0 ],
									"hidden" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-22",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 159.0, 110.0, 52.0, 19.0 ],
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 260.0, 113.0, 68.0, 19.0 ],
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-24",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "brgb 106 148 148",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 160.0, 91.0, 160.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-29",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend brgb",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 219.0, 224.0, 76.0, 19.0 ],
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-30",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numoutlets" : 1,
									"patching_rect" : [ 160.0, 0.0, 160.0, 10.0 ],
									"outlettype" : [ "" ],
									"orientation" : 1,
									"id" : "obj-31",
									"size" : 256.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "saturation $1",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 160.0, -25.0, 76.0, 17.0 ],
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-32",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"patching_rect" : [ 298.0, 213.0, 15.0, 15.0 ],
									"hidden" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-33",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 319.0, 110.0, 52.0, 19.0 ],
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"id" : "obj-34",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 420.0, 113.0, 68.0, 19.0 ],
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-35",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rgb2 106 148 148",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 320.0, 91.0, 160.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-40",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend rgb2",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 379.0, 224.0, 76.0, 19.0 ],
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-41",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numoutlets" : 1,
									"patching_rect" : [ 320.0, 0.0, 160.0, 10.0 ],
									"outlettype" : [ "" ],
									"orientation" : 1,
									"id" : "obj-42",
									"size" : 256.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "saturation $1",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 320.0, -25.0, 76.0, 17.0 ],
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-43",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"numoutlets" : 2,
									"patching_rect" : [ 320.0, 10.0, 160.0, 81.0 ],
									"outlettype" : [ "", "float" ],
									"compatibility" : 1,
									"id" : "obj-44",
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"patching_rect" : [ 458.0, 213.0, 15.0, 15.0 ],
									"hidden" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-45",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 479.0, 110.0, 52.0, 19.0 ],
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"id" : "obj-46",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 9.0, 32.0, 173.0, 17.0 ],
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-47",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, window exec",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 9.0, 20.0, 186.0, 17.0 ],
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-48",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 97.0, -65.0, 54.0, 19.0 ],
									"hidden" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-49",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 9.0, -49.0, 65.0, 19.0 ],
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"id" : "obj-50",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "saturation $1",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 480.0, -25.0, 76.0, 17.0 ],
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-51",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 311.0, 274.0, 31.0, 19.0 ],
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-52",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"numoutlets" : 2,
									"patching_rect" : [ 0.0, 10.0, 160.0, 81.0 ],
									"outlettype" : [ "", "float" ],
									"compatibility" : 1,
									"id" : "obj-53",
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"numoutlets" : 2,
									"patching_rect" : [ 160.0, 10.0, 160.0, 81.0 ],
									"outlettype" : [ "", "float" ],
									"compatibility" : 1,
									"id" : "obj-54",
									"numinlets" : 3
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [ 247.5, -5.0, 9.5, -5.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 1,
									"midpoints" : [ 247.5, -5.0, 169.5, -5.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 2 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 1,
									"midpoints" : [ 247.5, -5.0, 329.5, -5.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-52", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-52", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-52", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
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
					"maxclass" : "comment",
					"text" : "rgb2 : color of the slider",
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 35.0, 270.0, 131.0, 19.0 ],
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "brgb : color of the background",
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 35.0, 255.0, 163.0, 19.0 ],
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "frgb : color of the text",
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 35.0, 240.0, 121.0, 19.0 ],
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "size: resize. You will also have to resize the bpatcher manually",
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 35.0, 225.0, 325.0, 19.0 ],
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "text (symbol): set displayed text",
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 35.0, 210.0, 174.0, 19.0 ],
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attributes:",
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 190.0, 100.0, 19.0 ],
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "float: initial value",
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 35.0, 165.0, 100.0, 19.0 ],
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Argument",
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 145.0, 100.0, 19.0 ],
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set (float)",
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 35.0, 105.0, 160.0, 19.0 ],
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "float: (range 0-1)",
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 35.0, 90.0, 160.0, 19.0 ],
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 333.0, 319.0, 35.0, 19.0 ],
					"minimum" : 0,
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9,
					"maximum" : 200,
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak size 200 14",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 295.0, 345.0, 88.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numinlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 219.0, 344.0, 40.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 220.0, 320.0, 42.0, 19.0 ],
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"maximum" : 1.0,
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 35.0, 405.0, 67.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 175.0, 320.0, 42.0, 19.0 ],
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"maximum" : 1.0,
					"id" : "obj-26",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "Testing",
					"fontsize" : 10.0,
					"numoutlets" : 4,
					"patching_rect" : [ 35.0, 320.0, 136.0, 20.0 ],
					"frgb" : [ 0.152941, 0.172549, 0.509804, 1.0 ],
					"outlettype" : [ "", "int", "", "" ],
					"id" : "obj-27",
					"fontname" : "Geneva",
					"keymode" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.textslider",
					"fontsize" : 17.334082,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 15.0, 145.0, 28.0 ],
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-28",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "LCD based slider with text display in a bpatcher",
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 40.0, 292.0, 19.0 ],
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 10.0, 400.0, 50.0 ],
					"id" : "obj-30",
					"rounded" : 15,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 1,
					"patching_rect" : [ 35.0, 380.0, 200.0, 14.0 ],
					"outlettype" : [ "" ],
					"name" : "jcom.textslider.maxpat",
					"id" : "obj-31",
					"args" : [ 0.8, "@text", "textslider", "@size", 200, 14 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Input:",
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 70.0, 100.0, 19.0 ],
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 396.5, 366.0, 114.0, 366.0, 114.0, 366.0, 44.0, 366.0, 44.0, 375.0, 44.5, 375.0 ]
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
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 274.5, 366.0, 44.5, 366.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 304.5, 366.0, 44.5, 366.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 228.5, 366.0, 44.5, 366.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 184.5, 366.0, 44.5, 366.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 19.5, 366.0, 44.5, 366.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
