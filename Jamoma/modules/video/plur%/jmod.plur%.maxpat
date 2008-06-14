{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 313.0, 348.0, 1020.0, 567.0 ],
		"bglocked" : 0,
		"defrect" : [ 313.0, 348.0, 1020.0, 567.0 ],
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
					"patching_rect" : [ 235.0, 20.0, 60.0, 45.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-41",
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 235.0, 20.0, 60.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 109.0, 302.0, 52.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-1",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 182.0, 186.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 197.0, 186.0, 75.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-3",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 182.0, 203.0, 78.0, 18.0 ],
					"numoutlets" : 3,
					"id" : "obj-4",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "colormode",
					"text" : "jcom.parameter colormode @type msg_int @range/bounds 0 2 @range/clipmode both @ramp/drive none @description \"colormode determines how jit.plur handles values that exceed the hi and lo values. 0 = wrap. 1 = clip. 2 = bounce\"",
					"linecount" : 3,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 345.0, 447.714294, 419.0, 42.0 ],
					"numoutlets" : 3,
					"id" : "obj-5",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "scale",
					"text" : "jcom.parameter scale @type msg_int @ramp/drive scheduler @description \"scale: actually a bit shift before display. normal is 8.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 345.0, 378.714294, 346.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-6",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mode",
					"text" : "jcom.parameter mode @type msg_int @range/bounds 0 15 @range/clipmode both @ramp/drive none @description \"the different modes represent different (highly arbitrary) variations on the classic linear interpolationorithm. there are 16 of them. try them all!\"",
					"linecount" : 3,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 345.0, 309.714294, 463.0, 42.0 ],
					"numoutlets" : 3,
					"id" : "obj-7",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 345.0, 12.0, 26.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-8",
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 116.0, 19.0, 26.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 345.0, 82.0, 26.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-9",
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 116.0, 33.0, 26.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 346.0, 150.0, 26.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-10",
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 47.0, 19.0, 26.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 344.0, 221.0, 26.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-11",
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 47.0, 33.0, 26.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "colormode",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 115.0, 46.0, 61.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"presentation_rect" : [ 130.0, 50.0, 61.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 345.0, 421.0, 27.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-13",
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 190.0, 50.0, 27.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "scale",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 136.0, 32.0, 34.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-14",
					"fontname" : "Verdana",
					"presentation_rect" : [ 157.0, 35.0, 34.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 345.0, 357.0, 27.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-15",
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 190.0, 35.0, 27.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mode",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 135.0, 18.0, 36.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-16",
					"fontname" : "Verdana",
					"presentation_rect" : [ 155.0, 19.0, 36.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 346.0, 287.0, 27.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-17",
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 190.0, 19.0, 27.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.plur% @module_type video @algorithm_type jitter @description \"peace - love - unity - rave\"",
					"linecount" : 3,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 0.0, 109.0, 236.0, 42.0 ],
					"numoutlets" : 2,
					"id" : "obj-18",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 109.0, 253.0, 49.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-19",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 109.0, 231.0, 86.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-20",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 103.0, 87.0, 135.0, 16.0 ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "x_step",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 71.0, 18.0, 42.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-22",
					"fontname" : "Verdana",
					"presentation_rect" : [ 74.0, 19.0, 42.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "y_step",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 71.0, 32.0, 42.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-23",
					"fontname" : "Verdana",
					"presentation_rect" : [ 74.0, 33.0, 42.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "gang",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 57.0, 46.0, 62.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-24",
					"fontname" : "Verdana",
					"presentation_rect" : [ 16.0, 52.0, 62.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"patching_rect" : [ 347.0, 496.0, 79.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-25",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 1.0, 51.0, 79.0, 18.0 ],
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "gang",
					"text" : "jcom.parameter gang @type msg_toggle @description \"when gang is on (default) x_ and y_range values are ignored - using the x_ and y_step values instead.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 345.0, 516.714294, 420.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-26",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "x_step",
					"text" : "jcom.parameter x_step @type msg_int @ramp/drive scheduler @description \"x_ and y_step represent the distance between the 'corners' between which the 'interpolation' takes place.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 345.0, 33.0, 472.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-27",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "y_step",
					"text" : "jcom.parameter y_step @type msg_int @ramp/drive scheduler @description \"x_ and y_step represent the distance between the 'corners' between which the 'interpolation' takes place.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 345.0, 102.714287, 472.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-28",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "x_range",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 2.0, 18.0, 57.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-29",
					"fontname" : "Verdana",
					"presentation_rect" : [ 0.0, 19.0, 57.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "y_range",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 1.0, 32.0, 50.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-30",
					"fontname" : "Verdana",
					"presentation_rect" : [ 0.0, 33.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "y_range",
					"text" : "jcom.parameter y_range @type msg_int @ramp/drive scheduler @description \"x_ and y_range represent the distance between the actual points used for the 'interpolation' calculation.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 345.0, 240.714279, 487.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-31",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 124.0, 332.0, 85.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-32",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 109.0, 332.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-33",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 17.0, 195.0, 80.0, 28.0 ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 14.0, 84.0, 86.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-35",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 171.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-36",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 0.0, 84.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-37",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "x_range",
					"text" : "jcom.parameter x_range @type msg_int @ramp/drive scheduler @description \"x_ and y_range represent the distance between the actual points used for the 'interpolation' calculation.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 345.0, 171.714279, 487.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-38",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.plur%",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 109.0, 277.0, 83.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-39",
					"outlettype" : [ "jit_matrix" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"prefix" : "video",
					"numinlets" : 1,
					"presentation" : 1,
					"has_mute" : 1,
					"numoutlets" : 1,
					"id" : "obj-40",
					"has_preview" : 1,
					"outlettype" : [ "" ],
					"has_bypass" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"has_freeze" : 1,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 112.5, 105.0, 9.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-41", 0 ],
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
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-39", 1 ],
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
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 354.5, 489.0, 330.0, 489.0, 330.0, 417.0, 354.5, 417.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 354.5, 408.0, 330.0, 408.0, 330.0, 354.0, 354.5, 354.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 354.5, 351.0, 330.0, 351.0, 330.0, 282.0, 355.5, 282.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 185.5, 274.0, 118.5, 274.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 221.0, 225.0, 118.5, 225.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 354.5, 132.0, 330.0, 132.0, 330.0, 78.0, 354.5, 78.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 354.5, 63.0, 330.0, 63.0, 330.0, 9.0, 354.5, 9.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 354.5, 270.0, 330.0, 270.0, 330.0, 216.0, 353.5, 216.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 354.5, 201.0, 330.0, 201.0, 330.0, 147.0, 355.5, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 354.5, 546.0, 330.0, 546.0, 330.0, 492.0, 356.5, 492.0 ]
				}

			}
 ]
	}

}
