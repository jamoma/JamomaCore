{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 199.0, 753.0, 894.0, 304.0 ],
		"bglocked" : 0,
		"defrect" : [ 199.0, 753.0, 894.0, 304.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"fontsize" : 9.0,
					"patching_rect" : [ 106.0, 70.0, 191.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command output",
					"fontname" : "Arial",
					"id" : "obj-2",
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 19.0, 157.0, 79.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"id" : "obj-3",
					"fontsize" : 9.0,
					"patching_rect" : [ 443.0, 192.0, 49.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"patching_rect" : [ 409.0, 9.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"fontname" : "Arial",
					"id" : "obj-5",
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 424.0, 9.0, 66.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-6",
					"fontsize" : 9.0,
					"patching_rect" : [ 409.0, 28.0, 78.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "color[1]",
					"text" : "jcom.parameter color @type msg_toggle @description \"Color or greyscale\"",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-7",
					"fontsize" : 9.0,
					"patching_rect" : [ 457.0, 408.0, 355.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "color",
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"presentation_rect" : [ 201.352936, 34.967915, 18.0, 18.0 ],
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"patching_rect" : [ 458.0, 387.0, 18.0, 18.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "color",
					"fontname" : "Verdana",
					"id" : "obj-10",
					"presentation_rect" : [ 172.0, 34.967915, 40.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 144.0, 24.0, 40.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontsize" : 9.0,
					"patching_rect" : [ 443.0, 104.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"id" : "obj-12",
					"fontsize" : 9.0,
					"patching_rect" : [ 443.0, 80.0, 78.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "edge/threshold",
					"text" : "jcom.parameter edge/threshold @type msg_float @description \"Edge threshold\"",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-13",
					"fontsize" : 9.0,
					"patching_rect" : [ 455.0, 346.0, 371.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar edge_threshold",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-14",
					"fontsize" : 9.0,
					"patching_rect" : [ 455.0, 326.0, 102.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "edge/algorithm",
					"text" : "jcom.parameter edge/algorithm @type msg_symbol @description \"Edge detection\"",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-15",
					"fontsize" : 9.0,
					"patching_rect" : [ 454.0, 290.0, 382.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar edge_algorithm 2",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"id" : "obj-16",
					"fontsize" : 9.0,
					"patching_rect" : [ 454.0, 268.0, 112.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "slide[1]",
					"text" : "jcom.parameter slide @type msg_float @description \"Level of slide for thre trails\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-17",
					"fontsize" : 9.0,
					"patching_rect" : [ 34.0, 460.0, 213.0, 27.0 ],
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar slide",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-18",
					"fontsize" : 9.0,
					"patching_rect" : [ 34.0, 440.0, 55.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "trails[1]",
					"text" : "jcom.parameter trails @type msg_toggle @description \"Trails - ghostlike image\"",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-19",
					"fontsize" : 9.0,
					"patching_rect" : [ 34.0, 402.0, 380.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar trails",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-20",
					"fontsize" : 9.0,
					"patching_rect" : [ 34.0, 382.0, 59.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "noise",
					"outlettype" : [ "" ],
					"id" : "obj-21",
					"presentation_rect" : [ 146.352936, 34.967915, 18.0, 18.0 ],
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"patching_rect" : [ 35.0, 320.0, 18.0, 18.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "noise[1]",
					"text" : "jcom.parameter noise @type msg_toggle @description \"Noise reduction\"",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-22",
					"fontsize" : 9.0,
					"patching_rect" : [ 34.0, 341.0, 340.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "noise",
					"fontname" : "Verdana",
					"id" : "obj-24",
					"presentation_rect" : [ 116.0, 34.967915, 40.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 89.0, 24.0, 40.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-25",
					"patching_rect" : [ 443.0, 233.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "threshold",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-26",
					"presentation_rect" : [ 66.320854, 34.967915, 43.0, 19.0 ],
					"triscale" : 0.9,
					"triangle" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 34.0, 260.0, 43.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"minimum" : 0.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "threshold",
					"fontname" : "Verdana",
					"id" : "obj-27",
					"presentation_rect" : [ 11.0, 34.967915, 64.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 4.0, 24.0, 64.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "documentation/generate",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-28",
					"fontsize" : 9.0,
					"patching_rect" : [ 123.0, 87.0, 119.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "threshold[1]",
					"text" : "jcom.parameter threshold @type msg_float @description \\\"Threshold\\\"",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-29",
					"fontsize" : 9.0,
					"patching_rect" : [ 34.0, 281.0, 352.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"fontname" : "Arial",
					"id" : "obj-31",
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 457.0, 233.0, 76.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.motion2%",
					"fontname" : "Arial",
					"outlettype" : [ "jit_matrix" ],
					"id" : "obj-32",
					"fontsize" : 9.0,
					"patching_rect" : [ 443.0, 161.0, 96.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Arial",
					"id" : "obj-33",
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 15.0, 84.0, 79.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.motion% @module_type video @algorithm_type jitter @description \"Motion-related analysis\" @inspector 0",
					"linecount" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"id" : "obj-34",
					"fontsize" : 9.0,
					"patching_rect" : [ 1.0, 108.332855, 239.14917, 38.0 ],
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-35",
					"patching_rect" : [ 1.0, 157.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-36",
					"patching_rect" : [ 1.0, 84.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"id" : "obj-38",
					"presentation_rect" : [ 237.0, 23.0, 60.0, 45.0 ],
					"patching_rect" : [ 237.0, 23.0, 60.0, 45.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_freeze" : 1,
					"outlettype" : [ "" ],
					"prefix" : "video",
					"has_mute" : 1,
					"id" : "obj-39",
					"presentation_rect" : [ 0.0, 1.0, 300.0, 70.0 ],
					"has_preview" : 1,
					"has_bypass" : 1,
					"patching_rect" : [ 0.0, 1.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 132.5, 106.0, 10.5, 106.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 115.5, 106.0, 10.5, 106.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-32", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 464.5, 371.0, 450.0, 371.0, 450.0, 321.0, 464.5, 321.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 463.5, 312.0, 449.0, 312.0, 449.0, 265.0, 463.5, 265.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 511.5, 154.0, 452.5, 154.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 452.5, 150.0, 452.5, 150.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 43.5, 494.0, 29.0, 494.0, 29.0, 435.0, 43.5, 435.0 ]
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
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 43.5, 427.0, 27.0, 427.0, 27.0, 375.0, 43.5, 375.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 43.5, 300.0, 21.0, 300.0, 21.0, 255.0, 43.5, 255.0 ]
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
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 43.5, 360.0, 21.0, 360.0, 21.0, 315.0, 44.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 466.5, 426.0, 444.0, 426.0, 444.0, 384.0, 467.5, 384.0 ]
				}

			}
 ]
	}

}
