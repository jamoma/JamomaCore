{
	"patcher" : 	{
		"rect" : [ 331.0, 308.0, 736.0, 565.0 ],
		"bglocked" : 0,
		"defrect" : [ 331.0, 308.0, 736.0, 565.0 ],
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
					"varname" : "jmod.pattr.example",
					"text" : "pattrstorage jmod.pattr.example @savemode 0",
					"patching_rect" : [ 106.0, 471.0, 245.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"save2" : [ "#X", "autorestore", "jmod.pattr.example.xml", ";" ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 10, 59, 770, 844 ],
						"storage_rect" : [ 0, 0, 640, 240 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/edge%",
					"patching_rect" : [ 334.0, 109.0, 301.0, 69.0 ],
					"name" : "jmod.edge%.mxt",
					"lockeddragscroll" : 1,
					"id" : "obj-2",
					"numinlets" : 2,
					"numoutlets" : 2,
					"args" : [  ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/degrade~",
					"patching_rect" : [ 58.0, 183.0, 301.0, 69.0 ],
					"name" : "jmod.degrade~.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-3",
					"numinlets" : 3,
					"numoutlets" : 3,
					"args" : [  ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/another_degrade~",
					"patching_rect" : [ 23.0, 80.0, 301.0, 69.0 ],
					"name" : "jmod.degrade~.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-4",
					"numinlets" : 3,
					"numoutlets" : 3,
					"args" : [  ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "readagain",
					"patching_rect" : [ 371.0, 284.0, 52.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "writeagain",
					"patching_rect" : [ 357.0, 265.0, 55.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1, 2 1000",
					"patching_rect" : [ 292.0, 419.0, 55.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line 1.",
					"patching_rect" : [ 292.0, 441.0, 40.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 3,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "store 3",
					"patching_rect" : [ 304.0, 334.0, 42.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"bgcolor" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "3",
					"patching_rect" : [ 167.0, 378.0, 16.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"patching_rect" : [ 464.0, 375.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-11",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
					"maximum" : 1.0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "recall 1 3 $1",
					"patching_rect" : [ 464.0, 394.0, 68.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "2",
					"patching_rect" : [ 148.0, 378.0, 16.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"patching_rect" : [ 129.0, 378.0, 16.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "store 2",
					"patching_rect" : [ 256.0, 334.0, 42.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"bgcolor" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "store 1",
					"patching_rect" : [ 209.0, 334.0, 42.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"bgcolor" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "read (filename) reads stored data from a file",
					"patching_rect" : [ 149.0, 284.0, 216.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "read",
					"patching_rect" : [ 115.0, 284.0, 29.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "write",
					"patching_rect" : [ 99.0, 265.0, 34.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 1.0,
					"patching_rect" : [ 300.0, 377.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-20",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
					"maximum" : 2.0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "write (filename) writes stored data to a file",
					"patching_rect" : [ 139.0, 265.0, 213.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "store currently available data in a numbered preset",
					"patching_rect" : [ 348.0, 335.0, 265.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "recall data from a numbered preset",
					"linecount" : 2,
					"patching_rect" : [ 184.0, 373.0, 88.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "recall data interpolated between two presets",
					"linecount" : 2,
					"patching_rect" : [ 337.0, 373.0, 116.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "recall data interpolated between two non-adjacent presets",
					"linecount" : 2,
					"patching_rect" : [ 452.0, 416.0, 153.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "or, use line to move between them...",
					"linecount" : 2,
					"patching_rect" : [ 350.0, 428.0, 100.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-26",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "read and write, using the same file as previously used.",
					"linecount" : 2,
					"patching_rect" : [ 428.0, 269.0, 151.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-27",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 94.0, 261.0, 512.0, 43.0 ],
					"rounded" : 0,
					"id" : "obj-28",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.87451, 1.0, 0.894118, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 94.0, 304.0, 512.0, 64.0 ],
					"rounded" : 0,
					"id" : "obj-29",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.815686, 0.815686, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 94.0, 368.0, 512.0, 57.0 ],
					"rounded" : 0,
					"id" : "obj-30",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.870588, 0.996078, 0.619608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 283.0, 425.0, 323.0, 41.0 ],
					"rounded" : 0,
					"id" : "obj-31",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.870588, 0.996078, 0.619608, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
