{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 179.0, 44.0, 525.0, 541.0 ],
		"bglocked" : 0,
		"defrect" : [ 179.0, 44.0, 525.0, 541.0 ],
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
					"text" : "jcom.ambimonitor2position",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 17.553501,
					"patching_rect" : [ 20.0, 20.0, 317.0, 28.0 ],
					"id" : "obj-22",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "translate position description from ambimonitor format to OSC position",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 20.0, 47.0, 369.0, 19.0 ],
					"id" : "obj-23",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 15.0, 15.0, 400.0, 50.0 ],
					"id" : "obj-24",
					"rounded" : 14,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gswitch",
					"outlettype" : [ "" ],
					"int" : 1,
					"patching_rect" : [ 90.0, 400.0, 41.0, 32.0 ],
					"id" : "obj-59",
					"numinlets" : 3,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.ambimonitor2position @prefix source",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 90.0, 445.0, 227.0, 19.0 ],
					"id" : "obj-57",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend prefix",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 330.0, 350.0, 84.0, 19.0 ],
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
					"patching_rect" : [ 430.0, 315.0, 44.0, 17.0 ],
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
					"patching_rect" : [ 330.0, 315.0, 35.0, 17.0 ],
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
					"patching_rect" : [ 370.0, 315.0, 50.0, 17.0 ],
					"id" : "obj-30",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 90.0, 490.0, 288.0, 17.0 ],
					"id" : "obj-11",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "aed 1 -60. 0. 8, aed 2 0 0. 8, aed 3 60. 0. 8",
					"linecount" : 3,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 90.0, 120.0, 92.0, 41.0 ],
					"id" : "obj-14",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ambimonitor",
					"outlettype" : [ "", "", "" ],
					"numbers" : 1,
					"patching_rect" : [ 90.0, 170.0, 200.0, 200.0 ],
					"id" : "obj-15",
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 439.5, 343.0, 339.5, 343.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 379.5, 343.0, 339.5, 343.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 339.5, 343.0, 339.5, 343.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-59", 1 ],
					"hidden" : 0,
					"midpoints" : [ 99.5, 382.0, 110.5, 382.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-59", 2 ],
					"hidden" : 0,
					"midpoints" : [ 190.0, 383.0, 121.5, 383.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 339.5, 437.5, 99.5, 437.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [ 99.5, 476.5, 368.5, 476.5 ]
				}

			}
 ]
	}

}
