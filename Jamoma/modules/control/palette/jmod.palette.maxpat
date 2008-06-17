{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 124.0, 193.0, 920.0, 548.0 ],
		"bglocked" : 0,
		"defrect" : [ 124.0, 193.0, 920.0, 548.0 ],
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
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"patching_rect" : [ 168.0, 89.0, 193.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 119.0, 174.0, 45.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "NewColor",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"jsarguments" : [ "New Color" ],
					"nofsaa" : 1,
					"presentation_rect" : [ 149.0, 0.0, 61.0, 18.0 ],
					"id" : "obj-9",
					"filename" : "jsui_textbutton.js",
					"numinlets" : 1,
					"patching_rect" : [ 406.0, 48.0, 61.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "Clear",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"jsarguments" : [ "Clear" ],
					"nofsaa" : 1,
					"presentation_rect" : [ 211.0, 0.0, 61.0, 18.0 ],
					"id" : "obj-10",
					"filename" : "jsui_textbutton.js",
					"numinlets" : 1,
					"patching_rect" : [ 406.0, 156.0, 61.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Step Size",
					"presentation" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 145.0, 42.0, 58.0, 18.0 ],
					"id" : "obj-11",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 145.0, 42.0, 58.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Step Size",
					"presentation" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 4.0, 42.0, 55.0, 18.0 ],
					"id" : "obj-12",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 4.0, 42.0, 55.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RandomStepSize",
					"presentation" : 1,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 58.0, 41.0, 47.0, 19.0 ],
					"id" : "obj-13",
					"minimum" : 0.0,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"triangle" : 0,
					"patching_rect" : [ 406.0, 279.0, 47.0, 19.0 ],
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[7]",
					"text" : "jcom.message colors @type msg_list @description \"Set what colors to mix from (list containing 1 to 12 triplets of RGB values).\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 406.0, 93.0, 339.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "random/step_size",
					"text" : "jcom.parameter random/step_size @type msg_float @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0. 1. @range/clipmode both @description \"Set how much next color can deviate from the current when random mode is walk.\"",
					"linecount" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 406.0, 299.0, 407.0, 42.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[5]",
					"text" : "jcom.message clear @description \"Set all colors on palett to black.\"",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 406.0, 176.0, 345.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[4]",
					"text" : "jcom.message gencolor @type msg_none @description \"Generate new color triplet.\"",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 406.0, 68.0, 429.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "interpolate/step_size",
					"text" : "jcom.parameter interpolate/step_size @type msg_float @range/bounds 0. 1. @range/clipmode both @ramp/drive scheduler @repetitions/allow 1 @description \"Step size when interpolating.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 406.0, 450.0, 486.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "random/mode",
					"text" : "jcom.parameter random/mode @type msg_symbol @description \"Select distribution mode: random or walk.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 406.0, 235.0, 295.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "interpolate",
					"text" : "jcom.parameter interpolate @type msg_toggle @description \"Perform cubic interpolation (flag).\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 406.0, 386.0, 254.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "RandomMode",
					"presentation" : 1,
					"numoutlets" : 3,
					"labelclick" : 1,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "random", ",", "walk" ],
					"fontname" : "Verdana",
					"types" : [  ],
					"presentation_rect" : [ 58.0, 23.0, 61.0, 19.0 ],
					"id" : "obj-21",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 406.0, 213.0, 61.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Interpolate",
					"presentation" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 164.0, 22.0, 65.0, 18.0 ],
					"id" : "obj-22",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 160.0, 22.0, 65.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 119.0, 221.0, 49.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 119.0, 197.0, 86.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 38.0, 89.0, 135.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-26",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 406.0, 68.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-27",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 369.0, 80.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.palette",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-28",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 119.0, 278.0, 82.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Random",
					"presentation" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 4.0, 24.0, 51.0, 18.0 ],
					"id" : "obj-29",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 4.0, 24.0, 51.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.palette @size 1U-half @module_type control @description \"Create various blends of the RGB colors available.\"",
					"linecount" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-30",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 114.0, 232.0, 42.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-31",
					"numinlets" : 0,
					"patching_rect" : [ 16.0, 90.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-32",
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 316.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/interpolate/step_size 0.",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-33",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 236.0, 279.0, 153.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-34",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 236.0, 258.0, 68.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "InterpolateStepSize",
					"presentation" : 1,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 204.0, 42.0, 47.0, 19.0 ],
					"id" : "obj-35",
					"minimum" : 0.0,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"triangle" : 0,
					"patching_rect" : [ 406.0, 429.0, 47.0, 19.0 ],
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "Interpolate",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 144.0, 22.0, 20.0, 18.0 ],
					"id" : "obj-36",
					"numinlets" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 406.0, 366.0, 78.0, 18.0 ],
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-37",
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"numinlets" : 1,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 47.5, 108.0, 25.5, 108.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 177.5, 109.0, 25.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 195.5, 269.0, 128.5, 269.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 195.5, 249.0, 245.5, 249.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 436.5, 231.0, 415.5, 231.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 415.5, 267.0, 393.0, 267.0, 393.0, 210.0, 415.5, 210.0 ]
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
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 415.5, 342.0, 393.0, 342.0, 393.0, 276.0, 415.5, 276.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 415.5, 418.0, 393.0, 418.0, 393.0, 363.0, 415.5, 363.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 415.5, 480.0, 393.0, 480.0, 393.0, 426.0, 415.5, 426.0 ]
				}

			}
 ]
	}

}
