{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 45.0, 72.0, 734.0, 318.0 ],
		"bglocked" : 0,
		"defrect" : [ 45.0, 72.0, 734.0, 318.0 ],
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
					"maxclass" : "message",
					"text" : "11.11 22.22 33.33 ramp 1000",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 552.0, 99.0, 161.0, 16.0 ],
					"id" : "obj-1",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1. 2. 3.",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 503.0, 99.0, 47.0, 16.0 ],
					"id" : "obj-2",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.list2parameter",
					"fontsize" : 17.334082,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 21.0, 18.0, 330.0, 28.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Z",
					"fontsize" : 10,
					"patching_rect" : [ 117.0, 168.0, 17.0, 18.0 ],
					"id" : "obj-4",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Y",
					"fontsize" : 10,
					"patching_rect" : [ 78.0, 168.0, 18.0, 18.0 ],
					"id" : "obj-5",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"fontsize" : 10,
					"patching_rect" : [ 255.0, 170.0, 190.0, 18.0 ],
					"id" : "obj-6",
					"numinlets" : 11,
					"fontname" : "Verdana",
					"numoutlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "10 20 30",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 447.0, 99.0, 55.0, 16.0 ],
					"id" : "obj-7",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 447.0, 271.0, 86.0, 16.0 ],
					"id" : "obj-8",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"hidden" : 1,
					"patching_rect" : [ 463.0, 245.0, 81.0, 18.0 ],
					"id" : "obj-9",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "testing",
					"text" : "jcom.parameter testing @type msg_list",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10,
					"patching_rect" : [ 447.0, 170.0, 233.0, 18.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Z",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10,
					"patching_rect" : [ 111.0, 187.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-11",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Y",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10,
					"patching_rect" : [ 72.0, 187.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-12",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "X",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10,
					"patching_rect" : [ 33.0, 187.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-13",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Z",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 341.0, 206.0, 48.0, 18.0 ],
					"id" : "obj-14",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Y",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 298.0, 206.0, 47.0, 18.0 ],
					"id" : "obj-15",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar X",
					"outlettype" : [ "" ],
					"fontsize" : 10,
					"patching_rect" : [ 255.0, 206.0, 48.0, 18.0 ],
					"id" : "obj-16",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "X",
					"fontsize" : 10,
					"patching_rect" : [ 39.0, 168.0, 18.0, 18.0 ],
					"id" : "obj-17",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "making life easier if you want to access the individual members of a @type msg_list parameter in the GUI",
					"fontsize" : 10,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 21.0, 46.0, 539.0, 18.0 ],
					"id" : "obj-18",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"patching_rect" : [ 16.0, 13.0, 568.0, 50.0 ],
					"id" : "obj-19",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Argument: list length",
					"fontsize" : 10,
					"patching_rect" : [ 21.0, 77.0, 166.0, 18.0 ],
					"id" : "obj-20",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.5, 228.0, 248.0, 228.0, 248.0, 164.0, 264.5, 164.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [ 307.5, 230.0, 245.0, 230.0, 245.0, 162.0, 281.600006, 162.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-6", 2 ],
					"hidden" : 0,
					"midpoints" : [ 350.5, 232.0, 242.0, 232.0, 242.0, 160.0, 298.700012, 160.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 2 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-6", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 10 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
