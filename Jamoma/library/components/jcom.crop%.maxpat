{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 668.0, 468.0, 449.0, 272.0 ],
		"bglocked" : 0,
		"defrect" : [ 668.0, 468.0, 449.0, 272.0 ],
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
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-1",
					"patching_rect" : [ 282.0, 206.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"comment" : "Outgoing cropped size"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p zoom-offset",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-2",
					"fontsize" : 9.873845,
					"patching_rect" : [ 301.0, 94.0, 77.0, 18.0 ],
					"numinlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 499.0, 426.0, 454.0, 295.0 ],
						"bglocked" : 0,
						"defrect" : [ 499.0, 426.0, 454.0, 295.0 ],
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
									"text" : "change",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"id" : "obj-1",
									"outlettype" : [ "", "int", "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 29.0, 51.0, 44.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale -240 0 3. 1.",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "float" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 269.0, 122.0, 97.0, 18.0 ],
									"numinlets" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-3",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.873845,
									"triscale" : 0.9,
									"patching_rect" : [ 329.0, 196.0, 31.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "clip 0 240",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 329.0, 144.0, 57.0, 18.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale 240 0 0. 1.",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "float" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 329.0, 167.0, 92.0, 18.0 ],
									"numinlets" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split -2000 0",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-6",
									"outlettype" : [ "int", "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 269.0, 96.0, 72.0, 18.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s zoom",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-7",
									"fontsize" : 9.873845,
									"patching_rect" : [ 329.0, 216.0, 44.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-8",
									"outlettype" : [ "int", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.873845,
									"triscale" : 0.9,
									"patching_rect" : [ 206.0, 196.0, 35.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 168.0, 171.0, 27.0, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 185.0, 144.0, 27.0, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s offset-y",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-11",
									"fontsize" : 9.873845,
									"patching_rect" : [ 206.0, 216.0, 55.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-12",
									"outlettype" : [ "int", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.873845,
									"triscale" : 0.9,
									"patching_rect" : [ 115.0, 196.0, 35.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-13",
									"outlettype" : [ "bang", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 29.0, 73.0, 32.0, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-14",
									"outlettype" : [ "" ],
									"patching_rect" : [ 29.0, 31.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-15",
									"outlettype" : [ "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 77.0, 166.0, 27.0, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-16",
									"outlettype" : [ "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 94.0, 139.0, 27.0, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$6",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-17",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 269.0, 74.0, 21.0, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$5 $6",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-18",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 94.0, 83.0, 37.0, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-19",
									"outlettype" : [ "int", "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 94.0, 107.0, 44.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 3 6",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"id" : "obj-20",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 94.0, 56.0, 54.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-21",
									"outlettype" : [ "" ],
									"patching_rect" : [ 94.0, 31.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s offset-x",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-22",
									"fontsize" : 9.873845,
									"patching_rect" : [ 115.0, 216.0, 55.0, 18.0 ],
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-15", 0 ],
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
									"destination" : [ "obj-18", 0 ],
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
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 128.5, 127.0, 194.5, 127.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [ 177.5, 191.0, 216.0, 191.0, 216.0, 139.0, 202.5, 139.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p mouse-stuff",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-3",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 282.0, 51.0, 78.0, 18.0 ],
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 60.0, 74.0, 498.0, 519.0 ],
						"bglocked" : 0,
						"defrect" : [ 60.0, 74.0, 498.0, 519.0 ],
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
									"text" : "Alexander Refsum Jensenius - www.arj.no",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-1",
									"fontsize" : 9.873845,
									"patching_rect" : [ 212.0, 433.0, 218.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-2",
									"patching_rect" : [ 160.0, 418.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"comment" : "Mouse-click"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$3",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 160.0, 397.0, 21.0, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-4",
									"patching_rect" : [ 114.0, 416.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"patching_rect" : [ 114.0, 37.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Routing values only when mouse is clicked.",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-6",
									"fontsize" : 9.873845,
									"patching_rect" : [ 24.0, 175.0, 93.0, 42.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 0 0 0 0 0 0",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 114.0, 341.0, 263.0, 18.0 ],
									"numinlets" : 7
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 1",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-8",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 114.0, 194.0, 44.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$2 $1",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 114.0, 176.0, 37.0, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "listfunnel",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "list" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 114.0, 150.0, 54.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "start x/y position, end x/y position, difference in x/y position",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-11",
									"fontsize" : 9.873845,
									"patching_rect" : [ 122.0, 367.0, 311.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "buddy 3",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"id" : "obj-12",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 184.0, 122.0, 150.0, 18.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The initial position of the cursor is selected on mouse-down, and subsequent positions are subtracted.",
									"linecount" : 5,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-13",
									"fontsize" : 9.873845,
									"patching_rect" : [ 353.0, 165.0, 118.0, 66.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "-",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-14",
									"outlettype" : [ "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 366.0, 319.0, 27.0, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "-",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-15",
									"outlettype" : [ "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 324.0, 319.0, 27.0, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"id" : "obj-16",
									"outlettype" : [ "", "int", "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 184.0, 143.0, 44.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"id" : "obj-17",
									"outlettype" : [ "bang", "bang", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 184.0, 164.0, 42.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-18",
									"outlettype" : [ "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 213.0, 212.0, 27.0, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-19",
									"outlettype" : [ "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 184.0, 212.0, 27.0, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0 0",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"id" : "obj-20",
									"outlettype" : [ "int", "int", "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 183.0, 88.0, 98.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route mouse mouseidle",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"id" : "obj-21",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 114.0, 63.0, 125.0, 18.0 ],
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
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
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 123.5, 89.0, 20.0, 89.0, 20.0, 454.0, 195.0, 454.0, 195.0, 390.0, 168.5, 390.0 ]
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
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 176.5, 84.0, 192.5, 84.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 123.5, 84.0, 192.5, 84.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 2 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-7", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-19", 1 ],
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
									"source" : [ "obj-12", 2 ],
									"destination" : [ "obj-18", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-7", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 2 ],
									"destination" : [ "obj-7", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-12", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-7", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 2 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-7", 6 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-4",
					"patching_rect" : [ 208.0, 203.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"comment" : "Outgoing cropped video"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-5",
					"patching_rect" : [ 38.0, 203.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"comment" : "Outgoing video + rectangle"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ],
					"patching_rect" : [ 282.0, 30.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"comment" : "Incoming mouse-data (320x240)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 24.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"comment" : "Incoming video"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "v draw-rect",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 65.0, 88.0, 65.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p crop-rectangle",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-9",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 208.0, 94.0, 90.0, 18.0 ],
					"numinlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 118.0, 99.0, 928.0, 438.0 ],
						"bglocked" : 0,
						"defrect" : [ 118.0, 99.0, 928.0, 438.0 ],
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
									"text" : "r draw-rect",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 571.0, 67.0, 64.0, 18.0 ],
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-2",
									"fontsize" : 9.873845,
									"patching_rect" : [ 600.0, 320.0, 32.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 593.0, 226.0, 15.0, 15.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$6",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 475.0, 131.0, 21.0, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$5",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 438.0, 131.0, 21.0, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "abs",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 475.0, 153.0, 26.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "abs",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 438.0, 153.0, 26.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 341.0, 156.0, 21.0, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$2 $4",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 341.0, 117.0, 37.0, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl sort",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-10",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 342.0, 136.0, 41.0, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-11",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 304.0, 156.0, 21.0, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1 $3",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 304.0, 117.0, 37.0, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl sort",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-13",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 304.0, 136.0, 41.0, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-14",
									"outlettype" : [ "int", "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 656.0, 198.0, 44.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-15",
									"outlettype" : [ "int", "int" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 607.0, 198.0, 44.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$2 $4",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-16",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 656.0, 157.0, 37.0, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl sort",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-17",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 656.0, 176.0, 41.0, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1 $3",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-18",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 607.0, 157.0, 37.0, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl sort",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-19",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 607.0, 176.0, 41.0, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 7",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-20",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 304.0, 68.0, 44.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-21",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 704.0, 176.0, 51.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "120",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-22",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 704.0, 198.0, 27.0, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-23",
									"outlettype" : [ "bang" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 704.0, 155.0, 54.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1.",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-24",
									"outlettype" : [ "float" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 341.0, 260.0, 28.0, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1.",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-25",
									"outlettype" : [ "float" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 304.0, 260.0, 28.0, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1.",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-26",
									"outlettype" : [ "float" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 475.0, 260.0, 28.0, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1.",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-27",
									"outlettype" : [ "float" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 438.0, 260.0, 28.0, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 240.",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-28",
									"outlettype" : [ "float" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 209.0, 182.0, 39.0, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route dim",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-29",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 156.0, 138.0, 57.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 0.",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-30",
									"outlettype" : [ "float", "float" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 156.0, 160.0, 71.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.matrixinfo",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-31",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 156.0, 118.0, 73.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-32",
									"outlettype" : [ "" ],
									"patching_rect" : [ 156.0, 32.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 320.",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-33",
									"outlettype" : [ "float" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 156.0, 182.0, 39.0, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "clicked x, y pos",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-34",
									"fontsize" : 9.873845,
									"patching_rect" : [ 255.0, 168.0, 48.0, 30.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-35",
									"patching_rect" : [ 466.0, 372.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-36",
									"patching_rect" : [ 333.0, 372.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "v draw-rect",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-37",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 608.0, 280.0, 65.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-38",
									"outlettype" : [ "" ],
									"patching_rect" : [ 304.0, 32.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak framerect 0 0 0 0",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-39",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 608.0, 257.0, 117.0, 18.0 ],
									"numinlets" : 5
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak size 0 0",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-40",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 466.0, 345.0, 85.0, 18.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-41",
									"outlettype" : [ "int", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.873845,
									"triscale" : 0.9,
									"patching_rect" : [ 341.0, 174.0, 35.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-42",
									"outlettype" : [ "int", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.873845,
									"triscale" : 0.9,
									"patching_rect" : [ 304.0, 174.0, 35.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak offset 0 0",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-43",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 267.0, 301.0, 85.0, 18.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-44",
									"outlettype" : [ "int", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.873845,
									"triscale" : 0.9,
									"patching_rect" : [ 475.0, 174.0, 35.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-45",
									"outlettype" : [ "int", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.873845,
									"triscale" : 0.9,
									"patching_rect" : [ 438.0, 174.0, 35.0, 18.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak dim 0 0",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-46",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 401.0, 301.0, 85.0, 18.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-47",
									"patching_rect" : [ 601.0, 248.0, 129.0, 56.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This is what draws the rectangle in the movie. Using a patcher-variable to send the information.",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-48",
									"fontsize" : 9.873845,
									"patching_rect" : [ 739.0, 256.0, 137.0, 54.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "diff x, y pos",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-49",
									"fontsize" : 9.873845,
									"patching_rect" : [ 387.0, 167.0, 45.0, 30.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This step is necessary to compensate if the incoming video has a different size than 320 x 240 (the size of the drawing window).",
									"linecount" : 5,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-50",
									"fontsize" : 9.873845,
									"patching_rect" : [ 7.0, 123.0, 149.0, 66.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Routing values when ctrl-key is pressed",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-51",
									"fontsize" : 9.873845,
									"patching_rect" : [ 347.0, 71.0, 206.0, 18.0 ],
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 313.5, 96.0, 313.5, 96.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-43", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 313.5, 103.0, 350.5, 103.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-43", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-24", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 313.5, 103.0, 446.5, 103.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-46", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 313.5, 103.0, 483.5, 103.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-46", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-26", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-40", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-40", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 313.5, 103.0, 616.5, 103.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-39", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 313.5, 103.0, 665.5, 103.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-39", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-39", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-39", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-21", 0 ],
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
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-39", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-39", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-8", 0 ],
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
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-15", 0 ],
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
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b l",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-10",
					"outlettype" : [ "bang", "bang", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 38.0, 53.0, 40.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.lcd 4 char 320 240",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-11",
					"outlettype" : [ "jit_matrix", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 38.0, 117.0, 115.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.submatrix @dim 10 10 @offset 100 100",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-12",
					"outlettype" : [ "jit_matrix", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 208.0, 123.0, 221.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Click and drag inside this window to crop image.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-13",
					"fontsize" : 9.873845,
					"patching_rect" : [ 51.0, 141.0, 137.0, 30.0 ],
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 2 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
