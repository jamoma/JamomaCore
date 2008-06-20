{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 266.0, 190.0, 932.0, 485.0 ],
		"bglocked" : 0,
		"defrect" : [ 266.0, 190.0, 932.0, 485.0 ],
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
					"maxclass" : "textbutton",
					"prototypename" : "jamoma recording",
					"mode" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"border" : 1,
					"presentation_rect" : [ 129.404068, 27.37336, 49.265553, 15.933016 ],
					"id" : "obj-6",
					"text" : "record",
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 480.00946, 66.093468, 49.265553, 15.933016 ],
					"fontsize" : 8.0,
					"presentation" : 1,
					"texton" : "recording",
					"rounded" : 8.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numoutlets" : 2,
					"presentation_rect" : [ 237.0, 22.0, 60.0, 45.0 ],
					"id" : "obj-28",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 239.0, 22.0, 60.0, 45.0 ],
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "noise-threshold",
					"fontname" : "Arial",
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 175.0, 50.0, 35.0, 17.0 ],
					"id" : "obj-3",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 499.0, 300.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"triscale" : 0.9,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"triangle" : 0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "filter-on",
					"numoutlets" : 1,
					"presentation_rect" : [ 48.0, 47.0, 18.0, 18.0 ],
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"patching_rect" : [ 504.0, 122.0, 18.0, 18.0 ],
					"presentation" : 1,
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"numinlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "noise[2]",
					"text" : "jcom.parameter noise @type msg_float @description \"Set threshold level for the noise reduction\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"id" : "obj-5",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 536.0, 296.0, 248.0, 27.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "filter/on",
					"text" : "jcom.parameter filter/on @type msg_toggle @description \"Turn low pass filter on and off\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"id" : "obj-7",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 535.0, 117.0, 218.0, 27.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "noise-on",
					"numoutlets" : 1,
					"presentation_rect" : [ 158.0, 48.0, 18.0, 18.0 ],
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"patching_rect" : [ 512.0, 241.0, 18.0, 18.0 ],
					"presentation" : 1,
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"numinlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "noise[1]",
					"text" : "jcom.parameter noise @type msg_toggle @description \"Turn on noise reduction\"",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"id" : "obj-10",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 536.0, 239.0, 372.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "noise",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0,
					"presentation_rect" : [ 131.0, 50.0, 33.0, 17.0 ],
					"id" : "obj-12",
					"patching_rect" : [ 498.0, 268.0, 33.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "filter-threshold",
					"fontname" : "Arial",
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 65.0, 47.0, 35.0, 17.0 ],
					"id" : "obj-13",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 492.0, 186.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"triscale" : 0.9,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"triangle" : 0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "filter",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0,
					"presentation_rect" : [ 18.0, 49.0, 34.0, 17.0 ],
					"id" : "obj-14",
					"patching_rect" : [ 489.0, 160.0, 34.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "filter/threshold",
					"text" : "jcom.parameter filter/threshold @type msg_float @description \"Set the threshold level for the low pass filter\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"id" : "obj-15",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 536.0, 179.0, 286.0, 27.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "record",
					"text" : "jcom.parameter record @type msg_int @description \"Turn on recording of the background image.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"id" : "obj-20",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 534.0, 60.0, 246.0, 27.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Mode",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"presentation_rect" : [ 18.0, 27.0, 100.0, 17.0 ],
					"id" : "obj-21",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 417.0, 30.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"labelclick" : 1,
					"items" : [ "Select", "mode", ",", "Simple", ",", "Slide", ",", "Mask", ",", "Mean" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mode",
					"text" : "jcom.parameter mode @type msg_int @description \"Choose between four different background subtraction models.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"id" : "obj-27",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 532.0, 25.0, 278.0, 27.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 106.0, 261.0, 57.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-2",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 106.0, 237.0, 93.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "" ],
					"patching_rect" : [ 102.0, 93.0, 243.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out 1",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-25",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 105.0, 329.0, 71.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-26",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 195.0, 206.0, 64.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-30",
					"outlettype" : [ "" ],
					"patching_rect" : [ 122.0, 112.0, 137.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.hub",
					"text" : "jcom.hub @module_type video @algorithm_type jitter @description \"Two different types of video background subtraction\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-31",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 6.0, 138.0, 417.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-32",
					"patching_rect" : [ 122.0, 362.0, 85.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-33",
					"patching_rect" : [ 107.0, 362.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "" ],
					"patching_rect" : [ 197.0, 185.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-35",
					"patching_rect" : [ 212.0, 185.0, 75.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.background%",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-36",
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 105.0, 303.0, 109.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-37",
					"outlettype" : [ "" ],
					"patching_rect" : [ 261.0, 112.0, 41.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-38",
					"patching_rect" : [ 23.0, 110.0, 97.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-39",
					"patching_rect" : [ 8.0, 195.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-40",
					"outlettype" : [ "" ],
					"patching_rect" : [ 8.0, 108.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numoutlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"has_bypass" : 1,
					"has_panel" : 1,
					"has_freeze" : 1,
					"patching_rect" : [ 3.0, 1.0, 300.0, 70.0 ],
					"has_mute" : 1,
					"presentation" : 1,
					"prefix" : "video",
					"has_preview" : 1,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 111.5, 133.0, 15.5, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 270.5, 133.0, 15.5, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 131.5, 133.0, 15.5, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 227.0, 230.0, 115.5, 230.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-4", 0 ],
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
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 285.0, 114.5, 285.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 115.5, 285.0, 114.5, 285.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-36", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 543.5, 94.930626, 470.354034, 94.930626, 470.354034, 61.600479, 489.50946, 61.600479 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 489.50946, 84.0, 531.466492, 84.0, 531.466492, 57.0, 543.5, 57.0 ]
				}

			}
 ]
	}

}
