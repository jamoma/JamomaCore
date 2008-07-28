{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 94.0, 152.0, 667.0, 550.0 ],
		"bglocked" : 0,
		"defrect" : [ 94.0, 152.0, 667.0, 550.0 ],
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
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 170.0, 275.0, 35.0, 18.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/ripple $1",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 170.0, 298.0, 57.0, 16.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jmod.wake%",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 104.0, 394.0, 73.0, 16.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "see also:",
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 31.0, 380.0, 53.0, 18.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend help",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-5",
					"hidden" : 1,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 31.0, 416.0, 74.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jmod.mblur%",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 31.0, 394.0, 77.0, 16.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-7",
					"hidden" : 1,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 31.0, 437.0, 49.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input%1",
					"outlettype" : [ "", "" ],
					"lockeddragscroll" : 1,
					"id" : "obj-8",
					"args" : [ "/input%" ],
					"numinlets" : 1,
					"name" : "jmod.input%.maxpat",
					"patching_rect" : [ 305.0, 33.0, 301.0, 71.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.blur%.cmd",
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 26.0, 325.0, 100.0, 18.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.blur%.cmd",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 0,
					"fontsize" : 9.873845,
					"patching_rect" : [ 305.0, 107.0, 99.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.blur%.cmd",
					"fontname" : "Verdana",
					"id" : "obj-11",
					"hidden" : 1,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 17.0, 237.0, 102.0, 18.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "" ],
					"lockeddragscroll" : 1,
					"id" : "obj-12",
					"args" : [  ],
					"numinlets" : 0,
					"name" : "jmod.video_params.maxpat",
					"patching_rect" : [ 17.0, 89.0, 260.0, 146.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 101.0, 275.0, 35.0, 18.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/ring $1",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 101.0, 298.0, 49.0, 16.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "blur effect",
					"fontname" : "Verdana",
					"id" : "obj-15",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 29.0, 56.0, 217.0, 18.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 26.0, 275.0, 35.0, 18.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/center $1",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 26.0, 298.0, 60.0, 16.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-18",
					"hidden" : 1,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 369.0, 202.0, 73.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/ripple 0.7",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 305.0, 224.0, 127.0, 16.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 305.0, 202.0, 68.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0,
					"id" : "obj-21",
					"numinlets" : 1,
					"patching_rect" : [ 304.0, 249.0, 320.0, 240.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mblur%",
					"outlettype" : [ "", "" ],
					"lockeddragscroll" : 1,
					"id" : "obj-22",
					"args" : [ "/blur%" ],
					"numinlets" : 2,
					"name" : "jmod.blur%.maxpat",
					"patching_rect" : [ 305.0, 128.0, 301.0, 71.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.blur%",
					"fontname" : "Verdana",
					"id" : "obj-23",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 17.334082,
					"patching_rect" : [ 29.0, 28.0, 217.0, 28.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"id" : "obj-24",
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 15.0, 261.0, 66.0 ],
					"numoutlets" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 179.5, 319.0, 35.5, 319.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 110.5, 319.0, 35.5, 319.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [ 113.5, 412.0, 40.5, 412.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 378.5, 221.0, 314.5, 221.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 596.5, 244.0, 313.5, 244.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
