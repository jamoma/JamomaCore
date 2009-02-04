{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 286.0, 42.0, 432.0, 227.0 ],
		"bglocked" : 0,
		"defrect" : [ 286.0, 42.0, 432.0, 227.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 2.0, 2.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "udpreceive 5678",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-2",
					"presentation_rect" : [ 98.0, 9.0, 83.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 98.0, 10.0, 83.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s datakroonde",
					"presentation" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-1",
					"presentation_rect" : [ 10.0, 70.0, 76.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 70.0, 76.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-12",
					"presentation_rect" : [ 10.0, 49.0, 49.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 49.0, 49.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /kroonde",
					"presentation" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-13",
					"presentation_rect" : [ 9.0, 30.0, 120.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 9.0, 30.0, 120.0, 17.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
