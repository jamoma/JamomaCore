{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 33.0, 55.0, 592.0, 736.0 ],
		"bglocked" : 0,
		"defrect" : [ 33.0, 55.0, 592.0, 736.0 ],
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
					"text" : "loadmess set",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"hidden" : 1,
					"patching_rect" : [ 427.0, 646.0, 81.0, 19.0 ],
					"id" : "obj-1",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Change the radius of the field displayed in ambimonitor",
					"linecount" : 2,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 405.0, 95.0, 180.0, 31.0 ],
					"id" : "obj-2",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"outlettype" : [ "bang" ],
					"fontsize" : 10.0,
					"hidden" : 1,
					"patching_rect" : [ 16.0, 715.0, 25.0, 19.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load jcom.SpatDIF.coordinates.mxt",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"hidden" : 1,
					"patching_rect" : [ 16.0, 734.0, 204.0, 17.0 ],
					"id" : "obj-4",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"hidden" : 1,
					"patching_rect" : [ 16.0, 753.0, 57.0, 19.0 ],
					"id" : "obj-5",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 405.0, 130.0, 39.0, 19.0 ],
					"triscale" : 0.9,
					"id" : "obj-6",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "radius $1",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 405.0, 150.0, 64.0, 17.0 ],
					"id" : "obj-7",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/delete 2",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 265.0, 150.0, 63.0, 17.0 ],
					"id" : "obj-8",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/aed 2 90. 0. 0.6",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 255.0, 130.0, 110.0, 17.0 ],
					"id" : "obj-9",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.cellblock",
					"rowhead" : 1,
					"vscroll" : 0,
					"outlettype" : [ "list", "", "", "" ],
					"hscroll" : 0,
					"fontsize" : 10.0,
					"cols" : 6,
					"savemode" : 1,
					"colwidth" : 50,
					"colhead" : 1,
					"patching_rect" : [ 46.0, 646.0, 301.0, 20.0 ],
					"rowheight" : 19,
					"selmode" : 0,
					"hcellcolor" : [ 0.836576, 0.836576, 0.933852, 1.0 ],
					"id" : "obj-11",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"rows" : 1,
					"numoutlets" : 4,
					"just" : 1,
					"cellmap" : [ [ 0, 0, " " ], [ 1, 0, "index" ], [ 2, 0, "azi" ], [ 3, 0, "ele" ], [ 4, 0, "dist" ], [ 5, 0, "active" ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1 0 $2",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"hidden" : 1,
					"patching_rect" : [ 26.0, 596.0, 77.0, 17.0 ],
					"id" : "obj-12",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "listfunnel",
					"outlettype" : [ "list" ],
					"fontsize" : 10.0,
					"hidden" : 1,
					"patching_rect" : [ 26.0, 575.0, 63.0, 19.0 ],
					"id" : "obj-13",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.cellblock",
					"vscroll" : 0,
					"outlettype" : [ "list", "", "", "" ],
					"hscroll" : 0,
					"fontsize" : 10.0,
					"cols" : 6,
					"textcolor" : [ 0.921569, 0.921569, 0.458824, 1.0 ],
					"colwidth" : 50,
					"patching_rect" : [ 46.0, 665.0, 301.0, 20.0 ],
					"rowheight" : 19,
					"selmode" : 0,
					"hcellcolor" : [ 0.768627, 0.768627, 0.768627, 1.0 ],
					"id" : "obj-14",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"rows" : 1,
					"numoutlets" : 4,
					"just" : 1,
					"bgcolor" : [ 0.992218, 0.992218, 0.992218, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dist",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 170.0, 93.0, 30.0, 19.0 ],
					"id" : "obj-15",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ele",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 132.0, 93.0, 23.0, 19.0 ],
					"id" : "obj-16",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "aed 1 45. 0. 1.6",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 253.0, 235.0, 155.0, 17.0 ],
					"id" : "obj-17",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 253.0, 213.0, 75.0, 19.0 ],
					"id" : "obj-18",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 350.0, 670.0, 171.0, 17.0 ],
					"id" : "obj-19",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 350.0, 646.0, 75.0, 19.0 ],
					"id" : "obj-20",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 163.0, 113.0, 41.0, 19.0 ],
					"triscale" : 0.9,
					"id" : "obj-21",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 126.0, 113.0, 39.0, 19.0 ],
					"triscale" : 0.9,
					"id" : "obj-22",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak /aed 1 0. 0. 0.",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 46.0, 147.0, 139.0, 19.0 ],
					"id" : "obj-23",
					"numinlets" : 5,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 88.0, 113.0, 41.0, 19.0 ],
					"triscale" : 0.9,
					"id" : "obj-24",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ambimonitor",
					"outlettype" : [ "" ],
					"patching_rect" : [ 46.0, 211.0, 100.0, 20.0 ],
					"id" : "obj-25",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.aed2ambimonitor.mxt @radius 1",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 46.0, 178.0, 223.0, 19.0 ],
					"id" : "obj-26",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.ambimonitor2aed.mxt @radius 1",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 46.0, 621.0, 223.0, 19.0 ],
					"id" : "obj-27",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "azi",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 94.0, 93.0, 25.0, 19.0 ],
					"id" : "obj-28",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Also understand </delete n> to delete nth voice.",
					"linecount" : 2,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 255.0, 95.0, 140.0, 31.0 ],
					"id" : "obj-31",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"hidden" : 1,
					"patching_rect" : [ 81.0, 51.0, 51.0, 19.0 ],
					"id" : "obj-32",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 45 0 0.8",
					"outlettype" : [ "int", "int", "float" ],
					"fontsize" : 10.0,
					"hidden" : 1,
					"patching_rect" : [ 81.0, 73.0, 70.0, 19.0 ],
					"id" : "obj-33",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"outlettype" : [ "bang" ],
					"fontsize" : 10.0,
					"hidden" : 1,
					"patching_rect" : [ 81.0, 31.0, 54.0, 19.0 ],
					"id" : "obj-34",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.aed2ambimonitor",
					"fontsize" : 17.553501,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 15.0, 15.0, 249.0, 28.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "translate between messages for ambimonitor and ditto messages in Jamoma/SpatDIF.",
					"linecount" : 2,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 15.0, 40.0, 359.0, 31.0 ],
					"id" : "obj-29",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 15,
					"patching_rect" : [ 10.0, 10.0, 368.0, 61.0 ],
					"id" : "obj-30",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"labelclick" : 1,
					"fontsize" : 10.0,
					"underline" : 1,
					"items" : [ "More", "about", "SpatDIF", "coordiate", "systems" ],
					"textcolor" : [ 0.164706, 0.121569, 0.913725, 1.0 ],
					"patching_rect" : [ 16.0, 695.0, 225.0, 19.0 ],
					"id" : "obj-35",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 0.0 ],
					"menumode" : 2,
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 436.5, 666.0, 359.5, 666.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 55.5, 641.0, 359.5, 641.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 55.5, 198.0, 262.5, 198.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 2 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-23", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [ 35.5, 688.0, 55.5, 688.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 414.5, 616.0, 55.5, 616.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.5, 172.0, 55.5, 172.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 274.5, 172.0, 55.5, 172.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 414.5, 172.0, 55.5, 172.0 ]
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [ 55.5, 641.0, 20.0, 641.0, 20.0, 570.0, 35.5, 570.0 ]
				}

			}
 ]
	}

}
