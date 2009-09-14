{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 107.0, 57.0, 1145.0, 813.0 ],
		"bglocked" : 0,
		"defrect" : [ 107.0, 57.0, 1145.0, 813.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
<<<<<<< HEAD
=======
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 105.0, 125.0, 251.0, 17.0 ],
					"text" : "/preset/store 1 default, /preset/write"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 130.0, 83.0, 74.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 130.0, 83.0, 74.0, 19.0 ],
					"text" : "Bound mode"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 130.0, 23.0, 53.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 130.0, 23.0, 53.0, 19.0 ],
					"text" : "Rotate X"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-2",
					"linecount" : 5,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 392.820862, 626.0, 600.0, 67.0 ],
					"text" : "jcom.parameter boundmode @type string @repetitions/allow 1 @description \"Boundary mode for values outside the range (0, width) (0, height). <br /> 0 = ignore: Values that exceed the limits are ignored.<br /> 1 = clear: Values that exceed the limits are set to 0.<br /> 2 = wrap: Values that exceed the limits are wrapped around to the opposite limit with a modulo operation.<br /> 3 = clip: Values are limited not to exceed width or height.<br /> 4 = fold: Values that exceed the limits are folded back in the opposite.\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-12",
					"items" : [ "ignore", ",", "clear", ",", "wrap", ",", "clip", ",", "fold" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 392.820862, 596.0, 67.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 210.0, 83.0, 75.0, 19.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 130.0, 43.0, 53.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 130.0, 43.0, 53.0, 19.0 ],
					"text" : "Rotate Y"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-8",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 392.820862, 271.0, 50.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 65.0, 43.0, 45.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-7",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 392.820862, 201.0, 50.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 65.0, 23.0, 45.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
					"id" : "obj-46",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 235.0, 21.0, 60.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 235.0, 21.0, 60.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-22",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 192.0, 164.0, 32.5, 17.0 ],
									"text" : "$5"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-21",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 117.0, 164.0, 32.5, 17.0 ],
									"text" : "$6"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-26",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 42.0, 164.0, 32.5, 17.0 ],
									"text" : "$5"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 42.0, 76.0, 46.0, 18.0 ],
									"text" : "route 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 42.0, 101.0, 56.0, 18.0 ],
									"text" : "route 2 4"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 42.0, 50.0, 118.0, 18.0 ],
									"text" : "jcom.pwindow.mouse"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-35",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 42.0, 16.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-1",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 330.0, 235.0, 228.0, 66.0 ],
									"text" : "Tried to implement a system where the current offset and zoom level would be remembered when the mouse is used next time. Got some feedback problems, so I took it out, but it would be a nice feature... "
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 117.0, 247.0, 70.0, 16.0 ],
									"text" : "/offset_y $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 42.0, 247.0, 70.0, 16.0 ],
									"text" : "/offset_x $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 192.0, 247.0, 56.0, 16.0 ],
									"text" : "/zoom $1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-9",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 42.0, 348.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 192.0, 193.0, 74.0, 18.0 ],
									"text" : "clip -200 200"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 192.0, 219.0, 109.0, 18.0 ],
									"text" : "scale -200 200 2. 0."
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 201.5, 335.0, 51.5, 335.0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 126.5, 335.0, 51.5, 335.0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [ 51.5, 119.0, 51.5, 119.0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 51.5, 149.0, 126.5, 149.0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 70.0, 140.0, 201.5, 140.0 ],
									"source" : [ "obj-33", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-15", 0 ]
								}

							}
 ]
					}
,
<<<<<<< HEAD
					"patching_rect" : [ 443.0, 97.0, 78.0, 18.0 ],
=======
					"patching_rect" : [ 460.820862, 98.0, 79.0, 19.0 ],
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}
,
					"text" : "p mouse-stuff"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
<<<<<<< HEAD
					"patching_rect" : [ 946.0, 219.0, 52.0, 18.0 ],
=======
					"patching_rect" : [ 146.0, 449.0, 53.0, 19.0 ],
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
					"text" : "jcom.out"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-4",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 146.0, 317.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
<<<<<<< HEAD
					"patching_rect" : [ 979.0, 87.0, 75.0, 18.0 ],
=======
					"patching_rect" : [ 179.0, 317.0, 76.0, 19.0 ],
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
					"text" : "VIDEO INPUT"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
<<<<<<< HEAD
					"patching_rect" : [ 946.0, 119.0, 85.0, 18.0 ],
=======
					"patching_rect" : [ 146.0, 349.0, 85.0, 19.0 ],
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
					"text" : "jcom.in 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
<<<<<<< HEAD
					"patching_rect" : [ 443.0, 167.0, 209.0, 18.0 ],
=======
					"patching_rect" : [ 460.820862, 128.0, 212.0, 19.0 ],
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
					"text" : "jcom.oscroute /zoom /offset_x /offset_y"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-11",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
<<<<<<< HEAD
					"patching_rect" : [ 377.179108, 581.0, 441.0, 30.0 ],
=======
					"patching_rect" : [ 395.0, 542.0, 446.0, 31.0 ],
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
					"text" : "jcom.parameter angle @type integer @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0 90 @range/clipmode none @description \"Rotate image - in degrees\"",
					"varname" : "angle[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-13",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
<<<<<<< HEAD
					"patching_rect" : [ 377.179108, 338.0, 480.0, 30.0 ],
					"text" : "jcom.parameter offset_y @type integer @ramp/drive scheduler @repetitions/allow 0 @range/bounds -1000 1000 @range/clipmode none @description \"Offset image in Y-direction\"",
=======
					"patching_rect" : [ 392.820862, 296.0, 559.0, 31.0 ],
					"text" : "jcom.parameter offset_y @type decimal @ramp/drive scheduler @repetitions/allow 0 @range/bounds -1. 1. @range/clipmode none @description \"Offset image in Y-direction\"",
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
					"varname" : "offset_y"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
<<<<<<< HEAD
					"patching_rect" : [ 377.179108, 467.0, 361.0, 18.0 ],
=======
					"patching_rect" : [ 395.0, 428.0, 361.0, 19.0 ],
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
					"text" : "jcom.parameter rotate2 @type boolean @description \"Flip vertical\"",
					"varname" : "rotate2[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-16",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 395.0, 519.809937, 30.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 65.0, 63.0, 45.0, 19.0 ],
					"triscale" : 0.9,
					"varname" : "angle"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 63.0, 38.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 63.0, 38.0, 19.0 ],
					"text" : "Angle"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 395.0, 463.412231, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 185.0, 63.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 130.0, 63.0, 42.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 130.0, 63.0, 42.0, 19.0 ],
					"text" : "Mirror"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 395.0, 407.315674, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 185.0, 43.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 395.0, 347.967194, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 185.0, 23.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-23",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 377.179108, 311.659973, 30.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 130.959671, 49.0, 36.0, 19.0 ],
					"triangle" : 0,
					"triscale" : 0.9,
					"varname" : "offset-Y"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-25",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
<<<<<<< HEAD
					"patching_rect" : [ 377.179108, 270.0, 481.0, 30.0 ],
					"text" : "jcom.parameter offset_x @type integer @ramp/drive scheduler @repetitions/allow 0 @range/bounds -1000 1000 @range/clipmode none @description \"Offset image in X-direction\"",
=======
					"patching_rect" : [ 392.820862, 231.0, 559.0, 31.0 ],
					"text" : "jcom.parameter offset_x @type decimal @ramp/drive scheduler @repetitions/allow 0 @range/bounds -1. 1. @range/clipmode none @description \"Offset image in X-direction\"",
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
					"varname" : "offset_x"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 43.0, 52.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 43.0, 52.0, 19.0 ],
					"text" : "Y offset "
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
<<<<<<< HEAD
					"patching_rect" : [ 377.179108, 523.0, 362.0, 18.0 ],
=======
					"patching_rect" : [ 395.0, 484.0, 362.0, 19.0 ],
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
					"text" : "jcom.parameter mirror @type boolean @description \"Mirror image\"",
					"varname" : "mirror[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-29",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 377.179108, 243.36853, 30.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 48.495968, 49.0, 36.0, 19.0 ],
					"triangle" : 0,
					"triscale" : 0.9,
					"varname" : "offset-X"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-30",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 395.0, 140.840912, 35.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 65.0, 83.0, 45.0, 19.0 ],
					"triscale" : 0.9,
					"varname" : "zoom"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 23.0, 49.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 23.0, 49.0, 19.0 ],
					"text" : "X offset"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 83.0, 38.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 83.0, 38.0, 19.0 ],
					"text" : "Zoom"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
<<<<<<< HEAD
					"patching_rect" : [ 122.0, 108.0, 135.0, 16.0 ],
=======
					"patching_rect" : [ 131.0, 151.0, 137.0, 17.0 ],
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
					"text" : "/documentation/generate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
<<<<<<< HEAD
					"patching_rect" : [ 377.179108, 407.0, 374.0, 18.0 ],
=======
					"patching_rect" : [ 395.0, 368.0, 374.0, 19.0 ],
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
					"text" : "jcom.parameter rotate1 @type boolean @description \"Flip horizontal\"",
					"varname" : "rotate1[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-36",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
<<<<<<< HEAD
					"patching_rect" : [ 377.179108, 204.0, 425.0, 30.0 ],
=======
					"patching_rect" : [ 395.0, 165.0, 428.0, 31.0 ],
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
					"text" : "jcom.parameter zoom @type decimal @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0. 10. @range/clipmode none @description \"Zoom in the image\"",
					"varname" : "zoom[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
<<<<<<< HEAD
					"patching_rect" : [ 975.0, 250.0, 87.0, 18.0 ],
=======
					"patching_rect" : [ 175.0, 480.0, 87.0, 19.0 ],
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
					"text" : "VIDEO OUTPUT"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-39",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 146.0, 475.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "jit_matrix" ],
<<<<<<< HEAD
					"patching_rect" : [ 874.0, 191.0, 91.0, 18.0 ],
=======
					"patching_rect" : [ 74.0, 421.0, 91.0, 19.0 ],
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
					"text" : "jalg.orsize%"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-41",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
<<<<<<< HEAD
					"patching_rect" : [ 28.0, 107.0, 86.0, 18.0 ],
=======
					"patching_rect" : [ 40.0, 135.0, 87.0, 19.0 ],
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
					"text" : "command input"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-42",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
<<<<<<< HEAD
					"patching_rect" : [ 1.0, 142.0, 259.0, 30.0 ],
=======
					"patching_rect" : [ 10.0, 185.0, 259.0, 31.0 ],
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
					"text" : "jcom.hub @module_type video @algorithm_type jitter @description \"Orientation and size of video\"",
					"varname" : "jcom.hub"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-43",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 234.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-44",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
<<<<<<< HEAD
					"patching_rect" : [ 1.0, 107.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 84.0, 23.0, 83.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 77.0, 24.0, 78.0, 19.0 ],
					"text" : "rotate X      Y"
=======
					"patching_rect" : [ 10.0, 135.0, 25.0, 25.0 ]
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
				}

			}
, 			{
				"box" : 				{
					"has_bypass" : 1,
					"has_freeze" : 1,
					"has_mute" : 1,
					"has_preview" : 1,
					"id" : "obj-45",
					"maxclass" : "jcom.ui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 0.0, 0.0, 300.0, 105.0 ],
					"prefix" : "video",
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 105.0 ],
					"text" : "/editing_this_module"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-18", 0 ]
=======
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 0 ]
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 386.679108, 541.0, 362.0, 541.0, 362.0, 499.0, 386.679108, 499.0 ],
					"source" : [ "obj-28", 0 ]
=======
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 404.5, 574.0, 379.820862, 574.0, 379.820862, 514.0, 404.5, 514.0 ],
					"source" : [ "obj-11", 0 ]
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 386.679108, 487.0, 362.0, 487.0, 362.0, 442.0, 386.679108, 442.0 ],
					"source" : [ "obj-15", 0 ]
=======
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 426.320862, 618.0, 402.320862, 618.0 ],
					"source" : [ "obj-12", 1 ]
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
					"midpoints" : [  ],
					"source" : [ "obj-20", 0 ]
=======
					"midpoints" : [ 402.320862, 331.0, 377.820862, 331.0, 377.820862, 267.0, 402.320862, 267.0 ],
					"source" : [ "obj-13", 0 ]
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
					"midpoints" : [ 386.679108, 427.0, 362.0, 427.0, 362.0, 382.0, 386.679108, 382.0 ],
					"source" : [ "obj-35", 0 ]
=======
					"midpoints" : [ 404.5, 448.0, 379.820862, 448.0, 379.820862, 403.0, 404.5, 403.0 ],
					"source" : [ "obj-15", 0 ]
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 883.5, 176.0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-42", 0 ],
=======
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 402.320862, 702.0, 381.320862, 702.0, 381.320862, 586.0, 402.320862, 586.0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 131.5, 138.0, 10.5, 138.0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-42", 0 ]
=======
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 114.5, 176.0, 19.5, 176.0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 402.320862, 264.0, 379.820862, 264.0, 379.820862, 198.0, 402.320862, 198.0 ],
					"source" : [ "obj-25", 0 ]
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
					"midpoints" : [ 386.679108, 613.0, 362.0, 613.0, 362.0, 553.0, 386.679108, 553.0 ],
					"source" : [ "obj-11", 0 ]
=======
					"midpoints" : [ 404.5, 502.0, 379.820862, 502.0, 379.820862, 460.0, 404.5, 460.0 ],
					"source" : [ "obj-28", 0 ]
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 386.679108, 370.0, 362.0, 370.0, 362.0, 307.0, 386.679108, 307.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
					"midpoints" : [  ],
					"source" : [ "obj-23", 0 ]
=======
					"midpoints" : [ 140.5, 181.0, 19.5, 181.0 ],
					"source" : [ "obj-34", 0 ]
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
					"midpoints" : [ 386.679108, 301.0, 362.0, 301.0, 362.0, 238.0, 386.679108, 238.0 ],
					"source" : [ "obj-25", 0 ]
=======
					"midpoints" : [ 404.5, 388.0, 379.820862, 388.0, 379.820862, 343.0, 404.5, 343.0 ],
					"source" : [ "obj-35", 0 ]
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
					"midpoints" : [  ],
					"source" : [ "obj-29", 0 ]
=======
					"midpoints" : [ 404.5, 196.0, 379.820862, 196.0, 379.820862, 136.0, 404.5, 136.0 ],
					"source" : [ "obj-36", 0 ]
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 386.679108, 235.0, 362.0, 235.0, 362.0, 175.0, 386.679108, 175.0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 452.5, 199.0, 386.679108, 199.0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 515.833313, 265.0, 386.679108, 265.0 ],
					"source" : [ "obj-9", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 579.166687, 333.0, 386.679108, 333.0 ],
					"source" : [ "obj-9", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
					"midpoints" : [ 452.5, 124.0, 883.5, 124.0 ],
					"source" : [ "obj-1", 0 ]
=======
					"midpoints" : [  ],
					"source" : [ "obj-6", 1 ]
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-40", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
					"midpoints" : [  ],
					"source" : [ "obj-3", 0 ]
=======
					"midpoints" : [ 598.987549, 294.0, 402.320862, 294.0 ],
					"source" : [ "obj-9", 2 ]
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
					"midpoints" : [  ],
					"source" : [ "obj-45", 0 ]
=======
					"midpoints" : [ 534.654175, 226.0, 402.320862, 226.0 ],
					"source" : [ "obj-9", 1 ]
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
					"midpoints" : [  ],
					"source" : [ "obj-46", 1 ]
=======
					"midpoints" : [ 470.320862, 160.0, 404.5, 160.0 ],
					"source" : [ "obj-9", 0 ]
>>>>>>> 202f971... <change>jmod.orsize%: Added boundmode parameter, resizing is now in range [0-1] and relative to center of image, offset is now relative to image (matrix) size.</change>
				}

			}
 ]
	}

}
