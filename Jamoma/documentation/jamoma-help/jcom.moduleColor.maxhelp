{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 222.0, 141.0, 687.0, 507.0 ],
		"bglocked" : 0,
		"defrect" : [ 222.0, 141.0, 687.0, 507.0 ],
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
					"presentation" : 1,
					"id" : "obj-43",
					"name" : "jmod.output~.maxpat",
					"numoutlets" : 1,
					"args" : [ "/output~" ],
					"outlettype" : [ "" ],
					"presentation_rect" : [ 60.0, 580.0, 300.0, 140.0 ],
					"patching_rect" : [ 25.0, 350.0, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"id" : "obj-1",
					"name" : "jcom.moduleColor.maxpat",
					"numoutlets" : 0,
					"args" : [  ],
					"patching_rect" : [ 390.0, 145.0, 262.0, 128.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-27",
					"name" : "jmod.input~.maxpat",
					"numoutlets" : 3,
					"args" : [ "/input~" ],
					"outlettype" : [ "", "signal", "signal" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 45.0, 345.0, 300.0, 140.0 ],
					"patching_rect" : [ 25.0, 130.0, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/degrade~",
					"numinlets" : 3,
					"presentation" : 1,
					"id" : "obj-28",
					"name" : "jmod.degrade~.maxpat",
					"numoutlets" : 3,
					"args" : [ "/degrade~" ],
					"outlettype" : [ "", "signal", "signal" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 45.0, 490.0, 300.0, 70.0 ],
					"patching_rect" : [ 25.0, 275.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.moduleColor",
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 17.334082,
					"presentation_rect" : [ 30.0, 35.0, 189.0, 28.0 ],
					"patching_rect" : [ 30.0, 35.0, 189.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Utility for managing module colors",
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.873845,
					"presentation_rect" : [ 30.0, 65.0, 189.0, 18.0 ],
					"patching_rect" : [ 30.0, 65.0, 189.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-23",
					"rounded" : 15,
					"numoutlets" : 0,
					"presentation_rect" : [ 20.0, 20.0, 320.0, 70.0 ],
					"patching_rect" : [ 20.0, 20.0, 320.0, 70.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-43", 1 ],
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
 ]
	}

}
