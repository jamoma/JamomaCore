{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 381.0, 341.0, 1016.0, 473.0 ],
		"bglocked" : 0,
		"defrect" : [ 381.0, 341.0, 1016.0, 473.0 ],
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
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"id" : "obj-28",
					"presentation_rect" : [ 237.0, 22.0, 60.0, 45.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 235.0, 24.0, 60.0, 45.0 ],
					"presentation" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "center",
					"text" : "jcom.parameter center @type msg_float @ramp/drive scheduler @range/clipmode none @range/bounds 0. 1. @description \"Weight of center cell\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 489.0, 28.0, 415.0, 30.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ripple",
					"id" : "obj-5",
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"presentation_rect" : [ 104.0, 23.0, 36.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 414.0, 114.0, 36.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Ripple",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"presentation_rect" : [ 138.0, 21.0, 35.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 451.0, 112.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"presentation" : 1,
					"numoutlets" : 2,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"outlettype" : [ "", "" ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 116.0, 316.0, 52.0, 18.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"numinlets" : 0,
					"patching_rect" : [ 163.0, 182.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"id" : "obj-9",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 178.0, 182.0, 75.0, 18.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 161.0, 201.0, 78.0, 18.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 48.0, 258.0, 49.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"outlettype" : [ "", "" ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 48.0, 235.0, 86.0, 18.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 100.0, 91.0, 135.0, 16.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"id" : "obj-14",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 133.0, 340.0, 85.0, 18.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-15",
					"numinlets" : 1,
					"patching_rect" : [ 118.0, 340.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.blur%",
					"outlettype" : [ "jit_matrix" ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 116.0, 290.0, 64.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Center",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"presentation_rect" : [ 51.0, 21.0, 35.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 451.0, 36.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"presentation" : 1,
					"numoutlets" : 2,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "center",
					"id" : "obj-18",
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"presentation_rect" : [ 14.0, 23.0, 40.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 414.0, 38.0, 40.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Ring",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triangle" : 0,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"presentation_rect" : [ 51.0, 35.0, 35.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 451.0, 192.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"presentation" : 1,
					"numoutlets" : 2,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ring",
					"id" : "obj-20",
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"presentation_rect" : [ 14.0, 37.0, 28.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 414.0, 194.0, 28.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ripple",
					"text" : "jcom.parameter ripple @type msg_float @ramp/drive scheduler @range/clipmode none @range/bounds -1. 1. @description \"Scaling applied to outer ringing cells\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 489.0, 186.0, 421.0, 30.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ring",
					"text" : "jcom.parameter ring @type msg_float @ramp/drive scheduler @range/clipmode none @range/bounds 0. 1. @description \"Weight of cells adjoining the center\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 489.0, 107.0, 412.0, 30.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"id" : "obj-24",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 14.0, 88.0, 86.0, 18.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.blur% @module_type video @algorithm_type jitter @description \"Blur the image using the jit.fastblur algorithm.\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 0.0, 113.0, 389.0, 30.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-26",
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 175.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-27",
					"numinlets" : 0,
					"patching_rect" : [ 0.0, 88.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_bypass" : 1,
					"outlettype" : [ "" ],
					"has_freeze" : 1,
					"id" : "obj-34",
					"prefix" : "video",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"has_mute" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 3.0, 300.0, 70.0 ],
					"has_preview" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 109.0, 9.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 200.0, 227.0, 57.5, 227.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 57.5, 280.0, 125.5, 280.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-15", 0 ],
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
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-16", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
