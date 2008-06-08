{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 62.0, 44.0, 394.0, 602.0 ],
		"bglocked" : 0,
		"defrect" : [ 62.0, 44.0, 394.0, 602.0 ],
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
					"text" : "jcom.velocity",
					"fontsize" : 17.334082,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 13.0, 12.0, 145.0, 28.0 ],
					"id" : "obj-1",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.delta2",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 302.0, 566.0, 78.0, 16.0 ],
					"id" : "obj-2",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.delta",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 228.0, 566.0, 71.0, 16.0 ],
					"id" : "obj-3",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend help",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 280.0, 593.0, 78.0, 18.0 ],
					"hidden" : 1,
					"id" : "obj-4",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 280.0, 613.0, 55.0, 18.0 ],
					"hidden" : 1,
					"id" : "obj-5",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "see also:",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 228.0, 549.0, 119.0, 18.0 ],
					"id" : "obj-6",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"outlettype" : [ "bang" ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 167.0, 261.0, 54.0, 18.0 ],
					"id" : "obj-7",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "int (converted to float)",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 32.0, 139.0, 142.0, 18.0 ],
					"id" : "obj-8",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "float",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 32.0, 127.0, 35.0, 18.0 ],
					"id" : "obj-9",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"patching_rect" : [ 87.0, 264.0, 15.0, 15.0 ],
					"id" : "obj-10",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 100",
					"outlettype" : [ "bang" ],
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 87.0, 282.0, 67.0, 18.0 ],
					"id" : "obj-11",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"setstyle" : 3,
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"compatibility" : 1,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"numinlets" : 1,
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"patching_rect" : [ 107.0, 390.0, 95.0, 150.0 ],
					"id" : "obj-12",
					"numoutlets" : 2,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"setminmax" : [ -1000.0, 1000.0 ],
					"orientation" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 107.0, 370.0, 49.0, 18.0 ],
					"id" : "obj-13",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.velocity",
					"outlettype" : [ "float", "" ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 107.0, 347.0, 88.0, 18.0 ],
					"id" : "obj-14",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 107.0, 327.0, 40.0, 18.0 ],
					"id" : "obj-15",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "MouseState",
					"outlettype" : [ "int", "int", "int", "int", "int" ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 87.0, 304.0, 108.0, 18.0 ],
					"id" : "obj-16",
					"numoutlets" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1000 * ( x[n] - [x[n-1] )",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 80.0, 54.0, 132.0, 18.0 ],
					"id" : "obj-17",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "∆t",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 130.0, 74.0, 20.0, 18.0 ],
					"id" : "obj-18",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "______________________",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 73.0, 61.0, 147.0, 18.0 ],
					"id" : "obj-19",
					"frgb" : [ 0.905882, 0.905882, 0.905882, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.905882, 0.905882, 0.905882, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "velocity =",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 21.0, 64.0, 58.0, 18.0 ],
					"id" : "obj-20",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Get horizontal velocity of mouse while button is down.",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 236.0, 311.0, 18.0 ],
					"id" : "obj-21",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Input:",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 21.0, 115.0, 45.0, 18.0 ],
					"id" : "obj-22",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Argument (optional):",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 164.0, 127.0, 18.0 ],
					"id" : "obj-23",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set: update but no output",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 32.0, 150.0, 154.0, 18.0 ],
					"id" : "obj-24",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Initial value",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 31.0, 176.0, 76.0, 18.0 ],
					"id" : "obj-25",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Output:",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 190.0, 51.0, 18.0 ],
					"id" : "obj-26",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "float: velocity (rate of change per second, not ms)",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 31.0, 202.0, 293.0, 18.0 ],
					"id" : "obj-27",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 8.0, 7.0, 239.0, 85.0 ],
					"id" : "obj-28",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
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
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 176.5, 301.0, 96.5, 301.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-16", 0 ],
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
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 96.5, 325.0, 75.0, 325.0, 75.0, 258.0, 96.0, 258.0 ]
				}

			}
 ]
	}

}
