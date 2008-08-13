{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 639.0, 50.0, 641.0, 516.0 ],
		"bglocked" : 0,
		"defrect" : [ 639.0, 50.0, 641.0, 516.0 ],
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
					"id" : "obj-38",
					"patching_rect" : [ 8.0, 7.0, 271.0, 28.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A simple sampleplayer based on buffer~",
					"fontsize" : 10.0,
					"id" : "obj-39",
					"patching_rect" : [ 8.0, 33.0, 345.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-40",
					"patching_rect" : [ 3.0, 3.0, 351.0, 53.0 ],
					"numinlets" : 1,
					"rounded" : 15,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2",
					"fontsize" : 9.0,
					"id" : "obj-1",
					"patching_rect" : [ 159.0, 324.0, 162.0, 17.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control.mxt",
					"outlettype" : [ "" ],
					"lockeddragscroll" : 1,
					"args" : [ "/jmod.control.mxt" ],
					"id" : "obj-5",
					"patching_rect" : [ 22.0, 97.0, 151.0, 71.0 ],
					"name" : "jmod.control.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/ui/freeze 0",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"id" : "obj-6",
					"patching_rect" : [ 24.0, 352.0, 451.0, 15.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.sampleplayer~.mxt",
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"args" : [  ],
					"id" : "obj-8",
					"patching_rect" : [ 22.0, 178.0, 301.0, 143.0 ],
					"name" : "jmod.sampleplayer~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 3
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 1,
					"midpoints" : [ 31.5, 346.0, 465.5, 346.0 ]
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
