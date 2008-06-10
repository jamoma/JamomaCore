{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 513.0, 247.0, 455.0, 250.0 ],
		"bglocked" : 0,
		"defrect" : [ 513.0, 247.0, 455.0, 250.0 ],
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
					"maxclass" : "outlet",
					"patching_rect" : [ 65.0, 110.0, 20.0, 20.0 ],
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "wclose",
					"patching_rect" : [ 65.0, 85.0, 44.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 145.0, 20.0, 20.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 145.0, 50.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s JamomaTestFinished",
					"patching_rect" : [ 145.0, 110.0, 124.0, 19.0 ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
