{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 544.0, 100.0, 760.0, 587.0 ],
		"bglocked" : 0,
		"defrect" : [ 544.0, 100.0, 760.0, 587.0 ],
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
					"maxclass" : "message",
					"text" : "getfunction",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 46.0, 221.0, 60.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-1",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 608.0, 188.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"triscale" : 0.9,
					"id" : "obj-2",
					"numoutlets" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "setclock test",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 608.0, 211.0, 68.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-3",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clock test",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 180.0, 131.0, 54.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-4",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"outlettype" : [ "", "" ],
					"ghostbar" : 50,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"patching_rect" : [ 31.0, 352.0, 108.0, 159.0 ],
					"candycane" : 2,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"setminmax" : [ 0.0, 15000.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-5",
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"numoutlets" : 2,
					"size" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 110.0, 220.0, 100.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-6",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 110.0, 200.0, 62.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set linear",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 563.0, 42.0, 97.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-8",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "When using an 'async' drive, output is only sent in response to a bang. This is particularly useful for fixed-time automation of parameters that are used with Jitter matric processing.",
					"linecount" : 9,
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 613.0, 237.0, 107.0, 100.0 ],
					"numinlets" : 1,
					"id" : "obj-9",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 596.0, 270.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"id" : "obj-10",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "that as well",
					"fontname" : "Arial",
					"frgb" : [ 1.0, 0.098039, 0.098039, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 617.0, 145.0, 63.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-11",
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 0.098039, 0.098039, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- this should be retrieved from the object",
					"fontname" : "Arial",
					"frgb" : [ 1.0, 0.098039, 0.098039, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 77.0, 198.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-12",
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 0.098039, 0.098039, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p granularity",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"patching_rect" : [ 314.0, 222.0, 69.0, 17.0 ],
					"numinlets" : 0,
					"id" : "obj-13",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 14.0, 59.0, 465.0, 312.0 ],
						"bglocked" : 0,
						"defrect" : [ 14.0, 59.0, 465.0, 312.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s ramp",
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"patching_rect" : [ 40.0, 232.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-1",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- set the value of an attribute (all drive methods may have different attributes)",
									"linecount" : 2,
									"fontname" : "Arial",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 212.0, 144.0, 204.0, 27.0 ],
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- get the value of an attribute (all rampunits may have different attributes)",
									"linecount" : 2,
									"fontname" : "Arial",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 213.0, 61.0, 207.0, 27.0 ],
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "attrset granularity 200",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 77.0, 160.0, 117.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-4",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "attrset granularity 20",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 62.0, 140.0, 111.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-5",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set this with the granularity message...",
									"linecount" : 2,
									"fontname" : "Arial",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 59.0, 111.0, 136.0, 27.0 ],
									"numinlets" : 1,
									"id" : "obj-6",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "attrget granularity",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 61.0, 58.0, 96.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-7",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the granularity of the ramp in ms",
									"linecount" : 2,
									"fontname" : "Arial",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 93.0, 78.0, 100.0, 27.0 ],
									"numinlets" : 1,
									"id" : "obj-8",
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "and functions",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 617.0, 129.0, 69.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-14",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontname" : "Arial",
					"outlettype" : [ "int", "", "" ],
					"items" : [ "cosine", ",", "linear", ",", "lowpass", ",", "power", ",", "tanh" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 513.0, 128.0, 100.0, 17.0 ],
					"labelclick" : 1,
					"types" : [  ],
					"numinlets" : 1,
					"arrowlink" : 1,
					"id" : "obj-15",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend function",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 513.0, 149.0, 84.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-16",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r ramp",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 45.0, 168.0, 41.0, 17.0 ],
					"numinlets" : 0,
					"id" : "obj-17",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p tanh",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"patching_rect" : [ 435.0, 289.0, 37.0, 17.0 ],
					"numinlets" : 0,
					"id" : "obj-18",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 696.0, 44.0, 582.0, 263.0 ],
						"bglocked" : 0,
						"defrect" : [ 696.0, 44.0, 582.0, 263.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Offset of the symmetry point",
									"linecount" : 2,
									"fontname" : "Arial",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 271.0, 109.0, 120.0, 27.0 ],
									"numinlets" : 1,
									"id" : "obj-1",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend function.parameter.get",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 195.0, 153.0, 151.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend function.parameter",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 153.0, 134.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s ramp",
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 180.0, 41.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "offset",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 218.0, 112.0, 37.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-5",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "width",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 218.0, 57.0, 35.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-6",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 68.0, 92.0, 35.0, 17.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"id" : "obj-7",
									"numoutlets" : 2,
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 68.0, 34.0, 35.0, 17.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"id" : "obj-8",
									"numoutlets" : 2,
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend offset",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 68.0, 112.0, 75.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-9",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend width",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 68.0, 57.0, 73.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-10",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Width of the curve (describes the width of the section of the curve covering from -75% to +75%).",
									"linecount" : 2,
									"fontname" : "Arial",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 271.0, 39.0, 278.0, 27.0 ],
									"numinlets" : 1,
									"id" : "obj-11",
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 227.5, 141.0, 204.5, 141.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 227.5, 80.0, 204.5, 80.0 ]
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 204.5, 176.0, 59.5, 176.0 ]
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 77.5, 141.0, 59.5, 141.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 77.5, 81.0, 59.5, 81.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p lowpass",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"patching_rect" : [ 435.0, 247.0, 54.0, 17.0 ],
					"numinlets" : 0,
					"id" : "obj-19",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 428.0, 221.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 428.0, 221.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "coefficient",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 247.0, 78.0, 58.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-1",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend function.parameter.get",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 247.0, 99.0, 151.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend function.parameter",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 99.0, 134.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s ramp",
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 126.0, 41.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 57.0, 35.0, 17.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"id" : "obj-5",
									"numoutlets" : 2,
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "coefficient $1",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 78.0, 73.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-6",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Smoothing coefficient",
									"fontname" : "Arial",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 49.0, 37.0, 273.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 0
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 256.5, 122.0, 59.5, 122.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p power",
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"patching_rect" : [ 435.0, 268.0, 46.0, 17.0 ],
					"numinlets" : 0,
					"id" : "obj-20",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 359.0, 271.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 359.0, 271.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "powerValue",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 196.0, 68.0, 62.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-1",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "symmetry",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 197.0, 124.0, 57.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-2",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend function.parameter.get",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 176.0, 163.0, 151.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend function.parameter",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 31.0, 163.0, 134.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s ramp",
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"patching_rect" : [ 31.0, 190.0, 41.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-5",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"fontname" : "Arial",
									"outlettype" : [ "int", "", "" ],
									"items" : [ "none", ",", "point", ",", "axis" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 51.0, 98.0, 100.0, 17.0 ],
									"labelclick" : 1,
									"types" : [  ],
									"numinlets" : 1,
									"arrowlink" : 1,
									"id" : "obj-6",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend symmetry",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 51.0, 124.0, 95.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 51.0, 47.0, 35.0, 17.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"id" : "obj-8",
									"numoutlets" : 2,
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "powerValue $1",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 51.0, 68.0, 77.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-9",
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 206.5, 151.0, 185.5, 151.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 205.5, 89.0, 185.5, 89.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 101.0, 119.0, 60.5, 119.0 ]
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 185.5, 186.0, 40.5, 186.0 ]
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 60.5, 152.0, 40.5, 152.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 60.5, 88.0, 40.5, 88.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Parameters specific to each of the functions:",
					"linecount" : 2,
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 425.0, 217.0, 115.0, 27.0 ],
					"numinlets" : 1,
					"id" : "obj-21",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.ramp",
					"fontname" : "Arial",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 18.0,
					"patching_rect" : [ 17.0, 11.0, 145.0, 27.0 ],
					"numinlets" : 1,
					"id" : "obj-22",
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ramping from a value to another... with some extra features....",
					"fontname" : "Arial",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 17.0, 36.0, 320.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-23",
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"patching_rect" : [ 12.0, 6.0, 334.0, 49.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"id" : "obj-24",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"outlettype" : [ "", "" ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"patching_rect" : [ 165.0, 352.0, 457.0, 159.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"setminmax" : [ 0.0, 15000.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-25",
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"setstyle" : 4,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "7000 12220 ramp 10000",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 266.0, 90.0, 126.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-26",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 14900 107",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 284.0, 132.0, 78.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-27",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "list support",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 266.0, 75.0, 104.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-28",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "13 27",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 364.0, 132.0, 37.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-29",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "20 40 ramp 500",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 275.0, 111.0, 84.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-30",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route list",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 31.0, 243.0, 144.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-31",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend drive",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 413.0, 128.0, 88.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-32",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p setup_menu",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 413.0, 75.0, 71.0, 17.0 ],
					"numinlets" : 0,
					"id" : "obj-33",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 44.0, 59.0, 345.0, 447.0 ],
						"bglocked" : 0,
						"defrect" : [ 44.0, 59.0, 345.0, 447.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set scheduler",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 12.0, 309.0, 70.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-1",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "b 1",
									"fontname" : "Arial",
									"outlettype" : [ "bang" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 12.0, 267.0, 22.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 12.0, 287.0, 29.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-3",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 290.0, 106.0, 33.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-4",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"fontname" : "Arial",
									"outlettype" : [ "bang", "bang", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 108.0, 131.0, 41.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-5",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "< 2048",
									"fontname" : "Arial",
									"outlettype" : [ "int" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 108.0, 110.0, 42.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-6",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "sysv",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 108.0, 68.0, 32.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-7",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gestalt",
									"fontname" : "Arial",
									"outlettype" : [ "int", "int" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 108.0, 87.0, 41.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-8",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l types",
									"fontname" : "Arial",
									"outlettype" : [ "", "types" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 108.0, 207.0, 48.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-9",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp (.*).rampdll",
									"fontname" : "Arial",
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 177.0, 308.0, 99.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-10",
									"numoutlets" : 5
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 108.0, 47.0, 29.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-11",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontname" : "Arial",
									"outlettype" : [ "bang" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 108.0, 27.0, 48.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-12",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 131.0, 335.0, 78.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-13",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp (.*).rampunit",
									"fontname" : "Arial",
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 108.0, 286.0, 105.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-14",
									"numoutlets" : 5
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route append",
									"fontname" : "Arial",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 108.0, 257.0, 202.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-15",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "folder",
									"fontname" : "Arial",
									"outlettype" : [ "", "int" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 108.0, 233.0, 37.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-16",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "ramplib_windows",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 179.0, 155.0, 89.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-17",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "absolutepath",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 108.0, 184.0, 66.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-18",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "ramplib_mac",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 108.0, 155.0, 68.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-19",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 131.0, 362.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"id" : "obj-20",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 298.0, 58.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 3 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 300.5, 356.0, 140.0, 356.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-19", 0 ],
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-7", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontname" : "Arial",
					"outlettype" : [ "int", "", "" ],
					"items" : [  ],
					"fontsize" : 9.0,
					"patching_rect" : [ 413.0, 98.0, 100.0, 17.0 ],
					"labelclick" : 1,
					"types" : [  ],
					"numinlets" : 1,
					"arrowlink" : 1,
					"id" : "obj-34",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 4000",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 65.0, 91.0, 51.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-35",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set the current value",
					"linecount" : 2,
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 26.0, 93.0, 69.0, 27.0 ],
					"numinlets" : 1,
					"id" : "obj-36",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0, 15000 ramp 10000",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 31.0, 72.0, 112.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-37",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 165.0, 269.0, 51.0, 17.0 ],
					"numinlets" : 1,
					"triscale" : 0.9,
					"id" : "obj-38",
					"numoutlets" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0 ramp 500",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 121.0, 91.0, 81.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-39",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.ramp",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 31.0, 200.0, 58.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-40",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ramp to a new value",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 146.0, 73.0, 104.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-41",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "choose from among the available ramp drive methods",
					"linecount" : 2,
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 518.0, 96.0, 170.0, 27.0 ],
					"numinlets" : 1,
					"id" : "obj-42",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 563.0, 146.0, 522.5, 146.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 463.0, 123.0, 422.5, 123.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-38", 0 ],
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
					"source" : [ "obj-40", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 605.0, 334.0, 291.0, 334.0, 291.0, 193.0, 40.5, 193.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 275.5, 159.0, 40.5, 159.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 74.5, 151.0, 40.5, 151.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 130.5, 151.0, 40.5, 151.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 40.5, 142.0, 40.5, 142.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 284.5, 159.0, 40.5, 159.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 373.5, 159.0, 40.5, 159.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 293.5, 159.0, 40.5, 159.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 422.5, 191.0, 40.5, 191.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 54.5, 191.0, 40.5, 191.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 522.5, 191.0, 40.5, 191.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
