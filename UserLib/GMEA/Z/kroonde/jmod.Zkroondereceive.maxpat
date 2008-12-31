{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 286.0, 42.0, 159.0, 99.0 ],
		"bglocked" : 0,
		"defrect" : [ 286.0, 42.0, 159.0, 99.0 ],
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
					"text" : "s datakroonde",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 70.0, 76.0, 17.0 ],
					"presentation" : 1,
					"fontname" : "Arial",
					"id" : "obj-1",
					"presentation_rect" : [ 10.0, 70.0, 76.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "udpreceive 5677",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 8.0, 8.0, 83.0, 17.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-11",
					"presentation_rect" : [ 8.0, 8.0, 83.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 10.0, 49.0, 49.0, 17.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-12",
					"presentation_rect" : [ 10.0, 49.0, 49.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /kroonde",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"patching_rect" : [ 9.0, 30.0, 120.0, 17.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-13",
					"presentation_rect" : [ 9.0, 30.0, 120.0, 17.0 ]
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
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
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
 ]
	}

}
