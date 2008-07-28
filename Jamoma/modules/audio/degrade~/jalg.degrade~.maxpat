{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 103.0, 144.0, 432.0, 287.0 ],
		"bglocked" : 0,
		"defrect" : [ 103.0, 144.0, 432.0, 287.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 39.0, 195.0, 23.0, 23.0 ],
					"numinlets" : 1,
					"id" : "obj-1",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "degrade~",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "signal" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 305.0, 167.0, 63.0, 19.0 ],
					"numinlets" : 3,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 232.0, 195.0, 23.0, 23.0 ],
					"numinlets" : 1,
					"id" : "obj-3",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 305.0, 195.0, 23.0, 23.0 ],
					"numinlets" : 1,
					"id" : "obj-4",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 39.0, 59.0, 23.0, 23.0 ],
					"numinlets" : 0,
					"id" : "obj-5",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 305.0, 59.0, 23.0, 23.0 ],
					"numinlets" : 0,
					"id" : "obj-6",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 232.0, 59.0, 23.0, 23.0 ],
					"numinlets" : 0,
					"id" : "obj-7",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /sr_ratio /bitdepth",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 39.0, 86.0, 178.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "degrade~",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "signal" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 232.0, 167.0, 63.0, 19.0 ],
					"numinlets" : 3,
					"id" : "obj-9"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"midpoints" : [ 48.5, 144.0, 263.5, 144.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-9", 2 ],
					"hidden" : 0,
					"midpoints" : [ 128.0, 135.0, 285.5, 135.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [ 48.5, 144.0, 336.5, 144.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [ 128.0, 135.0, 358.5, 135.0 ]
				}

			}
 ]
	}

}
