{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 50.0, 113.0, 342.0, 167.0 ],
		"bglocked" : 0,
		"defrect" : [ 50.0, 113.0, 342.0, 167.0 ],
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
					"text" : "jcom.fullscreen 32",
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 156.0, 124.0, 117.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "optional argument sets which key code to trigger fullscreen (default = 27 = escape)",
					"linecount" : 4,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 156.0, 68.0, 131.0, 55.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 29.0, 124.0, 75.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.fullscreen",
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 29.0, 80.0, 97.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.fullscreen",
					"id" : "obj-5",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 15.0, 142.0, 28.0 ],
					"fontsize" : 17.334082
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Makes the patch fill the screen when hitting escape",
					"id" : "obj-6",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 40.0, 267.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 10.0, 292.0, 50.0 ],
					"rounded" : 15
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
