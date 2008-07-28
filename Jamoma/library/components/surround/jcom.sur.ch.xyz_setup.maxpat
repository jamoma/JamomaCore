{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 15.0, 81.0, 943.0, 271.0 ],
		"bglocked" : 0,
		"defrect" : [ 15.0, 81.0, 943.0, 271.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"maxclass" : "message",
					"text" : "set $1 :",
					"patching_rect" : [ 480.0, 25.0, 50.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "#1:",
					"patching_rect" : [ 480.0, 50.0, 96.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"presentation_rect" : [ 45.0, 5.0, 33.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf description \"Position of %ldth voice as xyz coodinate.\"",
					"patching_rect" : [ 480.0, 90.0, 320.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf name xyz.%ld",
					"patching_rect" : [ 340.0, 90.0, 118.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess #1",
					"patching_rect" : [ 340.0, 30.0, 74.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $i1 != 0 then $i1",
					"patching_rect" : [ 340.0, 55.0, 104.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "list2parameter",
					"text" : "jcom.list2parameter 3",
					"patching_rect" : [ 145.0, 125.0, 154.0, 19.0 ],
					"numinlets" : 11,
					"numoutlets" : 11,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 600.0, 187.0, 28.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-6",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "prepend",
					"text" : "prepend #1",
					"patching_rect" : [ 600.0, 160.0, 68.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Z",
					"patching_rect" : [ 265.0, 155.0, 53.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"triangle" : 0,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"presentation_rect" : [ 221.0, 5.0, 53.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Y",
					"patching_rect" : [ 205.0, 155.0, 53.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"triangle" : 0,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"presentation_rect" : [ 166.0, 5.0, 53.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"annotation" : "",
					"varname" : "X",
					"patching_rect" : [ 145.0, 155.0, 53.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"triangle" : 0,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"presentation_rect" : [ 111.0, 5.0, 53.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voice ",
					"patching_rect" : [ 10.0, 5.0, 96.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"presentation_rect" : [ 10.0, 5.0, 96.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 2.0, 2.0, 279.0, 25.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"rounded" : 15,
					"numoutlets" : 0,
					"id" : "obj-19",
					"border" : 1,
					"presentation_rect" : [ 2.0, 2.0, 279.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "parameter",
					"text" : "jcom.parameter xyz.2 @type msg_list @priority 4 @description \"Position of 2th voice as xyz coodinate.\"",
					"patching_rect" : [ 340.0, 125.0, 539.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 489.5, 118.0, 349.5, 118.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 349.5, 81.0, 489.5, 81.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-2", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 10 ],
					"destination" : [ "obj-22", 0 ],
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
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 154.5, 182.0, 133.0, 182.0, 133.0, 117.0, 154.5, 117.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [ 214.5, 184.0, 128.0, 184.0, 128.0, 113.0, 168.0, 113.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [ 274.5, 188.0, 122.0, 188.0, 122.0, 108.0, 181.5, 108.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 10 ],
					"destination" : [ "", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
