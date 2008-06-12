{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 103.0, 95.0, 698.0, 598.0 ],
		"bglocked" : 0,
		"defrect" : [ 103.0, 95.0, 698.0, 598.0 ],
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
					"patching_rect" : [ 496.0, 291.0, 160.0, 120.0 ],
					"id" : "obj-8",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 336.0, 291.0, 160.0, 120.0 ],
					"id" : "obj-9",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 176.0, 291.0, 160.0, 120.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 16.0, 291.0, 160.0, 120.0 ],
					"id" : "obj-11",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 496.0, 411.0, 160.0, 120.0 ],
					"id" : "obj-12",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 336.0, 411.0, 160.0, 120.0 ],
					"id" : "obj-13",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 176.0, 411.0, 160.0, 120.0 ],
					"id" : "obj-14",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 16.0, 411.0, 160.0, 120.0 ],
					"id" : "obj-15",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 340.0, 98.0, 160.0, 120.0 ],
					"id" : "obj-1",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 89.0, 219.0, 15.0, 15.0 ],
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Output with a bang",
					"fontsize" : 10,
					"patching_rect" : [ 16.0, 200.0, 104.0, 18.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 1",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"hidden" : 1,
					"patching_rect" : [ 111.0, 175.0, 65.0, 18.0 ],
					"id" : "obj-4",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 111.0, 197.0, 15.0, 15.0 ],
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.matrix",
					"outlettype" : [ "jit_matrix", "" ],
					"fontsize" : 10,
					"patching_rect" : [ 191.0, 218.0, 55.0, 18.0 ],
					"id" : "obj-6",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 500",
					"outlettype" : [ "bang" ],
					"fontsize" : 10,
					"patching_rect" : [ 111.0, 218.0, 60.0, 18.0 ],
					"id" : "obj-7",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.spray%",
					"outlettype" : [ "jit_matrix", "jit_matrix", "jit_matrix", "jit_matrix", "jit_matrix", "jit_matrix", "jit_matrix", "jit_matrix" ],
					"fontsize" : 10,
					"patching_rect" : [ 191.0, 257.0, 105.0, 18.0 ],
					"id" : "obj-16",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 8
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input%",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 15.0, 99.0, 255.0, 60.0 ],
					"args" : [ "/input%" ],
					"id" : "obj-17",
					"numinlets" : 1,
					"name" : "jmod.input%.maxpat",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.spray%",
					"fontsize" : 17.334082,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 14.0, 21.0, 142.0, 28.0 ],
					"id" : "obj-18",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Distribute a video over multiple outlets",
					"fontsize" : 10,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 14.0, 46.0, 202.0, 18.0 ],
					"id" : "obj-19",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 0.0, 0.0, 293.0, 70.0 ],
					"id" : "obj-20",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Store the matrix here",
					"fontsize" : 10,
					"patching_rect" : [ 250.0, 222.0, 116.0, 18.0 ],
					"id" : "obj-21",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-16", 4 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 249.642853, 283.0, 505.5, 283.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 200.5, 283.0, 505.5, 283.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 260.5, 171.0, 336.0, 171.0, 336.0, 95.0, 349.5, 95.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 5 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 261.928558, 283.0, 345.5, 283.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 212.785721, 283.0, 345.5, 283.0 ]
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
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 120.5, 246.0, 200.5, 246.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 98.0, 246.0, 200.5, 246.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 260.5, 177.0, 200.5, 177.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 6 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 274.214294, 283.0, 185.5, 283.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 2 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 225.071426, 283.0, 185.5, 283.0 ]
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
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 7 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 286.5, 283.0, 25.5, 283.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 3 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 237.357147, 283.0, 25.5, 283.0 ]
				}

			}
 ]
	}

}
