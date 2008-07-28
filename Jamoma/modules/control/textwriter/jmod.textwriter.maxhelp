{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 52.0, 56.0, 852.0, 597.0 ],
		"bglocked" : 0,
		"defrect" : [ 52.0, 56.0, 852.0, 597.0 ],
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
					"text" : "coll",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 489.0, 504.0, 24.0, 15.0 ],
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "see also:",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 406.0, 506.0, 102.0, 17.0 ],
					"id" : "obj-2",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "text",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 455.0, 504.0, 29.0, 15.0 ],
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend help",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 417.0, 528.0, 64.0, 17.0 ],
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 417.0, 548.0, 45.0, 17.0 ],
					"id" : "obj-5",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This module is storing data in memory before writing to a file. For long recordings of large amounts of data it may be better to use solutions for storing directly to file, e.g. using some of the FTM-tools.",
					"linecount" : 4,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 367.0, 441.0, 245.0, 48.0 ],
					"id" : "obj-6",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 39.0, 244.0, 62.0, 17.0 ],
					"id" : "obj-7",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0.709506 0.796316 0.199565 0.481904 0.767362 0.692732 0.353708 0.120283 0.940064 0.421981",
					"linecount" : 4,
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 39.0, 267.0, 156.0, 46.0 ],
					"id" : "obj-8",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p simulate-data",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 39.0, 91.0, 80.0, 17.0 ],
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 273.0, 87.0, 269.0, 280.0 ],
						"bglocked" : 0,
						"defrect" : [ 273.0, 87.0, 269.0, 280.0 ],
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
									"text" : "loadmess 1",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 70.0, 60.0, 17.0 ],
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 93.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qmetro 100",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 113.0, 63.0, 17.0 ],
									"id" : "obj-3",
									"outlettype" : [ "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.spill",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 50.0, 155.0, 43.0, 17.0 ],
									"id" : "obj-4",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.noise 1 float32 10 1",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 50.0, 134.0, 116.0, 17.0 ],
									"id" : "obj-5",
									"outlettype" : [ "jit_matrix", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 177.0, 15.0, 15.0 ],
									"id" : "obj-6",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Just outputting some random data: 10 values between 0.-1.",
									"linecount" : 2,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 49.0, 33.0, 150.0, 27.0 ],
									"id" : "obj-7",
									"fontname" : "Arial"
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 0 ],
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
					"maxclass" : "multislider",
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"setstyle" : 5,
					"numinlets" : 1,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"numoutlets" : 2,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 363.0, 109.0, 444.0, 300.0 ],
					"id" : "obj-10",
					"outlettype" : [ "", "" ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"size" : 10,
					"setminmax" : [ 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"numinlets" : 1,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"numoutlets" : 2,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"patching_rect" : [ 39.0, 121.0, 293.0, 81.0 ],
					"id" : "obj-11",
					"outlettype" : [ "", "" ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"size" : 10,
					"setminmax" : [ 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.textwriter",
					"fontsize" : 18.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 29.0, 24.0, 316.0, 28.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Write data to a text file, with timestamping for each line of values.",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 29.0, 51.0, 388.0, 17.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 19.0, 400.0, 50.0 ],
					"id" : "obj-14",
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 434.0, 32.0, 77.0, 25.0 ],
					"id" : "obj-15",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 2,
					"lockeddragscroll" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 39.0, 366.0, 301.0, 72.0 ],
					"id" : "obj-16",
					"args" : [ "/textwriter" ],
					"outlettype" : [ "" ],
					"name" : "jmod.textwriter.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "How to use: \r1. Send in some data (any type of text data)\r2. Turn on the recording when appropriate\r3. Write the data to a text file when done\r\rYou can check the status of the recording by looking at the recorded data with the 'open' message.",
					"linecount" : 7,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 41.0, 441.0, 245.0, 79.0 ],
					"id" : "obj-17",
					"fontname" : "Arial"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-16", 1 ],
					"hidden" : 0,
					"midpoints" : [ 48.5, 223.0, 330.5, 223.0 ]
				}

			}
 ]
	}

}
