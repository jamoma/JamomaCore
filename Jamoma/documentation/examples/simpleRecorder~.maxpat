{
	"patcher" : 	{
		"rect" : [ 10.0, 59.0, 417.0, 353.0 ],
		"bgcolor" : [ 0.937255, 0.956863, 0.996078, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 10.0, 59.0, 417.0, 353.0 ],
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
					"text" : "bgcolor 239 244 254",
					"patching_rect" : [ 281.0, 327.0, 106.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-1",
					"numinlets" : 4,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "output~",
					"patching_rect" : [ 78.0, 163.0, 302.0, 141.0 ],
					"name" : "jmod.output~.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-2",
					"numinlets" : 3,
					"numoutlets" : 1,
					"args" : [  ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "input~",
					"patching_rect" : [ 78.0, 21.0, 302.0, 141.0 ],
					"name" : "jmod.input~.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 3,
					"args" : [  ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Simple patch to make\/take some recordings",
					"patching_rect" : [ 76.0, 304.0, 278.0, 21.0 ],
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.533333
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 1
				}

			}
 ]
	}

}
