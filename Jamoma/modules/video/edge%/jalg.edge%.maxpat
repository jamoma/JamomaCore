{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 201.0, 230.0, 603.0, 494.0 ],
		"bglocked" : 0,
		"defrect" : [ 201.0, 230.0, 603.0, 494.0 ],
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
					"text" : "jcom.pass /thresh",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 2,
					"patching_rect" : [ 294.0, 129.0, 98.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /direct /genframe",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 3,
					"patching_rect" : [ 24.0, 58.0, 172.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.menuprep",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 2,
					"patching_rect" : [ 321.0, 159.0, 99.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-4",
					"numoutlets" : 1,
					"patching_rect" : [ 396.0, 245.0, 17.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "2",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-5",
					"numoutlets" : 1,
					"patching_rect" : [ 376.0, 245.0, 17.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 0 1 2",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-6",
					"numoutlets" : 4,
					"patching_rect" : [ 368.0, 220.0, 53.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "bang", "bang", "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 2 2",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-7",
					"numoutlets" : 2,
					"patching_rect" : [ 396.0, 281.0, 74.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"color" : [ 0.8, 0.54902, 0.54902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mode $1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-8",
					"numoutlets" : 1,
					"patching_rect" : [ 320.0, 245.0, 52.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "clip 0 1",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"id" : "obj-9",
					"numoutlets" : 1,
					"patching_rect" : [ 320.0, 220.0, 45.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.sobel",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-10",
					"numoutlets" : 2,
					"patching_rect" : [ 460.0, 364.0, 48.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "jit_matrix", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-11",
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 368.0, 183.0, 60.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "Sobel", ",", "Prewitt", ",", "Robcross" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-12",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 411.0, 396.0, 85.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "INSTRUCTIONS",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-13",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 41.0, 27.0, 86.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-14",
					"numoutlets" : 1,
					"patching_rect" : [ 452.0, 28.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-15",
					"numoutlets" : 0,
					"patching_rect" : [ 396.0, 396.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.robcross",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-16",
					"numoutlets" : 2,
					"patching_rect" : [ 396.0, 364.0, 64.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "jit_matrix", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /algorithm",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-17",
					"numoutlets" : 2,
					"patching_rect" : [ 177.0, 105.0, 136.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-18",
					"numoutlets" : 1,
					"patching_rect" : [ 24.0, 27.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-19",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 375.0, 27.0, 75.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"midpoints" : [ 460.5, 306.0, 469.5, 306.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 33.5, 336.0, 469.5, 336.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 303.5, 326.0, 469.5, 326.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"midpoints" : [ 110.0, 94.0, 460.5, 94.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 469.5, 387.0, 405.0, 387.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 303.5, 328.0, 405.5, 328.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"midpoints" : [ 405.5, 303.0, 405.5, 303.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 33.5, 338.0, 405.5, 338.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 2 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 186.5, 153.0, 330.5, 153.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
