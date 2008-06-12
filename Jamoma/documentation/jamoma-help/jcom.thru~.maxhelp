{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 66.0, 48.0, 317.0, 308.0 ],
		"bglocked" : 0,
		"defrect" : [ 66.0, 48.0, 317.0, 308.0 ],
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
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10,
					"patching_rect" : [ 84.0, 198.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-1",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "It breaks the illegal feedback loop by using a private send~ and receive~ object. Without it, the audio would be killed in a patch like this.",
					"linecount" : 7,
					"fontsize" : 10,
					"patching_rect" : [ 168.0, 150.0, 121.0, 90.0 ],
					"id" : "obj-2",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"patching_rect" : [ 45.0, 226.0, 33.0, 33.0 ],
					"id" : "obj-3",
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 46.0, 155.0, 33.0, 58.0 ],
					"id" : "obj-4",
					"numinlets" : 2,
					"orientation" : 2,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezadc~",
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 43.0, 85.0, 33.0, 33.0 ],
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 0.1",
					"outlettype" : [ "signal" ],
					"fontsize" : 10,
					"patching_rect" : [ 44.0, 127.0, 46.0, 18.0 ],
					"id" : "obj-6",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.thru~",
					"outlettype" : [ "signal" ],
					"fontsize" : 10,
					"patching_rect" : [ 96.0, 125.0, 67.0, 18.0 ],
					"id" : "obj-7",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.thru~",
					"fontsize" : 17.334082,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 15.0, 21.0, 189.0, 28.0 ],
					"id" : "obj-8",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a simple utilty for breaking feedback loops",
					"fontsize" : 10,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 16.0, 47.0, 273.0, 18.0 ],
					"id" : "obj-9",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 14.0, 15.0, 267.0, 50.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This simple abstraction lets you do things like the patch to the left.",
					"linecount" : 3,
					"fontsize" : 10,
					"patching_rect" : [ 168.0, 100.0, 126.0, 42.0 ],
					"id" : "obj-11",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
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
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
