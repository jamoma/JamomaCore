{
	"patcher" : 	{
		"rect" : [ 45.0, 55.0, 388.0, 233.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 45.0, 55.0, 388.0, 233.0 ],
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
					"text" : "plugconfig",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 40.0, 134.0, 61.0, 18.0 ],
					"save" : [ "#N", "plugconfig", ";", "#C", "useviews", 1, 1, 1, 1, ";", "#C", "numprograms", 64, ";", "#C", "preempt", 1, ";", "#C", "sigvschange", 1, ";", "#C", "sigvsdefault", 32, ";", "#C", "autosize", ";", "#C", "defaultview", "Interface", 0, 0, 0, ";", "#C", "dragscroll", 1, ";", "#C", "infotext", ";", "#C", "package", "????", ";", "#C", "uniqueid", 8, 78, 145, ";", "#C", "initialpgm", 1, ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pluggo.configassist.mxt",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"id" : "obj-2",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 40.0, 106.0, 156.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.pluggo.configassist",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-3",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 15.799999,
					"patching_rect" : [ 14.0, 11.0, 263.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Provides access to additional settings when configuring a pluggo.",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-4",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 14.0, 36.0, 334.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-5",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"patching_rect" : [ 9.0, 6.0, 350.0, 50.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The plogconfig Inspector also contain quite a few settings.",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-6",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 38.0, 162.0, 301.0, 18.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
