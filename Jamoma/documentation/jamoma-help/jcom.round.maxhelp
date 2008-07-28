{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 39.0, 50.0, 434.0, 206.0 ],
		"bglocked" : 0,
		"defrect" : [ 39.0, 50.0, 434.0, 206.0 ],
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
					"maxclass" : "message",
					"text" : "apple 3.4 5.6 10",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 280.0, 70.0, 93.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "-4.3 -6.5 test 0 2 3 -4 5.6",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 130.0, 70.0, 141.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numoutlets" : 2,
					"patching_rect" : [ 85.0, 70.0, 39.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-3",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numoutlets" : 2,
					"patching_rect" : [ 40.0, 70.0, 37.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-4",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.round",
					"numinlets" : 1,
					"fontsize" : 17.334082,
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 14.0, 10.0, 145.0, 28.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Round-off to int value. Work with positive and negative numbers.",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 14.0, 38.0, 372.0, 19.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"rounded" : 15,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 5.0, 409.0, 54.0 ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Returns int or list",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 185.0, 165.0, 161.0, 19.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 40.0, 190.0, 78.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 40.0, 165.0, 127.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.round",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 40.0, 120.0, 72.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-13",
					"fontname" : "Verdana"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [ 49.5, 211.0, 25.0, 211.0, 25.0, 160.0, 49.5, 160.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [ 49.5, 152.0, 157.5, 152.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 49.5, 109.0, 49.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 94.5, 109.0, 49.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 139.5, 109.0, 49.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 289.5, 109.0, 49.5, 109.0 ]
				}

			}
 ]
	}

}
