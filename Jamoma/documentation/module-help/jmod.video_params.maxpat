{
	"patcher" : 	{
		"rect" : [ 249.0, 81.0, 715.0, 456.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 249.0, 81.0, 715.0, 456.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Video Controls",
					"patching_rect" : [ 3.0, 1.0, 220.0, 28.0 ],
					"fontname" : "Verdana",
					"fontsize" : 16.0,
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Standard video module messages",
					"patching_rect" : [ 3.0, 31.0, 325.0, 22.0 ],
					"fontname" : "Verdana",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 185.0, 195.0, 15.0, 15.0 ],
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/video\/preview $1",
					"patching_rect" : [ 28.0, 106.0, 107.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-4",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 11.0, 106.0, 16.0, 16.0 ],
					"numinlets" : 1,
					"id" : "obj-5",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/video\/mute $1",
					"patching_rect" : [ 28.0, 52.0, 107.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-6",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 11.0, 52.0, 16.0, 16.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/video\/genframe",
					"patching_rect" : [ 28.0, 124.0, 109.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-8",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 11.0, 88.0, 16.0, 16.0 ],
					"numinlets" : 1,
					"id" : "obj-9",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/video\/freeze $1",
					"patching_rect" : [ 28.0, 88.0, 107.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-10",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/video\/bypass $1",
					"patching_rect" : [ 28.0, 70.0, 107.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-11",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 11.0, 70.0, 16.0, 16.0 ],
					"numinlets" : 1,
					"id" : "obj-12",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 0.0, 0.0, 373.0, 27.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"id" : "obj-13",
					"numoutlets" : 0,
					"background" : 1,
					"bgcolor" : [ 0.901961, 0.839216, 0.564706, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 0.0, 30.0, 373.0, 113.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"id" : "obj-14",
					"numoutlets" : 0,
					"background" : 1,
					"bgcolor" : [ 0.996078, 0.945098, 0.705882, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
