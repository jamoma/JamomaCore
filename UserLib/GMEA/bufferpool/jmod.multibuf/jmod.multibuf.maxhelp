{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 137.0, 191.0, 475.0, 429.0 ],
		"bglocked" : 0,
		"defrect" : [ 137.0, 191.0, 475.0, 429.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 374.0, 236.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "multibuf2" ],
					"id" : "obj-9",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.multibuf.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 301.0, 96.0, 150.0, 70.0 ],
					"presentation_rect" : [ 314.0, 102.0, 150.0, 70.0 ],
					"varname" : "multibuf[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 283.0, 73.0, 180.0, 18.0 ],
					"text" : "1rst argument set this multibuf's name."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-6",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 164.0, 98.0, 125.0, 29.0 ],
					"text" : "<-- open inspector to see list of buffers"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 662.0, 191.0, 634.0, 365.0 ],
						"bgcolor" : [ 0.8, 0.8, 0.8, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 662.0, 191.0, 634.0, 365.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"bgcolor" : [ 0.901961, 0.317647, 0.0, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 7.966557,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 509.0, 41.0, 33.0, 16.0 ],
									"text" : "...or :",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.901961, 0.317647, 0.0, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 10.819027,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"id" : "obj-6",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 6.0, 37.0, 501.0, 20.0 ],
									"text" : "buffers banks can be saved in module presets (open preset_interface from module menu)",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.854902, 0.901961, 0.0, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 10.819027,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 7.0, 388.0, 20.0 ],
									"text" : "drag & drop files or folders containing sound files  to the \"drop zone\"",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"coll_data" : 									{
										"count" : 3,
										"data" : [ 											{
												"key" : "anton.aif",
												"value" : [ "anton.aif" ]
											}
, 											{
												"key" : "jongly.aif",
												"value" : [ "jongly.aif" ]
											}
, 											{
												"key" : "cherokee.aif",
												"value" : [ "cherokee.aif" ]
											}
 ]
									}
,
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 468.0, 318.0, 100.0, 17.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}
,
									"text" : "coll my-samples"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 41.0, 82.0, 404.0, 17.0 ],
									"text" : "...................................................................read a text file containing a list of files",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 83.0, 35.0, 15.0 ],
									"text" : "/read"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 41.0, 63.0, 493.0, 17.0 ],
									"text" : "...................................................................write the current collection of buffer names into a text file",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 61.0, 35.0, 15.0 ],
									"text" : "/write"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"id" : "obj-38",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 112.0, 193.0, 289.0, 17.0 ],
									"text" : "...........................................load one file (spaces in name)",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-39",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 192.0, 103.0, 15.0 ],
									"text" : "/file \"some file.aiff\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 7.0, 120.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-41",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 137.0, 53.0, 15.0 ],
									"text" : "/mono $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"id" : "obj-42",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 132.0, 346.0, 442.0, 17.0 ],
									"text" : ".....................................load a bunch of bunches of files itemised in a collection of collections",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-43",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 344.0, 123.0, 15.0 ],
									"text" : "/multicoll my-collections"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"id" : "obj-48",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 164.0, 266.0, 460.0, 17.0 ],
									"text" : "...........................optional second arguement indicates file types;\r",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-49",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 265.0, 155.0, 15.0 ],
									"text" : "/folder ./samples/uglyay MPG3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"id" : "obj-50",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 133.0, 243.0, 499.0, 17.0 ],
									"text" : ".....................................you may provide a relative path (starting in the max folder) by starting with a \".\"",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"id" : "obj-51",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 218.0, 221.0, 350.0, 17.0 ],
									"text" : ".................load all files in a particular folder by providing the folder's path",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-52",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 220.0, 239.0, 15.0 ],
									"text" : "/folder Moc:/Applications/Max5/examples/sounds/"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"id" : "obj-54",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 96.0, 318.0, 367.0, 17.0 ],
									"text" : ".................................................load a bunch of files itemised in a collection",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-55",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 317.0, 90.0, 15.0 ],
									"text" : "/coll my-samples"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-56",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 173.0, 82.0, 15.0 ],
									"text" : "/file talk.aiff"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-58",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 101.0, 35.0, 15.0 ],
									"text" : "/clear"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"id" : "obj-59",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 242.0, 125.0, 15.0 ],
									"text" : "/folder ./samples/uglyay"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"id" : "obj-63",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 43.0, 102.0, 304.0, 17.0 ],
									"text" : "...................................................................delete all buffers",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"id" : "obj-64",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 108.0, 174.0, 307.0, 17.0 ],
									"text" : ".............................................load one file (no spaces in name)",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"id" : "obj-68",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 61.0, 139.0, 538.0, 17.0 ],
									"text" : "..............................................................toggles loading all channels of a sound file, or just the first",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"id" : "obj-69",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 245.0, 280.0, 148.0, 17.0 ],
									"text" : "only those types will be loaded",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"hidden" : 1,
									"id" : "obj-1",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 7.0, 375.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ],
									"source" : [ "obj-41", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 9.0, 73.0, 77.0, 18.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 9.0,
						"fontface" : 0,
						"fontsize" : 9.0
					}
,
					"text" : "p more_info"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "multibuf1" ],
					"id" : "obj-2",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.multibuf.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 9.0, 94.0, 150.0, 70.0 ],
					"presentation_rect" : [ 246.0, 85.0, 150.0, 70.0 ],
					"varname" : "multibuf"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 17.334082,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 7.0, 271.0, 28.0 ],
					"text" : "jmod.multibuf~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 33.0, 345.0, 19.0 ],
					"text" : "buffer~ bank (based on CNMAT \"mutibuf\")"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3.0, 3.0, 351.0, 53.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 103.0, 320.0, 113.0, 17.0 ],
					"text" : "dac~ 1 2"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "buffer-tester" ],
					"id" : "obj-8",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "jmod.buffer-tester~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "", "signal", "signal", "signal" ],
					"patching_rect" : [ 9.0, 172.0, 300.0, 140.0 ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"varname" : "jmod.buffer-tester~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-8", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-8", 1 ]
				}

			}
 ]
	}

}
