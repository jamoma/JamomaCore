{
	"patcher" : 	{
		"rect" : [ 15.0, 57.0, 356.0, 183.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 15.0, 57.0, 356.0, 183.0 ],
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
					"text" : "t b",
					"patching_rect" : [ 21.0, 130.0, 20.0, 17.0 ],
					"numinlets" : 1,
					"hidden" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "bang" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "help jcom.xyz2ambimonitor",
					"patching_rect" : [ 21.0, 149.0, 135.0, 15.0 ],
					"numinlets" : 2,
					"hidden" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 21.0, 168.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"hidden" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.ambimonitor2xyz",
					"patching_rect" : [ 21.0, 18.0, 226.0, 28.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-4",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 15.799999
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "translate between messages for ambimonitor and ditto messages in Jamoma\/SpatDIF.",
					"linecount" : 2,
					"patching_rect" : [ 21.0, 43.0, 297.0, 28.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-5",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 16.0, 13.0, 316.0, 61.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"rounded" : 0,
					"id" : "obj-6",
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"patching_rect" : [ 21.0, 110.0, 236.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-7",
					"outlettype" : [ "int", "", "" ],
					"labelclick" : 1,
					"items" : [ "See", "the", "help", "file", "for", "jcom.xyz2ambimonitor" ],
					"textcolor" : [ 0.164706, 0.121569, 0.913725, 1.0 ],
					"background" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"types" : [  ],
					"menumode" : 2,
					"fontsize" : 9.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
