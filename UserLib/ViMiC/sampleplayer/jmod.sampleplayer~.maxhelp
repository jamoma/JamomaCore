{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 655.0, 50.0, 641.0, 516.0 ],
		"bglocked" : 0,
		"defrect" : [ 655.0, 50.0, 641.0, 516.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
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
					"maxclass" : "comment",
					"text" : "jmod.sampleplayer~",
					"fontsize" : 17.334082,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 7.0, 271.0, 28.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-38",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A simple sampleplayer based on buffer~",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 33.0, 345.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-39",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3.0, 3.0, 351.0, 53.0 ],
					"id" : "obj-40",
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 163.0, 324.0, 162.0, 17.0 ],
					"id" : "obj-1",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control.mxt",
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 22.0, 97.0, 151.0, 71.0 ],
					"outlettype" : [ "" ],
					"name" : "jmod.control.maxpat",
					"id" : "obj-5",
					"args" : [ "/jmod.control.mxt" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/sample/displaylength 90173.226562",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 24.0, 352.0, 451.0, 15.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.sampleplayer~.mxt",
					"numinlets" : 2,
					"lockeddragscroll" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 24.0, 178.0, 301.0, 143.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"name" : "jmod.sampleplayer~.maxpat",
					"id" : "obj-8",
					"args" : [  ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 1,
					"midpoints" : [ 33.5, 346.0, 465.5, 346.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 2 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
