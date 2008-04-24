{
	"patcher" : 	{
		"rect" : [ 39.0, 112.0, 968.0, 698.0 ],
		"bgcolor" : [ 0.588235, 0.588235, 0.588235, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 39.0, 112.0, 968.0, 698.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dim: 190 x 150",
					"id" : "obj-1",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 7.0, 247.0, 204.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(UID = unique ID)",
					"id" : "obj-2",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 69.0, 51.0, 97.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p set_defaults",
					"outlettype" : [ "", "int", "", "", "int" ],
					"id" : "obj-3",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 94.0, -9.0, 74.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 5,
					"fontname" : "Verdana",
					"patcher" : 					{
						"rect" : [ 566.0, 87.0, 866.0, 433.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 566.0, 87.0, 866.0, 433.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set UID, bang",
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 75.0, 88.0, 69.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set 320 240, bang",
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontsize" : 9.0,
									"patching_rect" : [ 381.0, 92.0, 93.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend symbol",
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontsize" : 9.0,
									"patching_rect" : [ 279.0, 91.0, 80.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 4 char b 1",
									"outlettype" : [ "bang", "int", "char", "bang", "int" ],
									"id" : "obj-4",
									"fontsize" : 9.0,
									"patching_rect" : [ 75.0, 50.0, 419.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 5,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"patching_rect" : [ 75.0, 30.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-6",
									"patching_rect" : [ 483.0, 156.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-7",
									"patching_rect" : [ 381.0, 156.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-8",
									"patching_rect" : [ 279.0, 156.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-9",
									"patching_rect" : [ 177.0, 156.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-10",
									"patching_rect" : [ 75.0, 156.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 2 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 3 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 4 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontsize" : 10.0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set defaults",
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"fontsize" : 9.0,
					"patching_rect" : [ 5.0, 200.0, 63.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Type",
					"id" : "obj-5",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 8.0, 91.0, 58.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message #1\/clear @type msg_generic @description \"Set all cell values to 0.\"",
					"id" : "obj-6",
					"fontsize" : 9.0,
					"patching_rect" : [ 255.0, 492.0, 387.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Clear",
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"fontsize" : 9.0,
					"patching_rect" : [ 255.0, 471.0, 58.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "Clear",
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"filename" : "jsui_textbutton.js",
					"patching_rect" : [ 138.0, 4.0, 41.0, 19.0 ],
					"numinlets" : 1,
					"jsarguments" : [ "clear" ],
					"numoutlets" : 1,
					"nofsaa" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "#1\/type",
					"text" : "jcom.parameter #1\/type @type msg_menu @description \"The matrix data type (char\\, long\\, float32\\, or float64).\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"fontsize" : 9.0,
					"patching_rect" : [ 255.0, 424.0, 282.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Type 2",
					"outlettype" : [ "", "" ],
					"id" : "obj-10",
					"fontsize" : 9.0,
					"patching_rect" : [ 255.0, 395.0, 65.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Type",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-11",
					"labelclick" : 1,
					"fontsize" : 9.0,
					"items" : [ "char", ",", "long", ",", "float32", ",", "float64" ],
					"patching_rect" : [ 69.0, 88.0, 110.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "#1\/planecount",
					"text" : "jcom.parameter #1\/planecount @type msg_int @range/bounds 1 32 @range/clipmode both @repetitions 1 @ramp/drive none @description \"The number of planes\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-12",
					"fontsize" : 9.0,
					"patching_rect" : [ 255.0, 340.0, 347.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Planecount",
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"fontsize" : 9.0,
					"patching_rect" : [ 255.0, 316.0, 82.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Planecount",
					"id" : "obj-14",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 8.0, 74.0, 58.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Planecount",
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-15",
					"minimum" : 1,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 69.0, 71.0, 39.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 32
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"outlettype" : [ "", "" ],
					"id" : "obj-16",
					"fontsize" : 9.0,
					"patching_rect" : [ 255.0, 238.0, 56.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "#1\/name",
					"text" : "jcom.parameter #1\/name @type msg_list @description \"The input or output name (default = UID)\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"fontsize" : 9.0,
					"patching_rect" : [ 255.0, 259.0, 284.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Name 3",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-18",
					"fontsize" : 9.0,
					"patching_rect" : [ 255.0, 214.0, 67.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Name",
					"id" : "obj-19",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 8.0, 36.0, 59.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "Name",
					"text" : "UID",
					"outlettype" : [ "", "int", "" ],
					"id" : "obj-20",
					"keymode" : 1,
					"lines" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 69.0, 31.0, 110.0, 18.0 ],
					"numinlets" : 1,
					"outputmode" : 1,
					"numoutlets" : 3,
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dim",
					"id" : "obj-21",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 8.0, 109.0, 41.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Adapt",
					"outlettype" : [ "" ],
					"id" : "obj-22",
					"fontsize" : 9.0,
					"patching_rect" : [ 255.0, 49.0, 60.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "#1\/adapt",
					"text" : "jcom.parameter #1\/adapt @type msg_toggle @description \"Adapt to incoming matrix planecount\\, type\\, and dimensions\"",
					"linecount" : 2,
					"id" : "obj-23",
					"fontsize" : 9.0,
					"patching_rect" : [ 255.0, 71.0, 297.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"outlettype" : [ "", "" ],
					"id" : "obj-24",
					"fontsize" : 9.0,
					"patching_rect" : [ 255.0, 155.0, 56.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "Dim",
					"text" : "320 240",
					"outlettype" : [ "", "int", "" ],
					"id" : "obj-25",
					"keymode" : 1,
					"lines" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 69.0, 106.0, 110.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 150 150 150",
					"id" : "obj-26",
					"fontsize" : 9.0,
					"patching_rect" : [ 255.0, 534.0, 106.0, 17.0 ],
					"numinlets" : 4,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "#1\/dim",
					"text" : "jcom.parameter #1\/dim @type msg_list @description \"Matrix dimension\"",
					"outlettype" : [ "" ],
					"id" : "obj-27",
					"fontsize" : 9.0,
					"patching_rect" : [ 255.0, 176.0, 361.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Dim 3",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-28",
					"fontsize" : 9.0,
					"patching_rect" : [ 255.0, 131.0, 60.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Adapt",
					"id" : "obj-29",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 8.0, 129.0, 41.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "Adapt",
					"outlettype" : [ "" ],
					"id" : "obj-30",
					"patching_rect" : [ 67.0, 126.0, 69.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
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
					"id" : "obj-31",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 5.0, 227.0, 231.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "#1",
					"id" : "obj-32",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.533333,
					"patching_rect" : [ 7.0, 4.0, 110.0, 21.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-33",
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.588235, 0.588235, 0.588235, 1.0 ],
					"border" : 1,
					"patching_rect" : [ 0.0, 0.0, 190.0, 150.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-3", 4 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 2 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 3 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1
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
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.5, 196.0, 249.0, 196.0, 249.0, 126.0, 264.5, 126.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.5, 292.0, 249.0, 292.0, 249.0, 210.0, 264.5, 210.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.5, 373.0, 249.0, 373.0, 249.0, 312.0, 264.5, 312.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.5, 457.0, 248.0, 457.0, 248.0, 391.0, 264.5, 391.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 310.5, 418.0, 264.5, 418.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
