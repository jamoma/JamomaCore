{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 52.0, 44.0, 650.0, 576.0 ],
		"bglocked" : 0,
		"defrect" : [ 52.0, 44.0, 650.0, 576.0 ],
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
					"numoutlets" : 0,
					"patching_rect" : [ 434.0, 133.0, 60.0, 19.0 ],
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.crop%",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.0, 133.0, 79.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "phelp",
					"text" : "prepend help",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.0, 155.0, 78.0, 19.0 ],
					"fontname" : "Verdana",
					"id" : "obj-3",
					"hidden" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.0, 175.0, 55.0, 19.0 ],
					"fontname" : "Verdana",
					"id" : "obj-4",
					"hidden" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 340.0, 120.0, 60.0, 35.0 ],
					"fontname" : "Verdana",
					"id" : "obj-5",
					"mode" : 3,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/reset",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 44.0, 257.0, 40.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/brcosa%",
					"numoutlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 27.0, 170.0, 300.0, 70.0 ],
					"id" : "obj-7",
					"name" : "jmod.brcosa%.maxpat",
					"args" : [ "/motion%" ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input%",
					"numoutlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 27.0, 90.0, 300.0, 70.0 ],
					"id" : "obj-8",
					"name" : "jmod.input%.maxpat",
					"args" : [  ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.autocrop%",
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 27.0, 279.0, 91.0, 19.0 ],
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 125.0, 279.0, 60.0, 35.0 ],
					"fontname" : "Verdana",
					"id" : "obj-10",
					"mode" : 3,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.autocrop%",
					"fontsize" : 17.334082,
					"numoutlets" : 0,
					"patching_rect" : [ 32.0, 21.0, 189.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "automatically crop video",
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 33.0, 47.0, 132.0, 19.0 ],
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 5.0, 273.0, 63.0 ],
					"id" : "obj-13",
					"rounded" : 15,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"depthbuffer" : 0,
					"numoutlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 319.0, 239.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 27.0, 321.0, 319.0, 239.0 ],
					"id" : "obj-14",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "To make this work, you probably need to ensure that the contrast in the image is good.",
					"linecount" : 4,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 340.0, 170.0, 143.0, 55.0 ],
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Left output is the video stream, and right output is a message which changes the size of the jit.window.",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 190.0, 279.0, 313.0, 31.0 ],
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This abstraction is useful if you have a video input where there is a clear separation between foreground and background, and want to crop the video to match only the maximum size of the foreground's contraction (like a dancer in front of an even background).",
					"linecount" : 4,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 285.0, 15.0, 352.0, 55.0 ],
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 317.5, 249.0, 30.0, 249.0, 30.0, 276.0, 36.5, 276.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 53.5, 275.0, 36.5, 275.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 36.5, 312.0, 36.5, 312.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 108.5, 302.0, 36.5, 302.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [ 36.5, 306.0, 120.0, 306.0, 120.0, 276.0, 134.5, 276.0 ]
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
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [ 317.5, 162.0, 336.0, 162.0, 336.0, 117.0, 349.5, 117.0 ]
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
