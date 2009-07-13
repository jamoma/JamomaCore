{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 103.0, 45.0, 398.0, 453.0 ],
		"bglocked" : 0,
		"defrect" : [ 103.0, 45.0, 398.0, 453.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/audio/active 0",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 50.0, 315.0, 300.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.sur.output~",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 18.0,
					"patching_rect" : [ 20.0, 15.0, 164.0, 28.0 ],
					"id" : "obj-38",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Distributes multicable signals directly to dac~ output channels",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 20.0, 45.0, 328.0, 19.0 ],
					"id" : "obj-39",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 10.0, 370.0, 60.0 ],
					"id" : "obj-40",
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.sur.multi.in~",
					"numinlets" : 33,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"args" : [ "/demo_multi_in" ],
					"lockeddragscroll" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 50.0, 150.0, 300.0, 70.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-4",
					"name" : "jmod.sur.multi.in~.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 155.0, 375.0, 100.0, 50.0 ],
					"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ],
					"id" : "obj-6",
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 50.0, 375.0, 100.0, 50.0 ],
					"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ],
					"id" : "obj-7",
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adoutput~ 1 2",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 50.0, 345.0, 124.0, 19.0 ],
					"outlettype" : [ "signal", "signal" ],
					"id" : "obj-8",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cycle~ 2",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 58.0, 93.0, 62.0, 19.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-9",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.sur.output~",
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"args" : [ "/output" ],
					"lockeddragscroll" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 50.0, 230.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"name" : "jmod.sur.output~.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "phasor~ 1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 71.0, 115.0, 70.0, 19.0 ],
					"outlettype" : [ "signal" ],
					"id" : "obj-12",
					"fontname" : "Verdana"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-4", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [ 59.5, 306.0, 340.5, 306.0 ]
				}

			}
 ]
	}

}
