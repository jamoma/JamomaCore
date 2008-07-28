{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 146.0, 56.0, 627.0, 559.0 ],
		"bglocked" : 0,
		"defrect" : [ 146.0, 56.0, 627.0, 559.0 ],
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
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 425.0, 110.0, 60.0, 19.0 ],
					"id" : "obj-1",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.autocrop%",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 490.0, 110.0, 102.0, 17.0 ],
					"id" : "obj-2",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "phelp",
					"text" : "prepend help",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"hidden" : 1,
					"patching_rect" : [ 490.0, 135.0, 78.0, 19.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"hidden" : 1,
					"patching_rect" : [ 490.0, 155.0, 55.0, 19.0 ],
					"id" : "obj-4",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "remember to connect the output from the window you are cropping from to the right inlet of the component.",
					"linecount" : 3,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 135.0, 185.0, 204.0, 43.0 ],
					"id" : "obj-5",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 50.0, 520.0, 60.0, 34.245323 ],
					"mode" : 3,
					"id" : "obj-6",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 385.0, 515.0, 60.0, 34.245323 ],
					"mode" : 3,
					"id" : "obj-7",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.autosize%",
					"outlettype" : [ "jit_matrix" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 385.0, 250.0, 99.0, 19.0 ],
					"id" : "obj-8",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.crop%",
					"outlettype" : [ "jit_matrix", "jit_matrix", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 50.0, 190.0, 79.0, 19.0 ],
					"id" : "obj-9",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ctrl-click and drag in the window below to crop.",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 65.0, 255.0, 248.0, 19.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 50.0, 280.0, 308.0, 233.0 ],
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
					"patching_rect" : [ 385.0, 280.0, 148.0, 174.0 ],
					"id" : "obj-12",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input%",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 50.0, 95.0, 300.0, 70.0 ],
					"args" : [  ],
					"id" : "obj-13",
					"numinlets" : 1,
					"name" : "jmod.input%.maxpat",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.crop%",
					"fontsize" : 17.334082,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 38.0, 26.0, 189.0, 28.0 ],
					"id" : "obj-14",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "manually crop video",
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 39.0, 52.0, 216.0, 19.0 ],
					"id" : "obj-15",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 15,
					"patching_rect" : [ 10.0, 10.0, 273.0, 63.0 ],
					"id" : "obj-16",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This abstraction is useful if you have to crop the video, for example if there are unwanted elements that you would like to remove before calculating the quantity of motion.",
					"linecount" : 3,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 290.0, 25.0, 318.0, 43.0 ],
					"id" : "obj-17",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 340.5, 169.0, 59.5, 169.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 0 ],
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
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"midpoints" : [ 348.5, 522.0, 370.0, 522.0, 370.0, 177.0, 119.5, 177.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 89.5, 234.0, 394.5, 234.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
