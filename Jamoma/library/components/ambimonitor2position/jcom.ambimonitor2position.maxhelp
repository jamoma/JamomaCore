{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 179.0, 44.0, 622.0, 557.0 ],
		"bglocked" : 0,
		"defrect" : [ 179.0, 44.0, 622.0, 557.0 ],
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
					"maxclass" : "newobj",
					"text" : "prepend radius",
					"fontsize" : 10.0,
					"patching_rect" : [ 490.0, 380.0, 86.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.0,
					"patching_rect" : [ 490.0, 330.0, 50.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.ambimonitor2position",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 17.553501,
					"patching_rect" : [ 20.0, 20.0, 317.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-22",
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
					"numinlets" : 1,
					"id" : "obj-23",
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 15.0, 15.0, 400.0, 50.0 ],
					"numinlets" : 1,
					"id" : "obj-24",
					"rounded" : 14,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gswitch",
					"int" : 1,
					"patching_rect" : [ 70.0, 415.0, 41.0, 32.0 ],
					"numinlets" : 3,
					"id" : "obj-59",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.ambimonitor2position @prefix source @radius 2.",
					"fontsize" : 10.0,
					"patching_rect" : [ 70.0, 475.0, 284.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-57",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend prefix",
					"fontsize" : 10.0,
					"patching_rect" : [ 310.0, 380.0, 84.0, 19.0 ],
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
					"patching_rect" : [ 410.0, 330.0, 44.0, 17.0 ],
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
					"text" : "none",
					"fontsize" : 10.0,
					"patching_rect" : [ 310.0, 330.0, 35.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-32",
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
					"patching_rect" : [ 350.0, 330.0, 50.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-30",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/source.2/position -0.1 1.54 0.",
					"fontsize" : 10.0,
					"patching_rect" : [ 70.0, 520.0, 288.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-11",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "aed 1 -60. 0. 0.8, aed 2 0 0. 0.8, aed 3 60. 0. 0.8",
					"linecount" : 3,
					"fontsize" : 10.0,
					"patching_rect" : [ 70.0, 135.0, 102.0, 41.0 ],
					"numinlets" : 2,
					"id" : "obj-14",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ambimonitor",
					"patching_rect" : [ 70.0, 185.0, 200.0, 200.0 ],
					"numinlets" : 1,
					"id" : "obj-15",
					"numoutlets" : 3,
					"numbers" : 1,
					"outlettype" : [ "", "", "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 499.5, 459.0, 79.5, 459.0 ]
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
					"midpoints" : [ 319.5, 456.5, 79.5, 456.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [ 79.5, 506.5, 348.5, 506.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 419.5, 358.0, 319.5, 358.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 359.5, 358.0, 319.5, 358.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 319.5, 358.0, 319.5, 358.0 ]
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
					"midpoints" : [ 79.5, 397.0, 90.5, 397.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-59", 2 ],
					"hidden" : 0,
					"midpoints" : [ 170.0, 398.0, 101.5, 398.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
