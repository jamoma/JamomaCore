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
					"maxclass" : "bpatcher",
					"varname" : "multibuf[1]",
					"id" : "obj-9",
					"name" : "jmod.multibuf.maxpat",
					"numinlets" : 1,
					"presentation_rect" : [ 314.0, 102.0, 150.0, 70.0 ],
					"numoutlets" : 1,
					"args" : [ "multibuf2" ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 301.0, 96.0, 150.0, 70.0 ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1rst argument set this multibuf's name.",
					"id" : "obj-7",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 283.0, 73.0, 180.0, 18.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<-- open inspector to see list of buffers",
					"linecount" : 2,
					"id" : "obj-6",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 164.0, 98.0, 125.0, 29.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p more_info",
					"id" : "obj-3",
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 9.0, 73.0, 77.0, 18.0 ],
					"fontsize" : 10.0,
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
									"maxclass" : "comment",
									"text" : "...or :",
									"id" : "obj-7",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 509.0, 41.0, 33.0, 16.0 ],
									"fontsize" : 7.966557,
									"bgcolor" : [ 0.901961, 0.317647, 0.0, 1.0 ],
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "buffers banks can be saved in module presets (open preset_interface from module menu)",
									"id" : "obj-6",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 6.0, 37.0, 501.0, 20.0 ],
									"fontsize" : 10.819027,
									"bgcolor" : [ 0.901961, 0.317647, 0.0, 1.0 ],
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "drag & drop files or folders containing sound files  to the \"drop zone\"",
									"id" : "obj-5",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 7.0, 388.0, 20.0 ],
									"fontsize" : 10.819027,
									"bgcolor" : [ 0.854902, 0.901961, 0.0, 1.0 ],
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll my-samples",
									"id" : "obj-10",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 468.0, 318.0, 100.0, 17.0 ],
									"fontsize" : 9.0,
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
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "...................................................................read a text file containing a list of files",
									"id" : "obj-9",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 41.0, 82.0, 404.0, 17.0 ],
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/read",
									"id" : "obj-4",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 83.0, 35.0, 15.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "...................................................................write the current collection of buffer names into a text file",
									"id" : "obj-2",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 41.0, 63.0, 493.0, 17.0 ],
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/write",
									"id" : "obj-3",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 61.0, 35.0, 15.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "...........................................load one file (spaces in name)",
									"id" : "obj-38",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 112.0, 193.0, 289.0, 17.0 ],
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/file \"some file.aiff\"",
									"id" : "obj-39",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 192.0, 103.0, 15.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"id" : "obj-40",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 7.0, 120.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/mono $1",
									"id" : "obj-41",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 137.0, 53.0, 15.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ".....................................load a bunch of bunches of files itemised in a collection of collections",
									"id" : "obj-42",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 132.0, 346.0, 442.0, 17.0 ],
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/multicoll my-collections",
									"id" : "obj-43",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 344.0, 123.0, 15.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "...........................optional second arguement indicates file types;\r",
									"id" : "obj-48",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 164.0, 266.0, 460.0, 17.0 ],
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/folder ./samples/uglyay MPG3",
									"id" : "obj-49",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 265.0, 155.0, 15.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ".....................................you may provide a relative path (starting in the max folder) by starting with a \".\"",
									"id" : "obj-50",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 133.0, 243.0, 499.0, 17.0 ],
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ".................load all files in a particular folder by providing the folder's path",
									"id" : "obj-51",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 218.0, 221.0, 350.0, 17.0 ],
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/folder Moc:/Applications/Max5/examples/sounds/",
									"id" : "obj-52",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 220.0, 239.0, 15.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ".................................................load a bunch of files itemised in a collection",
									"id" : "obj-54",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 96.0, 318.0, 367.0, 17.0 ],
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/coll my-samples",
									"id" : "obj-55",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 317.0, 90.0, 15.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/file talk.aiff",
									"id" : "obj-56",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 173.0, 82.0, 15.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/clear",
									"id" : "obj-58",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 101.0, 35.0, 15.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/folder ./samples/uglyay",
									"id" : "obj-59",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 242.0, 125.0, 15.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "...................................................................delete all buffers",
									"id" : "obj-63",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 43.0, 102.0, 304.0, 17.0 ],
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ".............................................load one file (no spaces in name)",
									"id" : "obj-64",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 108.0, 174.0, 307.0, 17.0 ],
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "..............................................................toggles loading all channels of a sound file, or just the first",
									"id" : "obj-68",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 61.0, 139.0, 538.0, 17.0 ],
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "only those types will be loaded",
									"id" : "obj-69",
									"textcolor" : [ 0.023529, 0.023529, 0.023529, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 245.0, 280.0, 148.0, 17.0 ],
									"fontsize" : 9.0,
									"frgb" : [ 0.023529, 0.023529, 0.023529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 7.0, 375.0, 25.0, 25.0 ],
									"hidden" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 9.0,
						"fontface" : 0,
						"fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "multibuf",
					"id" : "obj-2",
					"name" : "jmod.multibuf.maxpat",
					"numinlets" : 1,
					"presentation_rect" : [ 246.0, 85.0, 150.0, 70.0 ],
					"numoutlets" : 1,
					"args" : [ "multibuf1" ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 9.0, 94.0, 150.0, 70.0 ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.multibuf~",
					"id" : "obj-38",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 7.0, 271.0, 28.0 ],
					"fontsize" : 17.334082,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "buffer~ bank (based on CNMAT \"mutibuf\")",
					"id" : "obj-39",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 33.0, 345.0, 19.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-40",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3.0, 3.0, 351.0, 53.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2",
					"id" : "obj-1",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 103.0, 320.0, 113.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control.mxt",
					"id" : "obj-5",
					"name" : "jmod.control.maxpat",
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"numoutlets" : 1,
					"args" : [ "control" ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 11.0, 345.0, 150.0, 70.0 ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.buffer-tester~",
					"id" : "obj-8",
					"name" : "jmod.buffer-tester~.maxpat",
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"numoutlets" : 4,
					"args" : [ "buffer-tester" ],
					"outlettype" : [ "", "signal", "signal", "signal" ],
					"patching_rect" : [ 9.0, 172.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 2 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
