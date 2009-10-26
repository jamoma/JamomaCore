{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 970.0, 414.0, 536.0, 393.0 ],
		"bglocked" : 0,
		"defrect" : [ 970.0, 414.0, 536.0, 393.0 ],
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
					"maxclass" : "message",
					"text" : "90, 32.6 978 100 250 45 2300",
					"numinlets" : 2,
					"patching_rect" : [ 180.0, 135.0, 171.0, 18.0 ],
					"id" : "obj-7",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"presentation_rect" : [ 185.0, 136.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0 1000",
					"numinlets" : 2,
					"patching_rect" : [ 120.0, 135.0, 47.0, 18.0 ],
					"id" : "obj-6",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 225.0, 50.0, 20.0 ],
					"id" : "obj-4",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dot.line 100.",
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 180.0, 76.0, 20.0 ],
					"id" : "obj-1",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"color" : [ 0.741176, 0.184314, 0.756863, 1.0 ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"patching_rect" : [ 315.0, 240.0, 211.0, 145.0 ],
					"id" : "obj-64",
					"numoutlets" : 0,
					"name" : "dot.menu.maxpat",
					"args" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Wrapper for the line object so it accepts trajectory lists like line~",
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 45.0, 484.0, 23.0 ],
					"id" : "obj-16",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 14.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_top_title",
					"text" : "dot.line",
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 15.0, 485.0, 30.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-22",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 3,
					"fontsize" : 20.871338
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 501.0, 15.0, 4.0, 304.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-60",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_top_panel[1]",
					"grad2" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"angle" : 180.0,
					"patching_rect" : [ 15.0, 15.0, 490.0, 31.0 ],
					"mode" : 1,
					"id" : "obj-2",
					"numoutlets" : 0,
					"background" : 1,
					"grad1" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
