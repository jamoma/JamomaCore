{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 86.0, 44.0, 453.0, 550.0 ],
		"bglocked" : 0,
		"defrect" : [ 86.0, 44.0, 453.0, 550.0 ],
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
					"maxclass" : "comment",
					"text" : "see also:",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 255.0, 500.0, 54.0, 19.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend help",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 255.0, 540.0, 74.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.luma2rgb%",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 255.0, 520.0, 95.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 255.0, 562.0, 49.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 285.0, 185.0, 60.0, 34.245323 ],
					"outlettype" : [ "", "" ],
					"mode" : 4,
					"id" : "obj-5",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 75.0, 185.0, 60.0, 34.245323 ],
					"outlettype" : [ "", "" ],
					"mode" : 4,
					"id" : "obj-6",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 280.0, 260.0, 60.0, 34.245323 ],
					"outlettype" : [ "", "" ],
					"mode" : 4,
					"id" : "obj-7",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.rgb2luma%",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 245.0, 230.0, 95.0, 19.0 ],
					"outlettype" : [ "jit_matrix" ],
					"id" : "obj-8",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 245.0, 300.0, 183.0, 150.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-9",
					"depthbuffer" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.noise 4 char 12 12",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 245.0, 155.0, 116.0, 19.0 ],
					"outlettype" : [ "jit_matrix", "" ],
					"id" : "obj-10",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 1",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 35.0, 75.0, 66.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 75.0, 260.0, 60.0, 34.245323 ],
					"outlettype" : [ "", "" ],
					"mode" : 4,
					"id" : "obj-12",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.rgb2luma%",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 35.0, 230.0, 95.0, 19.0 ],
					"outlettype" : [ "jit_matrix" ],
					"id" : "obj-13",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 35.0, 300.0, 183.0, 150.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-14",
					"depthbuffer" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 35.0, 100.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 50",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 35.0, 125.0, 61.0, 19.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-16",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.noise 1 char 12 12",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 35.0, 155.0, 116.0, 19.0 ],
					"outlettype" : [ "jit_matrix", "" ],
					"id" : "obj-17",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.rgb2luma%",
					"numinlets" : 1,
					"fontsize" : 17.334082,
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 33.0, 21.0, 189.0, 28.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "checks whether it is necessary to use rgb2luma",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 34.0, 47.0, 268.0, 19.0 ],
					"id" : "obj-19",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"rounded" : 15,
					"numoutlets" : 0,
					"patching_rect" : [ 5.0, 5.0, 306.0, 63.0 ],
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The abstraction checks the planes of the matrix and decides whether it is necessary to perform a jit.rgb2luma or not. Saves a little CPU.",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 35.0, 465.0, 356.0, 31.0 ],
					"id" : "obj-21",
					"fontname" : "Verdana"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 44.5, 179.0, 84.5, 179.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 44.5, 255.0, 84.5, 255.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 44.5, 149.0, 254.5, 149.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 254.5, 179.0, 294.5, 179.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 254.5, 254.0, 289.5, 254.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
