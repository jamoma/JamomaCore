{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 50.0, 94.0, 315.0, 196.0 ],
		"bglocked" : 0,
		"defrect" : [ 50.0, 94.0, 315.0, 196.0 ],
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
					"maxclass" : "number",
					"numinlets" : 1,
					"patching_rect" : [ 110.0, 65.0, 50.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 40.0, 56.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"outlettype" : [ "bang" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf name speaker.%ld/position",
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 105.0, 183.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispoly~",
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 65.0, 58.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"outlettype" : [ "int", "int" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message",
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 130.0, 83.0, 19.0 ],
					"numoutlets" : 3,
					"id" : "obj-33",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"frozen_object_attributes" : 					{
						"repetitions/allow" : 1,
						"type" : "msg_list",
						"dataspace/unit/internal" : "xyz",
						"dataspace/unit/active" : "xyz",
						"dataspace" : "position",
						"description" : "Position of the Nth speaker",
						"priority" : 0,
						"dataspace/unit/native" : "xyz"
					}

				}

			}
 ],
		"lines" : [ 			{
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
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-33", 0 ],
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
