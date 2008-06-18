{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 360.0, 44.0, 765.0, 726.0 ],
		"bglocked" : 0,
		"defrect" : [ 360.0, 44.0, 765.0, 726.0 ],
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
					"fontsize" : 18.0,
					"presentation_rect" : [ 45.0, 35.0, 211.0, 28.0 ],
					"id" : "obj-73",
					"patching_rect" : [ 10.0, 21.0, 211.0, 28.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "encodes Ambisonics B-format into two channel stereo UHJ",
					"presentation_linecount" : 2,
					"fontsize" : 10.0,
					"presentation_rect" : [ 45.0, 65.0, 280.0, 31.0 ],
					"id" : "obj-74",
					"patching_rect" : [ 12.0, 49.0, 321.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 35.0, 25.0, 292.0, 63.0 ],
					"id" : "obj-75",
					"patching_rect" : [ 3.0, 3.0, 349.0, 64.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"rounded" : 15,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "at Wikipedia",
					"fontsize" : 9.630046,
					"id" : "obj-4",
					"patching_rect" : [ 186.0, 72.0, 79.0, 18.0 ],
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Encoder based on the equation posted",
					"fontsize" : 9.630046,
					"id" : "obj-5",
					"patching_rect" : [ 6.0, 72.0, 195.0, 18.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"outlettype" : [ "bang", "bang", "", "int" ],
					"id" : "obj-6",
					"patching_rect" : [ 187.0, 72.0, 67.0, 16.0 ],
					"numinlets" : 1,
					"handoff" : "",
					"numoutlets" : 4,
					"dragtrack" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser http://en.wikipedia.org/wiki/Ambisonic_UHJ_format",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-7",
					"hidden" : 1,
					"patching_rect" : [ 273.0, 67.0, 373.0, 29.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "output audio",
					"fontsize" : 10.0,
					"id" : "obj-8",
					"patching_rect" : [ 323.0, 576.0, 139.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "convert to UHJ stereo",
					"fontsize" : 10.0,
					"id" : "obj-9",
					"patching_rect" : [ 323.0, 506.0, 139.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
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
					"fontsize" : 10.0,
					"id" : "obj-10",
					"patching_rect" : [ 404.0, 141.0, 50.0, 19.0 ],
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
									"fontsize" : 10.0,
									"id" : "obj-1",
									"patching_rect" : [ 45.0, 199.0, 34.0, 19.0 ],
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
									"fontsize" : 10.0,
									"id" : "obj-2",
									"patching_rect" : [ 330.0, 318.0, 74.0, 19.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-3",
									"patching_rect" : [ 330.0, 386.0, 15.0, 15.0 ],
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
									"fontsize" : 10.0,
									"id" : "obj-4",
									"patching_rect" : [ 330.0, 345.0, 74.0, 19.0 ],
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
									"fontsize" : 10.0,
									"id" : "obj-5",
									"patching_rect" : [ 64.0, 318.0, 59.0, 19.0 ],
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
									"fontsize" : 10.0,
									"id" : "obj-6",
									"patching_rect" : [ 64.0, 348.0, 97.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "round",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-7",
									"patching_rect" : [ 330.0, 292.0, 40.0, 19.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "round",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"id" : "obj-8",
									"patching_rect" : [ 394.0, 292.0, 40.0, 19.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 10.",
									"outlettype" : [ "float" ],
									"fontsize" : 10.0,
									"id" : "obj-9",
									"patching_rect" : [ 394.0, 267.0, 42.0, 19.0 ],
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
									"fontsize" : 10.0,
									"id" : "obj-10",
									"patching_rect" : [ 330.0, 267.0, 42.0, 19.0 ],
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
									"fontsize" : 10.0,
									"id" : "obj-11",
									"patching_rect" : [ 106.0, 295.0, 132.0, 19.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-12",
									"patching_rect" : [ 64.0, 386.0, 15.0, 15.0 ],
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
									"fontsize" : 10.0,
									"id" : "obj-13",
									"patching_rect" : [ 64.0, 153.0, 56.0, 19.0 ],
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
									"fontsize" : 10.0,
									"id" : "obj-14",
									"patching_rect" : [ 64.0, 260.0, 52.0, 19.0 ],
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
									"fontsize" : 10.0,
									"id" : "obj-15",
									"patching_rect" : [ 106.0, 207.0, 35.0, 19.0 ],
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
									"fontsize" : 10.0,
									"id" : "obj-16",
									"patching_rect" : [ 106.0, 180.0, 23.0, 19.0 ],
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
									"fontsize" : 10.0,
									"id" : "obj-17",
									"patching_rect" : [ 63.0, 224.0, 30.0, 19.0 ],
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
									"fontsize" : 10.0,
									"id" : "obj-18",
									"patching_rect" : [ 64.0, 180.0, 25.0, 19.0 ],
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
									"fontsize" : 10.0,
									"id" : "obj-19",
									"patching_rect" : [ 64.0, 133.0, 99.0, 17.0 ],
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
									"fontsize" : 10.0,
									"id" : "obj-20",
									"patching_rect" : [ 64.0, 109.0, 67.0, 19.0 ],
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
									"fontsize" : 10.0,
									"id" : "obj-21",
									"patching_rect" : [ 64.0, 85.0, 59.0, 19.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 4
								}

							}
 ],
						"lines" : [ 							{
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
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
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
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-13", 0 ],
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
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-14", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-16", 0 ],
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
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 1 ],
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-5", 1 ],
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 115.5, 246.0, 403.5, 246.0 ]
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"outlettype" : [ "int", "int" ],
					"leftmargin" : 4,
					"topvalue" : 100,
					"bottommargin" : 4,
					"id" : "obj-11",
					"patching_rect" : [ 420.0, 164.0, 144.0, 144.0 ],
					"topmargin" : 4,
					"knobpict" : "SliderDefaultKnob.pct",
					"numinlets" : 2,
					"rightvalue" : 100,
					"leftvalue" : -100,
					"bottomvalue" : -100,
					"numoutlets" : 2,
					"imagemask" : 1,
					"rightmargin" : 4,
					"bkgndpict" : "SliderDefaultBkgnd.pct"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~[1]",
					"outlettype" : [ "" ],
					"args" : [ "/output~" ],
					"id" : "obj-12",
					"patching_rect" : [ 4.0, 529.0, 303.0, 143.0 ],
					"name" : "jmod.output~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.sur.ambi2UHJ~",
					"outlettype" : [ "signal", "signal" ],
					"fontsize" : 10.0,
					"id" : "obj-13",
					"patching_rect" : [ 14.0, 506.0, 294.0, 19.0 ],
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
					"fontsize" : 10.0,
					"id" : "obj-14",
					"patching_rect" : [ 323.0, 435.0, 96.0, 31.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
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
					"args" : [ "/multi.out~" ],
					"id" : "obj-15",
					"patching_rect" : [ 4.0, 416.0, 301.0, 72.0 ],
					"name" : "jmod.sur.multi.out~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 33
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Ambisonic encoding",
					"fontsize" : 10.0,
					"id" : "obj-16",
					"patching_rect" : [ 323.0, 360.0, 108.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
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
					"args" : [ "/multi.in~" ],
					"id" : "obj-17",
					"patching_rect" : [ 4.0, 259.0, 301.0, 71.0 ],
					"name" : "jmod.sur.multi.in~.maxpat",
					"numinlets" : 33,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "del 4000",
					"outlettype" : [ "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-18",
					"hidden" : 1,
					"patching_rect" : [ 579.0, 221.0, 52.0, 19.0 ],
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
					"fontsize" : 10.0,
					"id" : "obj-19",
					"hidden" : 1,
					"patching_rect" : [ 579.0, 202.0, 54.0, 19.0 ],
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
					"fontsize" : 10.0,
					"id" : "obj-20",
					"hidden" : 1,
					"patching_rect" : [ 571.0, 247.0, 65.0, 29.0 ],
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
					"args" : [ "/encodeM~" ],
					"id" : "obj-21",
					"patching_rect" : [ 4.0, 339.0, 302.0, 71.0 ],
					"name" : "jmod.sur.ambi.encodeM~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/control",
					"outlettype" : [ "" ],
					"args" : [ "/control" ],
					"id" : "obj-22",
					"patching_rect" : [ 446.0, 370.0, 152.0, 73.0 ],
					"name" : "jmod.control.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/input~" ],
					"id" : "obj-23",
					"patching_rect" : [ 4.0, 111.0, 302.0, 143.0 ],
					"name" : "jmod.input~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Pack signal on multicable",
					"linecount" : 2,
					"fontsize" : 10.0,
					"id" : "obj-24",
					"patching_rect" : [ 323.0, 272.0, 100.0, 31.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 413.5, 334.0, 13.5, 334.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [ 580.5, 334.0, 13.5, 334.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 22.3125, 489.0, 23.5, 489.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [ 155.0, 254.0, 22.3125, 254.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 2 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [ 31.125, 502.0, 161.0, 502.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [ 23.5, 527.0, 155.5, 527.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 3 ],
					"destination" : [ "obj-13", 2 ],
					"hidden" : 0,
					"midpoints" : [ 39.9375, 499.0, 298.5, 499.0 ]
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
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 444.5, 161.0, 429.5, 161.0 ]
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
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
