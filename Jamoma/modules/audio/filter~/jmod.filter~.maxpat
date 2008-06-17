{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 236.0, 68.0, 771.0, 655.0 ],
		"bglocked" : 0,
		"defrect" : [ 236.0, 68.0, 771.0, 655.0 ],
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
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 2",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-51",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 486.0, 55.0, 152.0, 20.0 ],
					"fontsize" : 10.970939
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 481.0, 10.0, 152.0, 20.0 ],
					"fontsize" : 10.970939
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"presentation_rect" : [ 151.0, 10.0, 80.0, 4.0 ],
					"id" : "obj-50",
					"numoutlets" : 0,
					"patching_rect" : [ 391.0, 85.0, 80.0, 4.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"presentation_rect" : [ 151.0, 5.0, 80.0, 4.0 ],
					"id" : "obj-49",
					"numoutlets" : 0,
					"patching_rect" : [ 386.0, 40.0, 80.0, 4.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "filter type :",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"presentation_rect" : [ 5.0, 23.0, 81.0, 19.0 ],
					"id" : "obj-43",
					"numoutlets" : 0,
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"patching_rect" : [ 5.0, 23.0, 81.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 573.0, 652.0, 47.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 440.0, 628.0, 143.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 390.0, 711.0, 65.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "", "" ],
					"patching_rect" : [ 390.0, 605.0, 87.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1 s 0",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "int" ],
					"patching_rect" : [ 269.0, 159.0, 40.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p DecodeFilterGraph",
					"numinlets" : 4,
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 73.0, 330.0, 101.0, 17.0 ],
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 564.0, 189.0, 486.0, 356.0 ],
						"bglocked" : 0,
						"defrect" : [ 564.0, 189.0, 486.0, 356.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 10.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Else \"Restore Default Settings\" will not function properly as past values for q, filtergain and cf maintained in FilterGraph will overrule the attempt to reset values to defaults.",
									"linecount" : 2,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numoutlets" : 0,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 34.0, 260.0, 415.0, 28.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 0,
									"patching_rect" : [ 142.0, 194.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 0,
									"patching_rect" : [ 88.0, 194.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-4",
									"numoutlets" : 0,
									"patching_rect" : [ 34.0, 194.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "atodb",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 88.0, 157.0, 34.0, 17.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-6",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 179.0, 35.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-7",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 125.0, 35.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-8",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 71.0, 35.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 142.0, 128.0, 47.0, 17.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 88.0, 128.0, 47.0, 17.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 34.0, 128.0, 47.0, 17.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-12",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 263.0, 35.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Output from FilterFraph has to be muted when filtertype is changes.",
									"linecount" : 2,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numoutlets" : 0,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 34.0, 238.0, 315.0, 28.0 ],
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
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
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 135.0, 662.0, 125.0, 15.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "FilterType",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"labelclick" : 1,
					"bgcolor" : [ 0.266667, 0.266667, 0.266667, 1.0 ],
					"presentation_rect" : [ 5.0, 40.0, 81.0, 19.0 ],
					"id" : "obj-9",
					"numoutlets" : 3,
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 43.0, 89.0, 81.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"rounded" : 15,
					"textcolor" : [ 0.882353, 0.882353, 0.882353, 1.0 ],
					"items" : [ "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "highshelf" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_xxx_to_filtergraph",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 92.0, 176.0, 124.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_xxx_to_filtergraph",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numoutlets" : 0,
					"patching_rect" : [ 59.0, 583.0, 124.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p PrepareForFiltergraph~",
					"numinlets" : 3,
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 59.0, 559.0, 124.0, 17.0 ],
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 91.0, 247.0, 597.0, 355.0 ],
						"bglocked" : 0,
						"defrect" : [ 91.0, 247.0, 597.0, 355.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 10.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dbtoa",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 267.0, 143.0, 34.0, 17.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Set message to 6nd inlet",
									"linecount" : 2,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numoutlets" : 0,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 401.0, 232.0, 119.0, 28.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 0,
									"patching_rect" : [ 96.0, 274.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak set 1200. 1. 1.",
									"numinlets" : 4,
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 96.0, 232.0, 215.0, 17.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 335.0, 119.0, 50.0, 17.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-6",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 199.0, 50.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 267.0, 119.0, 50.0, 17.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-8",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 267.0, 50.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 199.0, 119.0, 50.0, 17.0 ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-10",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 335.0, 50.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Get rid of set",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numoutlets" : 0,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 405.0, 121.0, 100.0, 17.0 ],
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
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
					"maxclass" : "flonum",
					"varname" : "CenterFreq",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 123.0, 21.0, 43.0, 19.0 ],
					"id" : "obj-13",
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 198.0, 489.0, 43.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
					"minimum" : 30.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triangle" : 0,
					"maximum" : 11025.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 262.0, 662.0, 37.0, 15.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message filtergraph @description \"Messages to filtergraph. See the MSP reference for further details\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 12.0, 199.0, 256.0, 28.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Q",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 123.0, 34.0, 43.0, 19.0 ],
					"id" : "obj-21",
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 198.0, 332.0, 43.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
					"minimum" : 0.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triangle" : 0,
					"maximum" : 100.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "filtertype",
					"text" : "jcom.parameter filtertype @type msg_symbol @description \"What kind of filter to use. Possible values: lowpass | highpass | bandpass | bandstop | peaknotch | lowshelf | highshelf\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 43.0, 120.0, 435.0, 28.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "filtergain",
					"text" : "jcom.parameter filtergain @type msg_float @range/bounds -24 24 @range/clipmode both @ramp/drive scheduler @repetitions/allow 0 @description \"Gain (dB)\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 198.0, 431.0, 398.0, 28.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "q",
					"text" : "jcom.parameter q @type msg_float @ramp/drive scheduler @range/bounds 0. 100. @range/clipmode both @repetitions/allow 0 @description \"Resonance (Q)\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 198.0, 356.0, 364.0, 28.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "cf",
					"text" : "jcom.parameter cf @type msg_float @range/bounds 30. 11025. @range/clipmode both @ramp/drive scheduler @repetitions/allow 0 @description \"Center frequency (Hz)\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 198.0, 512.0, 385.0, 28.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "FilterGain",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 123.0, 47.0, 43.0, 19.0 ],
					"id" : "obj-27",
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 198.0, 408.0, 43.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
					"minimum" : -24.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triangle" : 0,
					"maximum" : 24.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "cf :",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"presentation_rect" : [ 100.0, 21.0, 28.0, 19.0 ],
					"id" : "obj-28",
					"numoutlets" : 0,
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"patching_rect" : [ 100.0, 21.0, 28.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.filter~",
					"numinlets" : 3,
					"fontname" : "Verdana",
					"id" : "obj-30",
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 355.0, 684.0, 81.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "filtergraph~",
					"varname" : "FilterGraph",
					"domain" : [ 20.0, 22050.0 ],
					"numinlets" : 8,
					"fontname" : "Verdana",
					"logmarkers" : [ 50.0, 500.0, 5000.0 ],
					"fgcolor" : [ 0.388235, 0.388235, 0.388235, 1.0 ],
					"bgcolor" : [ 0.678431, 0.678431, 0.678431, 1.0 ],
					"presentation_rect" : [ 166.0, 20.0, 131.0, 48.0 ],
					"id" : "obj-31",
					"numoutlets" : 7,
					"bwidthcolor" : [ 0.462745, 0.47451, 0.65098, 1.0 ],
					"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
					"patching_rect" : [ 12.0, 255.0, 131.0, 48.0 ],
					"fontsize" : 8.0,
					"markercolor" : [ 0.329412, 0.329412, 0.329412, 1.0 ],
					"presentation" : 1,
					"textcolor" : [  ],
					"hcurvecolor" : [ 1.0, 0.086275, 0.086275, 1.0 ],
					"hbwidthcolor" : [ 0.478431, 0.290196, 0.290196, 1.0 ],
					"nfilters" : 1,
					"setfilter" : [ 0, 1, 1, 0, 0, 1548.0, 1.0, 1.0, 30.0, 11025.0, 0.0625, 16.0, 0.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-32",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 389.0, 753.0, 101.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-33",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 46.0, 663.0, 79.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-34",
					"numoutlets" : 0,
					"patching_rect" : [ 417.0, 737.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-35",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 390.0, 587.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----signal inputs----",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-36",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 388.0, 569.0, 105.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-37",
					"numoutlets" : 0,
					"patching_rect" : [ 32.0, 733.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-38",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 467.0, 587.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-39",
					"numoutlets" : 0,
					"patching_rect" : [ 390.0, 737.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-40",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 32.0, 663.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Convertion from freq, gain and q to biquad coeffisients has to take place inside the poly~ (.alg) in case the poly is up- or downsampled.",
					"linecount" : 3,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-41",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 270.0, 295.0, 260.0, 39.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.filter~ @module_type audio @description \"Stereo 2nd order IIR filter based on biquad~\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-42",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 32.0, 693.0, 280.0, 28.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Q/S :",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"presentation_rect" : [ 90.0, 34.0, 36.0, 19.0 ],
					"id" : "obj-26",
					"numoutlets" : 0,
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"patching_rect" : [ 90.0, 34.0, 36.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "gain :",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"presentation_rect" : [ 88.0, 47.0, 39.0, 19.0 ],
					"id" : "obj-29",
					"numoutlets" : 0,
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"patching_rect" : [ 88.0, 47.0, 39.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module.1",
					"has_bypass" : 1,
					"has_mute" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-44",
					"has_meters" : 2,
					"numoutlets" : 1,
					"prefix" : "audio",
					"has_gain" : 1,
					"outlettype" : [ "" ],
					"presentation" : 1,
					"has_mix" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 207.5, 540.0, 183.0, 540.0, 183.0, 486.0, 207.5, 486.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-12", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 207.5, 473.0, 184.0, 473.0, 184.0, 404.0, 207.5, 404.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 144.5, 684.0, 41.5, 684.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 271.5, 687.0, 41.5, 687.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 3 ],
					"destination" : [ "obj-6", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 2 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 260.5, 156.0, 278.5, 156.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 52.5, 160.0, 25.0, 160.0, 25.0, 80.0, 52.5, 80.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 83.5, 114.0, 52.5, 114.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 289.0, 240.0, 21.5, 240.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 2 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 2 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-30", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-34", 0 ],
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
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-30", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 582.5, 676.0, 364.5, 676.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 449.5, 676.0, 364.5, 676.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-31", 5 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 3 ],
					"hidden" : 0,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 278.5, 273.0, 164.5, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 2 ],
					"destination" : [ "obj-6", 3 ],
					"hidden" : 0,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 299.5, 273.0, 164.5, 273.0 ]
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
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 2 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 207.5, 386.0, 184.0, 386.0, 184.0, 329.0, 207.5, 329.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
 ]
	}

}
