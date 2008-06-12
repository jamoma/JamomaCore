{
	"patcher" : 	{
		"rect" : [ 342.0, 128.0, 642.0, 667.0 ],
		"bglocked" : 0,
		"defrect" : [ 342.0, 128.0, 642.0, 667.0 ],
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
					"maxclass" : "newobj",
					"text" : "sprintf %s%s",
					"patching_rect" : [ 166.0, 429.0, 72.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "output converted to OSC",
					"patching_rect" : [ 243.0, 597.0, 157.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "raw pattrstorage output",
					"patching_rect" : [ 30.0, 597.0, 157.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/degrade~\/audio\/bypass 0",
					"patching_rect" : [ 235.0, 552.0, 376.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"patching_rect" : [ 235.0, 529.0, 62.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "regexp \/pattr_gain",
					"patching_rect" : [ 118.0, 491.0, 97.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 5,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "regexp \/controls",
					"patching_rect" : [ 118.0, 462.0, 87.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 5,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "substitute %0",
					"patching_rect" : [ 321.0, 352.0, 73.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "regexp (.*)\/jcom.gui.1Uh.a.stereo.mxt(.*)",
					"patching_rect" : [ 118.0, 407.0, 205.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1,
					"numoutlets" : 5,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/degrade~::jcom.gui.1Uh.a.stereo.mxt::controls::audio\/bypass 0",
					"linecount" : 3,
					"patching_rect" : [ 26.0, 552.0, 138.0, 36.0 ],
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"patching_rect" : [ 26.0, 529.0, 62.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "substitute \/",
					"patching_rect" : [ 133.0, 352.0, 64.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"patching_rect" : [ 231.0, 317.0, 46.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "regexp ::",
					"patching_rect" : [ 118.0, 374.0, 66.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 1,
					"numoutlets" : 5,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "MUST TURN ON OUTPUT MODE!",
					"patching_rect" : [ 365.0, 289.0, 158.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.pattr.example",
					"text" : "pattrstorage jmod.pattr.example @greedy 1 @outputmode 1 @autorestore 0 @savemode 0",
					"linecount" : 2,
					"patching_rect" : [ 118.0, 282.0, 243.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 40, 647, 680, 887 ],
						"storage_rect" : [ 0, 0, 640, 240 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/GlowingEdges",
					"patching_rect" : [ 37.0, 122.0, 301.0, 71.0 ],
					"name" : "jmod.edge%.mxt",
					"lockeddragscroll" : 1,
					"id" : "obj-17",
					"numinlets" : 2,
					"numoutlets" : 2,
					"args" : [  ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/limiter~",
					"patching_rect" : [ 37.0, 205.0, 301.0, 71.0 ],
					"name" : "jmod.limiter~.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-18",
					"numinlets" : 3,
					"numoutlets" : 3,
					"args" : [  ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/degrade~",
					"patching_rect" : [ 35.0, 35.0, 301.0, 71.0 ],
					"name" : "jmod.degrade~.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-19",
					"numinlets" : 3,
					"numoutlets" : 3,
					"args" : [  ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This example demonstrates one way of getting all of the parameter changes made to any module via the pattrstorage object. Because all Jamoma modules use the pattr system internally, you can use pattrstorage to manage the state of your entire environment.",
					"linecount" : 5,
					"patching_rect" : [ 344.0, 36.0, 278.0, 59.0 ],
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 23.0, 549.0, 208.0, 67.0 ],
					"rounded" : 0,
					"id" : "obj-21",
					"numinlets" : 1,
					"border" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.686275, 0.796078, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 233.0, 549.0, 383.0, 67.0 ],
					"rounded" : 0,
					"id" : "obj-22",
					"numinlets" : 1,
					"border" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.690196, 0.686275, 0.866667, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 330.5, 401.0, 127.5, 401.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 175.5, 450.0, 127.5, 450.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 330.5, 457.0, 127.5, 457.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 330.5, 487.0, 127.5, 487.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 3 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 3 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
