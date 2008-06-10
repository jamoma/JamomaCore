{
	"patcher" : 	{
		"rect" : [ 156.0, 73.0, 667.0, 550.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 156.0, 73.0, 667.0, 550.0 ],
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
					"maxclass" : "flonum",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 170.0, 275.0, 35.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/ripple $1",
					"numinlets" : 2,
					"patching_rect" : [ 170.0, 298.0, 57.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jmod.wake%",
					"numinlets" : 2,
					"patching_rect" : [ 104.0, 394.0, 67.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "see also:",
					"numinlets" : 1,
					"patching_rect" : [ 31.0, 380.0, 48.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend help",
					"numinlets" : 1,
					"patching_rect" : [ 31.0, 416.0, 64.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jmod.mblur%",
					"numinlets" : 2,
					"patching_rect" : [ 31.0, 394.0, 70.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"patching_rect" : [ 31.0, 437.0, 45.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/input%1",
					"name" : "jmod.input%",
					"numinlets" : 1,
					"patching_rect" : [ 305.0, 33.0, 301.0, 71.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-8",
					"args" : [ "\/input%" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.blur%.cmd",
					"numinlets" : 1,
					"patching_rect" : [ 26.0, 325.0, 91.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.blur%.cmd",
					"numinlets" : 0,
					"patching_rect" : [ 305.0, 107.0, 91.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.mblur%.cmd",
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 237.0, 99.0, 17.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "jmod.video_params.maxpat",
					"numinlets" : 0,
					"patching_rect" : [ 17.0, 89.0, 260.0, 146.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-12",
					"args" : [  ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 101.0, 275.0, 35.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/ring $1",
					"numinlets" : 2,
					"patching_rect" : [ 101.0, 298.0, 49.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "blur effect",
					"numinlets" : 1,
					"patching_rect" : [ 29.0, 56.0, 217.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-15",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 26.0, 275.0, 35.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/center $1",
					"numinlets" : 2,
					"patching_rect" : [ 26.0, 298.0, 60.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"numinlets" : 1,
					"patching_rect" : [ 369.0, 202.0, 65.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"numinlets" : 2,
					"patching_rect" : [ 305.0, 224.0, 127.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"numinlets" : 1,
					"patching_rect" : [ 305.0, 202.0, 61.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"patching_rect" : [ 304.0, 249.0, 320.0, 240.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/mblur%",
					"name" : "jmod.blur%.maxpat",
					"numinlets" : 2,
					"patching_rect" : [ 305.0, 128.0, 301.0, 71.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-22",
					"args" : [ "\/blur%" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.blur%",
					"numinlets" : 1,
					"patching_rect" : [ 29.0, 28.0, 217.0, 28.0 ],
					"numoutlets" : 0,
					"fontsize" : 15.799999,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-23",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"patching_rect" : [ 17.0, 15.0, 261.0, 66.0 ],
					"rounded" : 0,
					"numoutlets" : 0,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"id" : "obj-24"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0
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
					"hidden" : 0
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
					"hidden" : 1
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
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0
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
					"hidden" : 0
				}

			}
 ]
	}

}
