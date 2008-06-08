{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 543.0, 54.0, 771.0, 825.0 ],
		"bglocked" : 0,
		"defrect" : [ 543.0, 54.0, 771.0, 825.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 615.0, 633.0, 47.0, 17.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~.mxt",
					"patching_rect" : [ 482.0, 609.0, 143.0, 17.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"patching_rect" : [ 432.0, 692.0, 65.0, 17.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"patching_rect" : [ 432.0, 586.0, 87.0, 17.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1 s 0",
					"patching_rect" : [ 250.0, 195.0, 40.0, 17.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p DecodeFilterGraph",
					"patching_rect" : [ 41.0, 263.0, 101.0, 17.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 4,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
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
									"patching_rect" : [ 34.0, 260.0, 415.0, 28.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 142.0, 194.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 88.0, 194.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 34.0, 194.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "atodb",
									"patching_rect" : [ 88.0, 157.0, 34.0, 17.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 179.0, 35.0, 15.0, 15.0 ],
									"id" : "obj-6",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 125.0, 35.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 71.0, 35.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"patching_rect" : [ 142.0, 128.0, 47.0, 17.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"patching_rect" : [ 88.0, 128.0, 47.0, 17.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"patching_rect" : [ 34.0, 128.0, 47.0, 17.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 263.0, 35.0, 15.0, 15.0 ],
									"id" : "obj-12",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Output from FilterFraph has to be muted when filtertype is changes.",
									"linecount" : 2,
									"patching_rect" : [ 34.0, 238.0, 315.0, 28.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
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
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"patching_rect" : [ 135.0, 609.0, 125.0, 15.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"patching_rect" : [ 298.0, 641.0, 65.0, 26.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "FilterType",
					"types" : [  ],
					"patching_rect" : [ 6.0, 30.0, 70.0, 19.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"arrowlink" : 1,
					"rounded" : 15,
					"textcolor" : [ 0.882353, 0.882353, 0.882353, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"items" : [ "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "highshelf" ],
					"labelclick" : 1,
					"outlettype" : [ "int", "", "" ],
					"bgcolor" : [ 0.266667, 0.266667, 0.266667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_xxx_to_filtergraph",
					"patching_rect" : [ 320.0, 30.0, 124.0, 17.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_xxx_to_filtergraph",
					"patching_rect" : [ 23.0, 508.0, 124.0, 17.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p PrepareForFiltergraph~",
					"patching_rect" : [ 23.0, 484.0, 124.0, 17.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
									"patching_rect" : [ 267.0, 143.0, 34.0, 17.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Set message to 6nd inlet",
									"linecount" : 2,
									"patching_rect" : [ 401.0, 232.0, 119.0, 28.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 96.0, 274.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak set 1200. 1. 1.",
									"patching_rect" : [ 96.0, 232.0, 215.0, 17.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 4,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"patching_rect" : [ 335.0, 119.0, 50.0, 17.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 199.0, 50.0, 15.0, 15.0 ],
									"id" : "obj-6",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"patching_rect" : [ 267.0, 119.0, 50.0, 17.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 267.0, 50.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"patching_rect" : [ 199.0, 119.0, 50.0, 17.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 335.0, 50.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Get rid of set",
									"patching_rect" : [ 405.0, 121.0, 100.0, 17.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
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
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "CenterFreq",
					"patching_rect" : [ 123.0, 19.0, 43.0, 19.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 30.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"maximum" : 11025.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar FilterGain",
					"patching_rect" : [ 182.0, 339.0, 75.0, 17.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Q",
					"patching_rect" : [ 182.0, 263.0, 39.0, 17.0 ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar CenterFreq",
					"patching_rect" : [ 182.0, 422.0, 83.0, 17.0 ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar FilterType 2",
					"patching_rect" : [ 50.0, 129.0, 89.0, 17.0 ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar FilterGraph 7",
					"patching_rect" : [ 28.0, 238.0, 93.0, 17.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 7,
					"outlettype" : [ "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"patching_rect" : [ 262.0, 609.0, 37.0, 15.0 ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message filtergraph @description \"Messages to filtergraph. See the MSP reference for further details\"",
					"linecount" : 2,
					"patching_rect" : [ 320.0, 54.0, 266.0, 28.0 ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Q",
					"patching_rect" : [ 123.0, 35.0, 43.0, 19.0 ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"maximum" : 100.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "filtertype",
					"text" : "jcom.parameter filtertype @type msg_symbol @description \"What kind of filter to use. Possible values: lowpass | highpass | bandpass | bandstop | peaknotch | lowshelf | highshelf\"",
					"linecount" : 2,
					"patching_rect" : [ 50.0, 154.0, 435.0, 28.0 ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "filtergain",
					"text" : "jcom.parameter filtergain @type msg_float @range -24 24 @clipmode both @ramp/drive scheduler @repetitions 0 @description \"Gain (dB)\"",
					"linecount" : 2,
					"patching_rect" : [ 182.0, 363.0, 331.0, 28.0 ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "q",
					"text" : "jcom.parameter q @type msg_float @ramp/drive scheduler @range 0. 100. @clipmode both @repetitions 0 @description \"Resonance (Q)\"",
					"linecount" : 2,
					"patching_rect" : [ 182.0, 287.0, 326.0, 28.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "cf",
					"text" : "jcom.parameter cf @type msg_float @range 30. 11025. @clipmode both @ramp/drive scheduler @repetitions 0 @description \"Center frequency (Hz)\"",
					"linecount" : 2,
					"patching_rect" : [ 182.0, 443.0, 357.0, 28.0 ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Q/S",
					"patching_rect" : [ 90.0, 34.0, 30.0, 19.0 ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "FilterGain",
					"patching_rect" : [ 123.0, 53.0, 43.0, 19.0 ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
					"triscale" : 0.9,
					"minimum" : -24.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"maximum" : 24.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "cf",
					"patching_rect" : [ 98.0, 21.0, 20.0, 19.0 ],
					"id" : "obj-28",
					"fontname" : "Verdana",
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "gain",
					"patching_rect" : [ 90.0, 47.0, 30.0, 19.0 ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.filter~.mxt",
					"patching_rect" : [ 397.0, 665.0, 81.0, 17.0 ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "filtergraph~",
					"varname" : "FilterGraph",
					"patching_rect" : [ 166.0, 20.0, 88.0, 39.0 ],
					"hcurvecolor" : [ 1.0, 0.086275, 0.086275, 1.0 ],
					"id" : "obj-31",
					"fgcolor" : [ 0.388235, 0.388235, 0.388235, 1.0 ],
					"textcolor" : [  ],
					"bwidthcolor" : [ 0.462745, 0.47451, 0.65098, 1.0 ],
					"numinlets" : 8,
					"domain" : [ 20.0, 22050.0 ],
					"numoutlets" : 7,
					"hbwidthcolor" : [ 0.478431, 0.290196, 0.290196, 1.0 ],
					"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
					"markercolor" : [ 0.329412, 0.329412, 0.329412, 1.0 ],
					"logmarkers" : [ 50.0, 500.0, 5000.0 ],
					"bgcolor" : [ 0.678431, 0.678431, 0.678431, 1.0 ],
					"nfilters" : 1,
					"setfilter" : [ 0, 1, 1, 0, 0, 1548.0, 1.0, 1.0, 30.0, 11025.0, 0.0625, 16.0, 0.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"patching_rect" : [ 431.0, 734.0, 101.0, 17.0 ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"patching_rect" : [ 46.0, 610.0, 79.0, 17.0 ],
					"id" : "obj-33",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 459.0, 718.0, 13.0, 13.0 ],
					"id" : "obj-34",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 432.0, 568.0, 13.0, 13.0 ],
					"id" : "obj-35",
					"numinlets" : 0,
					"hidden" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----signal inputs----",
					"patching_rect" : [ 430.0, 550.0, 105.0, 17.0 ],
					"id" : "obj-36",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 32.0, 680.0, 13.0, 13.0 ],
					"id" : "obj-37",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 509.0, 568.0, 13.0, 13.0 ],
					"id" : "obj-38",
					"numinlets" : 0,
					"hidden" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 432.0, 718.0, 13.0, 13.0 ],
					"id" : "obj-39",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 32.0, 610.0, 13.0, 13.0 ],
					"id" : "obj-40",
					"numinlets" : 0,
					"hidden" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Convertion from freq, gain and q to biquad coeffisients has to take place inside the poly~ (.alg) in case the poly is up- or downsampled.",
					"linecount" : 3,
					"patching_rect" : [ 183.0, 487.0, 260.0, 39.0 ],
					"id" : "obj-41",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.filter~ @size 1U-half @module_type audio @description \"Stereo 2nd order IIR filter based on biquad~\"",
					"linecount" : 2,
					"patching_rect" : [ 32.0, 640.0, 283.0, 28.0 ],
					"id" : "obj-42",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"id" : "obj-44",
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 2 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 2 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-30", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-30", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [ 624.5, 657.0, 406.5, 657.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [ 491.5, 657.0, 406.5, 657.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [ 267.5, 189.0, 259.5, 189.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-31", 5 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [ 191.5, 475.0, 178.0, 475.0, 178.0, 416.0, 191.5, 416.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [ 191.5, 395.0, 175.0, 395.0, 175.0, 335.0, 191.5, 335.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 2 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 191.5, 319.0, 176.0, 319.0, 176.0, 254.0, 191.5, 254.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-12", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 3 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 259.5, 236.0, 132.5, 236.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 2 ],
					"destination" : [ "obj-6", 3 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 280.5, 236.0, 132.5, 236.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 3 ],
					"destination" : [ "obj-6", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 2 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [ 129.5, 150.0, 59.5, 150.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [ 59.5, 198.0, 43.0, 198.0, 43.0, 124.0, 59.5, 124.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [ 271.5, 634.0, 41.5, 634.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [ 144.5, 631.0, 41.5, 631.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [ 270.0, 222.0, 37.5, 222.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
