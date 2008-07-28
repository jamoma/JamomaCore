{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 184.0, 74.0, 686.0, 561.0 ],
		"bglocked" : 0,
		"defrect" : [ 184.0, 74.0, 686.0, 561.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.970939,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/genframe",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 326.0, 13.0, 60.0, 16.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.change",
					"outlettype" : [ "jit_matrix", "" ],
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 525.0, 114.0, 58.0, 18.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input%",
					"outlettype" : [ "", "" ],
					"lockeddragscroll" : 1,
					"id" : "obj-3",
					"args" : [  ],
					"numinlets" : 1,
					"name" : "jmod.input%.maxpat",
					"patching_rect" : [ 326.0, 33.0, 301.0, 72.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana",
					"id" : "obj-4",
					"minimum" : 1,
					"numinlets" : 1,
					"maximum" : 3,
					"fontsize" : 9.873845,
					"patching_rect" : [ 27.0, 305.0, 35.0, 18.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana",
					"id" : "obj-5",
					"minimum" : 0,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 27.0, 287.0, 35.0, 18.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana",
					"id" : "obj-6",
					"minimum" : 0,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 27.0, 269.0, 35.0, 18.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.avg4%.cmd",
					"fontname" : "Verdana",
					"id" : "obj-7",
					"hidden" : 1,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 26.0, 328.0, 105.0, 18.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.avg4%.cmd",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 0,
					"fontsize" : 9.873845,
					"patching_rect" : [ 326.0, 118.0, 104.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.avg4%.cmd",
					"fontname" : "Verdana",
					"id" : "obj-9",
					"hidden" : 1,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 13.0, 235.0, 105.0, 18.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "" ],
					"lockeddragscroll" : 1,
					"id" : "obj-10",
					"args" : [  ],
					"numinlets" : 0,
					"name" : "jmod.video_params.maxpat",
					"patching_rect" : [ 13.0, 87.0, 273.0, 146.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.avg4%",
					"fontname" : "Verdana",
					"id" : "obj-11",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 17.334082,
					"patching_rect" : [ 19.0, 34.0, 189.0, 28.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "averages 4 pixels of input for each pixel of output",
					"fontname" : "Verdana",
					"id" : "obj-12",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 20.0, 60.0, 256.0, 18.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"id" : "obj-13",
					"numinlets" : 1,
					"patching_rect" : [ 13.0, 18.0, 273.0, 63.0 ],
					"numoutlets" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 326.0, 465.0, 60.0, 34.092003 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0,
					"id" : "obj-15",
					"numinlets" : 1,
					"patching_rect" : [ 325.0, 218.0, 320.0, 240.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/avg4%",
					"outlettype" : [ "", "" ],
					"lockeddragscroll" : 1,
					"id" : "obj-16",
					"args" : [  ],
					"numinlets" : 2,
					"name" : "jmod.avg4%.maxpat",
					"patching_rect" : [ 325.0, 139.0, 301.0, 72.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mode $1",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 65.0, 305.0, 61.0, 16.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/y $1",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 65.0, 287.0, 44.0, 16.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/x $1",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 65.0, 269.0, 43.0, 16.0 ],
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 616.5, 213.0, 334.5, 213.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-16", 1 ],
					"hidden" : 0,
					"midpoints" : [ 534.5, 135.0, 616.5, 135.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 617.5, 110.0, 534.5, 110.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
