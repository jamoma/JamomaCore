{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 25.0, 89.0, 1262.0, 647.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 89.0, 1262.0, 647.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 270.0, 280.0, 128.0, 18.0 ],
					"numinlets" : 1,
					"id" : "obj-49"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "THETA",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"triangle" : 0,
					"patching_rect" : [ 199.0, 17.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Bound mode:",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 131.0, 33.0, 66.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Theta:",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 131.0, 19.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Anchor:",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 3.0, 47.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Offset:",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 3.0, 33.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ANCHOR_Y",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"triangle" : 0,
					"patching_rect" : [ 87.0, 45.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ANCHOR_X",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"triangle" : 0,
					"patching_rect" : [ 53.0, 45.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "OFFSET_Y",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"triangle" : 0,
					"patching_rect" : [ 87.0, 31.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "OFFSET_X",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"triangle" : 0,
					"patching_rect" : [ 53.0, 31.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ZOOM_Y",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"triangle" : 0,
					"patching_rect" : [ 87.0, 17.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p inspector",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 270.0, 311.0, 60.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-11",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 42.0, 65.0, 570.0, 809.0 ],
						"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 42.0, 65.0, 570.0, 809.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.class.gl_slab.inspect",
									"name" : "jcom.class.gl_slab.inspect.maxpat",
									"numoutlets" : 0,
									"args" : [  ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 280.0, 0.0, 267.0, 774.0 ],
									"numinlets" : 0,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 110 110 110",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 584.0, 194.0, 106.0, 17.0 ],
									"numinlets" : 4,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.class.gl_group.inspect",
									"name" : "jcom.class.gl_group.inspect.maxpat",
									"numoutlets" : 0,
									"args" : [  ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 7.0, 0.0, 269.0, 774.0 ],
									"numinlets" : 0,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"hidden" : 1,
									"patching_rect" : [ 584.0, 74.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"id" : "obj-4",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "front" ],
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 584.0, 119.0, 40.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 584.0, 141.0, 61.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-7",
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "boundmode",
					"text" : "jcom.parameter boundmode @type msg_symbol @description \"Boundary handling mode.\"",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 655.0, 331.0, 407.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar BOUNDMODE 2",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 655.0, 353.0, 98.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "BOUNDMODE",
					"fontname" : "Arial",
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"arrowlink" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 9.0,
					"textcolor" : [ 0.15, 0.15, 0.15, 1.0 ],
					"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
					"items" : [ "clear", ",", "alpha", ",", "wrap", ",", "clip", ",", "fold" ],
					"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
					"patching_rect" : [ 199.0, 31.0, 50.0, 17.0 ],
					"framecolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "theta",
					"text" : "jcom.parameter theta @type msg_float @range -180. 180. @range/clipmode none @ramp/drive scheduler @description \"Rotation angle in degrees.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 656.0, 251.0, 326.0, 27.0 ],
					"numinlets" : 1,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar THETA",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 656.0, 283.0, 64.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "anchor",
					"text" : "jcom.parameter anchor @type msg_list @ramp/drive scheduler @description \\\"Zooming.\\\"",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 656.0, 183.0, 392.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ANCHOR_Y",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 586.0, 209.0, 83.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ANCHOR_X",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 499.0, 209.0, 83.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 2",
					"fontname" : "Arial",
					"numoutlets" : 11,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 499.0, 183.0, 144.0, 17.0 ],
					"numinlets" : 11,
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "offset",
					"text" : "jcom.parameter offset @type msg_list @ramp/drive scheduler @description \\\"Zooming.\\\"",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 656.0, 112.0, 389.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar OFFSET_Y",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 581.0, 138.0, 79.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar OFFSET_X",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 499.0, 138.0, 79.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 2",
					"fontname" : "Arial",
					"numoutlets" : 11,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 499.0, 112.0, 144.0, 17.0 ],
					"numinlets" : 11,
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "zoom",
					"text" : "jcom.parameter zoom @type msg_list @ramp/drive scheduler @description \\\"Zooming.\\\"",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 656.0, 48.0, 385.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ZOOM_Y",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 575.0, 74.0, 71.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ZOOM_X",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 499.0, 74.0, 71.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 2",
					"fontname" : "Arial",
					"numoutlets" : 11,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 499.0, 48.0, 144.0, 17.0 ],
					"numinlets" : 11,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 183.0, 287.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 183.0, 265.0, 78.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ZOOM_X",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"triangle" : 0,
					"patching_rect" : [ 53.0, 17.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 105.0, 115.0, 191.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out 1",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 166.0, 351.0, 58.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 166.0, 239.0, 52.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Zoom:",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 3.0, 19.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 117.0, 133.0, 125.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.hub",
					"text" : "jcom.hub jmod.gl.td.rota% @size 1U-half @module_type video @algorithm_type jitter @inspector 1 @description \"Slab-based rotation and repositioning.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 11.0, 160.0, 370.0, 27.0 ],
					"numinlets" : 1,
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 181.0, 384.0, 76.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"hidden" : 1,
					"patching_rect" : [ 166.0, 384.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"id" : "obj-39",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 166.0, 218.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"id" : "obj-40",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 181.0, 218.0, 66.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-41"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.gl.td.rota%",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "jit_gl_texture" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 74.0, 323.0, 102.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 247.0, 133.0, 31.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 26.0, 132.0, 79.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"hidden" : 1,
					"patching_rect" : [ 11.0, 217.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"id" : "obj-45",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 11.0, 130.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"id" : "obj-46",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_freeze" : 1,
					"numoutlets" : 1,
					"has_preview" : 1,
					"outlettype" : [ "" ],
					"has_panel" : 1,
					"has_bypass" : 1,
					"numinlets" : 1,
					"has_mute" : 1,
					"id" : "obj-48"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"midpoints" : [ 192.0, 258.0, 279.5, 258.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 665.5, 305.0, 650.0, 305.0, 650.0, 245.0, 665.5, 245.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 10 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 10 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 10 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [ 743.5, 378.0, 651.0, 378.0, 651.0, 324.0, 664.5, 324.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-20", 10 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-24", 10 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-28", 10 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [ 521.0, 204.0, 595.5, 204.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [ 521.0, 133.0, 590.5, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [ 521.0, 69.0, 584.5, 69.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 1,
					"midpoints" : [ 595.5, 233.0, 487.0, 233.0, 487.0, 173.0, 521.0, 173.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 1,
					"midpoints" : [ 590.5, 162.0, 487.0, 162.0, 487.0, 102.0, 521.0, 102.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 1,
					"midpoints" : [ 584.5, 98.0, 487.0, 98.0, 487.0, 38.0, 521.0, 38.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [ 508.5, 230.0, 490.0, 230.0, 490.0, 176.0, 508.5, 176.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [ 508.5, 159.0, 490.0, 159.0, 490.0, 105.0, 508.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [ 508.5, 95.0, 490.0, 95.0, 490.0, 41.0, 508.5, 41.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 1,
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [ 192.5, 309.0, 83.5, 309.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [ 251.5, 309.0, 83.5, 309.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [ 126.5, 155.0, 20.5, 155.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [ 256.5, 155.0, 20.5, 155.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [ 114.5, 155.0, 20.5, 155.0 ]
				}

			}
 ]
	}

}
