{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 481.0, 84.0, 1265.0, 731.0 ],
		"bglocked" : 0,
		"defrect" : [ 481.0, 84.0, 1265.0, 731.0 ],
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
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 5.0, 100.0, 243.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Context :",
					"fontname" : "Verdana",
					"presentation_rect" : [ 15.0, 45.0, 62.0, 20.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.970939,
					"patching_rect" : [ 130.0, 480.0, 150.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "interpolate[2]",
					"text" : "jcom.parameter context @type msg_symbol @description \"Name of the window and rendering context\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 115.0, 565.0, 245.0, 42.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.970939,
					"patching_rect" : [ 115.0, 535.0, 100.0, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "this_context",
					"fontname" : "Verdana",
					"presentation_rect" : [ 75.0, 45.0, 127.0, 20.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"fontsize" : 10.970939,
					"patching_rect" : [ 115.0, 505.0, 109.0, 20.0 ],
					"numoutlets" : 3,
					"presentation" : 1,
					"outlettype" : [ "", "int", "" ],
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "interpolate",
					"prototypename" : "jamoma on off",
					"fontname" : "Verdana",
					"presentation_rect" : [ 135.0, 25.0, 68.84684, 16.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"mode" : 1,
					"border" : 1,
					"patching_rect" : [ 31.0, 361.0, 68.466904, 17.933016 ],
					"numoutlets" : 3,
					"presentation" : 1,
					"texton" : "interpolate",
					"text" : "interpolate",
					"rounded" : 8.0,
					"outlettype" : [ "", "", "int" ],
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "fullscreen",
					"prototypename" : "jamoma settings",
					"fontname" : "Verdana",
					"presentation_rect" : [ 54.394554, 25.0, 64.251328, 16.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"mode" : 1,
					"border" : 1,
					"patching_rect" : [ 27.0, 279.0, 68.287193, 19.000002 ],
					"numoutlets" : 3,
					"presentation" : 1,
					"texton" : "fullscreen",
					"text" : "fullscreen",
					"rounded" : 8.0,
					"outlettype" : [ "", "", "int" ],
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"presentation_rect" : [ 235.0, 21.0, 60.0, 45.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 233.0, 21.0, 60.0, 45.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 361.0, 143.0, 55.0, 18.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 189.0, 211.0, 49.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 189.0, 188.0, 86.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "interpolate[1]",
					"text" : "jcom.parameter interpolate @type msg_toggle @description \"Interpolate the video output\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 28.0, 386.0, 245.0, 30.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "fullscreen[1]",
					"text" : "jcom.parameter fullscreen @type msg_toggle @description \"Toggle fullscreen - can be turned on and off with the ESC key.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 27.0, 306.0, 328.0, 30.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-9"
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
					"patching_rect" : [ 99.0, 126.0, 135.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 378.0, 212.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-11",
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
					"patching_rect" : [ 393.0, 213.0, 75.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.output%",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 189.0, 240.0, 199.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-13"
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
					"patching_rect" : [ 348.0, 373.0, 80.0, 28.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-14"
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
					"patching_rect" : [ 15.0, 124.0, 86.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type video @algorithm_type jitter @description \"Output to an OpenGL window\"",
					"linecount" : 4,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 1.0, 149.0, 173.0, 54.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 1.0, 211.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-17",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 1.0, 124.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-18",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_mute" : 1,
					"has_preview" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"prefix" : "video",
					"has_bypass" : 1,
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
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 14.5, 117.0, 0.0, 117.0, 0.0, 120.0, -3.0, 120.0, -3.0, 138.0, 6.0, 138.0, 6.0, 144.0, 10.5, 144.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 124.5, 614.0, 104.0, 614.0, 104.0, 499.0, 124.5, 499.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 265.5, 233.0, 198.5, 233.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 108.5, 145.0, 10.5, 145.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 37.5, 426.0, 18.0, 426.0, 18.0, 355.0, 40.5, 355.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 36.5, 346.0, 13.0, 346.0, 13.0, 259.0, 36.5, 259.0 ]
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-5", 0 ],
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
