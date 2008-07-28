{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 249.0, 81.0, 715.0, 456.0 ],
		"bglocked" : 0,
		"defrect" : [ 249.0, 81.0, 715.0, 456.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"maxclass" : "comment",
					"text" : "Video Controls",
					"fontname" : "Verdana",
					"presentation_rect" : [ 3.0, 1.0, 220.0, 28.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 17.553501,
					"patching_rect" : [ 3.0, 1.0, 220.0, 28.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Standard video module messages",
					"fontname" : "Verdana",
					"presentation_rect" : [ 3.0, 31.0, 325.0, 22.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 13.165127,
					"patching_rect" : [ 3.0, 31.0, 325.0, 22.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 185.0, 195.0, 15.0, 15.0 ],
					"numoutlets" : 0,
					"id" : "obj-3",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/video/preview $1",
					"fontname" : "Verdana",
					"presentation_rect" : [ 28.0, 106.0, 107.0, 16.0 ],
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 28.0, 106.0, 107.0, 16.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 11.0, 106.0, 16.0, 16.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 11.0, 106.0, 16.0, 16.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/video/mute $1",
					"fontname" : "Verdana",
					"presentation_rect" : [ 28.0, 52.0, 107.0, 16.0 ],
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 28.0, 52.0, 107.0, 16.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 11.0, 52.0, 16.0, 16.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 11.0, 52.0, 16.0, 16.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/video/genframe",
					"fontname" : "Verdana",
					"presentation_rect" : [ 28.0, 124.0, 109.0, 16.0 ],
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 28.0, 124.0, 109.0, 16.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 11.0, 88.0, 16.0, 16.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 11.0, 88.0, 16.0, 16.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/video/freeze $1",
					"fontname" : "Verdana",
					"presentation_rect" : [ 28.0, 88.0, 107.0, 16.0 ],
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 28.0, 88.0, 107.0, 16.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-10",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/video/bypass $1",
					"fontname" : "Verdana",
					"presentation_rect" : [ 28.0, 70.0, 107.0, 16.0 ],
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 28.0, 70.0, 107.0, 16.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 11.0, 70.0, 16.0, 16.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 11.0, 70.0, 16.0, 16.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 0.0, 0.0, 373.0, 27.0 ],
					"bgcolor" : [ 0.901961, 0.839216, 0.564706, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 373.0, 27.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"rounded" : 15,
					"id" : "obj-13",
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 0.0, 30.0, 373.0, 113.0 ],
					"bgcolor" : [ 0.996078, 0.945098, 0.705882, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 30.0, 373.0, 113.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"rounded" : 15,
					"id" : "obj-14",
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
