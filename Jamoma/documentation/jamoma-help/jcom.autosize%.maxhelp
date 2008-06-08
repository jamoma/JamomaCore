{
	"patcher" : 	{
		"rect" : [ 50.0, 44.0, 803.0, 755.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 50.0, 44.0, 803.0, 755.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Optional argument makes it possible to specify either the height or width of the output window, and the other value will be set accordingly to maintain the correct video ratio.",
					"linecount" : 3,
					"patching_rect" : [ 407.0, 222.0, 305.0, 42.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-1",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.autosize% @width 120",
					"patching_rect" : [ 598.0, 76.0, 170.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"patching_rect" : [ 597.0, 104.0, 120.0, 10.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-3",
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0,
					"presentation_rect" : [ 0.0, 0.0, 120.0, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.autosize% @height 100",
					"patching_rect" : [ 401.0, 76.0, 172.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"patching_rect" : [ 400.0, 104.0, 10.0, 100.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-5",
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0,
					"presentation_rect" : [ 0.0, 0.0, 10.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Change the resolution or rotation of the video and watch the pwindow below.",
					"linecount" : 5,
					"patching_rect" : [ 277.0, 75.0, 107.0, 66.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-6",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/orsize%",
					"patching_rect" : [ 19.0, 144.0, 255.0, 60.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"args" : [ "\/orsize%" ],
					"id" : "obj-7",
					"outlettype" : [ "", "" ],
					"name" : "jmod.orsize%.mxt"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/input%",
					"patching_rect" : [ 19.0, 75.0, 255.0, 60.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"args" : [ "\/input%" ],
					"id" : "obj-8",
					"outlettype" : [ "", "" ],
					"name" : "jmod.input%.mxt"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"patching_rect" : [ 264.0, 218.0, 60.0, 30.533276 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"mode" : 3,
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.autosize%",
					"patching_rect" : [ 19.0, 227.0, 99.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-10",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.autosize%",
					"patching_rect" : [ 8.0, 12.0, 189.0, 28.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-11",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 15.799999
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "resizing the output window from incoming video",
					"patching_rect" : [ 9.0, 39.0, 299.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-12",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 0.0, 1.0, 273.0, 63.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"rounded" : 0,
					"id" : "obj-13",
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"patching_rect" : [ 18.0, 269.0, 720.0, 480.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-14",
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Automatically updates the size of the output window to match the incoming video stream.",
					"linecount" : 3,
					"patching_rect" : [ 112.0, 218.0, 170.0, 42.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-15",
					"fontsize" : 9.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.5, 210.0, 28.5, 210.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.5, 210.0, 273.5, 210.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.5, 210.0, 391.0, 210.0, 391.0, 69.0, 410.5, 69.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.5, 210.0, 391.0, 210.0, 391.0, 69.0, 607.5, 69.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
