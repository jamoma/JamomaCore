{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 474.0, 376.0, 525.0, 315.0 ],
		"bglocked" : 0,
		"defrect" : [ 474.0, 376.0, 525.0, 315.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "voices 6",
					"fontsize" : 10.0,
					"patching_rect" : [ 310.0, 90.0, 51.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-10",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl slice 1",
					"fontsize" : 10.0,
					"patching_rect" : [ 65.0, 95.0, 54.0, 19.0 ],
					"numinlets" : 2,
					"id" : "obj-2",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel done",
					"fontsize" : 10.0,
					"patching_rect" : [ 160.0, 140.0, 53.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-9",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend name",
					"fontsize" : 10.0,
					"patching_rect" : [ 65.0, 140.0, 83.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcherargs",
					"fontsize" : 10.0,
					"patching_rect" : [ 65.0, 60.0, 70.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-5",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_",
					"fontsize" : 10.0,
					"patching_rect" : [ 65.0, 190.0, 40.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-4",
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "poly~ jcom.parameter.array.instance #1 args #0_",
					"fontsize" : 10.0,
					"patching_rect" : [ 65.0, 235.0, 264.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
