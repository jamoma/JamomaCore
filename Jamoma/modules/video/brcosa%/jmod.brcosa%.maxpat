{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 159.0, 199.0, 890.0, 602.0 ],
		"bglocked" : 0,
		"defrect" : [ 159.0, 199.0, 890.0, 602.0 ],
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
					"numoutlets" : 2,
					"presentation_rect" : [ 237.0, 22.0, 60.0, 45.0 ],
					"id" : "obj-37",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 357.0, 80.0, 60.0, 45.0 ],
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p mouse-stuff",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-1",
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 398.0, 136.0, 78.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 734.0, 44.0, 441.0, 336.0 ],
						"bglocked" : 0,
						"defrect" : [ 734.0, 44.0, 441.0, 336.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-17",
									"patching_rect" : [ 234.0, 270.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"comment" : "Contrast"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "clip -200 200",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"patching_rect" : [ 114.0, 214.0, 74.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale -200 200 -3. 5.",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 114.0, 244.0, 114.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 182.0, 115.0, 22.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-6",
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 182.0, 93.0, 32.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 108.0, 115.0, 22.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 146.0, 50.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "clip -200 200",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "" ],
									"patching_rect" : [ 234.0, 214.0, 74.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale -200 200 5. -3.",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 234.0, 244.0, 114.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Find change in mouse position to control the offset.",
									"linecount" : 3,
									"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-11",
									"patching_rect" : [ 240.0, 87.0, 101.0, 42.0 ],
									"fontsize" : 9.873845,
									"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0 0 0 0 0",
									"fontname" : "Verdana",
									"numoutlets" : 6,
									"id" : "obj-12",
									"outlettype" : [ "int", "int", "int", "int", "int", "int" ],
									"patching_rect" : [ 50.0, 169.0, 103.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 2 4",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"id" : "obj-13",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 87.0, 93.0, 54.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.pwindow.mouse",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-14",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 87.0, 71.0, 116.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-15",
									"outlettype" : [ "" ],
									"patching_rect" : [ 87.0, 29.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-16",
									"patching_rect" : [ 114.0, 274.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"comment" : "brightness"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 5 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 4 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-3",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 148.0, 315.0, 52.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"patching_rect" : [ 150.0, 193.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-5",
					"patching_rect" : [ 165.0, 194.0, 75.0, 18.0 ],
					"fontsize" : 9.873845,
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-6",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 148.0, 210.0, 55.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"patching_rect" : [ 62.0, 260.0, 49.0, 18.0 ],
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
					"id" : "obj-10",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 62.0, 237.0, 86.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "monochrome[1]",
					"text" : "jcom.parameter monochrome @type msg_toggle @description \"Monochrome image - 0 is default\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-12",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 509.0, 449.0, 256.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "monochrome",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 111.0, 42.0, 74.0, 19.0 ],
					"id" : "obj-13",
					"patching_rect" : [ 389.0, 457.0, 74.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "monochrome",
					"numoutlets" : 1,
					"presentation_rect" : [ 186.0, 43.0, 18.0, 18.0 ],
					"id" : "obj-14",
					"outlettype" : [ "" ],
					"inactivecolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"patching_rect" : [ 471.0, 458.0, 18.0, 18.0 ],
					"presentation" : 1,
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"numinlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "saturation[1]",
					"text" : "jcom.parameter saturation @type msg_float @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0. 4. @range/clipmode none @description \"Saturation of image - 1 is default\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-16",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 508.0, 369.0, 478.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "saturation",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 72.0, 42.0, 35.0, 19.0 ],
					"id" : "obj-17",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 453.0, 375.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"triscale" : 0.9,
					"triangle" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "contrast",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 168.0, 23.0, 35.0, 19.0 ],
					"id" : "obj-18",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 450.0, 292.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"triscale" : 0.9,
					"triangle" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "brightness",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 72.0, 23.0, 35.0, 19.0 ],
					"id" : "obj-19",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 453.0, 215.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"triscale" : 0.9,
					"triangle" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "saturation",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 9.0, 42.0, 59.0, 19.0 ],
					"id" : "obj-20",
					"patching_rect" : [ 389.0, 375.0, 59.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "contrast",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 110.0, 24.0, 49.0, 19.0 ],
					"id" : "obj-21",
					"patching_rect" : [ 389.0, 293.0, 49.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "brightness",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 8.0, 24.0, 61.0, 19.0 ],
					"id" : "obj-22",
					"patching_rect" : [ 389.0, 216.0, 61.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"id" : "obj-24",
					"outlettype" : [ "" ],
					"patching_rect" : [ 107.0, 110.0, 135.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "contrast[1]",
					"text" : "jcom.parameter contrast @type msg_float @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0. 4. @range/clipmode none @description \"Contrast of image - 1 is default\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-25",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 507.0, 287.0, 468.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "brightness[1]",
					"text" : "jcom.parameter brightness @type msg_float @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0. 4. @range/clipmode none @description \"Brightness of image - 1 is default\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-26",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 507.0, 207.0, 478.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-28",
					"patching_rect" : [ 165.0, 342.0, 85.0, 18.0 ],
					"fontsize" : 9.873845,
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-29",
					"patching_rect" : [ 150.0, 342.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.brcosa%",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-30",
					"outlettype" : [ "", "jit_matrix" ],
					"patching_rect" : [ 62.0, 289.0, 105.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-32",
					"patching_rect" : [ 23.0, 108.0, 86.0, 18.0 ],
					"fontsize" : 9.873845,
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type video @algorithm_type jitter @description \"Simple image controls\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-33",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 4.0, 133.0, 392.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-34",
					"patching_rect" : [ 6.0, 171.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-35",
					"outlettype" : [ "" ],
					"patching_rect" : [ 7.0, 108.0, 13.0, 13.0 ],
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
					"id" : "obj-36",
					"outlettype" : [ "" ],
					"has_bypass" : 1,
					"has_freeze" : 1,
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
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 116.5, 129.0, 13.5, 129.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 9.5, 81.0, 342.0, 81.0, 342.0, 75.0, 366.5, 75.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-30", 1 ],
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
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 138.5, 282.0, 71.5, 282.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-30", 0 ],
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
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 175.5, 232.0, 71.5, 232.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 407.5, 201.0, 462.5, 201.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 466.5, 201.0, 492.0, 201.0, 492.0, 263.0, 459.5, 263.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
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
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
