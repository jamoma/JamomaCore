{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 434.0, 145.0, 871.0, 661.0 ],
		"bgcolor" : [ 0.588235, 0.588235, 0.588235, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 434.0, 145.0, 871.0, 661.0 ],
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
					"text" : "Dim: 190 x 150",
					"patching_rect" : [ 7.0, 247.0, 204.0, 18.0 ],
					"id" : "obj-1",
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(UID = unique ID)",
					"patching_rect" : [ 69.0, 51.0, 101.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-2",
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 77.0, 51.0, 101.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p set_defaults",
					"patching_rect" : [ 94.0, -9.0, 79.0, 18.0 ],
					"id" : "obj-3",
					"hidden" : 1,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 5,
					"outlettype" : [ "", "int", "", "", "int" ],
					"fontsize" : 9.873845,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 566.0, 87.0, 866.0, 433.0 ],
						"bglocked" : 0,
						"defrect" : [ 566.0, 87.0, 866.0, 433.0 ],
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
									"text" : "set UID, bang",
									"patching_rect" : [ 75.0, 88.0, 77.0, 16.0 ],
									"id" : "obj-1",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set 320 240, bang",
									"patching_rect" : [ 381.0, 92.0, 100.0, 16.0 ],
									"id" : "obj-2",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend symbol",
									"patching_rect" : [ 279.0, 91.0, 88.0, 18.0 ],
									"id" : "obj-3",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 4 char b 1",
									"patching_rect" : [ 75.0, 50.0, 419.0, 18.0 ],
									"id" : "obj-4",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 5,
									"outlettype" : [ "bang", "int", "char", "bang", "int" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 75.0, 30.0, 15.0, 15.0 ],
									"id" : "obj-5",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 483.0, 156.0, 15.0, 15.0 ],
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 381.0, 156.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 279.0, 156.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 177.0, 156.0, 15.0, 15.0 ],
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 75.0, 156.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 4 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 3 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 2 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set defaults",
					"patching_rect" : [ 5.0, 200.0, 66.0, 16.0 ],
					"id" : "obj-4",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Type",
					"patching_rect" : [ 8.0, 91.0, 61.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-5",
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 8.0, 92.0, 61.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message #1/clear @type msg_generic @description \"Set all cell values to 0.\"",
					"patching_rect" : [ 255.0, 492.0, 421.0, 18.0 ],
					"id" : "obj-6",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "Clear",
					"patching_rect" : [ 255.0, 466.0, 41.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-8",
					"numinlets" : 1,
					"numoutlets" : 1,
					"filename" : "jsui_textbutton.js",
					"outlettype" : [ "" ],
					"nofsaa" : 1,
					"presentation_rect" : [ 138.0, 4.0, 41.0, 19.0 ],
					"jsarguments" : [ "clear" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "#1/type",
					"text" : "jcom.parameter #1/type @type msg_generic @description \"The matrix data type (char\\, long\\, float32\\, or float64).\"",
					"linecount" : 2,
					"patching_rect" : [ 255.0, 424.0, 315.0, 30.0 ],
					"id" : "obj-9",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Type",
					"patching_rect" : [ 255.0, 395.0, 110.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-11",
					"numinlets" : 1,
					"labelclick" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"presentation_rect" : [ 79.0, 92.0, 110.0, 19.0 ],
					"items" : [ "char", ",", "long", ",", "float32", ",", "float64" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "#1/planecount",
					"text" : "jcom.parameter #1/planecount @type msg_int @range/bounds 1 32 @range/clipmode both @repetitions/allow 1 @ramp/drive none @description \"The number of planes\"",
					"linecount" : 2,
					"patching_rect" : [ 255.0, 340.0, 445.0, 30.0 ],
					"id" : "obj-12",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Planecount",
					"patching_rect" : [ 8.0, 74.0, 63.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-14",
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 74.0, 63.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Planecount",
					"triangle" : 0,
					"patching_rect" : [ 256.0, 316.0, 39.0, 19.0 ],
					"triscale" : 0.9,
					"presentation" : 1,
					"id" : "obj-15",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"minimum" : 1,
					"numoutlets" : 2,
					"maximum" : 32,
					"outlettype" : [ "int", "bang" ],
					"presentation_rect" : [ 79.0, 74.0, 39.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"patching_rect" : [ 255.0, 238.0, 58.0, 18.0 ],
					"id" : "obj-16",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "#1/name",
					"text" : "jcom.parameter #1/name @type msg_list @description \"The input or output name (default = UID)\"",
					"linecount" : 2,
					"patching_rect" : [ 255.0, 259.0, 289.0, 30.0 ],
					"id" : "obj-17",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Name",
					"patching_rect" : [ 8.0, 36.0, 62.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-19",
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 9.0, 30.0, 62.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "Name",
					"text" : "UID\\\"",
					"patching_rect" : [ 255.0, 215.0, 135.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-20",
					"numinlets" : 1,
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"fontname" : "Verdana",
					"lines" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "" ],
					"keymode" : 1,
					"presentation_rect" : [ 79.0, 31.0, 115.0, 18.0 ],
					"outputmode" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dim",
					"patching_rect" : [ 8.0, 109.0, 44.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-21",
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 8.0, 111.0, 44.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "#1/adapt",
					"text" : "jcom.parameter #1/adapt @type msg_toggle @description \"Adapt to incoming matrix planecount\\, type\\, and dimensions\"",
					"linecount" : 2,
					"patching_rect" : [ 255.0, 71.0, 324.0, 30.0 ],
					"id" : "obj-23",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"patching_rect" : [ 255.0, 155.0, 58.0, 18.0 ],
					"id" : "obj-24",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "Dim",
					"text" : "320 250",
					"patching_rect" : [ 255.0, 131.0, 118.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-25",
					"numinlets" : 1,
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"fontname" : "Verdana",
					"lines" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "" ],
					"keymode" : 1,
					"presentation_rect" : [ 79.0, 112.0, 115.0, 18.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 150 150 150",
					"patching_rect" : [ 255.0, 534.0, 112.0, 18.0 ],
					"id" : "obj-26",
					"numinlets" : 4,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "#1/dim",
					"text" : "jcom.parameter #1/dim @type msg_list @description \"Matrix dimension\"",
					"patching_rect" : [ 255.0, 176.0, 374.0, 18.0 ],
					"id" : "obj-27",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Adapt",
					"patching_rect" : [ 8.0, 129.0, 43.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-29",
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 8.0, 129.0, 43.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "Adapt",
					"patching_rect" : [ 255.0, 47.0, 69.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-30",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 79.0, 130.0, 69.0, 18.0 ],
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(use for setting default preset during developent)",
					"patching_rect" : [ 5.0, 227.0, 255.0, 18.0 ],
					"id" : "obj-31",
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "#1",
					"patching_rect" : [ 7.0, 4.0, 102.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-32",
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 4.0, 102.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 0.0, 0.0, 190.0, 150.0 ],
					"presentation" : 1,
					"id" : "obj-33",
					"rounded" : 0,
					"bgcolor" : [ 0.588235, 0.588235, 0.588235, 1.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 202.0, 150.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.5, 372.0, 240.0, 372.0, 240.0, 312.0, 265.5, 312.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.5, 456.0, 240.0, 456.0, 240.0, 390.0, 264.5, 390.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 310.0, 419.0, 267.0, 419.0, 267.0, 420.0, 264.5, 420.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.5, 300.0, 240.0, 300.0, 240.0, 210.0, 264.5, 210.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.5, 195.0, 240.0, 195.0, 240.0, 126.0, 264.5, 126.0 ]
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
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-23", 0 ],
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
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [ 14.5, 220.0, 186.0, 220.0, 186.0, -14.0, 103.5, -14.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 3 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [ 148.5, -3.0, 192.0, -3.0, 192.0, 0.0, 240.0, 0.0, 240.0, 117.0, 264.5, 117.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 2 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [ 133.5, -3.0, 192.0, -3.0, 192.0, 0.0, 201.0, 0.0, 201.0, 186.0, 201.0, 186.0, 201.0, 381.0, 264.5, 381.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 118.5, -3.0, 192.0, -3.0, 192.0, 0.0, 201.0, 0.0, 201.0, 186.0, 201.0, 186.0, 201.0, 303.0, 265.5, 303.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [ 103.5, -3.0, 192.0, -3.0, 192.0, 0.0, 240.0, 0.0, 240.0, 210.0, 264.5, 210.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 4 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [ 163.5, -3.0, 192.0, -3.0, 192.0, 0.0, 264.5, 0.0 ]
				}

			}
 ]
	}

}
