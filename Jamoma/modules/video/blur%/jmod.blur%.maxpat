{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 102.0, 109.0, 728.0, 453.0 ],
		"bglocked" : 0,
		"defrect" : [ 102.0, 109.0, 728.0, 453.0 ],
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
					"maxclass" : "jit.pwindow",
					"patching_rect" : [ 235.0, 20.0, 60.0, 45.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-28",
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Ripple",
					"hidden" : 1,
					"patching_rect" : [ 369.0, 198.0, 64.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Ring",
					"hidden" : 1,
					"patching_rect" : [ 369.0, 119.0, 56.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Center",
					"hidden" : 1,
					"patching_rect" : [ 369.0, 41.0, 67.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "center",
					"text" : "jcom.parameter center @type msg_float @ramp/drive scheduler @range/clipmode none @range/bounds 0. 1. @description \"Weight of center cell\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 369.0, 64.0, 414.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ripple",
					"patching_rect" : [ 104.0, 23.0, 36.0, 18.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Ripple",
					"patching_rect" : [ 138.0, 21.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"triangle" : 0,
					"fontsize" : 9.873845,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"hidden" : 1,
					"patching_rect" : [ 116.0, 312.0, 52.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hidden" : 1,
					"patching_rect" : [ 184.0, 179.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"hidden" : 1,
					"patching_rect" : [ 199.0, 179.0, 75.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"hidden" : 1,
					"patching_rect" : [ 184.0, 198.0, 78.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"hidden" : 1,
					"patching_rect" : [ 48.0, 254.0, 49.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"hidden" : 1,
					"patching_rect" : [ 48.0, 231.0, 86.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"hidden" : 1,
					"patching_rect" : [ 100.0, 87.0, 135.0, 16.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"hidden" : 1,
					"patching_rect" : [ 131.0, 350.0, 85.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"patching_rect" : [ 116.0, 350.0, 13.0, 13.0 ],
					"id" : "obj-15",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.blur%",
					"hidden" : 1,
					"patching_rect" : [ 116.0, 286.0, 78.0, 18.0 ],
					"outlettype" : [ "jit_matrix" ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Center",
					"patching_rect" : [ 51.0, 21.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"triangle" : 0,
					"fontsize" : 9.873845,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "center",
					"patching_rect" : [ 14.0, 23.0, 40.0, 18.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Ring",
					"patching_rect" : [ 51.0, 35.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"triangle" : 0,
					"fontsize" : 9.873845,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ring",
					"patching_rect" : [ 14.0, 37.0, 28.0, 18.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ripple",
					"text" : "jcom.parameter ripple @type msg_float @ramp/drive scheduler @range/clipmode none @range/bounds -1. 1. @description \"Scaling applied to outer ringing cells\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 369.0, 222.0, 420.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ring",
					"text" : "jcom.parameter ring @type msg_float @ramp/drive scheduler @range/clipmode none @range/bounds 0. 1. @description \"Weight of cells adjoining the center\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 369.0, 143.0, 412.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 33.0, 291.0, 80.0, 28.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"hidden" : 1,
					"patching_rect" : [ 14.0, 84.0, 86.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.blur% @size 1U-half @module_type video @algorithm_type jitter @description \"Blur the image using the jit.fastblur algorithm.\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 0.0, 109.0, 389.0, 30.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"patching_rect" : [ 0.0, 171.0, 13.0, 13.0 ],
					"id" : "obj-26",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hidden" : 1,
					"patching_rect" : [ 0.0, 84.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-27",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"outlettype" : [ "" ],
					"id" : "obj-34",
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"has_freeze" : 1,
					"prefix" : "video",
					"has_mute" : 1,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"has_preview" : 1,
					"numinlets" : 1,
					"has_bypass" : 1,
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [ 378.5, 258.0, 365.0, 258.0, 365.0, 193.0, 378.5, 193.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [ 378.5, 177.0, 364.0, 177.0, 364.0, 113.0, 378.5, 113.0 ]
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
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [ 378.5, 98.0, 365.0, 98.0, 365.0, 35.0, 378.5, 35.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-16", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [ 57.5, 276.0, 125.5, 276.0 ]
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
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [ 223.0, 223.0, 57.5, 223.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [ 109.5, 105.0, 9.5, 105.0 ]
				}

			}
 ]
	}

}
