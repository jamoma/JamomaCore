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
					"patching_rect" : [ 120.0, 295.0, 169.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message",
					"fontsize" : 10.0,
					"patching_rect" : [ 120.0, 320.0, 83.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-8",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"frozen_object_attributes" : 					{
						"value" : [ 1 ],
						"dataspace/unit/internal" : "none",
						"description" : "mutes the Nth source.",
						"dataspace/unit/active" : "none",
						"type" : "msg_toggle",
						"value/default" : [ 1 ],
						"dataspace/unit/native" : "none",
						"priority" : 0,
						"dataspace" : "none"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf name source.%ld/gain",
					"fontsize" : 10.0,
					"patching_rect" : [ 120.0, 240.0, 160.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-4",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message",
					"fontsize" : 10.0,
					"patching_rect" : [ 120.0, 265.0, 83.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-6",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"frozen_object_attributes" : 					{
						"value" : [ 100 ],
						"dataspace/unit/internal" : "midi",
						"range/clipmode" : "low",
						"description" : "Gain of the Nth source.",
						"dataspace/unit/active" : "midi",
						"type" : "msg_float",
						"value/default" : [ 100 ],
						"dataspace/unit/native" : "midi",
						"priority" : 0,
						"dataspace" : "gain"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontsize" : 10.0,
					"patching_rect" : [ 45.0, 60.0, 56.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-5",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf name source.%ld/position",
					"fontsize" : 10.0,
					"patching_rect" : [ 120.0, 180.0, 178.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf name source.%ld/blur",
					"fontsize" : 10.0,
					"patching_rect" : [ 120.0, 125.0, 158.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispoly~",
					"fontsize" : 10.0,
					"patching_rect" : [ 45.0, 85.0, 58.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message",
					"fontsize" : 10.0,
					"patching_rect" : [ 120.0, 150.0, 83.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-37",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"frozen_object_attributes" : 					{
						"range/bounds" : [ 0.0, 20.0 ],
						"dataspace/unit/internal" : "none",
						"range/clipmode" : "both",
						"description" : "Set spatial bluriness of the Nth source.",
						"dataspace/unit/active" : "none",
						"type" : "msg_float",
						"dataspace/unit/native" : "none",
						"priority" : 0,
						"dataspace" : "none"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message",
					"fontsize" : 10.0,
					"patching_rect" : [ 120.0, 205.0, 83.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-19",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"frozen_object_attributes" : 					{
						"dataspace/unit/internal" : "xyz",
						"description" : "Position of the Nth source.",
						"dataspace/unit/active" : "xyz",
						"type" : "msg_list",
						"dataspace/unit/native" : "xyz",
						"priority" : 0,
						"dataspace" : "position"
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-7", 0 ],
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
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
