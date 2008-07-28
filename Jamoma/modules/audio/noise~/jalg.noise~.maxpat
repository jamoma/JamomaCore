{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 202.0, 82.0, 425.0, 332.0 ],
		"bglocked" : 0,
		"defrect" : [ 202.0, 82.0, 425.0, 332.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.970939,
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
					"text" : "prepend symbol",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 35.0, 90.0, 92.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Mode",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"pattrmode" : 1,
					"presentation_rect" : [ 68.0, 45.0, 83.0, 19.0 ],
					"items" : [ "off", ",", "white", ",", "pink" ],
					"fontsize" : 10.0,
					"types" : [  ],
					"patching_rect" : [ 35.0, 125.0, 83.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "selector~ 8 1",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "signal" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 35.0, 205.0, 352.0, 19.0 ],
					"numinlets" : 9,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pink~",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "signal" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 125.0, 170.0, 38.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 35.0, 15.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"id" : "obj-4",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 35.0, 250.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"id" : "obj-5",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noise~",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "signal" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 75.0, 170.0, 43.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /mode",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 35.0, 65.0, 116.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-7"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 2 ],
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
