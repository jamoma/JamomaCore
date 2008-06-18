{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 231.0, 501.0, 780.0, 473.0 ],
		"bglocked" : 0,
		"defrect" : [ 231.0, 501.0, 780.0, 473.0 ],
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
					"maxclass" : "comment",
					"text" : "saturation",
					"fontname" : "Arial",
					"id" : "obj-5",
					"numinlets" : 1,
					"presentation_rect" : [ 166.0, 38.0, 50.0, 17.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 438.0, 168.0, 76.0, 17.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p saturation",
					"fontname" : "Arial",
					"id" : "obj-11",
					"numinlets" : 2,
					"fontsize" : 8.0,
					"numoutlets" : 1,
					"patching_rect" : [ 485.0, 185.0, 77.0, 16.0 ],
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
									"text" : "route set",
									"fontname" : "Verdana",
									"id" : "obj-62",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 130.0, 100.0, 87.0, 19.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "saturation $1",
									"fontname" : "Arial",
									"id" : "obj-48",
									"numinlets" : 2,
									"fontsize" : 11.595187,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 101.0, 78.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-7",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-8",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 135.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 90.0, 179.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"orientation" : 1,
					"size" : 1.0,
					"floatoutput" : 1,
					"id" : "obj-29",
					"numinlets" : 1,
					"presentation_rect" : [ 142.0, 42.0, 91.0, 10.0 ],
					"numoutlets" : 1,
					"bordercolor" : [ 0.141176, 0.156863, 0.458824, 1.0 ],
					"patching_rect" : [ 486.0, 172.0, 41.0, 10.0 ],
					"outlettype" : [ "" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-37",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 213.0, 143.0, 32.5, 16.0 ],
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
					"patching_rect" : [ 12.0, 143.0, 195.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"id" : "obj-35",
					"numinlets" : 1,
					"presentation_rect" : [ 237.0, 22.0, 60.0, 45.0 ],
					"numoutlets" : 2,
					"patching_rect" : [ 235.0, 20.0, 60.0, 45.0 ],
					"outlettype" : [ "", "" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 43.0, 379.0, 52.0, 18.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 123.0, 272.0, 55.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-3",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 125.0, 252.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"patching_rect" : [ 140.0, 252.0, 75.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "glow",
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"presentation_rect" : [ 111.0, 22.0, 34.0, 19.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 304.0, 174.0, 34.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"minimum" : 0.0,
					"ignoreclick" : 1,
					"id" : "obj-7",
					"numinlets" : 1,
					"maximum" : 1.0,
					"presentation_rect" : [ 204.0, 52.0, 29.0, 18.0 ],
					"triangle" : 0,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 395.0, 230.0, 29.0, 18.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"minimum" : 0.0,
					"ignoreclick" : 1,
					"id" : "obj-8",
					"numinlets" : 1,
					"maximum" : 1.0,
					"presentation_rect" : [ 173.0, 52.0, 29.0, 18.0 ],
					"triangle" : 0,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 364.0, 230.0, 29.0, 18.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"minimum" : 0.0,
					"ignoreclick" : 1,
					"id" : "obj-9",
					"numinlets" : 1,
					"maximum" : 1.0,
					"presentation_rect" : [ 142.0, 52.0, 29.0, 18.0 ],
					"triangle" : 0,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 333.0, 230.0, 29.0, 18.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0. 0. 0.",
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 341.0, 203.0, 84.0, 18.0 ],
					"outlettype" : [ "float", "float", "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "swatch",
					"id" : "obj-12",
					"numinlets" : 3,
					"presentation_rect" : [ 142.0, 21.0, 90.0, 24.0 ],
					"numoutlets" : 2,
					"patching_rect" : [ 341.0, 169.0, 90.0, 24.0 ],
					"outlettype" : [ "", "float" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"id" : "obj-13",
					"numinlets" : 1,
					"presentation_rect" : [ 43.0, 20.0, 18.0, 18.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 435.0, 88.0, 19.0, 18.0 ],
					"outlettype" : [ "" ],
					"presentation" : 1,
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
					"id" : "obj-14",
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"presentation_rect" : [ 8.0, 20.0, 33.0, 19.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 394.0, 89.0, 33.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"presentation_rect" : [ 70.0, 37.0, 35.0, 18.0 ],
					"triangle" : 0,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 402.0, 289.0, 35.0, 18.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mode",
					"text" : "jcom.parameter mode @type msg_toggle @description \"Toggles between grayscale (0) and color (1) modes\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 456.0, 83.0, 287.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "glow",
					"text" : "jcom.parameter glow @type msg_list @repetitions/allow 0 @description \"Specify the red green and blue components for the glowing color. The range for each component should be between 0.0 and 1.0.\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 430.0, 201.0, 368.0, 42.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "luminance",
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"presentation_rect" : [ 8.0, 36.0, 68.0, 19.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 337.0, 289.0, 63.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tolerance",
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"presentation_rect" : [ 8.0, 52.0, 58.0, 19.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 344.0, 383.0, 58.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 1,
					"presentation_rect" : [ 70.0, 52.0, 35.0, 18.0 ],
					"triangle" : 0,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 405.0, 383.0, 35.0, 18.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "lum",
					"text" : "jcom.parameter luminance @type msg_float @ramp/drive scheduler @description \"Sets the luminance.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 445.0, 282.0, 305.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "tol",
					"text" : "jcom.parameter tolerance @type msg_float @ramp/drive scheduler @description \"Sets the tolerance.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 444.0, 377.0, 300.0, 30.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.fluoride% @module_type video @algorithm_type jitter @description \"neon glow effect\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 1.0, 190.0, 289.0, 30.0 ],
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
					"patching_rect" : [ 43.0, 330.0, 49.0, 18.0 ],
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
					"patching_rect" : [ 43.0, 308.0, 86.0, 18.0 ],
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
					"patching_rect" : [ 123.0, 167.0, 135.0, 16.0 ],
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
					"patching_rect" : [ 60.0, 404.0, 85.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-28",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 404.0, 13.0, 13.0 ],
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
					"patching_rect" : [ 22.0, 165.0, 86.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-31",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3.0, 252.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-32",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 3.0, 165.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.fluoride%",
					"fontname" : "Verdana",
					"id" : "obj-33",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 43.0, 354.0, 99.0, 18.0 ],
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
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 21.5, 159.0, 18.0, 159.0, 18.0, 183.0, 10.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 222.5, 163.0, 117.0, 163.0, 117.0, 186.0, 12.0, 186.0, 10.5, 189.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 132.5, 186.0, 10.5, 186.0 ]
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
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-33", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 2 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-8", 0 ],
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
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 119.5, 351.0, 52.5, 351.0 ]
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
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 150.5, 299.0, 52.5, 299.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
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
 ]
	}

}
