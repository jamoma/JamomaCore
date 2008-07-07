{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 55.0, 174.0, 640.0, 506.0 ],
		"bglocked" : 0,
		"defrect" : [ 55.0, 174.0, 640.0, 506.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
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
					"text" : "Temporary hack while we're waiting for a Max 5 compatible version of the real thing.",
					"linecount" : 4,
					"presentation_linecount" : 3,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"presentation_rect" : [ 30.0, 245.0, 169.0, 43.0 ],
					"patching_rect" : [ 435.0, 200.0, 152.0, 55.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "delete 3",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 180.0, 25.0, 51.0, 17.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "aed 4 -39.289406 0. 8.976423",
					"linecount" : 2,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 70.0, 390.0, 131.0, 29.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "xyz 4 -0.568421 0.694737 0.",
					"linecount" : 2,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 250.0, 395.0, 131.0, 29.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-90",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 560.0, 60.0, 50.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-89",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 505.0, 60.0, 50.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak aed 4 0. 0. 0.8",
					"numinlets" : 5,
					"numoutlets" : 1,
					"id" : "obj-87",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 460.0, 95.0, 107.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "xyz 3 0.5 0.5. 0.",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-82",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.0, 100.0, 94.0, 17.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "xyz 2 0. 0.5 0.",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-81",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 255.0, 80.0, 84.0, 17.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "xyz 1 0. 0. 0.",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-80",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 240.0, 60.0, 78.0, 17.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-1",
					"name" : "ambimonitor.maxpat",
					"outlettype" : [ "", "" ],
					"args" : [  ],
					"patching_rect" : [ 180.0, 145.0, 201.0, 216.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-89", 0 ],
					"destination" : [ "obj-87", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-87", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
