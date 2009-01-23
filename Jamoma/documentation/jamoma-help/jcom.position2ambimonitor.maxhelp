{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 20.0, 50.0, 1073.0, 608.0 ],
		"bglocked" : 0,
		"defrect" : [ 20.0, 50.0, 1073.0, 608.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.position2ambimonitor",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 17.553501,
					"patching_rect" : [ 15.0, 15.0, 317.0, 28.0 ],
					"id" : "obj-14",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "translate position description from Jamoma OSC position to ambimonitor",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 42.0, 378.0, 19.0 ],
					"id" : "obj-24",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 10.0, 10.0, 405.0, 55.0 ],
					"id" : "obj-25",
					"rounded" : 14,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "xyz 1 0. 0. 0.",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 775.0, 90.0, 78.0, 17.0 ],
					"id" : "obj-13",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ambimonitor",
					"outlettype" : [ "", "", "" ],
					"presentation_rect" : [ 852.0, 599.0, 0.0, 0.0 ],
					"numbers" : 1,
					"patching_rect" : [ 775.0, 375.0, 200.0, 200.0 ],
					"id" : "obj-12",
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.position2ambimonitor @prefix source @radius 2.",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 846.0, 573.0, 0.0, 0.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 775.0, 350.0, 284.0, 19.0 ],
					"id" : "obj-9",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.ambimonitor2position @prefix source @radius 2.",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 775.0, 325.0, 284.0, 19.0 ],
					"id" : "obj-57",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ambimonitor",
					"outlettype" : [ "", "", "" ],
					"numbers" : 1,
					"patching_rect" : [ 775.0, 115.0, 200.0, 200.0 ],
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 185.0, 135.0, 50.0, 19.0 ],
					"id" : "obj-20",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 130.0, 135.0, 50.0, 19.0 ],
					"id" : "obj-21",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 75.0, 135.0, 50.0, 19.0 ],
					"id" : "obj-22",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak /position.1 0. 0. 0.",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 40.0, 170.0, 127.0, 19.0 ],
					"id" : "obj-23",
					"numinlets" : 4,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 620.0, 135.0, 50.0, 19.0 ],
					"id" : "obj-16",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 565.0, 135.0, 50.0, 19.0 ],
					"id" : "obj-17",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 510.0, 135.0, 50.0, 19.0 ],
					"id" : "obj-18",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak /speaker/position.1 0. 0. 0.",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 460.0, 170.0, 171.0, 19.0 ],
					"id" : "obj-19",
					"numinlets" : 4,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend radius",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 460.0, 450.0, 86.0, 19.0 ],
					"id" : "obj-15",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 460.0, 425.0, 50.0, 19.0 ],
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend prefix",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 460.0, 370.0, 84.0, 19.0 ],
					"id" : "obj-35",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "source",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 555.0, 330.0, 44.0, 17.0 ],
					"id" : "obj-34",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "none",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 460.0, 330.0, 35.0, 17.0 ],
					"id" : "obj-32",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "speaker",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 500.0, 330.0, 50.0, 17.0 ],
					"id" : "obj-30",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ambimonitor",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 40.0, 375.0, 200.0, 200.0 ],
					"id" : "obj-11",
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "xyz 1 1. 0. 0.",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 125.0, 345.0, 197.0, 17.0 ],
					"id" : "obj-10",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.position2ambimonitor @prefix source @radius 2.",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 40.0, 315.0, 284.0, 19.0 ],
					"id" : "obj-8",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 390.0, 135.0, 50.0, 19.0 ],
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 335.0, 135.0, 50.0, 19.0 ],
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 280.0, 135.0, 50.0, 19.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak /source/position.1 0. 0. 0.",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 235.0, 170.0, 164.0, 19.0 ],
					"id" : "obj-1",
					"numinlets" : 4,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 469.5, 478.0, 420.0, 478.0, 420.0, 302.0, 49.5, 302.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 469.5, 404.0, 424.0, 404.0, 424.0, 297.0, 49.5, 297.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-6", 0 ],
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
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 244.5, 208.0, 49.5, 208.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [ 49.5, 341.5, 312.5, 341.5 ]
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
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 49.5, 286.0, 49.5, 286.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 469.5, 213.0, 49.5, 213.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-1", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 564.5, 358.0, 469.5, 358.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 509.5, 358.0, 469.5, 358.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 469.5, 358.0, 469.5, 358.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-19", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-19", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-23", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-23", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
