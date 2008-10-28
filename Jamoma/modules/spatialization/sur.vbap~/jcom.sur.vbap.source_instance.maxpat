{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 25.0, 69.0, 397.0, 321.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 69.0, 397.0, 321.0 ],
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
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numinlets" : 1,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 45.0, 60.0, 56.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf name source.%ld/position",
					"numinlets" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 120.0, 205.0, 178.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf name source.%ld/blur",
					"numinlets" : 1,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 120.0, 135.0, 158.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispoly~",
					"numinlets" : 1,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 45.0, 85.0, 58.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message",
					"numinlets" : 1,
					"id" : "obj-37",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 120.0, 160.0, 83.0, 19.0 ],
					"frozen_object_attributes" : 					{
						"dataspace/unit/internal" : "none",
						"type" : "msg_float",
						"range/clipmode" : "low",
						"dataspace/unit/active" : "none",
						"priority" : 0,
						"dataspace/unit/native" : "none",
						"description" : "Set spatial bluriness of the Nth source.",
						"dataspace" : "none",
						"range/bounds" : [ 0.0, 20.0 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message",
					"numinlets" : 1,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 120.0, 230.0, 83.0, 19.0 ],
					"frozen_object_attributes" : 					{
						"dataspace/unit/internal" : "xyz",
						"type" : "msg_list",
						"dataspace/unit/active" : "xyz",
						"priority" : 0,
						"dataspace/unit/native" : "xyz",
						"description" : "Position of the Nth source.",
						"dataspace" : "position"
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 0 ],
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
 ]
	}

}
