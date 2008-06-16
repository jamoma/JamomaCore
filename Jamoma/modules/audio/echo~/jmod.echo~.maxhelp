{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 244.0, 85.0, 847.0, 780.0 ],
		"bglocked" : 0,
		"defrect" : [ 244.0, 85.0, 847.0, 780.0 ],
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
					"maxclass" : "bpatcher",
					"patching_rect" : [ 400.0, 80.0, 300.0, 140.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"id" : "obj-48",
					"name" : "jmod.input~.maxpat",
					"args" : [ "/input" ],
					"numinlets" : 1,
					"presentation_rect" : [ 536.0, 6.0, 0.0, 0.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 400.0, 380.0, 300.0, 140.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-47",
					"name" : "jmod.output~.maxpat",
					"args" : [ "/output" ],
					"numinlets" : 3,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.echo.cmd",
					"hidden" : 1,
					"patching_rect" : [ 276.0, 659.0, 101.0, 19.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 5.0, 655.0, 374.0, 143.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"name" : "jmod.attr_params.maxpat",
					"args" : [ "/left" ],
					"numinlets" : 0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.echo.cmd",
					"hidden" : 1,
					"patching_rect" : [ 263.0, 314.0, 101.0, 19.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 4.0, 305.0, 374.0, 347.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"name" : "jmod.preset_params.maxpat",
					"args" : [ "jmod.echo~" ],
					"numinlets" : 0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.echo.cmd",
					"hidden" : 1,
					"patching_rect" : [ 268.0, 83.0, 101.0, 19.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 4.0, 76.0, 374.0, 221.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"name" : "jmod.gain_params.maxpat",
					"args" : [  ],
					"numinlets" : 0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"maximum" : 10000,
					"patching_rect" : [ 396.0, 588.0, 35.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1,
					"minimum" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"maximum" : 10000,
					"patching_rect" : [ 396.0, 570.0, 35.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1,
					"minimum" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/feedback 0.7 ramp 5000",
					"patching_rect" : [ 568.0, 590.0, 136.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/feedback $1",
					"patching_rect" : [ 605.0, 572.0, 74.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 568.0, 572.0, 35.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/right $1",
					"patching_rect" : [ 433.0, 587.0, 55.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/left $1",
					"patching_rect" : [ 433.0, 570.0, 47.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.echo~",
					"patching_rect" : [ 9.0, 19.0, 197.0, 28.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"fontsize" : 18.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "stereo echo module",
					"patching_rect" : [ 10.0, 45.0, 247.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 3.0, 3.0, 374.0, 68.0 ],
					"id" : "obj-16",
					"rounded" : 15,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"types" : [  ],
					"patching_rect" : [ 396.0, 607.0, 74.0, 19.0 ],
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"items" : [ "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "highshelf" ],
					"labelclick" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /filtertype",
					"hidden" : 1,
					"patching_rect" : [ 469.0, 607.0, 103.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/q 10 ramp 5000",
					"patching_rect" : [ 568.0, 667.0, 94.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/q $1",
					"patching_rect" : [ 433.0, 664.0, 38.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 396.0, 664.0, 35.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/filtergain $1",
					"patching_rect" : [ 433.0, 646.0, 74.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 396.0, 646.0, 35.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/filtergain 0.2 ramp 5000",
					"patching_rect" : [ 568.0, 649.0, 136.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.echo.cmd",
					"hidden" : 1,
					"patching_rect" : [ 653.0, 538.0, 95.0, 19.0 ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.echo.cmd",
					"patching_rect" : [ 400.0, 230.0, 94.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/cf 5000 ramp 5000",
					"patching_rect" : [ 568.0, 631.0, 109.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Module specific attributes",
					"patching_rect" : [ 395.0, 535.0, 193.0, 24.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-28",
					"fontname" : "Verdana",
					"fontsize" : 14.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 391.0, 533.0, 373.0, 27.0 ],
					"id" : "obj-29",
					"rounded" : 15,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"hidden" : 1,
					"patching_rect" : [ 470.0, 330.0, 74.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/right 750",
					"patching_rect" : [ 400.0, 355.0, 97.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"patching_rect" : [ 400.0, 330.0, 68.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-33",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control",
					"patching_rect" : [ 400.0, 5.0, 154.0, 72.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-34",
					"name" : "jmod.control.maxpat",
					"args" : [ "/control" ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/echo~",
					"patching_rect" : [ 400.0, 255.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"id" : "obj-36",
					"name" : "jmod.echo~.maxpat",
					"args" : [ "/echo" ],
					"numinlets" : 3,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/cf $1",
					"patching_rect" : [ 433.0, 628.0, 40.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-37",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 396.0, 628.0, 35.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-38",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 391.0, 564.0, 373.0, 130.0 ],
					"id" : "obj-39",
					"rounded" : 15,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-48", 2 ],
					"destination" : [ "obj-36", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 1 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 2 ],
					"destination" : [ "obj-47", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-47", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [ 479.5, 351.0, 409.5, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
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
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
