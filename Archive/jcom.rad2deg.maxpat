{
	"patcher" : 	{
		"rect" : [ 30.0, 89.0, 266.0, 269.0 ],
		"bglocked" : 0,
		"defrect" : [ 30.0, 89.0, 266.0, 269.0 ],
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
					"text" : "loadbang",
					"outlettype" : [ "bang" ],
					"id" : "obj-1",
					"fontsize" : 9.0,
					"patching_rect" : [ 98.0, 60.0, 48.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "!\/ 180.",
					"outlettype" : [ "float" ],
					"id" : "obj-2",
					"fontsize" : 9.0,
					"patching_rect" : [ 98.0, 120.0, 43.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 4.",
					"outlettype" : [ "float" ],
					"id" : "obj-3",
					"fontsize" : 9.0,
					"patching_rect" : [ 98.0, 100.0, 29.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "atan 1.",
					"outlettype" : [ "float" ],
					"id" : "obj-4",
					"fontsize" : 9.0,
					"patching_rect" : [ 98.0, 80.0, 41.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 57.295773",
					"outlettype" : [ "float" ],
					"id" : "obj-5",
					"fontsize" : 9.0,
					"patching_rect" : [ 37.0, 151.0, 71.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"patching_rect" : [ 37.0, 44.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-7",
					"patching_rect" : [ 37.0, 173.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "$f1 * 180 \/ PI",
					"id" : "obj-8",
					"fontsize" : 9.0,
					"patching_rect" : [ 124.0, 154.0, 100.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0
				}

			}
 ]
	}

}
