{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 145.0, 364.0, 535.0, 445.0 ],
		"bglocked" : 0,
		"defrect" : [ 145.0, 364.0, 535.0, 445.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
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
					"maxclass" : "comment",
					"text" : "arguments give upper and lower trigger bounds",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-19",
					"patching_rect" : [ 345.0, 105.0, 154.0, 34.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-17",
					"patching_rect" : [ 270.0, 180.0, 20.0, 20.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t f b",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 12.0,
					"id" : "obj-8",
					"patching_rect" : [ 30.0, 135.0, 32.5, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 12.0,
					"id" : "obj-7",
					"patching_rect" : [ 210.0, 180.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numoutlets" : 2,
					"setminmax" : [ 0.0, 1.0 ],
					"outlettype" : [ "", "" ],
					"contdata" : 1,
					"id" : "obj-5",
					"patching_rect" : [ 75.0, 75.0, 140.0, 33.0 ],
					"numinlets" : 1,
					"orientation" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numoutlets" : 2,
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 3,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 57.0, 206.0, 0.0, 0.0 ],
					"id" : "obj-4",
					"patching_rect" : [ 30.0, 210.0, 169.0, 74.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numoutlets" : 2,
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 3,
					"outlettype" : [ "", "" ],
					"id" : "obj-3",
					"patching_rect" : [ 210.0, 210.0, 169.0, 74.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dot.schmitt 0.6 0.4",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"id" : "obj-1",
					"patching_rect" : [ 210.0, 135.0, 109.0, 20.0 ],
					"color" : [ 0.741176, 0.184314, 0.756863, 1.0 ],
					"numinlets" : 3,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 0,
					"id" : "obj-64",
					"args" : [  ],
					"patching_rect" : [ 315.0, 285.0, 211.0, 145.0 ],
					"numinlets" : 0,
					"name" : "dot.menu.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A trigger with hysteresis",
					"numoutlets" : 0,
					"fontsize" : 14.0,
					"id" : "obj-16",
					"patching_rect" : [ 15.0, 45.0, 484.0, 23.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_title",
					"text" : "dot.schmitt",
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338,
					"id" : "obj-22",
					"patching_rect" : [ 15.0, 15.0, 485.0, 30.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"id" : "obj-60",
					"patching_rect" : [ 501.0, 15.0, 4.0, 304.0 ],
					"numinlets" : 1,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel[1]",
					"numoutlets" : 0,
					"grad2" : [ 1.0, 0.0, 0.0, 1.0 ],
					"mode" : 1,
					"id" : "obj-2",
					"patching_rect" : [ 15.0, 15.0, 490.0, 31.0 ],
					"background" : 1,
					"angle" : 180.0,
					"numinlets" : 1,
					"grad1" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 219.5, 167.0, 279.5, 167.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 53.0, 167.0, 219.5, 167.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 84.5, 121.0, 39.5, 121.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 84.5, 121.0, 219.5, 121.0 ]
				}

			}
 ]
	}

}
