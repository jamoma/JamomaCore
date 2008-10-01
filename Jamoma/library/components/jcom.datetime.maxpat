{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 449.0, 178.0, 543.0, 470.0 ],
		"bglocked" : 0,
		"defrect" : [ 449.0, 178.0, 543.0, 470.0 ],
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
					"id" : "obj-22",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 426.0, 354.0, 32.5, 18.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.970939
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 0",
					"id" : "obj-20",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 426.0, 332.0, 34.0, 18.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "bang", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcherargs",
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 207.0, 26.0, 69.0, 18.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-2",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 207.0, 116.0, 35.0, 18.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf T%.2d-%.2d-%.2d",
					"id" : "obj-3",
					"numinlets" : 3,
					"numoutlets" : 1,
					"patching_rect" : [ 240.0, 354.0, 141.0, 18.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "$3 $2 $1",
					"id" : "obj-4",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 75.0, 218.0, 55.0, 16.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 2 1",
					"id" : "obj-5",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 207.0, 296.0, 52.0, 18.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route bang int",
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 75.0, 59.0, 81.0, 18.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b s",
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 75.0, 88.0, 33.0, 18.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "bang", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "display time",
					"id" : "obj-8",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 236.0, 270.0, 71.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "display year",
					"id" : "obj-9",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 89.0, 281.0, 70.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-10",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 75.0, 26.0, 25.0, 25.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-11",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 415.0, 25.0, 25.0 ],
					"comment" : "date&time string"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf %s%s",
					"id" : "obj-12",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 75.0, 392.0, 77.0, 18.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf %s-%.2d-%.2d",
					"id" : "obj-13",
					"numinlets" : 3,
					"numoutlets" : 1,
					"patching_rect" : [ 75.0, 261.0, 124.0, 18.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf T%.2d:%.2d:%.2d",
					"id" : "obj-14",
					"numinlets" : 3,
					"numoutlets" : 1,
					"patching_rect" : [ 207.0, 327.0, 141.0, 18.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "time, date",
					"id" : "obj-15",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 75.0, 146.0, 62.0, 16.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "date",
					"id" : "obj-16",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 75.0, 168.0, 46.0, 18.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "list", "list", "int" ],
					"fontsize" : 9.873845
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [ 435.5, 387.0, 142.5, 387.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-14", 0 ],
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
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 115.5, 96.0, 216.5, 96.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [ 249.5, 382.0, 142.5, 382.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [ 216.5, 378.0, 142.5, 378.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
