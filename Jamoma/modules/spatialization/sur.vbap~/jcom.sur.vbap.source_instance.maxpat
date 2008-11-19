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
					"numoutlets" : 1,
					"patching_rect" : [ 113.0, 291.0, 169.0, 19.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message",
					"numoutlets" : 3,
					"patching_rect" : [ 113.0, 316.0, 83.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-8",
					"frozen_object_attributes" : 					{
						"description" : "mutes the Nth source.",
						"value/default" : [ 1 ],
						"dataspace/unit/native" : "none",
						"priority" : 0,
						"value" : [ 1 ],
						"dataspace/unit/internal" : "none",
						"dataspace" : "none",
						"type" : "msg_toggle",
						"dataspace/unit/active" : "none"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf name source.%ld/gain",
					"numoutlets" : 1,
					"patching_rect" : [ 115.0, 238.0, 160.0, 19.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message",
					"numoutlets" : 3,
					"patching_rect" : [ 115.0, 263.0, 83.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-6",
					"frozen_object_attributes" : 					{
						"range/clipmode" : "low",
						"description" : "Gain of the Nth source.",
						"value/default" : [ 100 ],
						"dataspace/unit/native" : "midi",
						"priority" : 0,
						"value" : [ 100 ],
						"dataspace/unit/internal" : "midi",
						"dataspace" : "gain",
						"type" : "msg_float",
						"dataspace/unit/active" : "midi"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numoutlets" : 1,
					"patching_rect" : [ 45.0, 60.0, 56.0, 19.0 ],
					"outlettype" : [ "bang" ],
					"fontsize" : 10.0,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf name source.%ld/position",
					"numoutlets" : 1,
					"patching_rect" : [ 118.0, 187.0, 178.0, 19.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf name source.%ld/blur",
					"numoutlets" : 1,
					"patching_rect" : [ 120.0, 135.0, 158.0, 19.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispoly~",
					"numoutlets" : 2,
					"patching_rect" : [ 45.0, 85.0, 58.0, 19.0 ],
					"outlettype" : [ "int", "int" ],
					"fontsize" : 10.0,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message",
					"numoutlets" : 3,
					"patching_rect" : [ 120.0, 160.0, 83.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-37",
					"frozen_object_attributes" : 					{
						"range/clipmode" : "both",
						"description" : "Set spatial bluriness of the Nth source.",
						"dataspace/unit/native" : "none",
						"priority" : 0,
						"dataspace/unit/internal" : "none",
						"dataspace" : "none",
						"type" : "msg_float",
						"dataspace/unit/active" : "none",
						"range/bounds" : [ 0.0, 20.0 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message",
					"numoutlets" : 3,
					"patching_rect" : [ 118.0, 212.0, 83.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-19",
					"frozen_object_attributes" : 					{
						"description" : "Position of the Nth source.",
						"dataspace/unit/native" : "xyz",
						"priority" : 0,
						"dataspace/unit/internal" : "xyz",
						"dataspace" : "position",
						"type" : "msg_list",
						"dataspace/unit/active" : "xyz"
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-6", 0 ],
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
