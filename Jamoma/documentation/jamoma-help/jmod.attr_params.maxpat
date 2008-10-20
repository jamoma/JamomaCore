{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 306.0, 152.0, 564.0, 557.0 ],
		"bglocked" : 0,
		"defrect" : [ 306.0, 152.0, 564.0, 557.0 ],
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
					"text" : "another parameter of the power ramp function is the symmetry :",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-20",
					"fontname" : "Arial",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 9.0, 250.0, 304.0, 17.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 12.0, 250.0, 304.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "visualize the function curve used for the ramp",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-21",
					"fontname" : "Arial",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 8.0, 380.0, 270.0, 17.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 11.0, 380.0, 270.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"presentation" : 1,
					"numinlets" : 0,
					"hidden" : 1,
					"id" : "obj-22",
					"numoutlets" : 1,
					"presentation_rect" : [ 345.0, 379.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 348.0, 379.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"presentation" : 1,
					"numinlets" : 1,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"id" : "obj-23",
					"numoutlets" : 2,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"presentation_rect" : [ 7.0, 400.0, 347.0, 87.0 ],
					"outlettype" : [ "", "" ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"setstyle" : 4,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"patching_rect" : [ 10.0, 400.0, 347.0, 87.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route #1",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-24",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 264.0, 378.0, 81.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the function used can be changed :",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-25",
					"fontname" : "Arial",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 105.0, 164.0, 162.0, 17.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 108.0, 164.0, 162.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "drive mode can be changed as well (e.g. queue, scheduler...)",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-26",
					"fontname" : "Arial",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 294.0, 278.0, 17.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 10.0, 294.0, 278.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "->",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-27",
					"fontname" : "Arial",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 107.0, 314.0, 18.0, 17.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 110.0, 314.0, 18.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"presentation" : 1,
					"numinlets" : 2,
					"id" : "obj-28",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"presentation_rect" : [ 125.0, 311.0, 227.0, 15.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 128.0, 311.0, 227.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p format",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-29",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 59.0, 311.0, 49.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 14.0, 59.0, 331.0, 283.0 ],
						"bglocked" : 0,
						"defrect" : [ 14.0, 59.0, 331.0, 283.0 ],
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
									"text" : "prepend set",
									"numinlets" : 1,
									"id" : "obj-1",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 75.0, 179.0, 62.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 0,
									"patching_rect" : [ 76.0, 199.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b s",
									"numinlets" : 1,
									"id" : "obj-3",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 50.0, 206.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "#1",
									"numinlets" : 2,
									"id" : "obj-4",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 76.0, 94.0, 21.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numinlets" : 1,
									"id" : "obj-5",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 76.0, 70.0, 48.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"numinlets" : 1,
									"id" : "obj-6",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 135.0, 51.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"numinlets" : 2,
									"id" : "obj-7",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 113.0, 36.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf %s:/ramp/drive %s",
									"numinlets" : 2,
									"id" : "obj-8",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 158.0, 206.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-9",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-10",
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 180.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 1 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"presentation" : 1,
					"items" : [ "scheduler", ",", "queue" ],
					"numinlets" : 1,
					"labelclick" : 1,
					"id" : "obj-30",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"presentation_rect" : [ 6.0, 311.0, 100.0, 17.0 ],
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 9.0,
					"types" : [  ],
					"arrowlink" : 1,
					"patching_rect" : [ 9.0, 311.0, 100.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "->",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-31",
					"fontname" : "Arial",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 108.0, 270.0, 18.0, 17.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 111.0, 270.0, 18.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"presentation" : 1,
					"numinlets" : 2,
					"id" : "obj-32",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"presentation_rect" : [ 126.0, 267.0, 227.0, 15.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 129.0, 267.0, 227.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p format",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-33",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 60.0, 267.0, 49.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 14.0, 59.0, 331.0, 283.0 ],
						"bglocked" : 0,
						"defrect" : [ 14.0, 59.0, 331.0, 283.0 ],
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
									"text" : "prepend set",
									"numinlets" : 1,
									"id" : "obj-1",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 75.0, 179.0, 62.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 0,
									"patching_rect" : [ 76.0, 199.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b s",
									"numinlets" : 1,
									"id" : "obj-3",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 50.0, 206.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "#1",
									"numinlets" : 2,
									"id" : "obj-4",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 76.0, 94.0, 21.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numinlets" : 1,
									"id" : "obj-5",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 76.0, 70.0, 48.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"numinlets" : 1,
									"id" : "obj-6",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 135.0, 51.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"numinlets" : 2,
									"id" : "obj-7",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 113.0, 36.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf %s:/ramp/function/parameter symmetry %s",
									"numinlets" : 2,
									"id" : "obj-8",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 158.0, 253.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-9",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-10",
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 180.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 1 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"presentation" : 1,
					"items" : [ "none", ",", "point", ",", "axis" ],
					"numinlets" : 1,
					"labelclick" : 1,
					"id" : "obj-34",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"presentation_rect" : [ 7.0, 267.0, 100.0, 17.0 ],
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 9.0,
					"types" : [  ],
					"arrowlink" : 1,
					"patching_rect" : [ 10.0, 267.0, 100.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "->",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-35",
					"fontname" : "Arial",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 109.0, 190.0, 18.0, 17.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 112.0, 190.0, 18.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"presentation" : 1,
					"numinlets" : 2,
					"id" : "obj-36",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"presentation_rect" : [ 127.0, 187.0, 225.0, 15.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 130.0, 187.0, 225.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p format",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-37",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 13.0, 186.0, 49.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 14.0, 59.0, 239.0, 275.0 ],
						"bglocked" : 0,
						"defrect" : [ 14.0, 59.0, 239.0, 275.0 ],
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
									"text" : "prepend set",
									"numinlets" : 1,
									"id" : "obj-1",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 75.0, 179.0, 62.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 0,
									"patching_rect" : [ 76.0, 199.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b s",
									"numinlets" : 1,
									"id" : "obj-3",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 50.0, 145.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "#1",
									"numinlets" : 2,
									"id" : "obj-4",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 76.0, 94.0, 21.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numinlets" : 1,
									"id" : "obj-5",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 76.0, 70.0, 48.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"numinlets" : 1,
									"id" : "obj-6",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 135.0, 51.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"numinlets" : 2,
									"id" : "obj-7",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 113.0, 36.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf %s:/ramp/function %s",
									"numinlets" : 2,
									"id" : "obj-8",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 158.0, 145.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-9",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-10",
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 180.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 1 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "example of setting a parameter of the current ramp drive",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-38",
					"fontname" : "Arial",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 83.0, 335.0, 270.0, 17.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 86.0, 335.0, 270.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "example of setting a parameter of the power ramp function",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-39",
					"fontname" : "Arial",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 9.0, 211.0, 276.0, 17.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 12.0, 211.0, 276.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "200.",
					"presentation" : 1,
					"numinlets" : 2,
					"id" : "obj-40",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"presentation_rect" : [ 51.0, 333.0, 31.0, 15.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 54.0, 333.0, 31.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "20.",
					"presentation" : 1,
					"numinlets" : 2,
					"id" : "obj-41",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"presentation_rect" : [ 26.0, 333.0, 23.0, 15.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 29.0, 333.0, 23.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "5.",
					"presentation" : 1,
					"numinlets" : 2,
					"id" : "obj-42",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"presentation_rect" : [ 7.0, 333.0, 17.0, 15.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 10.0, 333.0, 17.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-43",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"presentation_rect" : [ 7.0, 354.0, 35.0, 17.0 ],
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 10.0, 354.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1:/ramp/drive/parameter granularity $1",
					"presentation" : 1,
					"numinlets" : 2,
					"id" : "obj-44",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"presentation_rect" : [ 43.0, 354.0, 263.0, 15.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 46.0, 354.0, 263.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-45",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"presentation_rect" : [ 8.0, 226.0, 35.0, 17.0 ],
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 11.0, 226.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1:/ramp/function/parameter powerValue $1",
					"presentation" : 1,
					"numinlets" : 2,
					"id" : "obj-46",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"presentation_rect" : [ 48.0, 230.0, 307.0, 15.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 51.0, 230.0, 307.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-47",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 493.0, 65.0, 50.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route menu",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-48",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 492.0, 112.0, 60.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"presentation" : 1,
					"items" : [ "cosine", ",", "linear", ",", "lowpass", ",", "power", ",", "tanh" ],
					"numinlets" : 1,
					"labelclick" : 1,
					"id" : "obj-49",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"presentation_rect" : [ 9.0, 187.0, 100.0, 17.0 ],
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 9.0,
					"types" : [  ],
					"arrowlink" : 1,
					"patching_rect" : [ 12.0, 187.0, 100.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.map",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-50",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 491.0, 88.0, 53.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Ramp Stuff :",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-51",
					"fontname" : "Arial",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 10.0, 161.0, 88.0, 20.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 13.0, 161.0, 88.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 1,
					"rounded" : 15,
					"numinlets" : 1,
					"id" : "obj-52",
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 155.0, 370.0, 344.0 ],
					"patching_rect" : [ 3.0, 155.0, 370.0, 344.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 192.0, 40.0, 41.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"fontsize" : 10.0,
					"patching_rect" : [ 192.0, 40.0, 41.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1 $1 ramp 2000",
					"presentation" : 1,
					"numinlets" : 2,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"presentation_rect" : [ 228.0, 41.0, 144.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 228.0, 41.0, 144.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 194.0, 63.0, 41.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"fontsize" : 10.0,
					"patching_rect" : [ 194.0, 63.0, 41.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1:/stepsize $1",
					"presentation" : 1,
					"numinlets" : 2,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"presentation_rect" : [ 227.0, 63.0, 144.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 227.0, 63.0, 144.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-5",
					"numoutlets" : 0,
					"patching_rect" : [ 420.0, 470.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "change this parameter's datatype",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 196.0, 115.0, 202.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 196.0, 115.0, 202.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "output all attributes of this parameter :",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 8.0, 128.0, 211.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 8.0, 128.0, 211.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "change this parameter's rampmode",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 9.0, 112.0, 191.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 9.0, 112.0, 191.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Addressing attributes Properties",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 4.0, 2.0, 298.0, 26.0 ],
					"fontsize" : 16.0,
					"patching_rect" : [ 4.0, 2.0, 298.0, 26.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1:/value/dec",
					"presentation" : 1,
					"numinlets" : 2,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"presentation_rect" : [ 7.0, 48.0, 165.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 7.0, 48.0, 165.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1:/value/inc",
					"presentation" : 1,
					"numinlets" : 2,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"presentation_rect" : [ 7.0, 31.0, 168.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 7.0, 31.0, 168.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1:dump",
					"presentation" : 1,
					"numinlets" : 2,
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"presentation_rect" : [ 194.0, 129.0, 161.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 194.0, 129.0, 161.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1:/type msg_int",
					"presentation" : 1,
					"numinlets" : 2,
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"presentation_rect" : [ 194.0, 100.0, 177.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 194.0, 100.0, 177.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1:/type msg_float",
					"presentation" : 1,
					"numinlets" : 2,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"presentation_rect" : [ 195.0, 85.0, 177.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 194.0, 84.0, 177.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1:/ramp/function linear",
					"presentation" : 1,
					"numinlets" : 2,
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"presentation_rect" : [ 7.0, 97.0, 172.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 7.0, 97.0, 172.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1:/ramp/function none",
					"presentation" : 1,
					"numinlets" : 2,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"presentation_rect" : [ 7.0, 81.0, 171.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 7.0, 81.0, 171.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "increase/decrease value by stepsize :",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 20.0, 63.0, 228.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 20.0, 63.0, 228.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 1,
					"rounded" : 15,
					"numinlets" : 1,
					"id" : "obj-10",
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 373.0, 27.0 ],
					"background" : 1,
					"patching_rect" : [ 0.0, 0.0, 373.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 1,
					"rounded" : 15,
					"numinlets" : 1,
					"id" : "obj-19",
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 28.0, 373.0, 123.0 ],
					"background" : 1,
					"patching_rect" : [ 0.0, 28.0, 373.0, 123.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 1 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 1 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 1 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"midpoints" : [ 501.5, 142.0, 21.5, 142.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-44", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
