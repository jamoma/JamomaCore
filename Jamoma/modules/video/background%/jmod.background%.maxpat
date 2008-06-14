{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 208.0, 291.0, 932.0, 503.0 ],
		"bglocked" : 0,
		"defrect" : [ 208.0, 291.0, 932.0, 503.0 ],
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
					"presentation_rect" : [ 237.0, 22.0, 60.0, 45.0 ],
					"id" : "obj-28",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 239.0, 22.0, 60.0, 45.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "noise-threshold",
					"fontname" : "Arial",
					"triscale" : 0.9,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 175.0, 50.0, 35.0, 17.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 499.0, 300.0, 35.0, 17.0 ],
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"minimum" : 0.0,
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "filter-on",
					"presentation_rect" : [ 48.0, 47.0, 18.0, 18.0 ],
					"id" : "obj-4",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 504.0, 122.0, 18.0, 18.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
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
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 536.0, 296.0, 248.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "filter/on",
					"text" : "jcom.parameter filter/on @type msg_toggle @description \"Turn low pass filter on and off\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 535.0, 117.0, 218.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "noise-on",
					"presentation_rect" : [ 158.0, 48.0, 18.0, 18.0 ],
					"id" : "obj-9",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 512.0, 241.0, 18.0, 18.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
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
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 536.0, 239.0, 372.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "noise",
					"fontname" : "Arial",
					"presentation_rect" : [ 131.0, 50.0, 33.0, 17.0 ],
					"id" : "obj-12",
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 498.0, 268.0, 33.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "filter-threshold",
					"fontname" : "Arial",
					"triscale" : 0.9,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 65.0, 47.0, 35.0, 17.0 ],
					"id" : "obj-13",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 492.0, 186.0, 35.0, 17.0 ],
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"minimum" : 0.0,
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "filter",
					"fontname" : "Arial",
					"presentation_rect" : [ 18.0, 49.0, 34.0, 17.0 ],
					"id" : "obj-14",
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 489.0, 160.0, 34.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "filter/threshold",
					"text" : "jcom.parameter filter/threshold @type msg_float @description \"Set the threshold level for the low pass filter\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-15",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 536.0, 179.0, 286.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "Record",
					"jsarguments" : [ "record", "recording" ],
					"presentation_rect" : [ 132.0, 28.0, 44.0, 16.0 ],
					"id" : "obj-18",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 475.0, 68.0, 44.0, 16.0 ],
					"presentation" : 1,
					"filename" : "jcom.jsui_texttoggle.js",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "record",
					"text" : "jcom.parameter record @type msg_int @description \"Turn on recording of the background image.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-20",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 534.0, 60.0, 246.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Mode",
					"fontname" : "Arial",
					"presentation_rect" : [ 18.0, 27.0, 100.0, 17.0 ],
					"id" : "obj-21",
					"numinlets" : 1,
					"types" : [  ],
					"numoutlets" : 3,
					"patching_rect" : [ 417.0, 30.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"labelclick" : 1,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "Select", "mode", ",", "Simple", ",", "Slide", ",", "Mask", ",", "Mean" ],
					"arrowlink" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mode",
					"text" : "jcom.parameter mode @type msg_int @description \"Choose between four different background subtraction models.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-27",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 532.0, 25.0, 278.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 106.0, 261.0, 57.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 106.0, 237.0, 93.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 102.0, 93.0, 243.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out 1",
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 105.0, 329.0, 71.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontname" : "Verdana",
					"id" : "obj-26",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 195.0, 206.0, 64.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"id" : "obj-30",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 122.0, 112.0, 137.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.hub",
					"text" : "jcom.hub jmod.background% @module_type video @algorithm_type jitter @description \"Two different types of video background subtraction\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-31",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 6.0, 138.0, 417.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"fontname" : "Verdana",
					"id" : "obj-32",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 122.0, 362.0, 85.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-33",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 107.0, 362.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-34",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 197.0, 185.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"fontname" : "Verdana",
					"id" : "obj-35",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 212.0, 185.0, 75.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.background%",
					"fontname" : "Verdana",
					"id" : "obj-36",
					"numinlets" : 3,
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 303.0, 109.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "jit_matrix" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Verdana",
					"id" : "obj-37",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 261.0, 112.0, 41.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Verdana",
					"id" : "obj-38",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 23.0, 110.0, 97.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-39",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 195.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-40",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 8.0, 108.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module.1",
					"has_freeze" : 1,
					"has_preview" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-16",
					"numinlets" : 1,
					"has_panel" : 1,
					"numoutlets" : 1,
					"has_bypass" : 1,
					"patching_rect" : [ 3.0, 1.0, 300.0, 70.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"has_mute" : 1,
					"prefix" : "video"
				}

			}
 ],
		"lines" : [ 			{
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
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
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
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 131.5, 133.0, 15.5, 133.0 ]
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
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 111.5, 133.0, 15.5, 133.0 ]
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
 ]
	}

}
