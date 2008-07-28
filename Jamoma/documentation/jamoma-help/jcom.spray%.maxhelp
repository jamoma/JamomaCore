{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 103.0, 95.0, 697.0, 566.0 ],
		"bglocked" : 0,
		"defrect" : [ 103.0, 95.0, 697.0, 566.0 ],
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
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 510.0, 305.0, 160.0, 120.0 ],
					"numinlets" : 1,
					"id" : "obj-8",
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 350.0, 305.0, 160.0, 120.0 ],
					"numinlets" : 1,
					"id" : "obj-9",
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 190.0, 305.0, 160.0, 120.0 ],
					"numinlets" : 1,
					"id" : "obj-10",
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 30.0, 305.0, 160.0, 120.0 ],
					"numinlets" : 1,
					"id" : "obj-11",
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 510.0, 425.0, 160.0, 120.0 ],
					"numinlets" : 1,
					"id" : "obj-12",
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 350.0, 425.0, 160.0, 120.0 ],
					"numinlets" : 1,
					"id" : "obj-13",
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 190.0, 425.0, 160.0, 120.0 ],
					"numinlets" : 1,
					"id" : "obj-14",
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 30.0, 425.0, 160.0, 120.0 ],
					"numinlets" : 1,
					"id" : "obj-15",
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 360.0, 105.0, 160.0, 120.0 ],
					"numinlets" : 1,
					"id" : "obj-1",
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 100.0, 235.0, 18.0, 18.0 ],
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Output with a bang",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 15.0, 205.0, 106.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 1",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"hidden" : 1,
					"patching_rect" : [ 125.0, 185.0, 66.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 125.0, 210.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-5",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.matrix",
					"outlettype" : [ "jit_matrix", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 205.0, 235.0, 55.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 500",
					"outlettype" : [ "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 125.0, 235.0, 61.0, 19.0 ],
					"numinlets" : 2,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.spray%",
					"outlettype" : [ "jit_matrix", "jit_matrix", "jit_matrix", "jit_matrix", "jit_matrix", "jit_matrix", "jit_matrix", "jit_matrix" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 205.0, 270.0, 105.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numoutlets" : 8
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input%",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 30.0, 105.0, 300.0, 70.0 ],
					"args" : [ "/input%" ],
					"numinlets" : 1,
					"id" : "obj-17",
					"name" : "jmod.input%.maxpat",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.spray%",
					"fontsize" : 17.334082,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 25.0, 25.0, 142.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Distribute a video over multiple outlets",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 25.0, 50.0, 205.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 15,
					"patching_rect" : [ 15.0, 15.0, 294.0, 64.0 ],
					"numinlets" : 1,
					"id" : "obj-20",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Store the matrix here",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 265.0, 235.0, 117.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-16", 3 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 251.357147, 298.0, 39.5, 298.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 7 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 300.5, 298.0, 39.5, 298.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 2 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 239.071426, 298.0, 199.5, 298.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 6 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 288.214294, 298.0, 199.5, 298.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 320.5, 192.0, 214.5, 192.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 261.0, 214.5, 261.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 134.5, 261.0, 214.5, 261.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 226.785721, 298.0, 359.5, 298.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 5 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 275.928558, 298.0, 359.5, 298.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 320.5, 186.0, 351.0, 186.0, 351.0, 100.0, 369.5, 100.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 214.5, 298.0, 519.5, 298.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 4 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 263.642853, 298.0, 519.5, 298.0 ]
				}

			}
 ]
	}

}
