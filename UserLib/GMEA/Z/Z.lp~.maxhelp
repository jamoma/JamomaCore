{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 6.0, 42.0, 665.0, 716.0 ],
		"bglocked" : 0,
		"defrect" : [ 6.0, 42.0, 665.0, 716.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 2.0, 2.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "sftest",
					"numinlets" : 1,
					"name" : "Z.sf2.maxpat",
					"numoutlets" : 3,
					"patching_rect" : [ 340.0, 192.0, 300.0, 70.0 ],
					"args" : [  ],
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"id" : "obj-21",
					"presentation_rect" : [ 341.0, 178.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 372.0, 592.0, 12.0, 102.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 336.0, 592.0, 12.0, 102.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 312.0, 592.0, 12.0, 102.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 276.0, 592.0, 12.0, 102.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 240.0, 592.0, 12.0, 102.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 204.0, 592.0, 12.0, 102.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 168.0, 592.0, 12.0, 102.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 132.0, 592.0, 12.0, 102.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 96.0, 592.0, 12.0, 102.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 60.0, 592.0, 12.0, 102.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "zenv[1]",
					"numinlets" : 2,
					"name" : "Z.spatter.maxpat",
					"numoutlets" : 11,
					"patching_rect" : [ 16.0, 474.0, 300.0, 105.0 ],
					"args" : [  ],
					"outlettype" : [ "", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"id" : "obj-2",
					"presentation_rect" : [ 22.0, 476.0, 300.0, 105.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "lptest",
					"numinlets" : 1,
					"name" : "Z.lp~.maxpat",
					"numoutlets" : 3,
					"patching_rect" : [ 20.0, 178.0, 300.0, 140.0 ],
					"args" : [ "buffer-tester" ],
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"id" : "obj-8",
					"presentation_rect" : [ 15.0, 15.0, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "zenv",
					"numinlets" : 3,
					"name" : "Z.env~.maxpat",
					"numoutlets" : 2,
					"patching_rect" : [ 20.0, 322.0, 300.0, 140.0 ],
					"args" : [  ],
					"outlettype" : [ "", "signal" ],
					"id" : "obj-6",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Drag and drop : \n\nSoundfiles are organized in folders and drop in the main folder containing the all subfolders.\n\nor\n\nDrop files",
					"linecount" : 8,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 332.0, 80.0, 271.0, 98.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "toto",
					"numinlets" : 1,
					"name" : "jmod.bufferpool.maxpat",
					"numoutlets" : 1,
					"patching_rect" : [ 176.0, 86.0, 150.0, 70.0 ],
					"args" : [ "bp" ],
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Loopsync",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 398.0, 360.0, 51.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"interval" : 250.0,
					"numinlets" : 2,
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"patching_rect" : [ 396.0, 338.0, 86.0, 20.0 ],
					"sig" : 0.0,
					"outlettype" : [ "signal", "float" ],
					"mode" : 2,
					"fontname" : "Arial",
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r cmd",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 22.0, 157.0, 35.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.buffer-tester~",
					"numinlets" : 1,
					"fontsize" : 17.334082,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 7.0, 271.0, 28.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A simple sampleplayer based on buffer~ and groove~",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 33.0, 345.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3.0, 3.0, 351.0, 53.0 ],
					"rounded" : 15,
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 426.0, 622.0, 47.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control.mxt",
					"numinlets" : 1,
					"name" : "jmod.control.maxpat",
					"numoutlets" : 1,
					"patching_rect" : [ 16.0, 84.0, 150.0, 70.0 ],
					"args" : [ "control" ],
					"outlettype" : [ "" ],
					"lockeddragscroll" : 1,
					"id" : "obj-5",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 2 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 2 ],
					"destination" : [ "obj-6", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 8 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 7 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 6 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 5 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 4 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 3 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 2 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 9 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 10 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
