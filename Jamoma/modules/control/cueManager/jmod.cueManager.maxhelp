{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 324.0, 123.0, 714.0, 680.0 ],
		"bglocked" : 0,
		"defrect" : [ 324.0, 123.0, 714.0, 680.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 3,
					"patching_rect" : [ 15.0, 475.0, 300.0, 140.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"args" : [ "/output~" ],
					"id" : "obj-43",
					"presentation_rect" : [ 45.0, 45.0, 300.0, 140.0 ],
					"name" : "jmod.output~.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.degrade.cmd",
					"numinlets" : 0,
					"patching_rect" : [ 15.0, 360.0, 110.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 430.0, 73.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/module_name /degrade~.1",
					"linecount" : 2,
					"numinlets" : 2,
					"patching_rect" : [ 15.0, 455.0, 134.0, 28.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/control",
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 120.0, 150.0, 70.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"args" : [ "/control" ],
					"id" : "obj-26",
					"presentation_rect" : [ 45.0, 45.0, 150.0, 70.0 ],
					"name" : "jmod.control.maxpat",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 215.0, 300.0, 140.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/input~" ],
					"id" : "obj-27",
					"presentation_rect" : [ 45.0, 45.0, 300.0, 140.0 ],
					"name" : "jmod.input~.maxpat",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/degrade~",
					"numinlets" : 3,
					"patching_rect" : [ 15.0, 380.0, 300.0, 70.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/degrade~" ],
					"id" : "obj-28",
					"presentation_rect" : [ 45.0, 45.0, 300.0, 70.0 ],
					"name" : "jmod.degrade~.maxpat",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.cueManager",
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 20.0, 189.0, 28.0 ],
					"fontsize" : 17.334082,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-21",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Module for managing cuelists",
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 50.0, 242.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-22",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 5.0, 320.0, 70.0 ],
					"rounded" : 15,
					"numoutlets" : 0,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/cueManager",
					"numinlets" : 1,
					"patching_rect" : [ 365.0, 120.0, 300.0, 105.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"args" : [ "/cueManager" ],
					"id" : "obj-36",
					"presentation_rect" : [ 15.0, 15.0, 300.0, 105.0 ],
					"name" : "jmod.cueManager.maxpat"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 2 ],
					"destination" : [ "obj-28", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 452.0, 139.5, 452.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 2 ],
					"destination" : [ "obj-43", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-43", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
