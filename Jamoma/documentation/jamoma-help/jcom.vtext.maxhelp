{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 104.0, 66.0, 702.0, 564.0 ],
		"bglocked" : 0,
		"defrect" : [ 104.0, 66.0, 702.0, 564.0 ],
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
					"text" : "t b i",
					"outlettype" : [ "bang", "int" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 107.0, 120.0, 28.0, 18.0 ],
					"id" : "obj-1",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl reg",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 66.0, 120.0, 36.0, 18.0 ],
					"id" : "obj-2",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.vtext",
					"fontsize" : 17.334082,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 28.0, 18.0, 145.0, 28.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "LCD based display in a bpatcher for writing vertically",
					"fontsize" : 9.873845,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 28.0, 47.0, 292.0, 18.0 ],
					"id" : "obj-4",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 23.0, 17.0, 400.0, 50.0 ],
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 167.0, 238.0, 15.0, 15.0 ],
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Argument 8: bgcolor blue component",
					"fontsize" : 11.556055,
					"patching_rect" : [ 183.0, 448.0, 362.0, 21.0 ],
					"id" : "obj-7",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Argument 7: bgcolor green component",
					"fontsize" : 11.556055,
					"patching_rect" : [ 183.0, 431.0, 362.0, 21.0 ],
					"id" : "obj-8",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Argument 6: bgcolor red component",
					"fontsize" : 11.556055,
					"patching_rect" : [ 183.0, 414.0, 362.0, 21.0 ],
					"id" : "obj-9",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Inlets:",
					"fontsize" : 11.556055,
					"patching_rect" : [ 150.0, 182.0, 133.0, 21.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3: (toggle) Orientation of the text",
					"fontsize" : 11.556055,
					"patching_rect" : [ 183.0, 236.0, 237.0, 21.0 ],
					"id" : "obj-11",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2: (list) width and height of the LCD (you must resize the bpatcher yourself)",
					"fontsize" : 11.556055,
					"patching_rect" : [ 183.0, 219.0, 478.0, 21.0 ],
					"id" : "obj-12",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1: The text to display",
					"fontsize" : 11.556055,
					"patching_rect" : [ 183.0, 202.0, 406.0, 21.0 ],
					"id" : "obj-13",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "_____________________",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 150.0, 192.0, 115.0, 30.0 ],
					"id" : "obj-14",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Optional Arguments:",
					"fontsize" : 11.556055,
					"patching_rect" : [ 150.0, 283.0, 133.0, 21.0 ],
					"id" : "obj-15",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Argument 5: Text Size",
					"fontsize" : 11.556055,
					"patching_rect" : [ 183.0, 389.0, 362.0, 21.0 ],
					"id" : "obj-16",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Argument 4: Font #",
					"fontsize" : 11.556055,
					"patching_rect" : [ 183.0, 372.0, 362.0, 21.0 ],
					"id" : "obj-17",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Argument 3: (toggle) Orientation (default 0)",
					"fontsize" : 11.556055,
					"patching_rect" : [ 183.0, 355.0, 362.0, 21.0 ],
					"id" : "obj-18",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "NOTE: you must still resize the bpatcher yourself",
					"fontsize" : 9.873845,
					"patching_rect" : [ 210.0, 338.0, 253.0, 18.0 ],
					"id" : "obj-19",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Argument 2: verticle size of the LCD (default 200)",
					"fontsize" : 11.556055,
					"patching_rect" : [ 183.0, 320.0, 405.0, 21.0 ],
					"id" : "obj-20",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "use a bpatcher to display verticle text...",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 66.0, 79.0, 207.0, 16.0 ],
					"id" : "obj-21",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "this is a test",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 88.0, 97.0, 69.0, 16.0 ],
					"id" : "obj-22",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 66.0, 158.0, 15.0, 209.0 ],
					"args" : [ 0, 0, 1, 0, 0, 181, 181, 181 ],
					"id" : "obj-23",
					"numinlets" : 3,
					"name" : "jcom.vtext.maxpat",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Argument 1: horizontal size of the LCD (default 15)",
					"fontsize" : 11.556055,
					"patching_rect" : [ 183.0, 303.0, 406.0, 21.0 ],
					"id" : "obj-24",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "_____________________",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 150.0, 293.0, 115.0, 30.0 ],
					"id" : "obj-25",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 51.0, 149.0, 43.0, 226.0 ],
					"shadow" : 1,
					"border" : 1,
					"id" : "obj-26",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.313726, 0.388235, 0.592157, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "When direction is changed the message has to be resent in order to update the display.",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 139.0, 122.0, 227.0, 30.0 ],
					"id" : "obj-27",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 176.0, 265.0, 135.0, 265.0, 135.0, 116.0, 116.5, 116.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-23", 2 ],
					"hidden" : 0,
					"midpoints" : [ 125.5, 147.0, 77.5, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 97.5, 115.0, 75.5, 115.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 116.5, 140.0, 103.0, 140.0, 103.0, 115.0, 75.5, 115.0 ]
				}

			}
 ]
	}

}
