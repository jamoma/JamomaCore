{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 155.0, 349.0, 719.0, 595.0 ],
		"bglocked" : 0,
		"defrect" : [ 155.0, 349.0, 719.0, 595.0 ],
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
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"fontsize" : 11.556055,
					"patching_rect" : [ 245.0, 258.0, 83.0, 19.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/genframe",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontsize" : 11.556055,
					"patching_rect" : [ 340.0, 43.0, 83.0, 19.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.change",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "jit_matrix", "" ],
					"id" : "obj-3",
					"fontsize" : 9.873845,
					"patching_rect" : [ 622.0, 149.0, 62.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/direct high 1.",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"fontsize" : 11.556055,
					"patching_rect" : [ 209.0, 328.0, 105.0, 19.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/lo",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"fontsize" : 11.556055,
					"patching_rect" : [ 207.0, 299.0, 35.0, 19.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input%",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"lockeddragscroll" : 1,
					"id" : "obj-6",
					"args" : [  ],
					"name" : "jmod.input%.maxpat",
					"patching_rect" : [ 340.0, 71.0, 301.0, 73.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-7",
					"fontsize" : 9.873845,
					"triscale" : 0.9,
					"patching_rect" : [ 22.0, 341.0, 35.0, 18.0 ],
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-8",
					"fontsize" : 9.873845,
					"triscale" : 0.9,
					"patching_rect" : [ 22.0, 323.0, 35.0, 18.0 ],
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-9",
					"fontsize" : 9.873845,
					"triscale" : 0.9,
					"patching_rect" : [ 22.0, 305.0, 35.0, 18.0 ],
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-10",
					"fontsize" : 9.873845,
					"triscale" : 0.9,
					"patching_rect" : [ 22.0, 287.0, 35.0, 18.0 ],
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-11",
					"patching_rect" : [ 22.0, 359.0, 15.0, 15.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.plur%.cmd",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-12",
					"hidden" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 132.0, 397.0, 102.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.plur%.cmd",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"fontsize" : 9.873845,
					"patching_rect" : [ 339.0, 152.0, 101.0, 18.0 ],
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.plur%.cmd",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-14",
					"hidden" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 13.0, 235.0, 102.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"lockeddragscroll" : 1,
					"id" : "obj-15",
					"args" : [  ],
					"name" : "jmod.video_params.maxpat",
					"patching_rect" : [ 13.0, 87.0, 273.0, 146.0 ],
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.plur%",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-16",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 17.334082,
					"patching_rect" : [ 19.0, 34.0, 189.0, 28.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "video feedback/washout effect",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-17",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 20.0, 60.0, 242.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"rounded" : 0,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"id" : "obj-18",
					"patching_rect" : [ 13.0, 18.0, 273.0, 63.0 ],
					"numinlets" : 1,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-19",
					"fontsize" : 9.873845,
					"patching_rect" : [ 339.0, 502.0, 60.0, 34.092003 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numoutlets" : 2,
					"depthbuffer" : 0,
					"outlettype" : [ "", "" ],
					"id" : "obj-20",
					"patching_rect" : [ 338.0, 255.0, 320.0, 240.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/plur%",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"lockeddragscroll" : 1,
					"id" : "obj-21",
					"args" : [ "/plur%" ],
					"name" : "jmod.plur%.maxpat",
					"patching_rect" : [ 339.0, 172.0, 301.0, 73.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/normalize $1",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-22",
					"fontsize" : 9.873845,
					"patching_rect" : [ 60.0, 359.0, 77.0, 16.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/gain $1",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"fontsize" : 9.873845,
					"patching_rect" : [ 60.0, 323.0, 50.0, 16.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/bleed $1",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"fontsize" : 9.873845,
					"patching_rect" : [ 60.0, 341.0, 56.0, 16.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/feedback $1",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"fontsize" : 9.873845,
					"patching_rect" : [ 60.0, 305.0, 73.0, 16.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/feedforward $1",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-26",
					"fontsize" : 9.873845,
					"patching_rect" : [ 60.0, 287.0, 88.0, 16.0 ],
					"numinlets" : 2
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 630.5, 247.0, 347.5, 247.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-3", 0 ],
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
