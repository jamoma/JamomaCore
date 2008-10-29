{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 456.0, 44.0, 640.0, 506.0 ],
		"bglocked" : 0,
		"defrect" : [ 456.0, 44.0, 640.0, 506.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.dataspace @dataspace position @input aed @output xyz",
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"patching_rect" : [ 135.0, 243.0, 324.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message",
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"patching_rect" : [ 104.0, 199.0, 83.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"type" : "msg_list",
						"description" : "Position of the Nth source.",
						"range/clipmode" : "none",
						"dataspace/unit/internal" : "aed",
						"dataspace/unit/active" : "aed",
						"dataspace" : "position",
						"dataspace/unit/native" : "aed"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf name source.%ld/position/aed",
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patching_rect" : [ 104.0, 177.0, 201.0, 19.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message",
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"patching_rect" : [ 312.0, 198.0, 83.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"type" : "msg_list",
						"description" : "Position of the Nth source.",
						"dataspace/unit/internal" : "xyz",
						"dataspace/unit/active" : "xyz",
						"dataspace" : "position",
						"dataspace/unit/native" : "xyz"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf name source.%ld/position/xyz",
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patching_rect" : [ 312.0, 176.0, 200.0, 19.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispoly~",
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"patching_rect" : [ 209.0, 116.0, 58.0, 19.0 ],
					"outlettype" : [ "int", "int" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patching_rect" : [ 209.0, 94.0, 56.0, 19.0 ],
					"outlettype" : [ "bang" ],
					"fontsize" : 10.0,
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
