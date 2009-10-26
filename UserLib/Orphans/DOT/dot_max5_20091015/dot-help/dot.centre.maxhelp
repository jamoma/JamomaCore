{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 123.0, 141.0, 533.0, 383.0 ],
		"bglocked" : 0,
		"defrect" : [ 123.0, 141.0, 533.0, 383.0 ],
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
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 315.0, 225.0, 211.0, 145.0 ],
					"args" : [  ],
					"id" : "obj-64",
					"name" : "dot.menu.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Automatically offsets input to re-centre signal around zero with user-definable delay, ramp time and time grain",
					"linecount" : 2,
					"fontsize" : 14.0,
					"patching_rect" : [ 15.0, 45.0, 484.0, 39.0 ],
					"id" : "obj-16",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_title",
					"text" : "dot.centre",
					"fontface" : 3,
					"fontsize" : 20.871338,
					"patching_rect" : [ 15.0, 15.0, 485.0, 30.0 ],
					"id" : "obj-22",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 501.0, 15.0, 4.0, 259.0 ],
					"id" : "obj-60",
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "First argument sets delay time in ms, second argument sets ramp time in ms. Optional third argument sets time grain for the ramp.",
					"linecount" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 270.0, 150.0, 195.0, 62.0 ],
					"id" : "obj-1",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"imagemask" : 1,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "appleTrack.pct",
					"patching_rect" : [ 75.0, 195.0, 136.0, 16.0 ],
					"leftvalue" : -100,
					"id" : "obj-2",
					"rightmargin" : 3,
					"leftmargin" : 3,
					"rightvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "appleKnob.pct",
					"movevertical" : 0,
					"jump" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"imagemask" : 1,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "appleTrack.pct",
					"patching_rect" : [ 75.0, 105.0, 136.0, 16.0 ],
					"leftvalue" : -100,
					"id" : "obj-3",
					"rightmargin" : 3,
					"leftmargin" : 3,
					"rightvalue" : 100,
					"numinlets" : 2,
					"knobpict" : "appleKnob.pct",
					"movevertical" : 0,
					"jump" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dot.centre 0. 2000.",
					"outlettype" : [ "float" ],
					"fontsize" : 12.0,
					"patching_rect" : [ 75.0, 150.0, 111.0, 20.0 ],
					"id" : "obj-4",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Input: int or float",
					"fontsize" : 12.0,
					"patching_rect" : [ 270.0, 105.0, 120.0, 20.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel[1]",
					"patching_rect" : [ 15.0, 15.0, 490.0, 31.0 ],
					"id" : "obj-11",
					"mode" : 1,
					"grad1" : [ 0.0, 0.0, 0.0, 1.0 ],
					"angle" : 180.0,
					"numinlets" : 1,
					"grad2" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
