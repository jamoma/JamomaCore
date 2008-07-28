{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 149.0, 44.0, 370.0, 810.0 ],
		"bglocked" : 0,
		"defrect" : [ 149.0, 44.0, 370.0, 810.0 ],
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
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"patching_rect" : [ 297.0, 183.0, 33.0, 33.0 ],
					"numoutlets" : 0,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.output~",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"numinlets" : 3,
					"lockeddragscroll" : 1,
					"patching_rect" : [ 46.0, 667.0, 300.0, 140.0 ],
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"args" : [ "/output" ],
					"name" : "jmod.output~.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.vst~[1]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 210.0 ],
					"numinlets" : 3,
					"lockeddragscroll" : 1,
					"patching_rect" : [ 46.0, 455.0, 300.0, 210.0 ],
					"numoutlets" : 3,
					"id" : "obj-3",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/vst~.2" ],
					"name" : "jmod.vst~.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.vst~",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 210.0 ],
					"numinlets" : 3,
					"lockeddragscroll" : 1,
					"patching_rect" : [ 46.0, 243.0, 300.0, 210.0 ],
					"numoutlets" : 3,
					"id" : "obj-4",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/vst~.1" ],
					"name" : "jmod.vst~.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess target 0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 61.0, 175.0, 98.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "poly~ jalg.continuum_synth 10",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 46.0, 199.0, 175.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.continuum",
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 17.334082,
					"patching_rect" : [ 16.0, 29.0, 189.0, 28.0 ],
					"numoutlets" : 0,
					"id" : "obj-7",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "module interfacing with the Haken Continuum Fingerboard",
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 55.0, 300.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-8",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 13.0, 289.0, 63.0 ],
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"numoutlets" : 0,
					"rounded" : 0,
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.continuum",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"patching_rect" : [ 46.0, 86.0, 300.0, 70.0 ],
					"numoutlets" : 1,
					"id" : "obj-10",
					"outlettype" : [ "" ],
					"args" : [ "/continuum" ],
					"name" : "jmod.continuum.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /gdif/cooked/voice",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 46.0, 152.0, 175.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-11",
					"outlettype" : [ "", "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-4", 2 ],
					"hidden" : 0,
					"midpoints" : [ 55.5, 235.0, 336.5, 235.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [ 55.5, 239.0, 196.0, 239.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 2 ],
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 2 ],
					"destination" : [ "obj-3", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
