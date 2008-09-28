{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 12.0, 52.0, 911.0, 533.0 ],
		"bglocked" : 0,
		"defrect" : [ 12.0, 52.0, 911.0, 533.0 ],
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
					"text" : "p mute_&_gain",
					"fontname" : "Verdana",
					"patching_rect" : [ 110.0, 445.0, 95.0, 20.0 ],
					"fontsize" : 10.970939,
					"numinlets" : 0,
					"id" : "obj-39",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 117.0, 87.0, 778.0, 520.0 ],
						"bglocked" : 0,
						"defrect" : [ 117.0, 87.0, 778.0, 520.0 ],
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
									"maxclass" : "comment",
									"text" : "Channels can also be muted.",
									"fontname" : "Verdana",
									"presentation_rect" : [ 107.0, 161.0, 0.0, 0.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 20.0, 100.0, 274.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-48",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "For each channel input gain can be controlled independently.",
									"linecount" : 2,
									"fontname" : "Verdana",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 20.0, 65.0, 274.0, 31.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-47",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "stop",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"presentation_rect" : [ 59.0, 483.0, 0.0, 0.0 ],
									"patching_rect" : [ 60.0, 435.0, 32.5, 17.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-45",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dac~",
									"fontname" : "Verdana",
									"patching_rect" : [ 110.0, 485.0, 89.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-42",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"fontname" : "Verdana",
									"patching_rect" : [ 510.0, 445.0, 34.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-40",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "startwindow",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 20.0, 415.0, 72.0, 17.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-38",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"outlettype" : [ "bang" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 560.0, 305.0, 56.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-36",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "src_position 1 -1., src_position 2 0., src_position 3 1., dst_position 1 -1., dst_position 2 1.,",
									"linecount" : 5,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 560.0, 330.0, 105.0, 65.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-35",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r to_dbap",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 405.0, 320.0, 59.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 0,
									"id" : "obj-33",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 0",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"hidden" : 1,
									"patching_rect" : [ 405.0, 15.0, 68.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-32",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s to_dbap",
									"fontname" : "Verdana",
									"patching_rect" : [ 645.0, 260.0, 60.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-23",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s to_dbap",
									"fontname" : "Verdana",
									"patching_rect" : [ 680.0, 125.0, 60.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-24",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 680.0, 60.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-25",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend src_mute 3",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 680.0, 90.0, 72.0, 31.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-26",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend src_gain 3",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 645.0, 235.0, 107.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-27",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"patching_rect" : [ 645.0, 60.0, 24.0, 105.0 ],
									"numinlets" : 1,
									"id" : "obj-28",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace gain @input midi @output linear",
									"linecount" : 4,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 645.0, 170.0, 106.0, 60.0 ],
									"fontsize" : 10.970939,
									"numinlets" : 1,
									"id" : "obj-29",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s to_dbap",
									"fontname" : "Verdana",
									"presentation_rect" : [ 468.0, 203.0, 0.0, 0.0 ],
									"patching_rect" : [ 525.0, 260.0, 60.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-16",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s to_dbap",
									"fontname" : "Verdana",
									"presentation_rect" : [ 503.0, 68.0, 0.0, 0.0 ],
									"patching_rect" : [ 560.0, 125.0, 60.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-17",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"presentation_rect" : [ 503.0, 3.0, 0.0, 0.0 ],
									"patching_rect" : [ 560.0, 60.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-18",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend src_mute 2",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 560.0, 90.0, 72.0, 31.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-19",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend src_gain 2",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 525.0, 235.0, 107.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-20",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 468.0, 3.0, 0.0, 0.0 ],
									"patching_rect" : [ 525.0, 60.0, 24.0, 105.0 ],
									"numinlets" : 1,
									"id" : "obj-21",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace gain @input midi @output linear",
									"linecount" : 4,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"presentation_rect" : [ 468.0, 113.0, 0.0, 0.0 ],
									"patching_rect" : [ 525.0, 170.0, 106.0, 60.0 ],
									"fontsize" : 10.970939,
									"numinlets" : 1,
									"id" : "obj-22",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s to_dbap",
									"fontname" : "Verdana",
									"presentation_rect" : [ 348.0, 205.0, 0.0, 0.0 ],
									"patching_rect" : [ 405.0, 260.0, 60.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-15",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s to_dbap",
									"fontname" : "Verdana",
									"patching_rect" : [ 440.0, 125.0, 60.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-14",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 440.0, 60.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-13",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend src_mute 1",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 440.0, 90.0, 70.0, 31.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-12",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend src_gain 1",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 405.0, 235.0, 107.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-11",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"patching_rect" : [ 405.0, 60.0, 24.0, 105.0 ],
									"numinlets" : 1,
									"id" : "obj-44",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace gain @input midi @output linear",
									"linecount" : 4,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 405.0, 170.0, 105.0, 60.0 ],
									"fontsize" : 10.970939,
									"numinlets" : 1,
									"id" : "obj-43",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~ 0.1",
									"outlettype" : [ "signal" ],
									"fontname" : "Verdana",
									"presentation_rect" : [ 220.0, 125.0, 0.0, 0.0 ],
									"patching_rect" : [ 250.0, 375.0, 45.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-9",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tri~ 200",
									"outlettype" : [ "signal" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 250.0, 340.0, 52.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 3,
									"id" : "obj-8",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~ 0.1",
									"outlettype" : [ "signal" ],
									"fontname" : "Verdana",
									"presentation_rect" : [ 131.0, 120.0, 0.0, 0.0 ],
									"patching_rect" : [ 180.0, 375.0, 45.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-7",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "rect~ 300",
									"outlettype" : [ "signal" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 180.0, 340.0, 61.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 3,
									"id" : "obj-6",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~ 0.1",
									"outlettype" : [ "signal" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 110.0, 375.0, 45.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-5",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cycle~ 400",
									"outlettype" : [ "signal" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 110.0, 340.0, 66.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-4",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "matrix~ 3 2 1.",
									"outlettype" : [ "signal", "signal", "list" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 110.0, 440.0, 158.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 3,
									"id" : "obj-3",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dbap @dimensions 1 @num_sources 3 @num_destinations 2",
									"linecount" : 4,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 405.0, 355.0, 124.0, 55.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-1",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "info",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 345.0, 320.0, 50.0, 17.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-39",
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 473.0, 119.5, 473.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [ 69.5, 471.0, 119.5, 471.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-42", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 354.5, 347.0, 414.5, 347.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 569.5, 400.0, 535.0, 400.0, 535.0, 343.0, 414.5, 343.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-3", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 414.5, 413.0, 119.5, 413.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"fontname" : "Verdana",
					"patching_rect" : [ 785.0, 315.0, 36.0, 20.0 ],
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"id" : "obj-47",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 725.0, 195.0, 50.0, 20.0 ],
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"id" : "obj-46",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"outlettype" : [ "" ],
					"patching_rect" : [ 725.0, 105.0, 164.0, 21.0 ],
					"numinlets" : 1,
					"id" : "obj-44",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.dataspace @dataspace gain @input midi @output linear",
					"linecount" : 4,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 725.0, 130.0, 122.0, 60.0 ],
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"id" : "obj-43",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p openReference",
					"fontname" : "Verdana",
					"hidden" : 1,
					"patching_rect" : [ 230.0, 55.0, 95.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-14",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 75.0, 119.0, 262.0, 204.0 ],
						"bglocked" : 0,
						"defrect" : [ 75.0, 119.0, 262.0, 204.0 ],
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
									"text" : "zl nth 2",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 55.0, 70.0, 48.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-21",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf load %s.maxref.xml",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 55.0, 95.0, 147.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-20",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 55.0, 120.0, 51.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-19",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-24",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-21", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open jcom.dbap reference",
					"gradient" : 0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"fontface" : 2,
					"patching_rect" : [ 230.0, 30.0, 169.0, 19.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-20",
					"bgcolor2" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"bgcolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"numoutlets" : 1,
					"frozen_box_attributes" : [ "gradient" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 245.0, 230.0, 50.0, 20.0 ],
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"id" : "obj-12",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "blurall $1",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 245.0, 255.0, 62.0, 18.0 ],
					"fontsize" : 10.970939,
					"numinlets" : 2,
					"id" : "obj-13",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 315.0, 230.0, 50.0, 20.0 ],
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"id" : "obj-11",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 1.0,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 385.0, 230.0, 50.0, 20.0 ],
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"id" : "obj-53",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The basic idea of dbap is that the sum of all intensities is constant.",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 15.0, 150.0, 346.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 700.0, 390.0, 27.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 700.0, 355.0, 27.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-48",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 700.0, 465.0, 27.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-4",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"outlettype" : [ "", "" ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candycane" : 4,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"patching_rect" : [ 480.0, 430.0, 220.0, 50.0 ],
					"numinlets" : 1,
					"setminmax" : [ -48.0, 0.0 ],
					"setstyle" : 1,
					"id" : "obj-5",
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"numoutlets" : 2,
					"candicane4" : [ 0.623529, 0.623529, 0.623529, 1.0 ],
					"size" : 16
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "volume (dB)",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 480.0, 480.0, 149.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-6",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p display",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"patching_rect" : [ 480.0, 320.0, 60.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
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
									"text" : "gate",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 75.0, 240.0, 33.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-17",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 200.0, 240.0, 33.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-16",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 0",
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 460.0, 175.0, 37.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-15",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 460.0, 100.0, 32.5, 17.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-14",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 200.0, 270.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-1",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "atodb",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 266.0, 130.0, 37.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 0.",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 215.0, 162.0, 61.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-3",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 215.0, 130.0, 27.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-4",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0 0.",
									"outlettype" : [ "int", "int", "float" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 180.0, 100.0, 80.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-5",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 215.0, 185.0, 68.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-6",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 0.",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 90.0, 162.0, 61.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-7",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 90.0, 130.0, 27.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-8",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0 0.",
									"outlettype" : [ "int", "int", "float" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 55.0, 100.0, 80.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-9",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 90.0, 185.0, 68.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-10",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 55.0, 35.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-11",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 75.0, 270.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-12",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 2 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 2 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"outlettype" : [ "", "" ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candycane" : 4,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"patching_rect" : [ 480.0, 355.0, 220.0, 50.0 ],
					"numinlets" : 1,
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 1,
					"id" : "obj-8",
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"numoutlets" : 2,
					"candicane4" : [ 0.615686, 0.615686, 0.615686, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"size" : 16
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "src_position 1 13.3 6.5",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 550.0, 245.0, 129.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"id" : "obj-9",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dump all pseaker positions from right outlet",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 100.0, 119.0, 230.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-15",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dump:",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 38.0, 119.0, 70.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-16",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "position of sound source",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 100.0, 105.0, 132.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-17",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "xyz:",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 38.0, 105.0, 69.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-18",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "list of positions as cartecian coordinates",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 100.0, 91.0, 210.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-19",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p setup",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 452.0, 25.0, 50.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 0,
					"id" : "obj-21",
					"numoutlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 248.0, 127.0, 295.0, 438.0 ],
						"bglocked" : 0,
						"defrect" : [ 248.0, 127.0, 295.0, 438.0 ],
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
									"text" : "deferlow",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 50.0, 50.0, 51.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 205.0, 370.0, 23.0, 23.0 ],
									"numinlets" : 1,
									"id" : "obj-18",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"outlettype" : [ "bang", "bang" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 50.0, 105.0, 34.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-17",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "dst_position 0 0.5 8.5, dst_position 1 0.5 14.5, dst_position 2 12.5 14.5, dst_position 3 12.5 8.5, dst_position 4 17. 6., dst_position 5 21.5 4.5, dst_position 6 21.5 0.5, dst_position 7 16.5 0.5, dst_position 8 11.5 0.5, dst_position 9 11.5 4.5, dst_position 10 10.5 4.5, dst_position 11 10.5 0.5, dst_position 12 5.5 0.5, dst_position 13 0.5 0.5, dst_position 14 0.5 4.5, dst_position 15 5. 7.5",
									"linecount" : 16,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 50.0, 140.0, 142.0, 199.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-16",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 50.0, 75.0, 51.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-1",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"outlettype" : [ "bang" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 50.0, 25.0, 54.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 50.0, 370.0, 23.0, 23.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 357.0, 214.5, 357.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 74.5, 126.0, 214.5, 126.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-16", 0 ],
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
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.dbap",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 15.0, 16.0, 164.0, 28.0 ],
					"fontsize" : 18.0,
					"numinlets" : 1,
					"id" : "obj-22",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "distance based amplitude panning",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 15.0, 41.0, 352.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-23",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 10.0, 11.0, 400.0, 50.0 ],
					"numinlets" : 1,
					"id" : "obj-24",
					"rounded" : 15,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p scaler",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 485.0, 245.0, 52.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-25",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 40.0, 55.0, 220.0, 308.0 ],
						"bglocked" : 0,
						"defrect" : [ 40.0, 55.0, 220.0, 308.0 ],
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
									"text" : "prepend src_position 1",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 60.0, 180.0, 125.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-1",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0. 0.",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 59.0, 153.0, 61.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-2",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 15.",
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 107.0, 127.0, 37.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-3",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* -0.1",
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 107.0, 105.0, 40.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-4",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.1",
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 59.0, 105.0, 35.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-5",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0",
									"outlettype" : [ "int", "int" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 59.0, 77.0, 64.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-6",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 59.0, 215.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "list" ],
									"patching_rect" : [ 59.0, 58.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"id" : "obj-8",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p DrawLCD",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 485.0, 50.0, 64.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"id" : "obj-26",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 114.0, 248.0, 867.0, 419.0 ],
						"bglocked" : 0,
						"defrect" : [ 114.0, 248.0, 867.0, 419.0 ],
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
									"text" : "route dst_position bang",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 65.0, 60.0, 130.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-21",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess -3 -3 3 3",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 155.0, 274.0, 104.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-1",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1+$f2",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 65.0, 278.0, 81.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-2",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 0 150",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 155.0, 223.0, 88.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1+$f2",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 65.0, 227.0, 81.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-4",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 10. -10.",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 155.0, 195.0, 100.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-5",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1*$f2",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 65.0, 199.0, 79.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-6",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim 20",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 680.0, 90.0, 46.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-7",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend drawsprite position",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 680.0, 130.0, 149.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"id" : "obj-8",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "list" ],
									"patching_rect" : [ 680.0, 25.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-9",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "enablesprites 1, recordsprite, paintoval -5 -5 5 5 28, closesprite position",
									"linecount" : 5,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 269.0, 184.0, 96.0, 65.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-10",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 65.0, 130.0, 54.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-11",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 65.0, 25.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-15",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "paintrect 135 0 250 65 0 0 0, paintrect 0 98 60 100 0 0 0, paintrect 45 68 105 70 0 0 0, paintrect 109 100 111 150 0 0 0, paintrect 109 98 170 100, local 0",
									"linecount" : 4,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 370.0, 185.0, 210.0, 53.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-16",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear, local 0",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 585.0, 185.0, 71.0, 17.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-17",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 65.0, 355.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-18",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "paintoval $1 $2 $3 $4 74 105 182",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 65.0, 316.0, 183.0, 17.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-19",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1 $2 $1 $2",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 65.0, 255.0, 70.0, 17.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"id" : "obj-20",
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 594.5, 342.0, 74.5, 342.0 ]
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
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 379.5, 342.0, 74.5, 342.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 278.5, 342.0, 74.5, 342.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 689.5, 342.0, 74.5, 342.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-7", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 55.0, 345.0, 33.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"id" : "obj-27",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "startwindow",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 10.0, 320.0, 80.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"id" : "obj-28",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16",
					"fontname" : "Verdana",
					"patching_rect" : [ 95.0, 380.0, 267.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 16,
					"id" : "obj-29",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "matrix~ 3 16 0.",
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "list" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 95.0, 315.0, 283.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 3,
					"id" : "obj-30",
					"numoutlets" : 17
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "lcd",
					"outlettype" : [ "list", "list", "int", "" ],
					"enablesprites" : 1,
					"patching_rect" : [ 485.0, 75.0, 220.0, 150.0 ],
					"numinlets" : 1,
					"id" : "obj-32",
					"local" : 0,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 0.2",
					"outlettype" : [ "signal" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 95.0, 260.0, 50.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"id" : "obj-33",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.dbap @dimensions 2 @num_sources 3 @num_destinations 16",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 450.0, 285.0, 353.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-34",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Click in LCD display to position source",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 95.0, 205.0, 221.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-35",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rect~ 200",
					"outlettype" : [ "signal" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 95.0, 230.0, 61.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 3,
					"id" : "obj-36",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Input:",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 15.0, 72.0, 130.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-37",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "speakers:",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 38.0, 91.0, 69.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-38",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The dbap technique only depends on the relative positions of the speakers, so you can define origin of the coordinate system anywhere you find convinient.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 15.0, 167.0, 413.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-40",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "volume (linear)",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 480.0, 405.0, 153.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-41",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 701.0, 429.0, 27.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"id" : "obj-42",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "rolloff $1",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 385.0, 255.0, 58.0, 18.0 ],
					"fontsize" : 10.970939,
					"numinlets" : 2,
					"id" : "obj-55",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "blur 1 $1",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 315.0, 255.0, 61.0, 18.0 ],
					"fontsize" : 10.970939,
					"numinlets" : 2,
					"id" : "obj-10",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "master_gain $1",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 725.0, 220.0, 95.0, 18.0 ],
					"fontsize" : 10.970939,
					"numinlets" : 2,
					"id" : "obj-31",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "info",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 185.0, 255.0, 50.0, 18.0 ],
					"fontsize" : 10.970939,
					"numinlets" : 2,
					"id" : "obj-45",
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 734.5, 279.0, 459.5, 279.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 324.5, 282.0, 447.0, 282.0, 447.0, 282.0, 459.5, 282.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 394.5, 282.0, 447.0, 282.0, 447.0, 282.0, 459.5, 282.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 494.5, 279.0, 459.5, 279.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [ 459.5, 306.0, 489.5, 306.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 254.5, 282.0, 447.0, 282.0, 447.0, 282.0, 459.5, 282.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 194.5, 282.0, 447.0, 282.0, 447.0, 282.0, 459.5, 282.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"midpoints" : [ 494.5, 270.0, 685.0, 270.0, 685.0, 241.0, 669.5, 241.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [ 494.5, 233.0, 718.0, 233.0, 718.0, 42.0, 539.5, 42.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 19.5, 370.0, 104.5, 370.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 64.5, 370.0, 104.5, 370.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [ 489.5, 346.0, 489.5, 346.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 459.5, 310.0, 104.5, 310.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 2 ],
					"destination" : [ "obj-29", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 3 ],
					"destination" : [ "obj-29", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 4 ],
					"destination" : [ "obj-29", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 5 ],
					"destination" : [ "obj-29", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 6 ],
					"destination" : [ "obj-29", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 7 ],
					"destination" : [ "obj-29", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 8 ],
					"destination" : [ "obj-29", 8 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 9 ],
					"destination" : [ "obj-29", 9 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 10 ],
					"destination" : [ "obj-29", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 11 ],
					"destination" : [ "obj-29", 11 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 12 ],
					"destination" : [ "obj-29", 12 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 13 ],
					"destination" : [ "obj-29", 13 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 14 ],
					"destination" : [ "obj-29", 14 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 15 ],
					"destination" : [ "obj-29", 15 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
