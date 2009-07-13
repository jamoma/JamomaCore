{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 459.0, 44.0, 687.0, 507.0 ],
		"bglocked" : 0,
		"defrect" : [ 459.0, 44.0, 687.0, 507.0 ],
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
					"maxclass" : "comment",
					"text" : "colors are parameters, and then can be stored in cues",
					"presentation_linecount" : 2,
					"presentation_rect" : [ 377.0, 317.0, 189.0, 30.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 365.0, 355.0, 280.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"presentation" : 1,
					"id" : "obj-2",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/cueManager",
					"presentation_rect" : [ 30.0, 145.0, 300.0, 105.0 ],
					"args" : [ "/cueManager" ],
					"patching_rect" : [ 355.0, 385.0, 300.0, 105.0 ],
					"presentation" : 1,
					"id" : "obj-36",
					"numinlets" : 1,
					"name" : "jmod.cueManager.maxpat",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"args" : [  ],
					"patching_rect" : [ 395.0, 135.0, 262.0, 128.0 ],
					"id" : "obj-1",
					"numinlets" : 0,
					"name" : "jcom.moduleColor.maxpat",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "choose the module and element of which you want to change the color",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 396.0, 97.0, 189.0, 30.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 395.0, 95.0, 250.0, 30.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"presentation" : 1,
					"id" : "obj-3",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"presentation_rect" : [ 60.0, 580.0, 300.0, 140.0 ],
					"args" : [ "/output~" ],
					"patching_rect" : [ 25.0, 350.0, 300.0, 140.0 ],
					"presentation" : 1,
					"id" : "obj-43",
					"numinlets" : 3,
					"name" : "jmod.output~.maxpat",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"presentation_rect" : [ 45.0, 345.0, 300.0, 140.0 ],
					"args" : [ "/input~" ],
					"patching_rect" : [ 25.0, 130.0, 300.0, 140.0 ],
					"presentation" : 1,
					"id" : "obj-27",
					"numinlets" : 1,
					"name" : "jmod.input~.maxpat",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/degrade~",
					"presentation_rect" : [ 45.0, 490.0, 300.0, 70.0 ],
					"args" : [ "/degrade~" ],
					"patching_rect" : [ 25.0, 275.0, 300.0, 70.0 ],
					"presentation" : 1,
					"id" : "obj-28",
					"numinlets" : 3,
					"name" : "jmod.degrade~.maxpat",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.moduleColor",
					"presentation_rect" : [ 30.0, 35.0, 189.0, 28.0 ],
					"fontsize" : 17.334082,
					"patching_rect" : [ 30.0, 35.0, 189.0, 28.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"presentation" : 1,
					"id" : "obj-21",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Utility for managing module colors",
					"presentation_rect" : [ 30.0, 65.0, 189.0, 18.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 30.0, 65.0, 189.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"presentation" : 1,
					"id" : "obj-22",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 20.0, 20.0, 320.0, 70.0 ],
					"patching_rect" : [ 20.0, 20.0, 304.0, 71.0 ],
					"presentation" : 1,
					"id" : "obj-23",
					"rounded" : 15,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-27", 2 ],
					"destination" : [ "obj-28", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0,
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
