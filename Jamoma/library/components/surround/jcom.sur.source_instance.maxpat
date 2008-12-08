{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 25.0, 69.0, 612.0, 462.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 69.0, 612.0, 462.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf name source.%ld/active",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 113.0, 291.0, 169.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 113.0, 316.0, 83.0, 19.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-8",
					"frozen_object_attributes" : 					{
						"dataspace/unit/internal" : "none",
						"value" : [ 1 ],
						"dataspace" : "none",
						"dataspace/unit/active" : "none",
						"type" : "msg_toggle",
						"description" : "mutes the Nth source.",
						"priority" : 0,
						"value/default" : [ 1 ],
						"dataspace/unit/native" : "none"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 45.0, 60.0, 56.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Verdana",
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf name source.%ld/position",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 118.0, 187.0, 178.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispoly~",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 45.0, 85.0, 58.0, 19.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"fontname" : "Verdana",
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 118.0, 212.0, 83.0, 19.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-19",
					"frozen_object_attributes" : 					{
						"dataspace/unit/internal" : "aed",
						"dataspace" : "position",
						"dataspace/unit/active" : "aed",
						"type" : "msg_list",
						"description" : "Position of the Nth source. In spherical coordinates (aed) by default.",
						"priority" : 0,
						"dataspace/unit/native" : "aed"
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
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
