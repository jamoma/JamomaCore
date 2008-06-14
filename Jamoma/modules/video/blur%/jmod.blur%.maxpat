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
					"numinlets" : 1,
					"presentation_rect" : [ 237.0, 22.0, 60.0, 45.0 ],
					"id" : "obj-28",
					"numoutlets" : 2,
					"patching_rect" : [ 235.0, 24.0, 60.0, 45.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "center",
					"text" : "jcom.parameter center @type msg_float @ramp/drive scheduler @range/clipmode none @range/bounds 0. 1. @description \"Weight of center cell\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-4",
					"numoutlets" : 3,
					"patching_rect" : [ 489.0, 28.0, 415.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ripple",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"presentation_rect" : [ 104.0, 23.0, 36.0, 18.0 ],
					"id" : "obj-5",
					"numoutlets" : 0,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 414.0, 114.0, 36.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Ripple",
					"minimum" : 0.0,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"presentation_rect" : [ 138.0, 23.0, 35.0, 18.0 ],
					"id" : "obj-6",
					"numoutlets" : 2,
					"patching_rect" : [ 451.0, 112.0, 35.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 2,
					"patching_rect" : [ 116.0, 316.0, 52.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-8",
					"numoutlets" : 1,
					"patching_rect" : [ 163.0, 182.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-9",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 178.0, 182.0, 75.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-10",
					"numoutlets" : 3,
					"patching_rect" : [ 161.0, 201.0, 78.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-11",
					"numoutlets" : 1,
					"patching_rect" : [ 48.0, 258.0, 49.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-12",
					"numoutlets" : 2,
					"patching_rect" : [ 48.0, 235.0, 86.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"id" : "obj-13",
					"numoutlets" : 1,
					"patching_rect" : [ 100.0, 91.0, 135.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-14",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 133.0, 340.0, 85.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-15",
					"numoutlets" : 0,
					"patching_rect" : [ 118.0, 340.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.blur%",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-16",
					"numoutlets" : 1,
					"patching_rect" : [ 116.0, 290.0, 64.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "jit_matrix" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Center",
					"minimum" : 0.0,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"presentation_rect" : [ 51.0, 23.0, 35.0, 18.0 ],
					"id" : "obj-17",
					"numoutlets" : 2,
					"patching_rect" : [ 451.0, 36.0, 35.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "center",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"presentation_rect" : [ 14.0, 23.0, 40.0, 18.0 ],
					"id" : "obj-18",
					"numoutlets" : 0,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 414.0, 38.0, 40.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Ring",
					"minimum" : 0.0,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"presentation_rect" : [ 51.0, 44.0, 35.0, 18.0 ],
					"id" : "obj-19",
					"numoutlets" : 2,
					"patching_rect" : [ 451.0, 192.0, 35.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ring",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"presentation_rect" : [ 14.0, 46.0, 28.0, 18.0 ],
					"id" : "obj-20",
					"numoutlets" : 0,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 414.0, 194.0, 28.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ripple",
					"text" : "jcom.parameter ripple @type msg_float @ramp/drive scheduler @range/clipmode none @range/bounds -1. 1. @description \"Scaling applied to outer ringing cells\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-21",
					"numoutlets" : 3,
					"patching_rect" : [ 489.0, 186.0, 421.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ring",
					"text" : "jcom.parameter ring @type msg_float @ramp/drive scheduler @range/clipmode none @range/bounds 0. 1. @description \"Weight of cells adjoining the center\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-22",
					"numoutlets" : 3,
					"patching_rect" : [ 489.0, 107.0, 412.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-24",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 14.0, 88.0, 86.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.blur% @module_type video @algorithm_type jitter @description \"Blur the image using the jit.fastblur algorithm.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-25",
					"numoutlets" : 2,
					"patching_rect" : [ 0.0, 113.0, 389.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-26",
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 175.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-27",
					"numoutlets" : 1,
					"patching_rect" : [ 0.0, 88.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_preview" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-34",
					"has_mute" : 1,
					"numoutlets" : 1,
					"has_bypass" : 1,
					"patching_rect" : [ 0.0, 3.0, 300.0, 70.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"prefix" : "video",
					"has_freeze" : 1,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
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
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-16", 1 ],
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
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-15", 0 ],
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
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-16", 0 ],
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
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 109.0, 9.5, 109.0 ]
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
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-26", 0 ],
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
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-4", 0 ],
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-22", 0 ],
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
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
