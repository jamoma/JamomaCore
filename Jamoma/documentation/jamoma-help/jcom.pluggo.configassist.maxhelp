{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 45.0, 55.0, 388.0, 233.0 ],
		"bglocked" : 0,
		"defrect" : [ 45.0, 55.0, 388.0, 233.0 ],
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
					"text" : "plugconfig",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 40.0, 134.0, 61.0, 19.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"save" : [ "#N", "plugconfig", ";", "#C", "useviews", 1, 1, 1, 1, ";", "#C", "numprograms", 64, ";", "#C", "preempt", 1, ";", "#C", "sigvschange", 1, ";", "#C", "sigvsdefault", 32, ";", "#C", "autosize", ";", "#C", "defaultview", "Interface", 0, 0, 0, ";", "#C", "dragscroll", 1, ";", "#C", "infotext", ";", "#C", "package", "????", ";", "#C", "uniqueid", 8, 78, 145, ";", "#C", "initialpgm", 1, ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pluggo.configassist.mxt",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 40.0, 106.0, 156.0, 19.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.pluggo.configassist",
					"numoutlets" : 0,
					"fontsize" : 17.334082,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 14.0, 11.0, 263.0, 28.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Provides access to additional settings when configuring a pluggo.",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 14.0, 36.0, 337.0, 19.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"rounded" : 15,
					"patching_rect" : [ 10.0, 5.0, 350.0, 50.0 ],
					"id" : "obj-5",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The plogconfig Inspector also contain quite a few settings.",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 38.0, 162.0, 303.0, 19.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
