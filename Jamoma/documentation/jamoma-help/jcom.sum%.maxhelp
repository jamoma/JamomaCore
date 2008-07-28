{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 156.0, 44.0, 758.0, 544.0 ],
		"bglocked" : 0,
		"defrect" : [ 156.0, 44.0, 758.0, 544.0 ],
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
					"varname" : "/input%",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 20.0, 100.0, 300.0, 70.0 ],
					"args" : [  ],
					"numinlets" : 1,
					"id" : "obj-1",
					"name" : "jmod.input%.maxpat",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 410.0, 240.0, 320.0, 240.0 ],
					"numinlets" : 1,
					"id" : "obj-2",
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s threshold",
					"fontsize" : 10.0,
					"patching_rect" : [ 35.0, 350.0, 66.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s gray",
					"fontsize" : 10.0,
					"patching_rect" : [ 40.0, 285.0, 41.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s compare_frames",
					"fontsize" : 10.0,
					"patching_rect" : [ 50.0, 225.0, 114.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"fontsize" : 10.0,
					"items" : [ "nothing", ",", "movie", ",", "compared", "frames", ",", "grayscale", ",", "threshold" ],
					"patching_rect" : [ 410.0, 90.0, 100.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"labelclick" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r threshold",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 470.0, 190.0, 74.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r gray",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 455.0, 165.0, 47.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r compare_frames",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 440.0, 140.0, 114.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r movie",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 425.0, 115.0, 54.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "switch 4",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 410.0, 215.0, 79.0, 19.0 ],
					"numinlets" : 5,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.sum%",
					"fontsize" : 17.334082,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 20.0, 20.0, 199.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "sum the contents of a jitter matrix",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 20.0, 50.0, 212.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 15,
					"patching_rect" : [ 10.0, 10.0, 273.0, 63.0 ],
					"numinlets" : 1,
					"id" : "obj-14",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 140.0, 500.0, 49.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 80.0, 500.0, 49.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0. 0.",
					"outlettype" : [ "float", "float" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 80.0, 475.0, 79.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 20.0, 500.0, 49.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route quantity location",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 20.0, 445.0, 138.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"fontsize" : 10.0,
					"patching_rect" : [ 35.0, 415.0, 38.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "start",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 195.0, 500.0, 136.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 195.0, 475.0, 73.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "summer",
					"text" : "jcom.sum%",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 20.0, 385.0, 194.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set threshold for conversion to black(zeros) & white(ones)",
					"linecount" : 2,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 163.0, 290.0, 205.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.rgb2luma%",
					"outlettype" : [ "jit_matrix" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 20.0, 250.0, 96.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-26",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.motion%",
					"outlettype" : [ "jit_matrix" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 20.0, 195.0, 92.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-27",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 125.0, 293.0, 39.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"id" : "obj-28",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "opper",
					"text" : "jit.op @op > @val 0.1",
					"outlettype" : [ "jit_matrix", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 20.0, 310.0, 121.0, 19.0 ],
					"numinlets" : 2,
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 410.0, 485.0, 60.0, 34.245323 ],
					"numinlets" : 1,
					"id" : "obj-30",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.sum% only accepts 1 plane char data, so we convert to grayscale here.",
					"linecount" : 2,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 130.0, 245.0, 208.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-31",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 310.5, 185.0, 29.5, 185.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 29.5, 212.0, 59.5, 212.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 29.5, 277.0, 49.5, 277.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 29.5, 337.0, 44.5, 337.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-11", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-11", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
