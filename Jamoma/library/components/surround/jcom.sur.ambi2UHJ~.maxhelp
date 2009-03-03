{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 360.0, 44.0, 621.0, 688.0 ],
		"bglocked" : 0,
		"defrect" : [ 360.0, 44.0, 621.0, 688.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p init",
					"fontsize" : 10.970939,
					"numinlets" : 0,
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 422.0, 310.0, 38.0, 20.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "del 4000",
									"fontsize" : 10.0,
									"hidden" : 1,
									"numinlets" : 2,
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 121.0, 52.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontsize" : 10.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 100.0, 54.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/numSources 1, /order 1",
									"fontsize" : 10.0,
									"hidden" : 1,
									"numinlets" : 2,
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 143.0, 136.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 220.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"color" : [ 0.6, 0.4, 0.6, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-3", 0 ],
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
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.sur.ambi2UHJ~",
					"fontsize" : 18.0,
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-73",
					"fontname" : "Verdana",
					"presentation_rect" : [ 45.0, 35.0, 211.0, 28.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 21.0, 211.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "encodes Ambisonics B-format into two channel stereo UHJ",
					"presentation_linecount" : 2,
					"fontsize" : 10.0,
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-74",
					"fontname" : "Verdana",
					"presentation_rect" : [ 45.0, 65.0, 283.0, 31.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 12.0, 49.0, 321.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 1,
					"rounded" : 15,
					"numinlets" : 1,
					"id" : "obj-75",
					"presentation_rect" : [ 35.0, 25.0, 292.0, 63.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 3.0, 3.0, 349.0, 64.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "at Wikipedia",
					"fontsize" : 10.0,
					"underline" : 1,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 199.0, 72.0, 82.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Encoder based on the equation posted",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 3.0, 72.0, 202.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"dragtrack" : 1,
					"handoff" : "",
					"numinlets" : 1,
					"id" : "obj-6",
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"patching_rect" : [ 195.0, 73.0, 67.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser http://en.wikipedia.org/wiki/Ambisonic_UHJ_format",
					"linecount" : 4,
					"fontsize" : 10.0,
					"hidden" : 1,
					"numinlets" : 2,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 359.0, 6.0, 146.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "audio output (stereo)",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 323.0, 561.0, 139.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "convert to UHJ stereo",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 323.0, 506.0, 139.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p ellipse",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 404.0, 141.0, 50.0, 19.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 653.0, 174.0, 601.0, 531.0 ],
						"bglocked" : 0,
						"defrect" : [ 653.0, 174.0, 601.0, 531.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* -5.",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 45.0, 199.0, 34.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "swap",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 330.0, 318.0, 74.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 0,
									"patching_rect" : [ 330.0, 386.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 0",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 330.0, 345.0, 74.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0. 1.",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 64.0, 318.0, 59.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/source.1/position $2 0. $1",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 64.0, 342.0, 148.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "round",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 330.0, 292.0, 40.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "round",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 394.0, 292.0, 40.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 10.",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 394.0, 267.0, 42.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 10.",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 330.0, 267.0, 42.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $f1*180./3.141593",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 106.0, 295.0, 132.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-12",
									"numoutlets" : 0,
									"patching_rect" : [ 64.0, 386.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "line 0. 20",
									"fontsize" : 10.0,
									"numinlets" : 3,
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 64.0, 153.0, 56.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cartopol",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 64.0, 260.0, 52.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 10.",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 106.0, 207.0, 35.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sin",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 106.0, 180.0, 23.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 0.",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 63.0, 224.0, 30.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cos",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 64.0, 180.0, 25.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0, 6.283185 9000",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 64.0, 133.0, 99.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 9000",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 64.0, 109.0, 67.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dspstate~",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numoutlets" : 4,
									"outlettype" : [ "int", "float", "int", "int" ],
									"patching_rect" : [ 64.0, 85.0, 59.0, 19.0 ]
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"leftvalue" : -100,
					"imagemask" : 1,
					"bottomvalue" : -100,
					"topvalue" : 100,
					"numinlets" : 2,
					"leftmargin" : 4,
					"rightmargin" : 4,
					"knobpict" : "SliderDefaultKnob.pct",
					"id" : "obj-11",
					"numoutlets" : 2,
					"bottommargin" : 4,
					"rightvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"topmargin" : 4,
					"patching_rect" : [ 420.0, 164.0, 144.0, 144.0 ],
					"bkgndpict" : "SliderDefaultBkgnd.pct"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~[1]",
					"numinlets" : 3,
					"id" : "obj-12",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"args" : [ "/output~" ],
					"numoutlets" : 1,
					"name" : "jmod.output~.maxpat",
					"outlettype" : [ "" ],
					"patching_rect" : [ 4.0, 529.0, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.sur.ambi2UHJ~",
					"fontsize" : 10.0,
					"numinlets" : 3,
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 13.0, 503.0, 291.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Split multicable signal",
					"linecount" : 2,
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 323.0, 435.0, 96.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~",
					"numinlets" : 2,
					"id" : "obj-15",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"args" : [ "/multi.out~" ],
					"numoutlets" : 33,
					"name" : "jmod.sur.multi.out~.maxpat",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 4.0, 416.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Ambisonic encoding",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 323.0, 360.0, 108.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/multi.in~",
					"numinlets" : 33,
					"id" : "obj-17",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"args" : [ "/multi.in~" ],
					"numoutlets" : 2,
					"name" : "jmod.sur.multi.in~.maxpat",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 4.0, 259.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/encodeM~",
					"numinlets" : 2,
					"id" : "obj-21",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"args" : [ "/encodeM~" ],
					"numoutlets" : 2,
					"name" : "jmod.sur.ambi.encodeM~.maxpat",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 4.0, 339.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/control",
					"numinlets" : 1,
					"id" : "obj-22",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"args" : [ "/control" ],
					"numoutlets" : 1,
					"name" : "jmod.control.maxpat",
					"outlettype" : [ "" ],
					"patching_rect" : [ 432.0, 588.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"numinlets" : 1,
					"id" : "obj-23",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"args" : [ "/input~" ],
					"numoutlets" : 3,
					"name" : "jmod.input~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 4.0, 111.0, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Pack signal on multicable",
					"linecount" : 2,
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 323.0, 272.0, 100.0, 31.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 431.5, 334.0, 13.5, 334.0 ]
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
					"midpoints" : [ 39.84375, 491.0, 294.5, 491.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [ 22.5, 524.0, 154.0, 524.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 2 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [ 31.0625, 496.0, 158.5, 496.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [ 154.0, 254.0, 22.28125, 254.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 22.28125, 489.0, 22.5, 489.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 413.5, 334.0, 13.5, 334.0 ]
				}

			}
 ]
	}

}
