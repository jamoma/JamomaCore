{
	"patcher" : 	{
		"rect" : [ 67.0, 46.0, 575.0, 760.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 67.0, 46.0, 575.0, 760.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
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
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 424.0, 649.0, 68.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Change the radius of the field displayed in ambimonitor",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 409.0, 96.0, 147.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-3",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 22.0, 718.0, 20.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load jcom.SpatDIF.coordinates.mxt",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-4",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 22.0, 737.0, 166.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-5",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 22.0, 756.0, 47.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"triscale" : 0.9,
					"id" : "obj-6",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 409.0, 128.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "radius $1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-7",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 409.0, 146.0, 53.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/delete 2",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-8",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 272.0, 146.0, 52.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/xyz 2 90. 0. 6.",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-9",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 258.0, 128.0, 84.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.xyz2ambimonitor",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-10",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 15.799999,
					"patching_rect" : [ 21.0, 18.0, 226.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.cellblock",
					"fontname" : "Verdana",
					"cols" : 6,
					"numinlets" : 2,
					"savemode" : 1,
					"hcellcolor" : [ 0.836576, 0.836576, 0.933852, 1.0 ],
					"hscroll" : 0,
					"rowheight" : 19,
					"id" : "obj-11",
					"rowhead" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "list", "", "" ],
					"headerclor" : [ 0.743191, 0.743191, 0.743191, 1.0 ],
					"bgcolor" : [ 0.992218, 0.992218, 0.992218, 1.0 ],
					"colwidth" : 50,
					"colhead" : 1,
					"vscroll" : 0,
					"fontsize" : 15.799999,
					"selmode" : 0,
					"rows" : 1,
					"patching_rect" : [ 52.0, 649.0, 301.0, 20.0 ],
					"just" : 1,
					"cellmap" : [ [ 0, 0, " " ], [ 1, 0, "index" ], [ 2, 0, "x" ], [ 3, 0, "y" ], [ 4, 0, "z" ], [ 5, 0, "active" ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1 0 $2",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-12",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ -15.0, 670.0, 63.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "listfunnel",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-13",
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"fontsize" : 9.0,
					"patching_rect" : [ -15.0, 649.0, 52.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.cellblock",
					"fontname" : "Verdana",
					"cols" : 6,
					"numinlets" : 2,
					"hcellcolor" : [ 0.768627, 0.768627, 0.768627, 1.0 ],
					"hscroll" : 0,
					"rowheight" : 19,
					"id" : "obj-14",
					"numoutlets" : 3,
					"textcolor" : [ 0.921569, 0.921569, 0.458824, 1.0 ],
					"outlettype" : [ "list", "", "" ],
					"headerclor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.992218, 0.992218, 0.992218, 1.0 ],
					"colwidth" : 50,
					"vscroll" : 0,
					"fontsize" : 9.0,
					"selmode" : 0,
					"rows" : 1,
					"patching_rect" : [ 52.0, 668.0, 301.0, 20.0 ],
					"just" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "z",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-15",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 176.0, 96.0, 25.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "y",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-16",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 138.0, 96.0, 21.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "xyz 1 0.1 0.1 1. 1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-17",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 259.0, 238.0, 143.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-18",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 259.0, 216.0, 62.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-19",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 356.0, 673.0, 171.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-20",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 356.0, 649.0, 62.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"triscale" : 0.9,
					"id" : "obj-21",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 169.0, 116.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"triscale" : 0.9,
					"id" : "obj-22",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 132.0, 116.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak \/xyz 1 0. 0. 0.",
					"fontname" : "Verdana",
					"numinlets" : 5,
					"id" : "obj-23",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 52.0, 150.0, 96.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"triscale" : 0.9,
					"id" : "obj-24",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 94.0, 116.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ambimonitor",
					"numinlets" : 1,
					"id" : "obj-25",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 52.0, 214.0, 100.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.xyz2ambimonitor.mxt @radius 1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-26",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 52.0, 181.0, 183.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.ambimonitor2xyz.mxt @radius 1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-27",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 147.0, 623.0, 183.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "x",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-28",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 100.0, 96.0, 21.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "translate between messages for ambimonitor and ditto messages in Jamoma\/SpatDIF.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-29",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 21.0, 43.0, 429.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-30",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"patching_rect" : [ 16.0, 13.0, 368.0, 61.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Also understand <\/delete n> to delete nth voice.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-31",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 258.0, 96.0, 136.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-32",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 87.0, 54.0, 50.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 0.5 0.5 0.",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-33",
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 87.0, 76.0, 62.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-34",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 87.0, 34.0, 48.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"items" : [ "More", "about", "SpatDIF", "coordiate", "systems" ],
					"id" : "obj-35",
					"numoutlets" : 3,
					"types" : [  ],
					"textcolor" : [ 0.164706, 0.121569, 0.913725, 1.0 ],
					"outlettype" : [ "int", "", "" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"menumode" : 2,
					"background" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 22.0, 698.0, 200.0, 17.0 ],
					"labelclick" : 1
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
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0
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
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 281.5, 175.0, 61.5, 175.0 ]
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
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 418.5, 619.0, 156.5, 619.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-27", 0 ],
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
					"midpoints" : [ 156.5, 644.0, 365.5, 644.0 ]
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
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 433.5, 669.0, 365.5, 669.0 ]
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
