{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 384.0, 167.0, 614.0, 417.0 ],
		"bgcolor" : [ 0.137255, 0.137255, 0.137255, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 384.0, 167.0, 614.0, 417.0 ],
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
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "this module is a wrapper around the tap.spectra~ object in tap.tools.",
					"linecount" : 2,
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 49.0, 225.0, 222.0, 28.0 ],
					"id" : "obj-1",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "this module features a number of presets to provide a feel for what types of sounds it may produce on different input. the results vary widely depending upon the source sound.",
					"linecount" : 4,
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 49.0, 166.0, 222.0, 50.0 ],
					"id" : "obj-2",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "this module provides a means to creating bizarre and sometimes unpredictable results by manipulating the bin organization of the input's spectrum.",
					"linecount" : 4,
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 49.0, 107.0, 222.0, 50.0 ],
					"id" : "obj-3",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "spectral manipulation module",
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 49.0, 68.0, 170.0, 17.0 ],
					"id" : "obj-4",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 35 35 35",
					"hidden" : 1,
					"numinlets" : 4,
					"patching_rect" : [ 396.0, 359.0, 88.0, 17.0 ],
					"id" : "obj-5",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "tap.jmod.reverb~.mxt[3]",
					"numinlets" : 1,
					"patching_rect" : [ 30.0, 291.0, 150.0, 70.0 ],
					"id" : "obj-6",
					"numoutlets" : 1,
					"name" : "jmod.control.maxpat",
					"outlettype" : [ "" ],
					"args" : [ "/control" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "tap.jmod.reverb~.mxt[2]",
					"numinlets" : 3,
					"patching_rect" : [ 315.0, 231.0, 300.0, 140.0 ],
					"id" : "obj-7",
					"numoutlets" : 1,
					"name" : "jmod.output~.maxpat",
					"outlettype" : [ "" ],
					"args" : [ "/output~" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "tap.jmod.reverb~.mxt[1]",
					"numinlets" : 1,
					"patching_rect" : [ 315.0, 29.0, 300.0, 140.0 ],
					"id" : "obj-8",
					"numoutlets" : 3,
					"name" : "jmod.input~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/input~" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "tap.jmod.reverb~.mxt",
					"numinlets" : 3,
					"patching_rect" : [ 315.0, 160.0, 255.0, 60.0 ],
					"id" : "obj-9",
					"numoutlets" : 3,
					"name" : "tap.jmod.warp~.mxt",
					"outlettype" : [ "", "", "" ],
					"args" : [ "/warp~" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tap.jmod.warp~",
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 49.0, 41.0, 170.0, 28.0 ],
					"id" : "obj-10",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 18.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"bgcolor" : [ 0.180392, 0.180392, 0.180392, 1.0 ],
					"patching_rect" : [ 34.0, 30.0, 255.0, 60.0 ],
					"id" : "obj-11",
					"numoutlets" : 0,
					"rounded" : 7
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 2 ],
					"destination" : [ "obj-7", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 2 ],
					"destination" : [ "obj-9", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
