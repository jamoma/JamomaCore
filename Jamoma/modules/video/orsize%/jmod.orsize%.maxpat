{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 83.0, 44.0, 1127.0, 667.0 ],
		"bglocked" : 0,
		"defrect" : [ 83.0, 44.0, 1127.0, 667.0 ],
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
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 235.0, 21.0, 60.0, 45.0 ],
					"patching_rect" : [ 402.0, 45.0, 60.0, 45.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-46",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p mouse-stuff",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 443.0, 97.0, 78.0, 18.0 ],
					"numinlets" : 1,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 277.0, 44.0, 604.0, 404.0 ],
						"bglocked" : 0,
						"defrect" : [ 277.0, 44.0, 604.0, 404.0 ],
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
									"maxclass" : "message",
									"text" : "$5",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 192.0, 164.0, 32.5, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$6",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 117.0, 164.0, 32.5, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$5",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 42.0, 164.0, 32.5, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 1",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 42.0, 76.0, 46.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 2 4",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 42.0, 101.0, 56.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-33",
									"fontname" : "Verdana",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.pwindow.mouse",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 42.0, 50.0, 118.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-34",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 42.0, 16.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-35",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Tried to implement a system where the current offset and zoom level would be remembered when the mouse is used next time. Got some feedback problems, so I took it out, but it would be a nice feature... ",
									"linecount" : 5,
									"fontsize" : 9.873845,
									"patching_rect" : [ 330.0, 235.0, 228.0, 66.0 ],
									"numinlets" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/offset_y $1",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 117.0, 247.0, 70.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/offset_x $1",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 42.0, 247.0, 70.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/zoom $1",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 192.0, 247.0, 56.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 42.0, 348.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-9",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "clip -200 200",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 192.0, 193.0, 74.0, 18.0 ],
									"numinlets" : 3,
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale -200 200 2. 0.",
									"outlettype" : [ "float" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 192.0, 219.0, 109.0, 18.0 ],
									"numinlets" : 6,
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 70.0, 140.0, 201.5, 140.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 51.5, 149.0, 126.5, 149.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [ 51.5, 119.0, 51.5, 119.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 126.5, 335.0, 51.5, 335.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 201.5, 335.0, 51.5, 335.0 ]
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
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 946.0, 219.0, 52.0, 18.0 ],
					"numinlets" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"patching_rect" : [ 946.0, 87.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"id" : "obj-4",
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"fontsize" : 9.873845,
					"patching_rect" : [ 979.0, 87.0, 75.0, 18.0 ],
					"numinlets" : 1,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 946.0, 119.0, 85.0, 18.0 ],
					"numinlets" : 1,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /zoom /offset_x /offset_y",
					"outlettype" : [ "", "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 443.0, 167.0, 209.0, 18.0 ],
					"numinlets" : 1,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "angle[1]",
					"text" : "jcom.parameter angle @type msg_int @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0 90 @range/clipmode none @description \"Rotate image - in degrees\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 377.179108, 581.0, 441.0, 30.0 ],
					"numinlets" : 1,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "offset_y",
					"text" : "jcom.parameter offset_y @type msg_int @ramp/drive scheduler @repetitions/allow 0 @range/bounds -1000 1000 @range/clipmode none @description \"Offset image in Y-direction\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 377.179108, 338.0, 480.0, 30.0 ],
					"numinlets" : 1,
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "rotate2[1]",
					"text" : "jcom.parameter rotate2 @type msg_toggle @description \"Flip vertical\"",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 377.179108, 467.0, 361.0, 18.0 ],
					"numinlets" : 1,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "angle",
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 203.0, 49.0, 30.0, 19.0 ],
					"triscale" : 0.9,
					"patching_rect" : [ 377.179108, 558.809937, 30.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "angle",
					"textcolor" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 169.0, 49.471767, 36.0, 19.0 ],
					"frgb" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"patching_rect" : [ 130.0, 42.0, 36.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "mirror",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 207.0, 23.0, 18.0, 18.0 ],
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"patching_rect" : [ 377.179108, 502.412231, 18.0, 18.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-18",
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
					"text" : "mirror",
					"textcolor" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 172.0, 24.0, 43.0, 19.0 ],
					"frgb" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"patching_rect" : [ 145.0, 23.0, 43.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "rotate2",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 148.0, 23.0, 18.0, 18.0 ],
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"patching_rect" : [ 377.179108, 446.315674, 18.0, 18.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-20",
					"numoutlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "rotate1",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 120.495972, 23.0, 18.0, 18.0 ],
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"patching_rect" : [ 377.179108, 386.967194, 18.0, 18.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-21",
					"numoutlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "offset-Y",
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 130.959671, 49.0, 30.0, 19.0 ],
					"triscale" : 0.9,
					"patching_rect" : [ 377.179108, 311.659973, 30.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "offset_x",
					"text" : "jcom.parameter offset_x @type msg_int @ramp/drive scheduler @repetitions/allow 0 @range/bounds -1000 1000 @range/clipmode none @description \"Offset image in X-direction\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 377.179108, 270.0, 481.0, 30.0 ],
					"numinlets" : 1,
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Y offset ",
					"linecount" : 3,
					"textcolor" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 87.201653, 49.471767, 53.0, 19.0 ],
					"frgb" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"patching_rect" : [ 79.0, 42.0, 31.0, 43.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-26",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mirror[1]",
					"text" : "jcom.parameter mirror @type msg_toggle @description \"Mirror image\"",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 377.179108, 523.0, 362.0, 18.0 ],
					"numinlets" : 1,
					"id" : "obj-28",
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "offset-X",
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 48.495968, 49.0, 30.0, 19.0 ],
					"triscale" : 0.9,
					"patching_rect" : [ 377.179108, 243.36853, 30.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "zoom",
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 37.0, 24.0, 35.0, 19.0 ],
					"triscale" : 0.9,
					"patching_rect" : [ 377.179108, 179.840912, 35.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-30",
					"minimum" : 0.0,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "X offset",
					"textcolor" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 2.568561, 49.471767, 48.0, 19.0 ],
					"frgb" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"patching_rect" : [ 4.0, 42.0, 48.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-31",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "zoom",
					"textcolor" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 4.0, 24.0, 36.0, 19.0 ],
					"frgb" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"patching_rect" : [ 4.0, 24.0, 36.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-32",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"patching_rect" : [ 122.0, 108.0, 135.0, 16.0 ],
					"numinlets" : 2,
					"id" : "obj-34",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "rotate1[1]",
					"text" : "jcom.parameter rotate1 @type msg_toggle @description \"Flip horizontal\"",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 377.179108, 407.0, 374.0, 18.0 ],
					"numinlets" : 1,
					"id" : "obj-35",
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "zoom[1]",
					"text" : "jcom.parameter zoom @type msg_float @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0. 10. @range/clipmode none @description \"Zoom in the image\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 377.179108, 204.0, 425.0, 30.0 ],
					"numinlets" : 1,
					"id" : "obj-36",
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"fontsize" : 9.873845,
					"patching_rect" : [ 975.0, 250.0, 87.0, 18.0 ],
					"numinlets" : 1,
					"id" : "obj-38",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 946.0, 245.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"id" : "obj-39",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.orsize%",
					"outlettype" : [ "", "jit_matrix" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 874.0, 191.0, 91.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-40",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontsize" : 9.873845,
					"patching_rect" : [ 28.0, 107.0, 86.0, 18.0 ],
					"numinlets" : 1,
					"id" : "obj-41",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type video @algorithm_type jitter @description \"Orientation and size of video\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 1.0, 142.0, 259.0, 30.0 ],
					"numinlets" : 1,
					"id" : "obj-42",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 1.0, 191.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"id" : "obj-43",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"patching_rect" : [ 1.0, 107.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"id" : "obj-44",
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "rotate X      Y",
					"linecount" : 3,
					"textcolor" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 77.0, 24.0, 78.725761, 19.0 ],
					"frgb" : [ 0.576471, 0.576471, 0.576471, 1.0 ],
					"patching_rect" : [ 84.0, 23.0, 42.0, 43.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"outlettype" : [ "" ],
					"has_preview" : 1,
					"has_bypass" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"prefix" : "video",
					"numinlets" : 1,
					"has_freeze" : 1,
					"presentation" : 1,
					"id" : "obj-45",
					"numoutlets" : 1,
					"has_mute" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-46", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-40", 1 ],
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
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 452.5, 124.0, 883.5, 124.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 2 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 579.166687, 333.0, 386.679108, 333.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 515.833313, 265.0, 386.679108, 265.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 452.5, 199.0, 386.679108, 199.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 386.679108, 235.0, 362.0, 235.0, 362.0, 175.0, 386.679108, 175.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 386.679108, 301.0, 362.0, 301.0, 362.0, 238.0, 386.679108, 238.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 386.679108, 370.0, 362.0, 370.0, 362.0, 307.0, 386.679108, 307.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 386.679108, 427.0, 362.0, 427.0, 362.0, 382.0, 386.679108, 382.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 386.679108, 487.0, 362.0, 487.0, 362.0, 442.0, 386.679108, 442.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 386.679108, 541.0, 362.0, 541.0, 362.0, 499.0, 386.679108, 499.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 386.679108, 613.0, 362.0, 613.0, 362.0, 553.0, 386.679108, 553.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 131.5, 138.0, 10.5, 138.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 883.5, 176.0 ]
				}

			}
 ]
	}

}
