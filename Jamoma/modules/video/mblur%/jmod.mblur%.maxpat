{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 490.0, 44.0, 736.0, 546.0 ],
		"bglocked" : 0,
		"defrect" : [ 490.0, 44.0, 736.0, 546.0 ],
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
					"presentation_rect" : [ 235.0, 21.0, 60.0, 45.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 235.0, 20.0, 60.0, 45.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 92.0, 339.0, 52.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 166.0, 189.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 181.0, 189.0, 75.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 166.0, 208.0, 78.0, 18.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 24.0, 264.0, 49.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 24.0, 241.0, 86.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 100.0, 87.0, 135.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 107.0, 377.0, 85.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 92.0, 377.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-9",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.mblur%",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 92.0, 313.0, 84.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 80.0, 23.0, 43.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 324.0, 29.0, 43.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-11",
					"minimum" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "slide_up",
					"fontname" : "Verdana",
					"presentation_rect" : [ 14.0, 23.0, 50.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 14.0, 23.0, 50.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 80.0, 44.0, 43.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 325.0, 114.0, 43.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-13",
					"minimum" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "slide_down",
					"fontname" : "Verdana",
					"presentation_rect" : [ 14.0, 44.0, 65.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 14.0, 37.0, 65.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "slide_down",
					"text" : "jcom.parameter slide_down @type msg_int @ramp/drive scheduler @range/clipmode low @range/bounds 1 100 @description \"The slide down factor - meaning how quickly (in frames) colors move from bright to dark\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 325.0, 139.0, 383.0, 42.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "slide_up",
					"text" : "jcom.parameter slide_up @type msg_int @ramp/drive scheduler @range/clipmode low @range/bounds 1 100 @description \"The slide up factor - meaning how quickly (in frames) colors move from dark up to bright\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 324.0, 52.0, 395.0, 42.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"fontname" : "Verdana",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 9.0, 318.0, 80.0, 28.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 14.0, 84.0, 86.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type video @algorithm_type jitter @description \"Create a Motion-Blur type of effect by using a brightness-based envelope follower\"",
					"linecount" : 4,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 0.0, 109.0, 234.0, 54.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 171.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-20",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 0.0, 84.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-21",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_bypass" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"has_preview" : 1,
					"numoutlets" : 1,
					"prefix" : "video",
					"presentation" : 1,
					"outlettype" : [ "" ],
					"has_mute" : 1,
					"id" : "obj-34",
					"has_freeze" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 105.0, 9.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 333.5, 96.0, 310.0, 96.0, 310.0, 24.0, 333.5, 24.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 334.5, 183.0, 310.0, 183.0, 310.0, 111.0, 334.5, 111.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 205.0, 233.0, 33.5, 233.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 33.5, 286.0, 101.5, 286.0 ]
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
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
