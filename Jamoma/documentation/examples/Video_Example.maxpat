{
	"patcher" : 	{
		"rect" : [ 568.0, 99.0, 663.0, 618.0 ],
		"bglocked" : 0,
		"defrect" : [ 568.0, 99.0, 663.0, 618.0 ],
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
					"maxclass" : "bpatcher",
					"varname" : "\/output%",
					"patching_rect" : [ 188.0, 487.0, 255.0, 60.0 ],
					"name" : "jmod.output%.mxt",
					"lockeddragscroll" : 1,
					"id" : "obj-1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"args" : [  ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"patching_rect" : [ 452.0, 117.0, 60.0, 30.533276 ],
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/input%",
					"patching_rect" : [ 187.0, 92.0, 255.0, 60.0 ],
					"name" : "jmod.input%.mxt",
					"lockeddragscroll" : 1,
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 2,
					"args" : [  ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"patching_rect" : [ 543.0, 177.0, 62.0, 26.0 ],
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/preset\/default",
					"patching_rect" : [ 25.0, 230.0, 82.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/wake",
					"patching_rect" : [ 187.0, 328.0, 255.0, 60.0 ],
					"name" : "jmod.wake%.mxt",
					"lockeddragscroll" : 1,
					"id" : "obj-6",
					"numinlets" : 2,
					"numoutlets" : 2,
					"args" : [  ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/op",
					"patching_rect" : [ 188.0, 404.0, 255.0, 60.0 ],
					"name" : "jmod.op%.mxt",
					"lockeddragscroll" : 1,
					"id" : "obj-7",
					"numinlets" : 3,
					"numoutlets" : 2,
					"args" : [  ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/mblur",
					"patching_rect" : [ 187.0, 252.0, 255.0, 60.0 ],
					"name" : "jmod.mblur%.mxt",
					"lockeddragscroll" : 1,
					"id" : "obj-8",
					"numinlets" : 2,
					"numoutlets" : 2,
					"args" : [  ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/algorithm Sobel",
					"patching_rect" : [ 11.0, 65.0, 94.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/algorithm Robcross",
					"patching_rect" : [ 22.0, 83.0, 111.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.5,
					"patching_rect" : [ 63.0, 103.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-11",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/thresh $1",
					"patching_rect" : [ 63.0, 122.0, 64.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/thresh 0.75 ramp 5000",
					"patching_rect" : [ 75.0, 142.0, 122.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/edge",
					"patching_rect" : [ 187.0, 176.0, 255.0, 60.0 ],
					"name" : "jmod.edge%.mxt",
					"lockeddragscroll" : 1,
					"id" : "obj-14",
					"numinlets" : 2,
					"numoutlets" : 2,
					"args" : [  ],
					"outlettype" : [ "", "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 20.5, 168.0, 196.5, 168.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 31.5, 166.0, 196.5, 166.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 72.5, 164.0, 196.5, 164.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 84.5, 162.0, 196.5, 162.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 34.5, 248.0, 196.5, 248.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [ 432.5, 396.0, 315.5, 396.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-14", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 432.5, 157.0, 447.0, 157.0, 447.0, 111.0, 461.5, 111.0 ]
				}

			}
 ]
	}

}
