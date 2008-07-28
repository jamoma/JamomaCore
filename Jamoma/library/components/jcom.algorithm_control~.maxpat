{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 48.0, 59.0, 282.0, 229.0 ],
		"bglocked" : 0,
		"defrect" : [ 48.0, 59.0, 282.0, 229.0 ],
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
					"text" : "jcom.oscroute /audio/mute",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 105.0, 70.0, 144.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "== 0",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 105.0, 94.0, 34.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "enable $1 1",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 105.0, 115.0, 67.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 38.0, 47.0, 86.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-5",
					"patching_rect" : [ 38.0, 154.0, 25.0, 25.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-6",
					"patching_rect" : [ 105.0, 154.0, 25.0, 25.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 17.0, 25.0, 25.0 ],
					"comment" : "Connect to 2nd last outlet of jcom.in~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
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
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 239.5, 142.0, 47.5, 142.0 ]
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
 ]
	}

}
