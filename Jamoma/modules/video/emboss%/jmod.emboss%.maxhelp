{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 255.0, 70.0, 836.0, 562.0 ],
		"bglocked" : 0,
		"defrect" : [ 255.0, 70.0, 836.0, 562.0 ],
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
					"text" : "Mouse control: \n- click-drag: red\n- shift-click-drag: green\n- ctrl-click-drag: blue",
					"linecount" : 4,
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 659.0, 173.0, 150.0, 60.0 ],
					"id" : "obj-28",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 148.0, 324.0, 35.0, 18.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 148.0, 306.0, 35.0, 18.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 148.0, 288.0, 35.0, 18.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mask/blue $1",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 186.0, 324.0, 68.0, 28.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mask/green $1",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 186.0, 306.0, 71.0, 28.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mask/red $1",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 186.0, 288.0, 64.0, 28.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/video/genframe",
					"fontsize" : 11.556055,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 339.0, 37.0, 113.0, 19.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input%",
					"args" : [  ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 339.0, 62.0, 300.0, 70.0 ],
					"id" : "obj-10",
					"outlettype" : [ "", "" ],
					"name" : "jmod.input%.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 22.0, 323.0, 35.0, 18.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 22.0, 305.0, 35.0, 18.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 22.0, 287.0, 35.0, 18.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.emboss%.cmd",
					"fontsize" : 9.873845,
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 113.0, 382.0, 119.0, 18.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.emboss%.cmd",
					"fontsize" : 9.873845,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 339.0, 145.0, 118.0, 18.0 ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.emboss%.cmd",
					"fontsize" : 9.873845,
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 13.0, 235.0, 119.0, 18.0 ],
					"id" : "obj-16",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"args" : [  ],
					"lockeddragscroll" : 1,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 13.0, 87.0, 273.0, 146.0 ],
					"id" : "obj-17",
					"outlettype" : [ "" ],
					"name" : "jmod.video_params.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.emboss%",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 17.334082,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.0, 34.0, 189.0, 28.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "cheesy embossing effect",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.873845,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 60.0, 242.0, 18.0 ],
					"id" : "obj-19",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 338.0, 502.0, 60.0, 35.0 ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 338.0, 255.0, 320.0, 240.0 ],
					"id" : "obj-22",
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/emboss%",
					"args" : [ "/emboss%" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 339.0, 170.0, 300.0, 70.0 ],
					"id" : "obj-23",
					"outlettype" : [ "", "" ],
					"name" : "jmod.emboss%.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/tint/blue $1",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 60.0, 323.0, 76.0, 16.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/tint/green $1",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 60.0, 305.0, 82.0, 16.0 ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/tint/red $1",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 60.0, 287.0, 72.0, 16.0 ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 18.0, 273.0, 63.0 ],
					"id" : "obj-20",
					"rounded" : 15
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 629.5, 247.0, 347.5, 247.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
