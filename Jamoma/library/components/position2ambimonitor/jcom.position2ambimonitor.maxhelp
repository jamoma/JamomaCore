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
					"fontsize" : 18.0,
					"patching_rect" : [ 15.0, 15.0, 317.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-14",
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
					"numinlets" : 1,
					"id" : "obj-24",
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 10.0, 10.0, 405.0, 55.0 ],
					"numinlets" : 1,
					"id" : "obj-25",
					"rounded" : 14,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "xyz 1 0. 0. 0.",
					"fontsize" : 10.0,
					"patching_rect" : [ 775.0, 90.0, 78.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-13",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ambimonitor",
					"patching_rect" : [ 775.0, 375.0, 200.0, 200.0 ],
					"numinlets" : 1,
					"id" : "obj-12",
					"numoutlets" : 3,
					"numbers" : 1,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.position2ambimonitor @prefix source @radius 2.",
					"fontsize" : 10.0,
					"patching_rect" : [ 775.0, 350.0, 284.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-9",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.ambimonitor2position @prefix source @radius 2.",
					"fontsize" : 10.0,
					"patching_rect" : [ 775.0, 325.0, 284.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-57",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ambimonitor",
					"patching_rect" : [ 775.0, 115.0, 200.0, 200.0 ],
					"numinlets" : 1,
					"id" : "obj-6",
					"numoutlets" : 3,
					"numbers" : 1,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.0,
					"patching_rect" : [ 425.0, 135.0, 50.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-16",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.0,
					"patching_rect" : [ 370.0, 135.0, 50.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-17",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.0,
					"patching_rect" : [ 315.0, 135.0, 50.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-18",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak /speaker.1/position 0. 0. 0.",
					"fontsize" : 10.0,
					"patching_rect" : [ 265.0, 170.0, 169.0, 19.0 ],
					"numinlets" : 4,
					"id" : "obj-19",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend radius",
					"fontsize" : 10.0,
					"patching_rect" : [ 460.0, 450.0, 86.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-15",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.0,
					"patching_rect" : [ 460.0, 425.0, 50.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend prefix",
					"fontsize" : 10.0,
					"patching_rect" : [ 460.0, 370.0, 84.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-35",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "source",
					"fontsize" : 10.0,
					"patching_rect" : [ 515.0, 330.0, 44.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-34",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "speaker",
					"fontsize" : 10.0,
					"patching_rect" : [ 460.0, 330.0, 50.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-30",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ambimonitor",
					"patching_rect" : [ 40.0, 375.0, 200.0, 200.0 ],
					"numinlets" : 1,
					"id" : "obj-11",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "xyz 1 1. 0. 0.",
					"fontsize" : 10.0,
					"patching_rect" : [ 125.0, 345.0, 197.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-10",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.position2ambimonitor @prefix source @radius 2.",
					"fontsize" : 10.0,
					"patching_rect" : [ 40.0, 315.0, 284.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-8",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.0,
					"patching_rect" : [ 195.0, 135.0, 50.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.0,
					"patching_rect" : [ 140.0, 135.0, 50.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-5",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.0,
					"patching_rect" : [ 85.0, 135.0, 50.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak /source.1/position 0. 0. 0.",
					"fontsize" : 10.0,
					"patching_rect" : [ 40.0, 170.0, 164.0, 19.0 ],
					"numinlets" : 4,
					"id" : "obj-1",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 274.5, 213.0, 49.5, 213.0 ]
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
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 49.5, 208.0, 49.5, 208.0 ]
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 469.5, 358.0, 469.5, 358.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 524.5, 358.0, 469.5, 358.0 ]
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
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [ 49.5, 341.5, 312.5, 341.5 ]
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
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-9", 0 ],
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
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 469.5, 478.0, 420.0, 478.0, 420.0, 302.0, 49.5, 302.0 ]
				}

			}
 ]
	}

}
