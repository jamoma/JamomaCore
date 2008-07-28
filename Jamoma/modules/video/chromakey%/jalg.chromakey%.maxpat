{
	"patcher" : 	{
		"rect" : [ 183.0, 98.0, 683.0, 294.0 ],
		"bglocked" : 0,
		"defrect" : [ 183.0, 98.0, 683.0, 294.0 ],
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
					"text" : "pak color 0. 0. 0. 0.",
					"numinlets" : 5,
					"patching_rect" : [ 5.0, 90.0, 165.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "alphaignore $1",
					"numinlets" : 2,
					"patching_rect" : [ 517.0, 85.0, 76.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "maxkey $1",
					"numinlets" : 2,
					"patching_rect" : [ 445.0, 85.0, 60.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "minkey $1",
					"numinlets" : 2,
					"patching_rect" : [ 373.0, 86.0, 57.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "fade $1",
					"numinlets" : 2,
					"patching_rect" : [ 301.0, 87.0, 44.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tol $1",
					"numinlets" : 2,
					"patching_rect" : [ 229.0, 87.0, 35.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 93.0, 135.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"comment" : "video input 2 (background)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 18.0, 134.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"comment" : "video input 1 (key)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 3.0, 38.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"numinlets" : 1,
					"patching_rect" : [ 45.0, 190.0, 77.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 30.0, 190.0, 15.0, 15.0 ],
					"numoutlets" : 0,
					"id" : "obj-11",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.chromakey",
					"numinlets" : 2,
					"patching_rect" : [ 30.0, 158.0, 73.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "jit_matrix", "" ],
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute \/key\/red \/key\/green \/key\/blue \/tolerance \/fade \/minkey \/maxkey \/alphaignore",
					"numinlets" : 1,
					"patching_rect" : [ 13.0, 57.0, 589.0, 17.0 ],
					"numoutlets" : 9,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-13"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 27.0, 153.0, 39.5, 153.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 238.5, 133.0, 39.5, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 310.5, 133.0, 39.5, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 382.5, 133.0, 39.5, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 454.5, 133.0, 39.5, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 526.5, 132.0, 39.5, 132.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 14.5, 132.0, 39.5, 132.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-1", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [ 102.0, 156.0, 93.5, 156.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-1", 3 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 2 ],
					"destination" : [ "obj-1", 4 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 3 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 4 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 5 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 6 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 7 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
