{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 52.0, 44.0, 831.0, 555.0 ],
		"bglocked" : 0,
		"defrect" : [ 52.0, 44.0, 831.0, 555.0 ],
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
					"text" : "Optional argument makes it possible to specify either the height or width of the output window, and the other value will be set accordingly to maintain the correct video ratio.",
					"linecount" : 3,
					"patching_rect" : [ 450.0, 240.0, 306.0, 43.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.autosize% @width 120",
					"patching_rect" : [ 645.0, 80.0, 170.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"patching_rect" : [ 645.0, 105.0, 120.0, 90.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 0.0, 0.0, 120.0, 90.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"depthbuffer" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.autosize% @height 100",
					"patching_rect" : [ 450.0, 80.0, 172.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"patching_rect" : [ 450.0, 105.0, 133.0, 100.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 0.0, 0.0, 133.0, 100.0 ],
					"id" : "obj-5",
					"numinlets" : 1,
					"depthbuffer" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Change the resolution or rotation of the video and watch the pwindow below.",
					"linecount" : 5,
					"patching_rect" : [ 330.0, 80.0, 109.0, 67.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/orsize%",
					"patching_rect" : [ 25.0, 158.0, 300.0, 70.0 ],
					"numoutlets" : 2,
					"args" : [ "/orsize%" ],
					"name" : "jmod.orsize%.maxpat",
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-7",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input%",
					"patching_rect" : [ 25.0, 80.0, 300.0, 70.0 ],
					"numoutlets" : 2,
					"args" : [ "/input%" ],
					"name" : "jmod.input%.maxpat",
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-8",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"patching_rect" : [ 320.0, 240.0, 60.0, 35.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"mode" : 3,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.autosize%",
					"patching_rect" : [ 25.0, 240.0, 99.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.autosize%",
					"patching_rect" : [ 13.0, 16.0, 189.0, 28.0 ],
					"numoutlets" : 0,
					"fontsize" : 17.334082,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "resizing the output window from incoming video",
					"patching_rect" : [ 14.0, 43.0, 253.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 5.0, 5.0, 273.0, 63.0 ],
					"numoutlets" : 0,
					"rounded" : 15,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"id" : "obj-13",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"patching_rect" : [ 25.0, 290.0, 320.0, 240.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 0.0, 0.0, 320.0, 240.0 ],
					"id" : "obj-14",
					"numinlets" : 1,
					"depthbuffer" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Automatically updates the size of the output window to match the incoming video stream.",
					"linecount" : 3,
					"patching_rect" : [ 130.0, 240.0, 170.0, 43.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 315.5, 234.0, 34.5, 234.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 315.5, 234.0, 329.5, 234.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 315.5, 234.0, 443.0, 234.0, 443.0, 73.0, 459.5, 73.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 315.5, 234.0, 443.0, 234.0, 443.0, 73.0, 654.5, 73.0 ]
				}

			}
 ]
	}

}
