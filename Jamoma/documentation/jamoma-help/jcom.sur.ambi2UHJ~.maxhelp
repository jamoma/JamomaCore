{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 529.0, 70.0, 470.0, 709.0 ],
		"bglocked" : 0,
		"defrect" : [ 529.0, 70.0, 470.0, 709.0 ],
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
					"maxclass" : "comment",
					"text" : "jcom.sur.ambi2UHJ~",
					"fontsize" : 17.334082,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 8.0, 13.0, 190.0, 28.0 ],
					"id" : "obj-1",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "encodes Ambisonics B-format into two channel stereo UHJ",
					"fontsize" : 10,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 8.0, 38.0, 299.0, 18.0 ],
					"id" : "obj-2",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 3.0, 8.0, 292.0, 50.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "at Wikipedia",
					"fontsize" : 9.630046,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"patching_rect" : [ 186.0, 72.0, 79.0, 18.0 ],
					"id" : "obj-4",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Encoder based on the equation posted",
					"fontsize" : 9.630046,
					"patching_rect" : [ 6.0, 72.0, 195.0, 18.0 ],
					"id" : "obj-5",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"handoff" : "",
					"outlettype" : [ "bang", "bang", "", "int" ],
					"patching_rect" : [ 187.0, 72.0, 67.0, 16.0 ],
					"id" : "obj-6",
					"numinlets" : 1,
					"dragtrack" : 1,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser http://en.wikipedia.org/wiki/Ambisonic_UHJ_format",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"hidden" : 1,
					"patching_rect" : [ 273.0, 67.0, 368.0, 28.0 ],
					"id" : "obj-7",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "output audio",
					"fontsize" : 10,
					"patching_rect" : [ 259.0, 584.0, 139.0, 18.0 ],
					"id" : "obj-8",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "convert to UHJ stereo",
					"fontsize" : 10,
					"patching_rect" : [ 259.0, 517.0, 139.0, 18.0 ],
					"id" : "obj-9",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p ellipse",
					"outlettype" : [ "", "" ],
					"fontsize" : 10,
					"patching_rect" : [ 258.0, 135.0, 49.0, 18.0 ],
					"id" : "obj-10",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 574.0, 205.0, 601.0, 531.0 ],
						"bglocked" : 0,
						"defrect" : [ 574.0, 205.0, 601.0, 531.0 ],
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
									"text" : "* -5.",
									"outlettype" : [ "float" ],
									"fontsize" : 10,
									"patching_rect" : [ 45.0, 199.0, 34.0, 18.0 ],
									"id" : "obj-1",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "swap",
									"outlettype" : [ "int", "int" ],
									"fontsize" : 10,
									"patching_rect" : [ 330.0, 318.0, 74.0, 18.0 ],
									"id" : "obj-2",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 330.0, 386.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 0",
									"outlettype" : [ "" ],
									"fontsize" : 10,
									"patching_rect" : [ 330.0, 345.0, 74.0, 18.0 ],
									"id" : "obj-4",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0. 1.",
									"outlettype" : [ "" ],
									"fontsize" : 10,
									"patching_rect" : [ 64.0, 318.0, 58.0, 18.0 ],
									"id" : "obj-5",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/aed 1 $2 0. $1 1",
									"outlettype" : [ "" ],
									"fontsize" : 10,
									"patching_rect" : [ 64.0, 348.0, 96.0, 16.0 ],
									"id" : "obj-6",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.round",
									"outlettype" : [ "", "" ],
									"fontsize" : 10,
									"patching_rect" : [ 330.0, 292.0, 65.0, 18.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.round",
									"outlettype" : [ "", "" ],
									"fontsize" : 10,
									"patching_rect" : [ 394.0, 292.0, 65.0, 18.0 ],
									"id" : "obj-8",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 10.",
									"outlettype" : [ "float" ],
									"fontsize" : 10,
									"patching_rect" : [ 394.0, 267.0, 42.0, 18.0 ],
									"id" : "obj-9",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 10.",
									"outlettype" : [ "float" ],
									"fontsize" : 10,
									"patching_rect" : [ 330.0, 267.0, 42.0, 18.0 ],
									"id" : "obj-10",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $f1*180./3.141593",
									"outlettype" : [ "" ],
									"fontsize" : 10,
									"patching_rect" : [ 106.0, 295.0, 131.0, 18.0 ],
									"id" : "obj-11",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 64.0, 386.0, 15.0, 15.0 ],
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "line 0. 20",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 10,
									"patching_rect" : [ 64.0, 153.0, 55.0, 18.0 ],
									"id" : "obj-13",
									"numinlets" : 3,
									"fontname" : "Verdana",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cartopol",
									"outlettype" : [ "float", "float" ],
									"fontsize" : 10,
									"patching_rect" : [ 64.0, 260.0, 52.0, 18.0 ],
									"id" : "obj-14",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 10.",
									"outlettype" : [ "float" ],
									"fontsize" : 10,
									"patching_rect" : [ 106.0, 207.0, 35.0, 18.0 ],
									"id" : "obj-15",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sin",
									"outlettype" : [ "float" ],
									"fontsize" : 10,
									"patching_rect" : [ 106.0, 180.0, 23.0, 18.0 ],
									"id" : "obj-16",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 0.",
									"outlettype" : [ "float" ],
									"fontsize" : 10,
									"patching_rect" : [ 63.0, 224.0, 30.0, 18.0 ],
									"id" : "obj-17",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cos",
									"outlettype" : [ "float" ],
									"fontsize" : 10,
									"patching_rect" : [ 64.0, 180.0, 25.0, 18.0 ],
									"id" : "obj-18",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0, 6.283185 9000",
									"outlettype" : [ "" ],
									"fontsize" : 10,
									"patching_rect" : [ 64.0, 133.0, 98.0, 16.0 ],
									"id" : "obj-19",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 9000",
									"outlettype" : [ "bang" ],
									"fontsize" : 10,
									"patching_rect" : [ 64.0, 109.0, 67.0, 18.0 ],
									"id" : "obj-20",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dspstate~",
									"outlettype" : [ "int", "float", "int", "int" ],
									"fontsize" : 10,
									"patching_rect" : [ 64.0, 85.0, 59.0, 18.0 ],
									"id" : "obj-21",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 4
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-4", 1 ],
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 115.5, 246.0, 403.5, 246.0 ]
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 72.5, 244.0, 339.5, 244.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-1", 0 ],
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
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"outlettype" : [ "int", "int" ],
					"leftmargin" : 4,
					"rightvalue" : 100,
					"topmargin" : 4,
					"rightmargin" : 4,
					"knobpict" : "SliderDefaultKnob.pct",
					"patching_rect" : [ 274.0, 158.0, 144.0, 144.0 ],
					"bkgndpict" : "SliderDefaultBkgnd.pct",
					"imagemask" : 1,
					"topvalue" : 100,
					"id" : "obj-11",
					"numinlets" : 2,
					"bottommargin" : 4,
					"numoutlets" : 2,
					"leftvalue" : -100,
					"bottomvalue" : -100
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~[1]",
					"outlettype" : [ "" ],
					"patching_rect" : [ 3.0, 539.0, 255.0, 120.0 ],
					"args" : [ "/output~" ],
					"id" : "obj-12",
					"numinlets" : 3,
					"name" : "jmod.output~.maxpat",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.sur.ambi2UHJ~",
					"outlettype" : [ "signal", "signal" ],
					"fontsize" : 10,
					"patching_rect" : [ 3.0, 515.0, 254.0, 18.0 ],
					"id" : "obj-13",
					"numinlets" : 3,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Split multicable signal",
					"linecount" : 2,
					"fontsize" : 10,
					"patching_rect" : [ 262.0, 455.0, 96.0, 30.0 ],
					"id" : "obj-14",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 3.0, 440.0, 255.0, 60.0 ],
					"args" : [ "/multi.out~" ],
					"id" : "obj-15",
					"numinlets" : 2,
					"name" : "jmod.sur.multi.out~.mxt",
					"numoutlets" : 33
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Ambisonic encoding",
					"fontsize" : 10,
					"patching_rect" : [ 262.0, 397.0, 107.0, 18.0 ],
					"id" : "obj-16",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/multi.in~",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 3.0, 310.0, 255.0, 60.0 ],
					"args" : [ "/multi.in~" ],
					"id" : "obj-17",
					"numinlets" : 33,
					"name" : "jmod.sur.multi.in~.mxt",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "del 4000",
					"outlettype" : [ "bang" ],
					"fontsize" : 10,
					"hidden" : 1,
					"patching_rect" : [ 374.0, 339.0, 52.0, 18.0 ],
					"id" : "obj-18",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"outlettype" : [ "bang" ],
					"fontsize" : 10,
					"hidden" : 1,
					"patching_rect" : [ 374.0, 320.0, 54.0, 18.0 ],
					"id" : "obj-19",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/voices 1, /order 1",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"hidden" : 1,
					"patching_rect" : [ 434.0, 322.0, 65.0, 28.0 ],
					"id" : "obj-20",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/encodeM~",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 3.0, 377.0, 255.0, 60.0 ],
					"args" : [ "/encodeM~" ],
					"id" : "obj-21",
					"numinlets" : 2,
					"name" : "jmod.sur.ambi.encodeM~.mxt",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/control",
					"outlettype" : [ "" ],
					"patching_rect" : [ 3.0, 122.0, 255.0, 60.0 ],
					"args" : [ "/control" ],
					"id" : "obj-22",
					"numinlets" : 1,
					"name" : "jmod.control.maxpat",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 3.0, 186.0, 255.0, 120.0 ],
					"args" : [ "/input~" ],
					"id" : "obj-23",
					"numinlets" : 1,
					"name" : "jmod.input~.maxpat",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Pack signal on multicable",
					"linecount" : 2,
					"fontsize" : 10,
					"patching_rect" : [ 266.0, 327.0, 100.0, 30.0 ],
					"id" : "obj-24",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 297.5, 155.0, 283.5, 155.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-12", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 3 ],
					"destination" : [ "obj-13", 2 ],
					"hidden" : 0,
					"midpoints" : [ 34.625, 508.0, 247.5, 508.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [ 12.5, 535.0, 130.5, 535.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 2 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [ 27.25, 512.0, 130.0, 512.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [ 130.5, 307.0, 19.875, 307.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 19.875, 507.0, 12.5, 507.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [ 443.5, 374.0, 12.5, 374.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 267.5, 372.0, 12.5, 372.0 ]
				}

			}
 ]
	}

}
