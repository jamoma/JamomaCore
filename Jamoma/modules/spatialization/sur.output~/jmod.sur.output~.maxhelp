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
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "jmod.control.maxpat",
					"args" : [ "DSP" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 51.0, 432.0, 150.0, 70.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/offset 0",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 51.0, 310.0, 301.0, 16.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.sur.output~",
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 7.0, 164.0, 28.0 ],
					"fontsize" : 17.334082,
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Distribute multicable signals directly to dac output channels",
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 33.0, 345.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 3.0, 351.0, 53.0 ],
					"rounded" : 15,
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.sur.multi.in~",
					"name" : "jmod.sur.multi.in~.maxpat",
					"args" : [ "/demo_multi_in" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 33,
					"lockeddragscroll" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 51.0, 152.0, 300.0, 70.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ],
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 155.0, 371.0, 100.0, 50.0 ],
					"rounded" : 0,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ],
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 50.0, 371.0, 100.0, 50.0 ],
					"rounded" : 0,
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adoutput~ 1 2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 50.0, 344.0, 124.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "signal", "signal" ],
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cycle~ 2",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 58.0, 93.0, 49.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "signal" ],
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.sur.output~",
					"name" : "jmod.sur.output~.maxpat",
					"args" : [ "/output" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 2,
					"lockeddragscroll" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 51.0, 233.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "phasor~ 1",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 71.0, 115.0, 55.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "signal" ],
					"id" : "obj-12"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
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
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-4", 2 ],
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
					"midpoints" : [ 60.5, 306.0, 342.5, 306.0 ]
				}

			}
 ]
	}

}
