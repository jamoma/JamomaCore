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
					"outlettype" : [ "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-5",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patching_rect" : [ 45.0, 60.0, 56.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf name source.%ld/position",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-3",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patching_rect" : [ 120.0, 205.0, 178.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf name source.%ld/blur",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-2",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patching_rect" : [ 120.0, 135.0, 158.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispoly~",
					"outlettype" : [ "int", "int" ],
					"fontsize" : 10.0,
					"id" : "obj-1",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"patching_rect" : [ 45.0, 85.0, 58.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"id" : "obj-37",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"patching_rect" : [ 120.0, 160.0, 83.0, 19.0 ],
					"frozen_object_attributes" : 					{
						"description" : "Set spatial bluriness of the Nth source.",
						"dataspace/unit/internal" : "none",
						"priority" : 0,
						"dataspace" : "none",
						"dataspace/unit/active" : "none",
						"range/bounds" : [ 0.0, 20.0 ],
						"type" : "msg_float",
						"dataspace/unit/native" : "none",
						"range/clipmode" : "low"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"id" : "obj-19",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"patching_rect" : [ 120.0, 230.0, 83.0, 19.0 ],
					"frozen_object_attributes" : 					{
						"description" : "Position of the Nth source.",
						"dataspace/unit/internal" : "xyz",
						"priority" : 0,
						"dataspace" : "position",
						"dataspace/unit/active" : "xyz",
						"type" : "msg_list",
						"dataspace/unit/native" : "xyz"
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-37", 0 ],
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
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
