{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 7.0, 47.0, 513.0, 565.0 ],
		"bglocked" : 0,
		"defrect" : [ 7.0, 47.0, 513.0, 565.0 ],
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
					"maxclass" : "comment",
					"text" : "handy utility when debugging externals in the Xcode debugger and MaxRuntime on OSX.",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-35",
					"patching_rect" : [ 25.0, 50.0, 460.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Add Jamoma folders to search path",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-33",
					"patching_rect" : [ 25.0, 25.0, 332.0, 28.0 ],
					"fontsize" : 18.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"id" : "obj-31",
					"patching_rect" : [ 10.0, 10.0, 486.0, 67.0 ],
					"rounded" : 15,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess path",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-26",
					"outlettype" : [ "" ],
					"patching_rect" : [ 80.0, 110.0, 84.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-25",
					"outlettype" : [ "" ],
					"patching_rect" : [ 60.0, 435.0, 53.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t l l",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-24",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 60.0, 460.0, 33.5, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl reg",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-3",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 60.0, 385.0, 38.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-5",
					"outlettype" : [ "" ],
					"patching_rect" : [ 130.0, 195.0, 56.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b l",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-7",
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 200.0, 355.0, 32.5, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "combine path1 path2 /",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-8",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 60.0, 410.0, 126.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print seachpath",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-9",
					"patching_rect" : [ 185.0, 530.0, 89.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route append",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-12",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 130.0, 300.0, 78.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route clear .svn",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"id" : "obj-13",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 130.0, 325.0, 89.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t l l b",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"id" : "obj-14",
					"outlettype" : [ "", "", "bang" ],
					"patching_rect" : [ 130.0, 225.0, 46.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "types fold",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-17",
					"outlettype" : [ "" ],
					"patching_rect" : [ 155.0, 250.0, 60.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "folder",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-19",
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 130.0, 275.0, 39.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "regexp (Tools/) @substitute Jamoma/",
					"numoutlets" : 5,
					"fontname" : "Verdana",
					"id" : "obj-20",
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 130.0, 170.0, 201.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-22",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 80.0, 140.0, 69.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "filepath search",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-29",
					"outlettype" : [ "" ],
					"patching_rect" : [ 75.0, 530.0, 84.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend append",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-28",
					"outlettype" : [ "" ],
					"patching_rect" : [ 75.0, 500.0, 92.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 84.5, 524.0, 194.5, 524.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 69.5, 484.0, 50.0, 484.0, 50.0, 221.0, 139.5, 221.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 2 ],
					"destination" : [ "obj-17", 0 ],
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
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 2 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [ 153.0, 251.0, 88.5, 251.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 209.5, 376.0, 69.5, 376.0 ]
				}

			}
 ]
	}

}
