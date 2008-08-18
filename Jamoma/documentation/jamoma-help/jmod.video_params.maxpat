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
					"patching_rect" : [ 3.0, 1.0, 220.0, 28.0 ],
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"presentation" : 1,
					"numinlets" : 1,
					"fontsize" : 17.553501,
					"numoutlets" : 0,
					"presentation_rect" : [ 3.0, 1.0, 220.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Standard video module messages",
					"patching_rect" : [ 3.0, 31.0, 325.0, 22.0 ],
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"presentation" : 1,
					"numinlets" : 1,
					"fontsize" : 13.165127,
					"numoutlets" : 0,
					"presentation_rect" : [ 3.0, 31.0, 234.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"patching_rect" : [ 185.0, 195.0, 15.0, 15.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/video/preview $1",
					"patching_rect" : [ 28.0, 106.0, 107.0, 16.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"presentation" : 1,
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"presentation_rect" : [ 28.0, 106.0, 107.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 11.0, 106.0, 16.0, 16.0 ],
					"id" : "obj-5",
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 11.0, 106.0, 16.0, 16.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/video/mute $1",
					"patching_rect" : [ 28.0, 52.0, 107.0, 16.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"presentation" : 1,
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"presentation_rect" : [ 28.0, 52.0, 107.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 11.0, 52.0, 16.0, 16.0 ],
					"id" : "obj-7",
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 11.0, 52.0, 16.0, 16.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/video/genframe",
					"patching_rect" : [ 28.0, 124.0, 109.0, 16.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"presentation" : 1,
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"presentation_rect" : [ 28.0, 124.0, 109.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 11.0, 88.0, 16.0, 16.0 ],
					"id" : "obj-9",
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 11.0, 88.0, 16.0, 16.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/video/freeze $1",
					"patching_rect" : [ 28.0, 88.0, 107.0, 16.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"presentation" : 1,
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"presentation_rect" : [ 28.0, 88.0, 107.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/video/bypass $1",
					"patching_rect" : [ 28.0, 70.0, 107.0, 16.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"presentation" : 1,
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"presentation_rect" : [ 28.0, 70.0, 107.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 11.0, 70.0, 16.0, 16.0 ],
					"id" : "obj-12",
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 11.0, 70.0, 16.0, 16.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 0.0, 0.0, 373.0, 27.0 ],
					"id" : "obj-13",
					"presentation" : 1,
					"rounded" : 15,
					"numinlets" : 1,
					"background" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 241.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 0.0, 30.0, 373.0, 113.0 ],
					"id" : "obj-14",
					"presentation" : 1,
					"rounded" : 15,
					"numinlets" : 1,
					"background" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 30.0, 241.0, 113.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
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
					"source" : [ "obj-6", 0 ],
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
					"source" : [ "obj-10", 0 ],
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
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
