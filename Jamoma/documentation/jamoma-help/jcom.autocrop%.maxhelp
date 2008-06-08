{
	"patcher" : 	{
		"rect" : [ 353.0, 49.0, 642.0, 487.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 353.0, 49.0, 642.0, 487.0 ],
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
					"text" : "see also:",
					"patching_rect" : [ 434.0, 133.0, 60.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-1",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.crop%",
					"patching_rect" : [ 484.0, 133.0, 79.0, 16.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "phelp",
					"text" : "prepend help",
					"patching_rect" : [ 484.0, 155.0, 78.0, 18.0 ],
					"numinlets" : 1,
					"hidden" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 484.0, 175.0, 55.0, 18.0 ],
					"numinlets" : 1,
					"hidden" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"patching_rect" : [ 292.0, 120.0, 60.0, 30.533276 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"mode" : 3,
					"id" : "obj-5",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/reset",
					"patching_rect" : [ 45.0, 233.0, 40.0, 15.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/brcosa%",
					"patching_rect" : [ 27.0, 160.0, 255.0, 60.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"args" : [ "\/motion%" ],
					"id" : "obj-7",
					"outlettype" : [ "", "" ],
					"name" : "jmod.brcosa%.mxt"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/input%",
					"patching_rect" : [ 27.0, 90.0, 255.0, 60.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"args" : [  ],
					"id" : "obj-8",
					"outlettype" : [ "", "" ],
					"name" : "jmod.input%.mxt"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.autocrop%",
					"patching_rect" : [ 27.0, 255.0, 83.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-9",
					"outlettype" : [ "jit_matrix", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"patching_rect" : [ 113.0, 253.0, 60.0, 30.533276 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"mode" : 3,
					"id" : "obj-10",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.autocrop%",
					"patching_rect" : [ 32.0, 21.0, 189.0, 28.0 ],
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
					"text" : "automatically crop video",
					"patching_rect" : [ 33.0, 47.0, 132.0, 18.0 ],
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
					"patching_rect" : [ 4.0, 5.0, 273.0, 63.0 ],
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
					"patching_rect" : [ 27.0, 297.0, 109.0, 171.0 ],
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
					"text" : "To make this work, you probably need to ensure that the contrast in the image is good.",
					"linecount" : 4,
					"patching_rect" : [ 286.0, 165.0, 143.0, 54.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-15",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Left output is the video stream, and right output is a message which changes the size of the jit.window.",
					"linecount" : 2,
					"patching_rect" : [ 176.0, 255.0, 313.0, 30.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-16",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This abstraction is useful if you have a video input where there is a clear separation between foreground and background, and want to crop the video to match only the maximum size of the foreground's contraction (like a dancer in front of an even background).",
					"linecount" : 4,
					"patching_rect" : [ 285.0, 15.0, 348.0, 54.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-17",
					"fontsize" : 9.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 272.5, 228.0, 36.5, 228.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 54.5, 251.0, 36.5, 251.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 36.5, 288.0, 36.5, 288.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 100.5, 278.0, 36.5, 278.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1
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
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
