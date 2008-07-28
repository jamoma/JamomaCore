{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 333.0, 68.0, 452.0, 421.0 ],
		"bglocked" : 0,
		"defrect" : [ 333.0, 68.0, 452.0, 421.0 ],
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
					"maxclass" : "comment",
					"text" : "jmod.oscnet",
					"numoutlets" : 0,
					"fontsize" : 17.334082,
					"id" : "obj-38",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 8.0, 6.0, 164.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "send and receive OpenSoundControl on a network port",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-39",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 8.0, 32.0, 345.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"rounded" : 15,
					"id" : "obj-40",
					"numinlets" : 1,
					"patching_rect" : [ 3.0, 2.0, 351.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /receive",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 13.0, 327.0, 122.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 306.0, 168.0, 35.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-3",
					"numinlets" : 1,
					"patching_rect" : [ 306.0, 103.0, 21.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 500",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "bang" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 306.0, 127.0, 60.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "counter",
					"numoutlets" : 4,
					"fontsize" : 9.873845,
					"outlettype" : [ "int", "", "", "int" ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 5,
					"patching_rect" : [ 306.0, 147.0, 66.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/send /test1 $1",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 306.0, 187.0, 85.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/send_host bek.no",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 13.0, 184.0, 101.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/send /some/osc/message ja",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 122.0, 183.0, 153.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 13.0, 350.0, 68.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/test1 4",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 13.0, 373.0, 180.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/send /jeg/vil/gjerne/ha/blåbœr",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 130.0, 203.0, 168.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/oscnet",
					"numoutlets" : 1,
					"args" : [ "/oscnet" ],
					"name" : "jmod.oscnet.maxpat",
					"outlettype" : [ "" ],
					"id" : "obj-16",
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 13.0, 231.0, 302.0, 71.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 315.5, 224.0, 22.5, 224.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-6", 0 ],
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
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
