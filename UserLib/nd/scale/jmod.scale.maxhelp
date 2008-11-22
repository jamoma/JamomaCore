{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 50.0, 94.0, 433.0, 442.0 ],
		"bglocked" : 0,
		"defrect" : [ 50.0, 94.0, 433.0, 442.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "float output",
					"presentation_rect" : [ 296.0, 359.0, 0.0, 0.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-14",
					"patching_rect" : [ 296.0, 356.0, 86.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"id" : "obj-13",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 91.0, 201.0, 50.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "freezes slider",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-12",
					"patching_rect" : [ 314.0, 255.0, 86.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"contdata" : 1,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"numoutlets" : 2,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"slidercolor" : [ 0.098039, 0.196078, 1.0, 1.0 ],
					"id" : "obj-23",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 15.0, 162.0, 183.0, 14.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"orientation" : 0,
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"id" : "obj-11",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 15.0, 185.0, 50.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/raw $1",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-10",
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 214.0, 49.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/curve $1",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"patching_rect" : [ 91.0, 227.0, 58.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"id" : "obj-2",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 296.0, 336.0, 75.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ],
					"patching_rect" : [ 79.0, 326.0, 73.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/raw 0.554688",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-7",
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 347.0, 127.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-8",
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 326.0, 68.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.scale",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-3",
					"patching_rect" : [ 19.0, 39.0, 189.0, 28.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 17.334082,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "scale a 0-1. value with exp/lin/log curve",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-4",
					"patching_rect" : [ 20.0, 65.0, 333.0, 18.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"id" : "obj-5",
					"patching_rect" : [ 13.0, 23.0, 347.0, 62.0 ],
					"rounded" : 0,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numoutlets" : 2,
					"id" : "obj-1",
					"outlettype" : [ "", "float" ],
					"patching_rect" : [ 15.0, 255.0, 300.0, 70.0 ],
					"name" : "jmod.scale.maxpat",
					"args" : [ "/scale" ],
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [ 88.5, 345.0, 24.5, 345.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
