{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 142.0, 44.0, 1042.0, 548.0 ],
		"bglocked" : 0,
		"defrect" : [ 142.0, 44.0, 1042.0, 548.0 ],
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
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 357.0, 80.0, 60.0, 45.0 ],
					"presentation" : 1,
					"id" : "obj-37",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p mouse-stuff",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 398.0, 136.0, 78.0, 18.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "float", "float" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 590.0, 73.0, 462.0, 316.0 ],
						"bglocked" : 0,
						"defrect" : [ 590.0, 73.0, 462.0, 316.0 ],
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
									"presentation_rect" : [ 300.0, 340.0, 0.0, 0.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 303.0, 252.0, 25.0, 25.0 ],
									"id" : "obj-23",
									"comment" : "Contrast"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "clip -200 200",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 300.0, 284.0, 0.0, 0.0 ],
									"numinlets" : 3,
									"numoutlets" : 1,
									"patching_rect" : [ 303.0, 192.0, 76.0, 18.0 ],
									"id" : "obj-24",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale -200 200 5. -3.",
									"fontsize" : 9.873845,
									"numinlets" : 6,
									"numoutlets" : 1,
									"patching_rect" : [ 303.0, 222.0, 116.0, 18.0 ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$5",
									"fontsize" : 10.0,
									"presentation_rect" : [ 117.0, 197.0, 0.0, 0.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 303.0, 165.0, 32.5, 17.0 ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$6",
									"fontsize" : 10.0,
									"presentation_rect" : [ 86.0, 187.0, 0.0, 0.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 176.0, 165.0, 32.5, 17.0 ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$5",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 42.0, 165.0, 32.5, 17.0 ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 1",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 42.0, 77.0, 46.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 176.0, 252.0, 25.0, 25.0 ],
									"id" : "obj-17",
									"comment" : "Contrast"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "clip -200 200",
									"fontsize" : 9.873845,
									"numinlets" : 3,
									"numoutlets" : 1,
									"patching_rect" : [ 42.0, 192.0, 76.0, 18.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale -200 200 -3. 5.",
									"fontsize" : 9.873845,
									"numinlets" : 6,
									"numoutlets" : 1,
									"patching_rect" : [ 42.0, 222.0, 116.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "clip -200 200",
									"fontsize" : 9.873845,
									"numinlets" : 3,
									"numoutlets" : 1,
									"patching_rect" : [ 176.0, 192.0, 76.0, 18.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale -200 200 5. -3.",
									"fontsize" : 9.873845,
									"numinlets" : 6,
									"numoutlets" : 1,
									"patching_rect" : [ 176.0, 222.0, 116.0, 18.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 2 4",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 42.0, 102.0, 56.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.pwindow.mouse",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 42.0, 51.0, 118.0, 18.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 42.0, 17.0, 25.0, 25.0 ],
									"id" : "obj-15",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 42.0, 252.0, 25.0, 25.0 ],
									"id" : "obj-16",
									"comment" : "brightness"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 70.0, 140.0, 312.5, 140.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 51.5, 150.0, 185.5, 150.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-17", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontsize" : 10.0,
						"fontsize" : 10.0,
						"fontname" : "Verdana",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 112.0, 382.0, 52.0, 18.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 113.0, 246.0, 25.0, 25.0 ],
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"fontsize" : 9.873845,
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 143.0, 247.0, 77.0, 18.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 112.0, 277.0, 55.0, 18.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 26.0, 327.0, 49.0, 18.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 26.0, 304.0, 86.0, 18.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "monochrome[1]",
					"text" : "jcom.parameter monochrome @type msg_toggle @description \"Monochrome image - 0 is default\"",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 516.0, 457.0, 256.0, 30.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "monochrome",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 111.0, 42.0, 74.0, 19.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 389.0, 457.0, 74.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-13",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "monochrome",
					"presentation_rect" : [ 186.0, 43.0, 18.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 461.0, 457.0, 18.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-14",
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"outlettype" : [ "" ],
					"inactivecolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
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
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 516.0, 375.0, 478.0, 30.0 ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "saturation",
					"triangle" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 72.0, 42.0, 35.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 461.0, 375.0, 35.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "contrast",
					"triangle" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 168.0, 23.0, 35.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 461.0, 293.0, 35.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "brightness",
					"triangle" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 72.0, 23.0, 35.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"minimum" : 0.0,
					"numoutlets" : 2,
					"patching_rect" : [ 461.0, 216.0, 35.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "saturation",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 9.0, 42.0, 59.0, 19.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 389.0, 375.0, 59.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-20",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "contrast",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 110.0, 24.0, 49.0, 19.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 389.0, 293.0, 49.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-21",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "brightness",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 8.0, 24.0, 61.0, 19.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 389.0, 216.0, 61.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-22",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 131.0, 99.0, 135.0, 16.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "contrast[1]",
					"text" : "jcom.parameter contrast @type msg_float @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0. 4. @range/clipmode none @description \"Contrast of image - 1 is default\"",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 516.0, 293.0, 468.0, 30.0 ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "brightness[1]",
					"text" : "jcom.parameter brightness @type msg_float @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0. 4. @range/clipmode none @description \"Brightness of image - 1 is default\"",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 516.0, 216.0, 478.0, 30.0 ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"fontsize" : 9.873845,
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 144.0, 411.0, 87.0, 18.0 ],
					"id" : "obj-28",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 112.0, 409.0, 25.0, 25.0 ],
					"id" : "obj-29",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.brcosa%",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 26.0, 356.0, 105.0, 18.0 ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"fontsize" : 9.873845,
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 47.0, 99.0, 88.0, 18.0 ],
					"id" : "obj-32",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type video @algorithm_type jitter @description \"Simple image controls\"",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 7.0, 133.0, 264.0, 30.0 ],
					"id" : "obj-33",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7.0, 171.0, 25.0, 25.0 ],
					"id" : "obj-34",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 7.0, 99.0, 25.0, 25.0 ],
					"id" : "obj-35",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_freeze" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"has_mute" : 1,
					"numoutlets" : 1,
					"prefix" : "video",
					"presentation" : 1,
					"id" : "obj-36",
					"outlettype" : [ "" ],
					"has_bypass" : 1,
					"has_preview" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 2 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 466.5, 180.0, 1014.0, 180.0, 1014.0, 360.0, 470.5, 360.0 ]
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
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
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
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-18", 0 ],
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
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 437.0, 192.0, 1003.0, 192.0, 1003.0, 274.0, 470.5, 274.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 407.5, 201.0, 470.5, 201.0 ]
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
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 139.5, 299.0, 35.5, 299.0 ]
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 102.5, 349.0, 35.5, 349.0 ]
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-30", 1 ],
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-29", 0 ],
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
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 140.5, 129.0, 16.5, 129.0 ]
				}

			}
 ]
	}

}
