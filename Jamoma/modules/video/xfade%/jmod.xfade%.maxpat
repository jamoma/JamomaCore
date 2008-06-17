{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 654.0, 294.0, 929.0, 374.0 ],
		"bglocked" : 0,
		"defrect" : [ 654.0, 294.0, 929.0, 374.0 ],
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
					"maxclass" : "multislider",
					"varname" : "xfade",
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"outlettype" : [ "", "" ],
					"bgcolor" : [ 0.678431, 0.678431, 0.678431, 1.0 ],
					"slidercolor" : [ 0.356863, 0.356863, 0.356863, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"id" : "obj-8",
					"presentation_rect" : [ 4.0, 23.0, 75.0, 15.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"contdata" : 1,
					"setstyle" : 1,
					"patching_rect" : [ 285.0, 253.0, 75.0, 15.0 ],
					"compatibility" : 1,
					"numinlets" : 1,
					"presentation" : 1,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"numoutlets" : 2,
					"orientation" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"patching_rect" : [ 35.0, 314.0, 52.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"patching_rect" : [ 207.0, 178.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"fontsize" : 9.873845,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"patching_rect" : [ 222.0, 179.0, 75.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"patching_rect" : [ 117.0, 179.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"fontsize" : 9.873845,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"patching_rect" : [ 132.0, 180.0, 75.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 2",
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "", "" ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"patching_rect" : [ 117.0, 201.0, 100.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p formating",
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"patching_rect" : [ 285.0, 229.0, 66.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 14.0, 59.0, 198.0, 241.0 ],
						"bglocked" : 0,
						"defrect" : [ 14.0, 59.0, 198.0, 241.0 ],
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
									"maxclass" : "newobj",
									"text" : "prepend 1",
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"patching_rect" : [ 101.0, 95.0, 59.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-2",
									"patching_rect" : [ 53.0, 155.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"patching_rect" : [ 53.0, 125.0, 58.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"patching_rect" : [ 53.0, 68.0, 58.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"patching_rect" : [ 53.0, 39.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontsize" : 10.0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"patching_rect" : [ 35.0, 258.0, 49.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"patching_rect" : [ 35.0, 235.0, 86.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "xfade[1]",
					"text" : "jcom.parameter xfade @type msg_float @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0. 1. @range/clipmode both @description \"Crossfade value\"",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"patching_rect" : [ 285.0, 273.0, 399.0, 30.0 ],
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"patching_rect" : [ 114.0, 101.0, 135.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"fontsize" : 9.873845,
					"id" : "obj-14",
					"fontname" : "Verdana",
					"patching_rect" : [ 50.0, 343.0, 85.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-15",
					"patching_rect" : [ 35.0, 343.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.xfade%",
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"patching_rect" : [ 35.0, 287.0, 175.0, 18.0 ],
					"numinlets" : 3,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"patching_rect" : [ 401.0, 81.0, 80.0, 28.0 ],
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontsize" : 9.873845,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"patching_rect" : [ 30.0, 99.0, 86.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.xfade% @module_type video @algorithm_type jitter @description \"Crossfade between two video sources.\"",
					"linecount" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"patching_rect" : [ 16.0, 124.0, 311.0, 42.0 ],
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-21",
					"patching_rect" : [ 16.0, 186.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"patching_rect" : [ 16.0, 99.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"id" : "obj-28",
					"presentation_rect" : [ 83.0, 21.0, 60.0, 45.0 ],
					"patching_rect" : [ 240.0, 23.0, 60.0, 45.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module.1",
					"has_bypass" : 1,
					"outlettype" : [ "" ],
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"has_freeze" : 1,
					"id" : "obj-16",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"prefix" : "video",
					"has_mute" : 1,
					"patching_rect" : [ 3.0, 1.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"has_preview" : 1,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 123.5, 120.0, 25.5, 120.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 294.5, 308.0, 279.0, 308.0, 279.0, 222.0, 294.5, 222.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 2 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 180.5, 226.0, 44.5, 226.0 ]
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
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 111.5, 280.0, 44.5, 280.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-15", 0 ],
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-17", 2 ],
					"hidden" : 0,
					"midpoints" : [ 153.5, 252.0, 200.5, 252.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
