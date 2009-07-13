{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 209.0, 173.0, 920.0, 548.0 ],
		"bglocked" : 0,
		"defrect" : [ 209.0, 173.0, 920.0, 548.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"border" : 1,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-3",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 408.0, 156.0, 53.287197, 15.000001 ],
					"presentation" : 1,
					"presentation_rect" : [ 251.0, 2.0, 39.287197, 15.000001 ],
					"prototypename" : "jamoma settings",
					"rounded" : 8.0,
					"text" : "Clear",
					"texton" : "recording",
					"varname" : "camera_settings[1]"
				}

			}
, 			{
				"box" : 				{
					"border" : 1,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-6",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 390.0, 40.0, 53.287197, 15.000001 ],
					"presentation" : 1,
					"presentation_rect" : [ 181.0, 2.0, 66.287193, 15.000001 ],
					"prototypename" : "jamoma settings",
					"rounded" : 8.0,
					"text" : "New color",
					"texton" : "recording",
					"varname" : "camera_settings"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 177.0, 89.0, 193.0, 16.0 ],
					"text" : "/preset/store 1 default, /preset/write"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 191.0, 247.0, 45.0, 18.0 ],
					"text" : "jcom.in"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 145.0, 42.0, 70.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 185.0, 45.0, 61.0, 20.0 ],
					"text" : "Step Size"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 42.0, 62.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 45.0, 61.0, 20.0 ],
					"text" : "Step Size"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-13",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 406.0, 279.0, 47.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 66.0, 44.0, 47.0, 19.0 ],
					"triangle" : 0,
					"triscale" : 0.9,
					"varname" : "RandomStepSize"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-14",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 394.0, 86.0, 339.0, 30.0 ],
					"text" : "jcom.message colors @type msg_list @description \"Set what colors to mix from (list containing 1 to 12 triplets of RGB values).\"",
					"varname" : "jcom.parameter[7]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-15",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 406.0, 299.0, 432.0, 42.0 ],
					"text" : "jcom.parameter random/step_size @type msg_float @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0. 1. @range/clipmode both @description \"Set how much next color can deviate from the current when random mode is walk.\"",
					"varname" : "random/step_size"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 406.0, 176.0, 345.0, 18.0 ],
					"text" : "jcom.message clear @description \"Set all colors on palett to black.\"",
					"varname" : "jcom.parameter[5]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 390.0, 61.0, 537.0, 18.0 ],
					"text" : "jcom.message gencolor @repetitions/allow 1 @type msg_none @description \"Generate new color triplet.\"",
					"varname" : "jcom.parameter[4]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-18",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 406.0, 450.0, 486.0, 30.0 ],
					"text" : "jcom.parameter interpolate/step_size @type msg_float @range/bounds 0. 1. @range/clipmode both @ramp/drive scheduler @repetitions/allow 1 @description \"Step size when interpolating.\"",
					"varname" : "interpolate/step_size"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-19",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 406.0, 235.0, 295.0, 30.0 ],
					"text" : "jcom.parameter random/mode @type msg_symbol @description \"Select distribution mode: random or walk.\"",
					"varname" : "random/mode"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-20",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 406.0, 386.0, 254.0, 30.0 ],
					"text" : "jcom.parameter interpolate @type msg_toggle @description \"Perform cubic interpolation (flag).\"",
					"varname" : "interpolate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-21",
					"items" : [ "random", ",", "walk" ],
					"labelclick" : 1,
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 406.0, 213.0, 72.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 66.0, 23.0, 70.0, 19.0 ],
					"types" : [  ],
					"varname" : "RandomMode"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 160.0, 22.0, 70.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 204.0, 22.0, 71.0, 20.0 ],
					"text" : "Interpolate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 89.0, 135.0, 16.0 ],
					"text" : "/documentation/generate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 190.0, 280.0, 82.0, 18.0 ],
					"text" : "jalg.palette"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 24.0, 62.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 24.0, 54.0, 20.0 ],
					"text" : "Random"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-30",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 16.0, 114.0, 220.0, 42.0 ],
					"text" : "jcom.hub @module_type control @description \"Create various blends of the RGB colors available.\"",
					"varname" : "jcom.hub"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-31",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 16.0, 90.0, 13.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-32",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.0, 316.0, 13.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-33",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 280.0, 153.0, 16.0 ],
					"text" : "/interpolate/step_size 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-35",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 406.0, 429.0, 47.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 244.0, 45.0, 47.0, 19.0 ],
					"triangle" : 0,
					"triscale" : 0.9,
					"varname" : "InterpolateStepSize"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"disabled" : [ 0 ],
					"id" : "obj-36",
					"itemtype" : 1,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 406.0, 366.0, 78.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 184.0, 22.0, 20.0, 18.0 ],
					"size" : 1,
					"values" : [ 0 ],
					"varname" : "Interpolate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "jcom.ui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"text" : "/editing_this_module"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 47.5, 108.0, 25.5, 108.0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 186.5, 109.0, 25.5, 109.0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 442.0, 231.0, 415.5, 231.0 ],
					"source" : [ "obj-21", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 415.5, 267.0, 393.0, 267.0, 393.0, 210.0, 415.5, 210.0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 415.5, 342.0, 393.0, 342.0, 393.0, 276.0, 415.5, 276.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 415.5, 418.0, 393.0, 418.0, 393.0, 363.0, 415.5, 363.0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 415.5, 480.0, 393.0, 480.0, 393.0, 426.0, 415.5, 426.0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-6", 0 ]
				}

			}
 ]
	}

}
