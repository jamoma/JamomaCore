{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 700.0, 44.0, 451.0, 516.0 ],
		"bglocked" : 0,
		"defrect" : [ 700.0, 44.0, 451.0, 516.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "jmod.control.maxpat",
					"patching_rect" : [ 51.0, 432.0, 150.0, 70.0 ],
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"numinlets" : 1,
					"args" : [ "DSP" ],
					"id" : "obj-1",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/limiter/threshold 0.",
					"patching_rect" : [ 51.0, 310.0, 301.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"fontname" : "Arial",
					"id" : "obj-2",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.sur.output~",
					"patching_rect" : [ 9.0, 7.0, 164.0, 28.0 ],
					"fontsize" : 17.334082,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-38",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Distributes multicable signals directly to dac~ output channels",
					"patching_rect" : [ 9.0, 33.0, 345.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-39",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 4.0, 3.0, 351.0, 53.0 ],
					"rounded" : 15,
					"numinlets" : 1,
					"id" : "obj-40",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.sur.multi.in~",
					"name" : "jmod.sur.multi.in~.maxpat",
					"patching_rect" : [ 51.0, 152.0, 300.0, 70.0 ],
					"outlettype" : [ "", "" ],
					"lockeddragscroll" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 33,
					"args" : [ "/demo_multi_in" ],
					"id" : "obj-4",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"patching_rect" : [ 155.0, 371.0, 100.0, 50.0 ],
					"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ],
					"rounded" : 0,
					"numinlets" : 2,
					"id" : "obj-6",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"patching_rect" : [ 50.0, 371.0, 100.0, 50.0 ],
					"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ],
					"rounded" : 0,
					"numinlets" : 2,
					"id" : "obj-7",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adoutput~ 1 2",
					"patching_rect" : [ 50.0, 344.0, 124.0, 17.0 ],
					"outlettype" : [ "signal", "signal" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"fontname" : "Arial",
					"id" : "obj-8",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cycle~ 2",
					"patching_rect" : [ 58.0, 93.0, 49.0, 17.0 ],
					"outlettype" : [ "signal" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"fontname" : "Arial",
					"id" : "obj-9",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.sur.output~",
					"name" : "jmod.sur.output~.maxpat",
					"patching_rect" : [ 51.0, 233.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"lockeddragscroll" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 2,
					"args" : [ "/output" ],
					"id" : "obj-11",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "phasor~ 1",
					"patching_rect" : [ 71.0, 115.0, 55.0, 17.0 ],
					"outlettype" : [ "signal" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"fontname" : "Arial",
					"id" : "obj-12",
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [ 60.5, 306.0, 342.5, 306.0 ]
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
 ]
	}

}
