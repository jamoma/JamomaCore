{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 215.0, 450.0, 878.0, 464.0 ],
		"bglocked" : 0,
		"defrect" : [ 215.0, 450.0, 878.0, 464.0 ],
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
					"text" : "/init",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-37",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 251.0, 126.0, 32.5, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-36",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 11.0, 102.0, 195.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"id" : "obj-35",
					"numinlets" : 1,
					"presentation_rect" : [ 236.0, 22.0, 60.0, 45.0 ],
					"numoutlets" : 2,
					"patching_rect" : [ 235.0, 20.0, 60.0, 45.0 ],
					"outlettype" : [ "", "" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out 1",
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 73.0, 365.0, 62.0, 18.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-2",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 157.0, 236.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"patching_rect" : [ 171.0, 236.0, 75.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 155.0, 255.0, 78.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "blue mask",
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"presentation_rect" : [ 104.513145, 49.316986, 60.0, 19.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 415.0, 181.0, 60.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 1,
					"presentation_rect" : [ 164.0, 50.0, 35.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 481.0, 181.0, 35.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mask/blue",
					"text" : "jcom.parameter mask/blue @ramp/drive scheduler @description \"Sets the masking for the blue component.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 543.0, 174.0, 295.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 1,
					"presentation_rect" : [ 55.0, 50.0, 35.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 503.0, 338.0, 35.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "blue tint",
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"presentation_rect" : [ 5.0, 50.0, 50.0, 19.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 437.0, 338.0, 50.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "tint/blue",
					"text" : "jcom.parameter tint/blue @ramp/drive scheduler @description \"Sets the tinting of the blue component.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 546.0, 331.0, 281.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "red mask",
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"presentation_rect" : [ 110.0, 19.0, 55.0, 19.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 422.0, 81.0, 55.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "green mask",
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"presentation_rect" : [ 97.0, 34.0, 68.0, 19.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 421.0, 133.0, 68.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 1,
					"presentation_rect" : [ 164.0, 19.0, 35.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 488.0, 81.0, 35.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 1,
					"presentation_rect" : [ 164.0, 35.0, 35.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 487.0, 133.0, 35.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mask/red",
					"text" : "jcom.parameter mask/red @ramp/drive scheduler @description \"Sets the masking for the red component.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 542.0, 75.0, 290.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mask/green",
					"text" : "jcom.parameter mask/green @ramp/drive scheduler @description \"Sets the masking for the green component.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 545.0, 126.0, 302.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 1,
					"presentation_rect" : [ 55.0, 19.0, 35.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 503.0, 228.0, 35.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "red tint",
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"presentation_rect" : [ 9.0, 19.0, 46.55864, 19.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 437.0, 228.0, 65.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 1,
					"presentation_rect" : [ 55.0, 35.0, 35.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 503.0, 283.0, 35.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "green tint",
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"presentation_rect" : [ -3.0, 34.0, 58.0, 19.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 437.0, 283.0, 58.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "tint/red",
					"text" : "jcom.parameter tint/red @ramp/drive scheduler @description \"Sets the tinting of the red component.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 546.0, 221.0, 276.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "tint/green",
					"text" : "jcom.parameter tint/green @ramp/drive scheduler @description \"Sets the tinting of the green component.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 546.0, 276.0, 288.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.emboss% @module_type video @algorithm_type jitter @description \"cheesy embossing effect\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 1.0, 150.0, 339.0, 30.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 73.0, 311.0, 49.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 73.0, 289.0, 86.0, 18.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-26",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 113.0, 125.0, 135.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"fontname" : "Verdana",
					"id" : "obj-27",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 394.0, 85.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-28",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 394.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Verdana",
					"id" : "obj-30",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"patching_rect" : [ 23.0, 125.0, 86.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-31",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3.0, 185.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-32",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 3.0, 125.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.emboss%",
					"fontname" : "Verdana",
					"id" : "obj-33",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 73.0, 335.0, 101.0, 18.0 ],
					"outlettype" : [ "jit_matrix" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_bypass" : 1,
					"has_preview" : 1,
					"id" : "obj-34",
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"has_freeze" : 1,
					"numoutlets" : 1,
					"prefix" : "video",
					"outlettype" : [ "" ],
					"presentation" : 1,
					"has_mute" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-35", 0 ],
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
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
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
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-33", 1 ],
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
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-14", 0 ],
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
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 149.5, 332.0, 82.5, 332.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 194.0, 281.0, 82.5, 281.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 122.5, 146.0, 10.5, 146.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 20.5, 147.0, 10.5, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 260.5, 146.0, 10.5, 146.0 ]
				}

			}
 ]
	}

}
