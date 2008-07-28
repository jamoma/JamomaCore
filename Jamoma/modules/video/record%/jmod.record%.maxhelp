{
	"patcher" : 	{
		"rect" : [ 30.0, 89.0, 594.0, 439.0 ],
		"bglocked" : 0,
		"defrect" : [ 30.0, 89.0, 594.0, 439.0 ],
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
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"patching_rect" : [ 323.0, 196.0, 240.0, 180.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.record%",
					"numinlets" : 1,
					"patching_rect" : [ 18.0, 26.0, 189.0, 28.0 ],
					"numoutlets" : 0,
					"fontsize" : 15.799999,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-2",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a module for recording video to disk",
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 52.0, 242.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-3",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"patching_rect" : [ 12.0, 10.0, 256.0, 63.0 ],
					"rounded" : 0,
					"numoutlets" : 0,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/jmod.edge%",
					"name" : "jmod.edge%.maxpat",
					"numinlets" : 2,
					"patching_rect" : [ 12.0, 246.0, 301.0, 71.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-5",
					"args" : [  ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/record_demo",
					"name" : "jmod.record%.maxpat",
					"numinlets" : 2,
					"patching_rect" : [ 12.0, 327.0, 301.0, 71.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-6",
					"args" : [  ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/input_demo",
					"name" : "jmod.input%.maxpat",
					"numinlets" : 1,
					"patching_rect" : [ 12.0, 171.0, 301.0, 71.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-7",
					"args" : [  ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/control_demo",
					"name" : "jmod.control.maxpat",
					"numinlets" : 1,
					"patching_rect" : [ 12.0, 89.0, 301.0, 71.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"args" : [  ],
					"lockeddragscroll" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 303.5, 322.0, 316.0, 322.0, 316.0, 191.0, 332.5, 191.0 ]
				}

			}
 ]
	}

}
