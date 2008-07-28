{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 418.0, 194.0, 672.0, 382.0 ],
		"bglocked" : 0,
		"defrect" : [ 418.0, 194.0, 672.0, 382.0 ],
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
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-31",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 120.0, 291.0, 52.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-1",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 241.0, 176.0, 13.0, 13.0 ],
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
					"fontname" : "Verdana",
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 256.0, 176.0, 75.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-3",
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 241.0, 196.0, 78.0, 18.0 ],
					"numoutlets" : 3,
					"id" : "obj-4",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 120.0, 243.0, 49.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 120.0, 223.0, 86.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-6",
					"outlettype" : [ "", "" ]
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
					"patching_rect" : [ 103.0, 87.0, 135.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bleed",
					"fontname" : "Verdana",
					"presentation_rect" : [ 161.0, 21.0, 35.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 115.0, 20.0, 35.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "gain",
					"fontname" : "Verdana",
					"presentation_rect" : [ 166.0, 42.0, 30.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 120.0, 34.0, 30.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "normalize",
					"fontname" : "Verdana",
					"presentation_rect" : [ 14.887609, 51.264465, 64.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 77.0, 46.0, 64.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"presentation_rect" : [ 0.905786, 50.17025, 79.0, 18.0 ],
					"inactivecolor" : [ 0.72549, 0.72549, 0.72549, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 357.0, 295.0, 79.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "" ],
					"activecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "normalize",
					"text" : "jcom.parameter normalize @type msg_toggle @description \"Switches normalization on and off\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 355.0, 317.0, 254.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-12",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"presentation_rect" : [ 195.0, 21.0, 35.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 337.0, 15.0, 35.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-13",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"presentation_rect" : [ 195.0, 43.0, 35.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 335.0, 84.0, 35.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-14",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "bleed",
					"text" : "jcom.parameter bleed @type msg_float @ramp/drive scheduler @description \"Sets convolution kernel value for all colors\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 337.0, 37.0, 329.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-15",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "gain",
					"text" : "jcom.parameter gain @type msg_float @ramp/drive scheduler @description \"The gain level for all colors\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 335.0, 108.0, 272.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-16",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"presentation_rect" : [ 126.0, 21.0, 35.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 358.0, 160.0, 35.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-17",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "feedforward",
					"fontname" : "Verdana",
					"presentation_rect" : [ 59.094215, 21.0, 68.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 5.0, 20.0, 68.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"presentation_rect" : [ 126.0, 43.0, 35.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 360.0, 227.0, 35.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-19",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "feedback",
					"fontname" : "Verdana",
					"presentation_rect" : [ 74.094215, 43.0, 53.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 22.0, 34.0, 53.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "feedback",
					"text" : "jcom.parameter feedback @type msg_float @ramp/drive scheduler @description \"The feedback value for all colors\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 359.0, 250.0, 297.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-21",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"fontname" : "Verdana",
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 135.0, 314.0, 85.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-22",
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 314.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-23",
					"comment" : ""
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
					"patching_rect" : [ 17.0, 195.0, 80.0, 28.0 ],
					"numoutlets" : 1,
					"id" : "obj-24",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Verdana",
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 14.0, 84.0, 86.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-25",
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type video @algorithm_type jitter @description \"Video feedback with convolution for trippy effects\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 1.0, 105.0, 302.0, 42.0 ],
					"numoutlets" : 2,
					"id" : "obj-26",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 171.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-27",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 0.0, 84.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-28",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "feedforward",
					"text" : "jcom.parameter feedforward @type msg_float @ramp/drive scheduler @description \"The feedforward value for all colors\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 357.0, 182.0, 312.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-29",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.wake%",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 120.0, 267.0, 131.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-30",
					"outlettype" : [ "jit_matrix" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_bypass" : 1,
					"prefix" : "video",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"has_freeze" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
					"has_mute" : 1,
					"id" : "obj-32",
					"outlettype" : [ "" ],
					"has_preview" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 112.5, 105.0, 10.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 364.5, 347.0, 341.0, 347.0, 341.0, 290.0, 366.5, 290.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 366.5, 214.0, 344.0, 214.0, 344.0, 157.0, 367.5, 157.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 368.5, 281.0, 345.0, 281.0, 345.0, 224.0, 369.5, 224.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 280.0, 218.0, 129.5, 218.0 ]
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
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 196.5, 262.0, 129.5, 262.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 346.5, 69.0, 324.0, 69.0, 324.0, 12.0, 346.5, 12.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 344.5, 140.0, 322.0, 140.0, 322.0, 80.0, 344.5, 80.0 ]
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
					"destination" : [ "obj-30", 1 ],
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
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
