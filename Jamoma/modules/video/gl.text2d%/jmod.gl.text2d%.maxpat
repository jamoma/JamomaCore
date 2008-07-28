{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 52.0, 44.0, 1357.0, 878.0 ],
		"bglocked" : 0,
		"defrect" : [ 52.0, 44.0, 1357.0, 878.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"maxclass" : "comment",
					"text" : "Shadow offset (%):",
					"fontname" : "Arial",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 2.0, 89.0, 98.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-1",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "TRACKING",
					"fontname" : "Arial",
					"triangle" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 108.0, 57.0, 35.0, 17.0 ],
					"numoutlets" : 2,
					"triscale" : 0.9,
					"id" : "obj-2",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Tracking",
					"fontname" : "Arial",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 146.0, 59.0, 65.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-3",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "hint",
					"hint" : "Font Face",
					"numinlets" : 1,
					"patching_rect" : [ 147.0, 20.0, 54.0, 15.0 ],
					"numoutlets" : 0,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "hint",
					"hint" : "Text Align",
					"numinlets" : 1,
					"patching_rect" : [ 205.0, 20.0, 47.0, 16.0 ],
					"numoutlets" : 0,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar SHADOW_ENABLE",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 632.0, 113.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "OffX",
					"fontname" : "Arial",
					"triangle" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 108.0, 87.0, 36.0, 17.0 ],
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"maximum" : 1.0,
					"id" : "obj-7",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "OffZ",
					"fontname" : "Arial",
					"triangle" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 182.0, 87.0, 36.0, 17.0 ],
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"maximum" : 1.0,
					"id" : "obj-8",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "OffY",
					"fontname" : "Arial",
					"triangle" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 145.0, 87.0, 36.0, 17.0 ],
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"maximum" : 1.0,
					"id" : "obj-9",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "shadow/offset",
					"text" : "jcom.parameter shadow/offset @type msg_list @description \"Offset of shadow position (%).\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 638.0, 770.0, 224.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-10",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"fontname" : "Arial",
					"numinlets" : 11,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 770.0, 144.0, 17.0 ],
					"numoutlets" : 11,
					"id" : "obj-11",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar OffZ",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 603.0, 744.0, 53.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar OffY",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 545.0, 744.0, 54.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-13",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar OffX",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 744.0, 54.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-14",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1.",
					"fontname" : "Arial",
					"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 918.0, 707.0, 17.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-15",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1. 1. 1.",
					"fontname" : "Arial",
					"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 918.0, 726.0, 43.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "shadow/color/alpha",
					"text" : "jcom.parameter shadow/color/alpha @type msg_float @range 0. 1. @range/clipmode both @ramp/drive scheduler @description \"Object alpha transparency (0.-1.).\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 724.0, 677.0, 365.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-17",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ColA",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 665.0, 685.0, 55.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "shadow/color/rgb",
					"text" : "jcom.parameter shadow/color/rgb @type msg_list @description \"Object color as red, green, blue (0.-1.).\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 638.0, 711.0, 273.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-19",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"fontname" : "Arial",
					"numinlets" : 11,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 711.0, 144.0, 17.0 ],
					"numoutlets" : 11,
					"id" : "obj-20",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ColB",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 603.0, 685.0, 54.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ColG",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 545.0, 685.0, 54.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ColR",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 685.0, 54.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ColR",
					"fontname" : "Arial",
					"triangle" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 108.0, 103.0, 36.0, 17.0 ],
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"maximum" : 1.0,
					"id" : "obj-24",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ColA",
					"fontname" : "Arial",
					"triangle" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 216.0, 103.0, 36.0, 17.0 ],
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"maximum" : 1.0,
					"id" : "obj-25",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ColB",
					"fontname" : "Arial",
					"triangle" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 180.0, 103.0, 36.0, 17.0 ],
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"maximum" : 1.0,
					"id" : "obj-26",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ColG",
					"fontname" : "Arial",
					"triangle" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 144.0, 103.0, 36.0, 17.0 ],
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"maximum" : 1.0,
					"id" : "obj-27",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Shadow color (rgba):",
					"fontname" : "Arial",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 2.0, 105.0, 105.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-28",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p inspector",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 258.0, 426.0, 60.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-29",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 863.0, 80.0, 296.0, 824.0 ],
						"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 863.0, 80.0, 296.0, 824.0 ],
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
									"maxclass" : "newobj",
									"text" : "bgcolor 110 110 110",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 4,
									"fontsize" : 9.0,
									"patching_rect" : [ 291.0, 164.0, 106.0, 17.0 ],
									"numoutlets" : 0,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.class.gl_group.inspect",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 7.0, 0.0, 268.0, 761.0 ],
									"numoutlets" : 0,
									"id" : "obj-2",
									"args" : [  ],
									"name" : "jcom.class.gl_group.inspect.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"hidden" : 1,
									"numinlets" : 0,
									"patching_rect" : [ 291.0, 44.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 291.0, 89.0, 40.0, 17.0 ],
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "front" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /open_inspector",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 291.0, 69.0, 151.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-5",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 291.0, 111.0, 61.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-6",
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "shadow/enable",
					"text" : "jcom.parameter shadow/enable @type msg_toggle \"Enable text shadow.\"",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 652.0, 339.0, 17.0 ],
					"numoutlets" : 3,
					"id" : "obj-30",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "screenmode",
					"text" : "jcom.parameter screenmode @type msg_toggle @description \"If screenmode = 1, some 3D transformations are skipped so that pixel-accurate text can be drawn..\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 221.0, 383.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-31",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar SCREENMODE",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 201.0, 93.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-32",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "screenmode",
					"fontname" : "Arial",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 18.0, 58.0, 63.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-33",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "SCREENMODE",
					"numinlets" : 1,
					"patching_rect" : [ 2.0, 55.0, 80.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-34",
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
					"text" : "pvar READ",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 576.0, 58.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-35",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message read @type msg_generic @description \"Read a text file containing the text to be displayed.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 596.0, 249.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-36",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar FACE 2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 518.0, 66.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-37",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "face",
					"text" : "jcom.parameter face @type msg_symbol @description \"Specifies the face variant of the current font..\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 540.0, 255.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-38",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "FACE",
					"arrowlink" : 1,
					"fontname" : "Arial",
					"hltcolor" : [ 0.266667, 0.266667, 0.266667, 1.0 ],
					"textcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
					"bgcolor" : [ 0.266667, 0.266667, 0.266667, 1.0 ],
					"framecolor" : [ 0.454902, 0.454902, 0.454902, 1.0 ],
					"numinlets" : 1,
					"items" : [ "normal", ",", "bold", ",", "italic" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 147.0, 20.0, 54.0, 17.0 ],
					"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
					"bgcolor2" : [ 0.454902, 0.454902, 0.454902, 1.0 ],
					"numoutlets" : 3,
					"types" : [  ],
					"discolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"id" : "obj-39",
					"outlettype" : [ "int", "", "" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"togcolor" : [ 0.113725, 0.541176, 0.105882, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "fontsize",
					"text" : "jcom.parameter fontsize @type msg_int @range 1 72 @range/clipmode low @description \"Specifies the size in which to draw.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 477.0, 317.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-40",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar FONTSIZE",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 458.0, 76.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-41",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "FONTSIZE",
					"fontname" : "Arial",
					"triangle" : 0,
					"bgcolor" : [ 0.266667, 0.266667, 0.266667, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 108.0, 21.0, 36.0, 17.0 ],
					"numoutlets" : 2,
					"minimum" : 1,
					"triscale" : 0.9,
					"id" : "obj-42",
					"outlettype" : [ "int", "bang" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "font",
					"text" : "jcom.parameter font @type msg_symbol @description \"Specifies the font in which to draw.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 420.0, 241.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-43",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 398.0, 66.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-44",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.init",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 332.0, 50.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-45",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar FONTS 2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 375.0, 72.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-46",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "FONTS",
					"arrowlink" : 1,
					"fontname" : "Arial",
					"hltcolor" : [ 0.266667, 0.266667, 0.266667, 1.0 ],
					"textcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
					"bgcolor" : [ 0.266667, 0.266667, 0.266667, 1.0 ],
					"framecolor" : [ 0.454902, 0.454902, 0.454902, 1.0 ],
					"numinlets" : 1,
					"items" : [ "Apple Braille Outline 6 Dot", ",", "Apple Braille Outline 8 Dot", ",", "Apple Braille Pinpoint 6 Dot", ",", "Apple Braille Pinpoint 8 Dot", ",", "Apple Braille", ",", "Apple Symbols", ",", "AppleGothic Regular", ",", ".Aqua Kana", ",", "Courier", ",", "Courier Oblique", ",", "Geeza Pro", ",", "Geneva", ",", ".Helvetica LT MM", ",", "Helvetica", ",", "Helvetica Oblique", ",", "Helvetica Neue", ",", "Helvetica Neue Condensed Bold", ",", "Helvetica Neue UltraLight", ",", "Helvetica Neue Light", ",", "Helvetica Neue Condensed Black", ",", ".Keyboard", ",", "LastResort", ",", "Lucida Grande", ",", "Monaco", ",", "Symbol", ",", "Thonburi", ",", ".Times LT MM", ",", "Times Roman", ",", "Times Bold", ",", "Times Italic", ",", "Zapf Dingbats", ",", "Hiragino Mincho ProN W3", ",", "Hiragino Mincho ProN W6", ",", "Hiragino Kaku Gothic ProN W3", ",", "Hiragino Kaku Gothic ProN W6", ",", "LiHei Pro", ",", "STXihei", ",", "STHeiti", ",", "#GungSeo Regular", ",", "#HeadLineA Regular", ",", "#PCMyungjo Regular", ",", "#PilGi Regular", ",", "Academy Engraved LET Plain:1.0", ",", "Al Bayan Plain", ",", "American Typewriter", ",", "American Typewriter Condensed", ",", "American Typewriter Light", ",", "American Typewriter Condensed Light", ",", "Andale Mono", ",", "Apple Chancery", ",", "Apple LiGothic Medium", ",", "Apple LiSung Light", ",", "Apple Casual", ",", "AppleMyungjo Regular", ",", "Arial Black", ",", "Arial Narrow", ",", "Arial Rounded MT Bold", ",", "Arial Unicode MS", ",", "Arial", ",", "Arial Hebrew", ",", "Ayuthaya", ",", "Baghdad", ",", "Bank Gothic Light", ",", "Bank Gothic Medium", ",", "Baskerville", ",", "Baskerville SemiBold", ",", "BiauKai", ",", "Big Caslon Medium", ",", "Blackmoor LET Plain:2.0", ",", "BlairMdITC TT Medium", ",", "Bodoni Ornaments ITC TT", ",", "Bodoni SvtyTwo ITC TT Book", ",", "Bodoni SvtyTwo ITC TT Bold", ",", "Bodoni SvtyTwo ITC TT BookIta", ",", "Bodoni SvtyTwo OS ITC TT Book", ",", "Bodoni SvtyTwo OS ITC TT Bold", ",", "Bodoni SvtyTwo OS ITC TT BookIt", ",", "Bodoni SvtyTwo SC ITC TT Book", ",", "Bordeaux Roman Bold LET Plain:1.0", ",", "Bradley Hand ITC TT Bold", ",", "Brush Script MT Italic", ",", "Capitals", ",", "Chalkboard", ",", "Charcoal CY", ",", "Cochin", ",", "Comic Sans MS", ",", "Copperplate", ",", "Copperplate Light", ",", "Corsiva Hebrew", ",", "Courier New", ",", "Courier New", ",", "Cracked", ",", "DecoType Naskh", ",", "Devanagari MT", ",", "Didot", ",", "Euphemia UCAS", ",", "Futura Medium", ",", "Futura Condensed Medium", ",", "Futura Condensed ExtraBold", ",", "Geneva CY", ",", "Georgia", ",", "Gill Sans", ",", "Gill Sans Light", ",", "Gujarati MT", ",", "Gurmukhi MT", ",", "Handwriting - Dakota", ",", "Hei Regular", ",", "Helvetica CY Plain", ",", "Helvetica CY Oblique", ",", "Herculanum", ",", "Hoefler Text", ",", "Hoefler Text Black", ",", "Hoefler Text Ornaments", ",", "Impact", ",", "InaiMathi", ",", "Jazz LET Plain:1.0", ",", "Kai Regular", ",", "Kailasa Regular", ",", "Kokonor Regular", ",", "Krungthep", ",", "KufiStandardGK", ",", "Marker Felt Thin", ",", "Marker Felt Wide", ",", "Microsoft Sans Serif", ",", "Mona Lisa Solid ITC TT", ",", "Mshtakan Oblique", ",", "Mshtakan", ",", "Nadeem", ",", "New Peninim MT", ",", "New Peninim MT Bold Inclined", ",", "New Peninim MT Inclined", ",", "GB18030 Bitmap", ",", "Optima ExtraBlack", ",", "Optima Regular", ",", "Optima Bold", ",", "Optima Italic", ",", "Osaka", ",", "Osaka-Mono", ",", "Palatino", ",", "Papyrus", ",", "Papyrus Condensed", ",", "Party LET Plain:1.0", ",", "Plantagenet Cherokee", ",", "PortagoITC TT", ",", "Princetown LET", ",", "Raanana", ",", "Santa Fe LET Plain:1.0", ",", "Sathu", ",", "Savoye LET Plain:1.0", ",", "SchoolHouse Cursive B", ",", "SchoolHouse Printed A", ",", "Silom", ",", "Skia Regular", ",", "Snell Roundhand", ",", "Snell Roundhand Black", ",", "Stone Sans Sem ITC TT Semi", ",", "Stone Sans ITC TT Bold", ",", "Stone Sans Sem ITC TT SemiIta", ",", "Synchro LET", ",", "Tahoma", ",", "Times New Roman", ",", "Trebuchet MS", ",", "Type Embellishments One LET Embellishments One LET Plain:1.0", ",", "Verdana", ",", "Webdings", ",", "Webdings", ",", "Wingdings 2", ",", "Wingdings 3", ",", "Wingdings", ",", "Zapfino", ",", "Hiragino Maru Gothic Pro W4", ",", "Hiragino Maru Gothic ProN W4", ",", "Hiragino Mincho Pro W3", ",", "Hiragino Mincho Pro W6", ",", "Hiragino Kaku Gothic Pro W3", ",", "Hiragino Kaku Gothic Pro W6", ",", "Hiragino Kaku Gothic Std W8", ",", "Hiragino Kaku Gothic StdN W8", ",", "LiSong Pro", ",", "STFangsong", ",", "STSong", ",", "STKaiti", ",", "Brush Script MT Italic", ",", "Bookshelf Symbol 7", ",", "Brush Script MT Italic", ",", "Calibri", ",", "Cambria", ",", "Candara", ",", "Consolas", ",", "Constantia", ",", "Corbel", ",", "Franklin Gothic Book", ",", "Franklin Gothic Medium", ",", "Gill Sans MT", ",", "Lucida Console", ",", "Lucida Sans Unicode", ",", "Marlett", ",", "Meiryo", ",", "MS Gothic", ",", "Curlz MT", ",", "Haettenschweiler", ",", "MS Mincho", ",", "MS PGothic", ",", "MS Reference Sans Serif", ",", "MS PMincho", ",", "MS Reference Specialty", ",", "MT Extra", ",", "Perpetua", ",", "Tw Cen MT", ",", "Wingdings", ",", "Batang", ",", "Gulim", ",", "Abadi MT Condensed Extra Bold", ",", "Abadi MT Condensed Light", ",", "Andale Mono", ",", "Arial", ",", "Arial Black", ",", "Arial Narrow", ",", "Arial Rounded MT Bold", ",", "Baskerville Old Face", ",", "Bauhaus 93", ",", "Bell MT", ",", "Bernard MT Condensed", ",", "Book Antiqua", ",", "Bookman Old Style", ",", "Braggadocio", ",", "Britannic Bold", ",", "Calisto MT", ",", "Century", ",", "Century Gothic", ",", "Century Schoolbook", ",", "Colonna MT", ",", "Comic Sans MS", ",", "Cooper Black", ",", "Copperplate Gothic Bold", ",", "Copperplate Gothic Light", ",", "Desdemona", ",", "Edwardian Script ITC", ",", "Engravers MT", ",", "Eurostile", ",", "Footlight MT Light", ",", "Garamond", ",", "Georgia", ",", "Gill Sans Ultra Bold", ",", "Gloucester MT Extra Condensed", ",", "Goudy Old Style", ",", "Harrington", ",", "Impact", ",", "Imprint MT Shadow", ",", "Kino MT", ",", "Lucida Blackletter", ",", "Lucida Bright", ",", "Lucida Bright Demibold", ",", "Lucida Calligraphy Italic", ",", "Lucida Fax Regular", ",", "Lucida Fax Demibold", ",", "Lucida Fax Italic", ",", "Lucida Handwriting Italic", ",", "Lucida Sans Regular", ",", "Lucida Sans Demibold Roman", ",", "Lucida Sans Italic", ",", "Lucida Sans Demibold Italic", ",", "Lucida Sans Typewriter Regular", ",", "Lucida Sans Typewriter Bold", ",", "Lucida Sans Typewriter Oblique", ",", "Lucida Sans Typewriter Bold Oblique", ",", "Matura MT Script Capitals", ",", "Mistral", ",", "Modern No. 20", ",", "Monotype Corsiva", ",", "Monotype Sorts", ",", "News Gothic MT", ",", "Onyx", ",", "Perpetua Titling MT Light", ",", "Perpetua Titling MT Bold", ",", "Playbill", ",", "PMingLiU", ",", "Rockwell", ",", "Rockwell Extra Bold", ",", "SimSun", ",", "Stencil", ",", "Tahoma", ",", "Times New Roman", ",", "Trebuchet MS", ",", "Verdana", ",", "Wide Latin", ",", "Wingdings 2", ",", "Wingdings 3" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 4.0, 20.0, 101.0, 17.0 ],
					"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
					"bgcolor2" : [ 0.454902, 0.454902, 0.454902, 1.0 ],
					"numoutlets" : 3,
					"types" : [  ],
					"discolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"id" : "obj-47",
					"outlettype" : [ "int", "", "" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"togcolor" : [ 0.113725, 0.541176, 0.105882, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar TRACKING",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 262.0, 80.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-48",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "tracking",
					"text" : "jcom.parameter tracking @type msg_float @range 0.5 2 @range/clipmode none @description \"The tracking (intra-character spacing) as a multiple of the standard tracking for the face. \"",
					"linecount" : 3,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 282.0, 314.0, 38.0 ],
					"numoutlets" : 3,
					"id" : "obj-49",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "interp",
					"text" : "jcom.parameter interp @type msg_toggle @description \"Controls whether interpolation is used to draw textures when not in classic mode.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 163.0, 343.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-50",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar INTERP",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 144.0, 66.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-51",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "interpolate",
					"fontname" : "Arial",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 18.0, 42.0, 59.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-52",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "INTERP",
					"numinlets" : 1,
					"patching_rect" : [ 2.0, 39.0, 80.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-53",
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
					"text" : "pvar LEADSCALE",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 74.0, 86.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-54",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "leadscale",
					"text" : "jcom.parameter leadscale @type msg_float @range 0.5 2 @range/clipmode none @description \"The leading between multiple rows of text as a multiple of the standard leading. \"",
					"linecount" : 3,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 94.0, 296.0, 38.0 ],
					"numoutlets" : 3,
					"id" : "obj-55",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/ui/freeze 0",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 272.0, 407.0, 167.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-56",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 272.0, 387.0, 62.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-57",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ALIGN 2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 27.0, 70.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-58",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "align",
					"text" : "jcom.parameter align @type msg_symbol @description \"Alignment for rows of text.\"",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 49.0, 395.0, 17.0 ],
					"numoutlets" : 3,
					"id" : "obj-59",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "ALIGN",
					"arrowlink" : 1,
					"fontname" : "Arial",
					"hltcolor" : [ 0.266667, 0.266667, 0.266667, 1.0 ],
					"textcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
					"bgcolor" : [ 0.266667, 0.266667, 0.266667, 1.0 ],
					"framecolor" : [ 0.454902, 0.454902, 0.454902, 1.0 ],
					"numinlets" : 1,
					"items" : [ "left", ",", "center", ",", "right" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 205.0, 20.0, 46.0, 17.0 ],
					"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
					"bgcolor2" : [ 0.454902, 0.454902, 0.454902, 1.0 ],
					"numoutlets" : 3,
					"types" : [  ],
					"discolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"id" : "obj-60",
					"outlettype" : [ "int", "", "" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"togcolor" : [ 0.113725, 0.541176, 0.105882, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "fontlist",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 487.0, 352.0, 42.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-61",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "LEADSCALE",
					"fontname" : "Arial",
					"triangle" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 108.0, 41.0, 35.0, 17.0 ],
					"numoutlets" : 2,
					"triscale" : 0.9,
					"id" : "obj-62",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Lead Scale",
					"fontname" : "Arial",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 146.0, 43.0, 65.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-63",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "READ",
					"jsarguments" : [ "Read", 225, 225, 225, 68, 68, 68 ],
					"numinlets" : 1,
					"nofsaa" : 1,
					"patching_rect" : [ 145.0, 0.0, 49.0, 20.0 ],
					"filename" : "jsui_textbutton.js",
					"numoutlets" : 1,
					"id" : "obj-64",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 176.0, 446.0, 47.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-65",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 176.0, 426.0, 78.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-66",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Arial",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 117.0, 166.0, 191.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-67",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out 1",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 155.0, 510.0, 58.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-68",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 155.0, 398.0, 52.0, 17.0 ],
					"numoutlets" : 3,
					"id" : "obj-69",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Arial",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 129.0, 184.0, 125.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-70",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.hub",
					"text" : "jcom.hub @module_type video @algorithm_type jitter @description \"Write bitmap text.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 23.0, 211.0, 339.0, 27.0 ],
					"numoutlets" : 2,
					"id" : "obj-71",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 170.0, 543.0, 76.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-72"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 155.0, 543.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-73",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 155.0, 377.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-74",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 170.0, 377.0, 66.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-75"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.gl.text2d%",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 64.0, 481.0, 101.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-76",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 259.0, 184.0, 31.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-77",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 38.0, 183.0, 79.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-78"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 23.0, 268.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-79",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 23.0, 181.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-80",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- substitute for desired algorithm",
					"fontname" : "Arial",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 167.0, 485.0, 174.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-81",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "hint",
					"hint" : "Font",
					"numinlets" : 1,
					"patching_rect" : [ 4.0, 20.0, 93.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-82"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "shadow enable",
					"fontname" : "Arial",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 18.0, 74.0, 74.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-83",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "SHADOW_ENABLE",
					"numinlets" : 1,
					"patching_rect" : [ 2.0, 71.0, 93.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-84",
					"outlettype" : [ "" ],
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "hint",
					"hint" : "Font Size",
					"numinlets" : 1,
					"patching_rect" : [ 113.0, 20.0, 32.0, 16.0 ],
					"numoutlets" : 0,
					"id" : "obj-85"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_mute" : 1,
					"numinlets" : 1,
					"has_panel" : 1,
					"has_freeze" : 1,
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"numoutlets" : 1,
					"has_bypass" : 1,
					"id" : "obj-87",
					"outlettype" : [ "" ],
					"has_preview" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [ 126.5, 206.0, 32.5, 206.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [ 268.5, 206.0, 32.5, 206.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [ 138.5, 206.0, 32.5, 206.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
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
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 10 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 10 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-20", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 2 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 521.5, 790.0, 475.0, 790.0, 475.0, 737.0, 612.5, 737.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 2 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 521.5, 731.0, 475.0, 731.0, 475.0, 678.0, 612.5, 678.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 509.0, 788.0, 478.0, 788.0, 478.0, 739.0, 554.5, 739.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 509.0, 729.0, 478.0, 729.0, 478.0, 680.0, 554.5, 680.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 2 ],
					"hidden" : 0,
					"midpoints" : [ 612.5, 764.0, 521.5, 764.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 2 ],
					"hidden" : 0,
					"midpoints" : [ 612.5, 705.0, 521.5, 705.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [ 554.5, 762.0, 509.0, 762.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"midpoints" : [ 554.5, 703.0, 509.0, 703.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 496.5, 786.0, 481.0, 786.0, 481.0, 741.0, 496.5, 741.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 496.5, 727.0, 481.0, 727.0, 481.0, 682.0, 496.5, 682.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 496.5, 673.0, 481.0, 673.0, 481.0, 628.0, 496.5, 628.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [ 543.5, 537.0, 496.5, 537.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 496.5, 572.0, 479.0, 572.0, 479.0, 512.0, 496.5, 512.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 496.5, 509.0, 479.0, 509.0, 479.0, 455.0, 496.5, 455.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 1 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 549.5, 395.0, 496.5, 395.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 496.5, 452.0, 479.0, 452.0, 479.0, 372.0, 496.5, 372.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [ 496.5, 327.0, 480.0, 327.0, 480.0, 256.0, 496.5, 256.0 ]
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 496.5, 253.0, 480.0, 253.0, 480.0, 198.0, 496.5, 198.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 496.5, 195.0, 480.0, 195.0, 480.0, 141.0, 496.5, 141.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 496.5, 137.0, 480.0, 137.0, 480.0, 71.0, 496.5, 71.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 1 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [ 547.5, 46.0, 496.5, 46.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [ 496.5, 68.0, 480.0, 68.0, 480.0, 24.0, 496.5, 24.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 1 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 1 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 181.0, 420.0, 267.5, 420.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 1 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 1 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-76", 1 ],
					"hidden" : 0,
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 1 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [ 244.5, 468.0, 73.5, 468.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [ 185.5, 468.0, 73.5, 468.0 ]
				}

			}
 ]
	}

}
