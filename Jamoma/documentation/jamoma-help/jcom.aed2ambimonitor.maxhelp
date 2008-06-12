{
	"patcher" : 	{
		"rect" : [ 33.0, 55.0, 593.0, 735.0 ],
		"bglocked" : 0,
		"defrect" : [ 33.0, 55.0, 593.0, 735.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"patching_rect" : [ 433.0, 649.0, 81.0, 18.0 ],
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Change the radius of the field displayed in ambimonitor",
					"linecount" : 2,
					"patching_rect" : [ 409.0, 96.0, 180.0, 30.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"patching_rect" : [ 22.0, 718.0, 25.0, 18.0 ],
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-3",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load jcom.SpatDIF.coordinates.mxt",
					"patching_rect" : [ 22.0, 737.0, 204.0, 16.0 ],
					"numinlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 22.0, 756.0, 57.0, 18.0 ],
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 409.0, 128.0, 39.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-6",
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "radius $1",
					"patching_rect" : [ 409.0, 146.0, 64.0, 16.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/delete 2",
					"patching_rect" : [ 272.0, 146.0, 63.0, 16.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/aed 2 90. 0. 0.6",
					"patching_rect" : [ 258.0, 128.0, 110.0, 16.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.aed2ambimonitor",
					"patching_rect" : [ 21.0, 18.0, 249.0, 28.0 ],
					"numinlets" : 1,
					"fontsize" : 16.0,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-10",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.cellblock",
					"savemode" : 1,
					"patching_rect" : [ 52.0, 649.0, 301.0, 20.0 ],
					"rowhead" : 1,
					"numinlets" : 2,
					"hcellcolor" : [ 0.836576, 0.836576, 0.933852, 1.0 ],
					"fontsize" : 15.799999,
					"rows" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"vscroll" : 0,
					"selmode" : 0,
					"cols" : 6,
					"colwidth" : 50,
					"id" : "obj-11",
					"colhead" : 1,
					"outlettype" : [ "list", "", "" ],
					"headerclor" : [ 0.743191, 0.743191, 0.743191, 1.0 ],
					"just" : 1,
					"rowheight" : 19,
					"bgcolor" : [ 0.992218, 0.992218, 0.992218, 1.0 ],
					"hscroll" : 0,
					"cellmap" : [ [ 0, 0, " " ], [ 1, 0, "index" ], [ 2, 0, "azi" ], [ 3, 0, "ele" ], [ 4, 0, "dist" ], [ 5, 0, "active" ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1 0 $2",
					"patching_rect" : [ -15.0, 670.0, 77.0, 16.0 ],
					"numinlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "listfunnel",
					"patching_rect" : [ -15.0, 649.0, 63.0, 18.0 ],
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-13",
					"outlettype" : [ "list" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.cellblock",
					"patching_rect" : [ 52.0, 668.0, 301.0, 20.0 ],
					"numinlets" : 2,
					"hcellcolor" : [ 0.768627, 0.768627, 0.768627, 1.0 ],
					"fontsize" : 9.0,
					"rows" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"vscroll" : 0,
					"selmode" : 0,
					"cols" : 6,
					"colwidth" : 50,
					"id" : "obj-14",
					"outlettype" : [ "list", "", "" ],
					"headerclor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"just" : 1,
					"textcolor" : [ 0.921569, 0.921569, 0.458824, 1.0 ],
					"rowheight" : 19,
					"bgcolor" : [ 0.992218, 0.992218, 0.992218, 1.0 ],
					"hscroll" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dist",
					"patching_rect" : [ 176.0, 96.0, 30.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ele",
					"patching_rect" : [ 138.0, 96.0, 23.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "aed 1 45. 0. 1.6",
					"patching_rect" : [ 259.0, 238.0, 155.0, 16.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"patching_rect" : [ 259.0, 216.0, 75.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"patching_rect" : [ 356.0, 673.0, 171.0, 16.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-19",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"patching_rect" : [ 356.0, 649.0, 75.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 169.0, 116.0, 41.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-21",
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 132.0, 116.0, 39.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-22",
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak \/aed 1 0. 0. 0.",
					"patching_rect" : [ 52.0, 150.0, 139.0, 18.0 ],
					"numinlets" : 5,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 94.0, 116.0, 41.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-24",
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ambimonitor",
					"patching_rect" : [ 52.0, 214.0, 100.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-25",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.aed2ambimonitor.mxt @radius 1",
					"patching_rect" : [ 52.0, 181.0, 223.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-26",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.ambimonitor2aed.mxt @radius 1",
					"patching_rect" : [ 52.0, 624.0, 223.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-27",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "azi",
					"patching_rect" : [ 100.0, 96.0, 25.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "translate between messages for ambimonitor and ditto messages in Jamoma\/SpatDIF.",
					"linecount" : 2,
					"patching_rect" : [ 21.0, 43.0, 429.0, 30.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-29",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 16.0, 13.0, 368.0, 61.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"rounded" : 0,
					"id" : "obj-30",
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Also understand <\/delete n> to delete nth voice.",
					"linecount" : 2,
					"patching_rect" : [ 258.0, 96.0, 139.0, 30.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"patching_rect" : [ 87.0, 54.0, 50.0, 17.0 ],
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-32",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 45 0 0.8",
					"patching_rect" : [ 87.0, 76.0, 70.0, 18.0 ],
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-33",
					"outlettype" : [ "int", "int", "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"patching_rect" : [ 87.0, 34.0, 48.0, 17.0 ],
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"patching_rect" : [ 22.0, 698.0, 200.0, 18.0 ],
					"items" : [ "More", "about", "SpatDIF", "coordiate", "systems" ],
					"numinlets" : 1,
					"menumode" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-35",
					"outlettype" : [ "int", "", "" ],
					"labelclick" : 1,
					"textcolor" : [ 0.164706, 0.121569, 0.913725, 1.0 ],
					"background" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"types" : [  ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 418.5, 175.0, 61.5, 175.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 281.5, 175.0, 61.5, 175.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 267.5, 175.0, 61.5, 175.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 418.5, 619.0, 61.5, 619.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [ -5.5, 691.0, 61.5, 691.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 3 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-23", 4 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 2 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 61.5, 201.0, 268.5, 201.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 61.5, 644.0, 365.5, 644.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 442.5, 669.0, 365.5, 669.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
