{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 0.0, 44.0, 1112.0, 400.0 ],
		"bglocked" : 0,
		"defrect" : [ 0.0, 44.0, 1112.0, 400.0 ],
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
					"presentation_rect" : [ 85.0, 22.274523, 60.0, 45.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 85.0, 20.0, 60.0, 45.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation_rect" : [ 5.0, 45.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 45.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 237.0, 312.0, 52.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 2",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 297.0, 196.0, 78.0, 18.0 ],
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 297.0, 174.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-- VIDEO INPUTS --",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 297.0, 158.0, 107.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 366.0, 175.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "op_value",
					"text" : "jcom.parameter op_value @type msg_float @ramp/drive scheduler @repetitions/allow 0 @description \"Number to associate with operation.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 497.0, 192.0, 371.0, 30.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "OpValue",
					"fontname" : "Verdana",
					"triangle" : 0,
					"ignoreclick" : 1,
					"presentation_rect" : [ 46.0, 45.0, 35.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"patching_rect" : [ 497.0, 170.0, 35.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 169.0, 249.0, 49.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 169.0, 226.0, 86.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-11"
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
					"patching_rect" : [ 106.0, 87.0, 135.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type video @algorithm_type jitter @description \"Perform mathematical operations using two video inputs as the operands\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 0.0, 109.0, 322.0, 42.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "OpMenu",
					"fontname" : "Verdana",
					"presentation_rect" : [ 22.0, 25.0, 60.0, 19.0 ],
					"numinlets" : 1,
					"pattrmode" : 1,
					"items" : [ "pass", ",", "*", ",", "/", ",", "+", ",", "-", ",", "+m", ",", "-m", ",", "%", ",", "min", ",", "max", ",", "abs", ",", "avg", ",", "absdiff", ",", "!pass", ",", "!/", ",", "!-", ",", "!%", ",", "&", ",", "|", ",", "^", ",", "~", ",", ">>", ",", "<<", ",", "&&", ",", "||", ",", "!", ",", ">", ",", "<", ",", ">=", ",", "<=", ",", "==", ",", "!=", ",", ">p", ",", "<p", ",", ">=p", ",", "<=p", ",", "==p", ",", "!=p", ",", "sin", ",", "cos", ",", "tan", ",", "asin", ",", "acos", ",", "atan", ",", "atan2", ",", "sinh", ",", "cosh", ",", "tanh", ",", "asinh", ",", "acosh", ",", "atanh", ",", "exp", ",", "exp2", ",", "ln", ",", "log2", ",", "log10", ",", "hypot", ",", "pow", ",", "sqrt", ",", "ceil", ",", "floor", ",", "round", ",", "trunc", ",", "ignore" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 475.0, 81.0, 60.0, 19.0 ],
					"numoutlets" : 3,
					"presentation" : 1,
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "op",
					"fontname" : "Verdana",
					"presentation_rect" : [ 2.0, 26.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 0.0, 25.0, 45.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-15",
					"underline" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "op",
					"text" : "jcom.parameter op @type msg_symbol @description \"Chooses the type of operation to perform on the two video inputs to the module.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 496.0, 102.0, 578.0, 30.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-16"
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
					"patching_rect" : [ 252.0, 334.0, 85.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 237.0, 334.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-18",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.op%",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"fontsize" : 9.873845,
					"patching_rect" : [ 237.0, 291.0, 131.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"id" : "obj-19"
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
					"patching_rect" : [ 27.0, 185.0, 80.0, 28.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-20"
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
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 171.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-22",
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
					"id" : "obj-23",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_mute" : 1,
					"has_preview" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"numinlets" : 1,
					"prefix" : "video",
					"has_bypass" : 1,
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"has_freeze" : 1,
					"id" : "obj-34"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 115.5, 105.0, 9.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 505.5, 144.0, 462.0, 144.0, 462.0, 78.0, 484.5, 78.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-19", 2 ],
					"hidden" : 0,
					"midpoints" : [ 326.166656, 252.0, 358.5, 252.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-19", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 178.5, 275.0, 246.5, 275.0 ]
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
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 345.833344, 219.0, 178.5, 219.0 ]
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
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 506.5, 222.0, 483.0, 222.0, 483.0, 165.0, 506.5, 165.0 ]
				}

			}
 ]
	}

}
