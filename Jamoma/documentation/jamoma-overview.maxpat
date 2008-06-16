{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 21.0, 44.0, 291.0, 280.0 ],
		"bglocked" : 0,
		"defrect" : [ 21.0, 44.0, 291.0, 280.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.970939,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 2,
		"gridsize" : [ 10.0, 10.0 ],
		"gridsnaponopen" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"presentation_rect" : [ 60.0, 240.0, 130.0, 20.0 ],
					"outlettype" : [ "int", "", "int" ],
					"text" : "Components",
					"patching_rect" : [ 30.0, 345.0, 100.0, 20.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"presentation_rect" : [ 60.0, 210.0, 130.0, 20.0 ],
					"outlettype" : [ "int", "", "int" ],
					"text" : "Javascripts",
					"patching_rect" : [ 30.0, 285.0, 100.0, 20.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"presentation_rect" : [ 60.0, 180.0, 130.0, 20.0 ],
					"outlettype" : [ "int", "", "int" ],
					"text" : "Externals",
					"patching_rect" : [ 30.0, 225.0, 100.0, 20.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"presentation_rect" : [ 60.0, 150.0, 130.0, 20.0 ],
					"outlettype" : [ "int", "", "int" ],
					"text" : "Examples",
					"patching_rect" : [ 30.0, 165.0, 100.0, 20.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"presentation_rect" : [ 60.0, 120.0, 130.0, 20.0 ],
					"outlettype" : [ "int", "", "int" ],
					"text" : "Modules",
					"patching_rect" : [ 30.0, 105.0, 100.0, 20.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p javascripts",
					"numinlets" : 1,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 315.0, 75.0, 18.0 ],
					"fontsize" : 9.873845,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 279.0, 44.0, 323.0, 282.0 ],
						"bglocked" : 0,
						"defrect" : [ 279.0, 44.0, 323.0, 282.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"numinlets" : 1,
									"id" : "obj-115",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 387.0, 74.0, 67.0, 19.0 ],
									"fontsize" : 10.0,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"numinlets" : 2,
									"id" : "obj-114",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 387.0, 50.0, 35.0, 17.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-112",
									"hidden" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 387.0, 20.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"numinlets" : 1,
									"id" : "obj-3",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 243.0, 260.0, 74.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"numinlets" : 1,
									"id" : "obj-4",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 243.0, 284.0, 49.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.jsui_multigain.js",
									"numinlets" : 2,
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 170.0, 200.0, 133.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 180.0, 170.0, 120.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Some of the scripts are used for particular purposes in specific modules or components. Only javascripts that might be of more general use are listed here.",
									"linecount" : 2,
									"presentation_linecount" : 3,
									"numinlets" : 1,
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 20.0, 90.0, 287.0, 43.0 ],
									"patching_rect" : [ 20.0, 90.0, 413.0, 31.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.js_systeminfo.js",
									"numinlets" : 2,
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 20.0, 200.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 20.0, 190.0, 118.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma javascripts",
									"numinlets" : 1,
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 20.0, 20.0, 197.0, 28.0 ],
									"patching_rect" : [ 20.0, 20.0, 197.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Overview of javascripts used in Jamoma",
									"numinlets" : 1,
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 20.0, 50.0, 280.0, 19.0 ],
									"patching_rect" : [ 20.0, 50.0, 280.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"id" : "obj-12",
									"numoutlets" : 0,
									"presentation_rect" : [ 10.0, 10.0, 292.0, 63.0 ],
									"patching_rect" : [ 10.0, 10.0, 292.0, 63.0 ],
									"presentation" : 1,
									"rounded" : 15
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "JSUI",
									"numinlets" : 1,
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 170.0, 160.0, 139.0, 28.0 ],
									"patching_rect" : [ 180.0, 130.0, 197.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "JS",
									"numinlets" : 1,
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 20.0, 160.0, 118.0, 28.0 ],
									"patching_rect" : [ 20.0, 130.0, 118.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-114", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-114", 0 ],
									"destination" : [ "obj-115", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
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
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p components",
					"numinlets" : 1,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 375.0, 78.0, 18.0 ],
					"fontsize" : 9.873845,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 280.0, 44.0, 1094.0, 572.0 ],
						"bglocked" : 0,
						"defrect" : [ 280.0, 44.0, 1094.0, 572.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"numinlets" : 1,
									"id" : "obj-115",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 668.0, 77.0, 67.0, 19.0 ],
									"fontsize" : 10.0,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"numinlets" : 2,
									"id" : "obj-114",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 668.0, 53.0, 35.0, 17.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-112",
									"hidden" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 668.0, 23.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.crop%",
									"numinlets" : 2,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 780.0, 290.0, 143.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 740.0, 288.0, 69.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.atomidi",
									"numinlets" : 2,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 270.0, 450.0, 142.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 436.0, 74.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.miditoa",
									"numinlets" : 2,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 270.0, 430.0, 142.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 418.0, 74.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.ambimonitor2xyz",
									"numinlets" : 2,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 630.0, 250.0, 133.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 612.0, 255.0, 124.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.xyz2ambimonitor",
									"numinlets" : 2,
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 490.0, 250.0, 133.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 496.0, 255.0, 124.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.sur.ambi2UHJ~",
									"numinlets" : 2,
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 780.0, 500.0, 142.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 743.0, 462.0, 115.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.sur.UHJ2ambi~",
									"numinlets" : 2,
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 780.0, 520.0, 142.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 743.0, 479.0, 115.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ambisonics Converter:",
									"numinlets" : 1,
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 780.0, 470.0, 122.0, 19.0 ],
									"patching_rect" : [ 739.0, 447.0, 122.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.modules_dumper",
									"numinlets" : 2,
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 30.0, 410.0, 143.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 47.0, 384.0, 129.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.parameters_dumper",
									"numinlets" : 2,
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 30.0, 430.0, 143.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 47.0, 401.0, 141.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.messages_dumper",
									"numinlets" : 2,
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 30.0, 450.0, 142.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 47.0, 418.0, 131.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.returns_dumper",
									"numinlets" : 2,
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 30.0, 470.0, 142.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 47.0, 436.0, 121.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-13",
									"hidden" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 20.0, 480.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.attributes_dumper",
									"numinlets" : 2,
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 30.0, 490.0, 142.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 47.0, 453.0, 130.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.all_dumper",
									"numinlets" : 2,
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 30.0, 510.0, 142.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 47.0, 470.0, 93.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Namespace analysis",
									"numinlets" : 1,
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 30.0, 370.0, 218.0, 28.0 ],
									"patching_rect" : [ 28.0, 355.0, 218.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.cpu_timer",
									"numinlets" : 2,
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 270.0, 250.0, 142.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 255.0, 87.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.numberslider",
									"numinlets" : 2,
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 490.0, 380.0, 143.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 497.0, 368.0, 103.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.spray%",
									"numinlets" : 2,
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 780.0, 350.0, 142.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 740.0, 347.0, 75.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.float2char%",
									"numinlets" : 2,
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 920.0, 270.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 834.0, 269.0, 98.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.char2float%",
									"numinlets" : 2,
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 780.0, 269.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 739.0, 269.0, 98.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jitter related things:",
									"numinlets" : 1,
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 780.0, 180.0, 194.0, 19.0 ],
									"patching_rect" : [ 732.0, 187.0, 194.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video",
									"numinlets" : 1,
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 780.0, 150.0, 167.0, 28.0 ],
									"patching_rect" : [ 732.0, 157.0, 167.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.list2parameter",
									"numinlets" : 2,
									"id" : "obj-24",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 270.0, 350.0, 143.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 345.0, 112.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.checkplanes%",
									"numinlets" : 2,
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 780.0, 250.0, 142.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 739.0, 249.0, 108.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.luma2rgb%",
									"numinlets" : 2,
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 920.0, 330.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 828.0, 327.0, 95.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.rgb2luma%",
									"numinlets" : 2,
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 780.0, 330.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 740.0, 327.0, 95.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.vtext",
									"numinlets" : 2,
									"id" : "obj-28",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 490.0, 400.0, 140.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 497.0, 386.0, 62.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.dbap",
									"numinlets" : 2,
									"id" : "obj-29",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 780.0, 440.0, 140.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 743.0, 425.0, 61.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Distance based amplitude panning:",
									"numinlets" : 1,
									"id" : "obj-30",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 780.0, 410.0, 195.0, 19.0 ],
									"patching_rect" : [ 737.0, 409.0, 195.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Spatialisation",
									"numinlets" : 1,
									"id" : "obj-31",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 780.0, 380.0, 170.0, 28.0 ],
									"patching_rect" : [ 738.0, 383.0, 170.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.init",
									"numinlets" : 2,
									"id" : "obj-32",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 270.0, 310.0, 140.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 309.0, 52.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.textslider",
									"numinlets" : 2,
									"id" : "obj-33",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 490.0, 360.0, 140.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 497.0, 349.0, 83.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "LCD-based widgets:",
									"numinlets" : 1,
									"id" : "obj-34",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 490.0, 330.0, 194.0, 19.0 ],
									"patching_rect" : [ 490.0, 327.0, 194.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Widgets",
									"numinlets" : 1,
									"id" : "obj-35",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 490.0, 300.0, 171.0, 28.0 ],
									"patching_rect" : [ 490.0, 297.0, 171.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Geometric convertions:",
									"numinlets" : 1,
									"id" : "obj-36",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 490.0, 180.0, 194.0, 19.0 ],
									"patching_rect" : [ 489.0, 187.0, 194.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"numinlets" : 1,
									"id" : "obj-37",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 662.0, 363.0, 74.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"numinlets" : 1,
									"id" : "obj-38",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 662.0, 387.0, 49.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.deg2rad",
									"numinlets" : 2,
									"id" : "obj-39",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 630.0, 210.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 570.0, 219.0, 78.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.rad2deg",
									"numinlets" : 2,
									"id" : "obj-40",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 490.0, 210.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 496.0, 219.0, 78.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Geometry",
									"numinlets" : 1,
									"id" : "obj-41",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 490.0, 150.0, 171.0, 28.0 ],
									"patching_rect" : [ 489.0, 157.0, 171.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.thru~",
									"numinlets" : 2,
									"id" : "obj-42",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 270.0, 410.0, 143.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 399.0, 66.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.multi.out~",
									"numinlets" : 2,
									"id" : "obj-43",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 490.0, 480.0, 142.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 497.0, 452.0, 90.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.multi.in~",
									"numinlets" : 2,
									"id" : "obj-44",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 490.0, 460.0, 142.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 497.0, 434.0, 83.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio multi cable",
									"numinlets" : 1,
									"id" : "obj-45",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 490.0, 430.0, 195.0, 19.0 ],
									"patching_rect" : [ 490.0, 418.0, 195.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.pluggo.configassist",
									"numinlets" : 2,
									"id" : "obj-46",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 30.0, 340.0, 142.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 48.0, 334.0, 132.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"numinlets" : 1,
									"id" : "obj-47",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 146.0, 516.0, 74.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"numinlets" : 1,
									"id" : "obj-48",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 146.0, 540.0, 49.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Stuff that might come in handy:",
									"numinlets" : 1,
									"id" : "obj-49",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 270.0, 180.0, 195.0, 19.0 ],
									"patching_rect" : [ 265.0, 187.0, 195.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Utilities",
									"numinlets" : 1,
									"id" : "obj-50",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 270.0, 150.0, 219.0, 28.0 ],
									"patching_rect" : [ 265.0, 157.0, 219.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Turning modules into pluggos",
									"numinlets" : 1,
									"id" : "obj-51",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 30.0, 290.0, 195.0, 19.0 ],
									"patching_rect" : [ 27.0, 294.0, 195.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Pluggo",
									"numinlets" : 1,
									"id" : "obj-52",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 30.0, 260.0, 218.0, 28.0 ],
									"patching_rect" : [ 27.0, 264.0, 218.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Components required:",
									"numinlets" : 1,
									"id" : "obj-53",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 30.0, 180.0, 194.0, 19.0 ],
									"patching_rect" : [ 24.0, 187.0, 194.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Building new modules",
									"numinlets" : 1,
									"id" : "obj-54",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 30.0, 150.0, 218.0, 28.0 ],
									"patching_rect" : [ 24.0, 157.0, 218.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.thru",
									"numinlets" : 2,
									"id" : "obj-55",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 270.0, 390.0, 140.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 381.0, 57.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.pp",
									"numinlets" : 2,
									"id" : "obj-56",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 30.0, 320.0, 140.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 48.0, 316.0, 49.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.post",
									"numinlets" : 2,
									"id" : "obj-57",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 270.0, 370.0, 143.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 363.0, 58.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.line",
									"numinlets" : 2,
									"id" : "obj-58",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 270.0, 330.0, 140.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 327.0, 54.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.gui",
									"numinlets" : 2,
									"id" : "obj-59",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 30.0, 210.0, 143.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 45.0, 219.0, 52.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.filewatcher",
									"numinlets" : 2,
									"id" : "obj-60",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 270.0, 290.0, 142.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 291.0, 91.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.filesaver",
									"numinlets" : 2,
									"id" : "obj-61",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 270.0, 270.0, 142.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 273.0, 79.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.autosize%",
									"numinlets" : 2,
									"id" : "obj-62",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 780.0, 230.0, 142.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 739.0, 230.0, 89.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.autoscale",
									"numinlets" : 2,
									"id" : "obj-63",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 270.0, 230.0, 142.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 237.0, 84.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.pwindow.mouse",
									"numinlets" : 2,
									"id" : "obj-64",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 780.0, 310.0, 142.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 740.0, 307.0, 117.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.pi",
									"numinlets" : 2,
									"id" : "obj-65",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 490.0, 270.0, 144.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 496.0, 273.0, 46.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.parameter.gain",
									"numinlets" : 2,
									"id" : "obj-66",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 30.0, 230.0, 142.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 45.0, 237.0, 115.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.autocrop%",
									"numinlets" : 2,
									"id" : "obj-67",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 780.0, 212.0, 142.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 739.0, 212.0, 91.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.ambimonitor2aed",
									"numinlets" : 2,
									"id" : "obj-68",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 630.0, 230.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 612.0, 237.0, 125.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.aed2ambimonitor",
									"numinlets" : 2,
									"id" : "obj-69",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 490.0, 230.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 496.0, 237.0, 125.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.absdiff",
									"numinlets" : 2,
									"id" : "obj-70",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 270.0, 210.0, 143.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 219.0, 70.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "\"component\" is a Jamoma nickname for a functionality used in one or more algorithms or modules, implemented as a patch abstraction rather than an external or javascript.",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-71",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 30.0, 80.0, 449.0, 31.0 ],
									"patching_rect" : [ 15.0, 74.0, 449.0, 31.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Some of the components are used for particular purposes in specific modules. Only components that might be of more general use are listed here.",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-72",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 30.0, 110.0, 405.0, 31.0 ],
									"patching_rect" : [ 15.0, 104.0, 405.0, 31.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma components",
									"numinlets" : 1,
									"id" : "obj-73",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 30.0, 20.0, 211.0, 28.0 ],
									"patching_rect" : [ 14.0, 23.0, 211.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Overview of components used in Jamoma",
									"numinlets" : 1,
									"id" : "obj-74",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 30.0, 50.0, 280.0, 19.0 ],
									"patching_rect" : [ 15.0, 49.0, 280.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"id" : "obj-75",
									"numoutlets" : 0,
									"presentation_rect" : [ 20.0, 10.0, 292.0, 63.0 ],
									"patching_rect" : [ 8.0, 7.0, 292.0, 63.0 ],
									"presentation" : 1,
									"rounded" : 15
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-114", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-114", 0 ],
									"destination" : [ "obj-115", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [ 56.5, 435.0, 29.0, 435.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [ 56.5, 417.0, 29.0, 417.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [ 56.5, 402.0, 29.0, 402.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [ 56.5, 453.0, 29.0, 453.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [ 56.5, 471.0, 30.0, 471.0, 30.0, 477.0, 29.0, 477.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [ 29.0, 495.0, 42.0, 495.0, 42.0, 465.0, 56.5, 465.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 1,
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
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p externals",
					"numinlets" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 255.0, 74.0, 18.0 ],
					"fontsize" : 9.873845,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 277.0, 44.0, 650.0, 467.0 ],
						"bglocked" : 0,
						"defrect" : [ 277.0, 44.0, 650.0, 467.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.dataspace",
									"numinlets" : 2,
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 20.0, 120.0, 130.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 130.0, 130.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tt.filter~",
									"numinlets" : 2,
									"id" : "obj-61",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 320.0, 240.0, 53.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 320.0, 250.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.meter~",
									"numinlets" : 2,
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 320.0, 140.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 320.0, 150.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tt.overdrive~",
									"numinlets" : 2,
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 320.0, 320.0, 78.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 320.0, 290.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tt.limiter~",
									"numinlets" : 2,
									"id" : "obj-59",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 320.0, 280.0, 62.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 320.0, 270.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tt.dcblock~",
									"numinlets" : 2,
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 320.0, 200.0, 69.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 320.0, 210.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tt.balance~",
									"numinlets" : 2,
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 320.0, 180.0, 70.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 320.0, 190.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.time",
									"numinlets" : 2,
									"id" : "obj-58",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 470.0, 340.0, 133.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 480.0, 430.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.phasor~",
									"numinlets" : 2,
									"id" : "obj-57",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 470.0, 320.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 480.0, 410.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.metro",
									"numinlets" : 2,
									"id" : "obj-56",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 470.0, 300.0, 130.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 480.0, 390.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Timing",
									"numinlets" : 1,
									"id" : "obj-55",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 470.0, 260.0, 119.0, 28.0 ],
									"patching_rect" : [ 460.0, 350.0, 119.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.envexp",
									"numinlets" : 2,
									"id" : "obj-54",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 320.0, 120.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 320.0, 130.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.map",
									"numinlets" : 2,
									"id" : "obj-53",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 170.0, 260.0, 133.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.0, 230.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"numinlets" : 1,
									"id" : "obj-115",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 390.0, 70.0, 67.0, 19.0 ],
									"fontsize" : 10.0,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"numinlets" : 2,
									"id" : "obj-114",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 50.0, 35.0, 17.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-112",
									"hidden" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 390.0, 20.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.receive~",
									"numinlets" : 2,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 20.0, 341.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 350.0, 130.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.send~",
									"numinlets" : 2,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 20.0, 421.0, 130.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 430.0, 130.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.mkdir",
									"numinlets" : 2,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 470.0, 210.0, 130.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 480.0, 300.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Other",
									"numinlets" : 1,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 470.0, 170.0, 117.0, 28.0 ],
									"patching_rect" : [ 466.0, 261.0, 117.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.stats",
									"numinlets" : 2,
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 170.0, 360.0, 133.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.0, 310.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.cubic_interpolate",
									"numinlets" : 2,
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 170.0, 180.0, 133.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.0, 150.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.delta",
									"numinlets" : 2,
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 170.0, 200.0, 130.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.0, 170.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.gang",
									"numinlets" : 2,
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 170.0, 240.0, 130.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.0, 210.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"numinlets" : 1,
									"id" : "obj-14",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 10.0, 530.0, 74.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"numinlets" : 1,
									"id" : "obj-15",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 10.0, 550.0, 49.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma Core",
									"numinlets" : 1,
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 20.0, 80.0, 134.0, 28.0 ],
									"patching_rect" : [ 25.0, 92.0, 134.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.send",
									"numinlets" : 2,
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 20.0, 401.0, 130.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 410.0, 130.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.return",
									"numinlets" : 2,
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 20.0, 381.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 390.0, 130.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.remote",
									"numinlets" : 2,
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 20.0, 361.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 370.0, 130.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.receive",
									"numinlets" : 2,
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 20.0, 321.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 330.0, 130.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.ramp",
									"numinlets" : 2,
									"id" : "obj-24",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 20.0, 301.0, 133.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 310.0, 130.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.parameter",
									"numinlets" : 2,
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 20.0, 281.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 290.0, 130.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.out~",
									"numinlets" : 2,
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 20.0, 261.0, 133.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 270.0, 130.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.out",
									"numinlets" : 2,
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 20.0, 240.0, 133.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 250.0, 130.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.message",
									"numinlets" : 2,
									"id" : "obj-28",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 20.0, 220.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 230.0, 130.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.init",
									"numinlets" : 2,
									"id" : "obj-29",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 20.0, 200.0, 130.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 210.0, 130.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.in",
									"numinlets" : 2,
									"id" : "obj-30",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 20.0, 160.0, 133.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 170.0, 130.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.in~",
									"numinlets" : 2,
									"id" : "obj-31",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 20.0, 180.0, 133.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 190.0, 130.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.hub",
									"numinlets" : 2,
									"id" : "obj-32",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 20.0, 140.0, 130.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 150.0, 130.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video",
									"numinlets" : 1,
									"id" : "obj-33",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 470.0, 80.0, 115.0, 28.0 ],
									"patching_rect" : [ 466.0, 92.0, 115.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.sum%",
									"numinlets" : 2,
									"id" : "obj-34",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 470.0, 120.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 480.0, 130.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma externals",
									"numinlets" : 1,
									"id" : "obj-35",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 20.0, 20.0, 196.0, 28.0 ],
									"patching_rect" : [ 20.0, 20.0, 196.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Overview of externals included in the Jamoma distribution.",
									"numinlets" : 1,
									"id" : "obj-36",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 20.0, 50.0, 305.0, 19.0 ],
									"patching_rect" : [ 20.0, 50.0, 305.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"id" : "obj-37",
									"numoutlets" : 0,
									"presentation_rect" : [ 10.0, 10.0, 360.0, 60.0 ],
									"patching_rect" : [ 10.0, 10.0, 324.0, 69.904106 ],
									"presentation" : 1,
									"rounded" : 15
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Control",
									"numinlets" : 1,
									"id" : "obj-38",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 170.0, 80.0, 116.0, 28.0 ],
									"patching_rect" : [ 172.0, 92.0, 116.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio",
									"numinlets" : 1,
									"id" : "obj-39",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 320.0, 80.0, 117.0, 28.0 ],
									"patching_rect" : [ 319.0, 92.0, 117.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"numinlets" : 1,
									"id" : "obj-40",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 510.0, 74.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"numinlets" : 1,
									"id" : "obj-41",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 530.0, 49.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.equals",
									"numinlets" : 2,
									"id" : "obj-42",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 170.0, 220.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.0, 190.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.oscroute",
									"numinlets" : 2,
									"id" : "obj-43",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 170.0, 280.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.0, 250.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.route",
									"numinlets" : 2,
									"id" : "obj-45",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 170.0, 340.0, 133.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.0, 290.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.pass",
									"numinlets" : 2,
									"id" : "obj-46",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 170.0, 300.0, 130.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.0, 270.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.change",
									"numinlets" : 2,
									"id" : "obj-47",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 170.0, 140.0, 132.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.0, 130.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tt.degrade~",
									"numinlets" : 2,
									"id" : "obj-50",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 320.0, 220.0, 72.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 320.0, 230.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tt.xfade~",
									"numinlets" : 2,
									"id" : "obj-52",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 320.0, 320.0, 59.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 320.0, 310.0, 140.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-114", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-114", 0 ],
									"destination" : [ "obj-115", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 1,
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
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p examples",
					"numinlets" : 1,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 195.0, 74.0, 18.0 ],
					"fontsize" : 9.873845,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 282.0, 44.0, 651.0, 323.0 ],
						"bglocked" : 0,
						"defrect" : [ 282.0, 44.0, 651.0, 323.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"numinlets" : 1,
									"id" : "obj-115",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 387.0, 74.0, 67.0, 19.0 ],
									"fontsize" : 10.0,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"numinlets" : 2,
									"id" : "obj-114",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 387.0, 50.0, 35.0, 17.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-112",
									"hidden" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 387.0, 20.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Communication in Jamoma",
									"numinlets" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 440.0, 110.0, 195.0, 19.0 ],
									"patching_rect" : [ 437.0, 118.0, 195.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Mapping example",
									"numinlets" : 1,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 440.0, 250.0, 194.0, 19.0 ],
									"patching_rect" : [ 437.0, 249.0, 194.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma and Pluggo",
									"numinlets" : 1,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 30.0, 100.0, 196.0, 19.0 ],
									"patching_rect" : [ 28.0, 118.0, 196.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video",
									"numinlets" : 1,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 230.0, 20.0, 193.0, 28.0 ],
									"patching_rect" : [ 230.0, 20.0, 193.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "WindowShade.mxt",
									"numinlets" : 2,
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 440.0, 80.0, 174.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 437.0, 84.0, 103.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "wildcard_demo.mxt",
									"numinlets" : 2,
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 440.0, 160.0, 174.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 437.0, 159.0, 108.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Video_Example.mxt",
									"numinlets" : 2,
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 230.0, 60.0, 172.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 229.0, 60.0, 109.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "teatrix.mxt",
									"numinlets" : 2,
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 440.0, 280.0, 170.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 437.0, 267.0, 64.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "simpleRecorder~.mxt",
									"numinlets" : 2,
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 30.0, 60.0, 172.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 28.0, 60.0, 117.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "separate-interface.mxt",
									"numinlets" : 2,
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 440.0, 140.0, 173.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 437.0, 137.0, 124.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Scripting_Example.mxt",
									"numinlets" : 2,
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 440.0, 60.0, 173.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 437.0, 60.0, 126.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Pluggo_Simple.mxt",
									"numinlets" : 2,
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 30.0, 130.0, 172.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 28.0, 137.0, 106.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Pluggo_Complex.mxt",
									"numinlets" : 2,
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 30.0, 150.0, 172.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 28.0, 159.0, 115.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.qlist.example.mxt",
									"numinlets" : 2,
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 440.0, 220.0, 173.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 437.0, 223.0, 128.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.pattr.example.mxt",
									"numinlets" : 2,
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 440.0, 180.0, 173.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 437.0, 181.0, 133.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend load",
									"numinlets" : 1,
									"id" : "obj-16",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 283.0, 313.0, 73.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.pattr.communication.mxt",
									"numinlets" : 2,
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 440.0, 200.0, 173.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 437.0, 202.0, 166.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"numinlets" : 1,
									"id" : "obj-18",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 283.0, 334.0, 49.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Control",
									"numinlets" : 1,
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 440.0, 20.0, 195.0, 28.0 ],
									"patching_rect" : [ 440.0, 20.0, 195.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio",
									"numinlets" : 1,
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 30.0, 20.0, 196.0, 28.0 ],
									"patching_rect" : [ 30.0, 20.0, 196.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-114", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-114", 0 ],
									"destination" : [ "obj-115", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
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
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p modules",
					"numinlets" : 1,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 135.0, 74.0, 18.0 ],
					"fontsize" : 9.873845,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 278.0, 44.0, 1050.0, 677.0 ],
						"bglocked" : 0,
						"defrect" : [ 278.0, 44.0, 1050.0, 677.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.textwriter",
									"numinlets" : 2,
									"id" : "obj-113",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 640.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 554.0, 90.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"numinlets" : 1,
									"id" : "obj-115",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 323.0, 53.0, 67.0, 19.0 ],
									"fontsize" : 10.0,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"numinlets" : 2,
									"id" : "obj-114",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 323.0, 32.0, 35.0, 17.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-112",
									"hidden" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 323.0, 2.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.multi.aux~",
									"numinlets" : 2,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 220.0, 360.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 243.0, 303.0, 113.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.multi.input~",
									"numinlets" : 2,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 220.0, 340.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 243.0, 286.0, 122.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.tremolo~",
									"numinlets" : 2,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 10.0, 480.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.0, 414.0, 85.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.phidgets.interfacekit",
									"numinlets" : 2,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 320.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 882.0, 285.0, 141.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.phidgets.accelerometer",
									"numinlets" : 2,
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 300.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 268.0, 155.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.condition",
									"numinlets" : 2,
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 620.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 536.0, 83.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.messages",
									"numinlets" : 2,
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 180.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 165.0, 87.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.uc-33",
									"numinlets" : 2,
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 340.0, 160.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 302.0, 66.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.gl.edgeblend%",
									"numinlets" : 2,
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 640.0, 160.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 664.0, 139.0, 113.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.gl.text2d%",
									"numinlets" : 2,
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 640.0, 220.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 664.0, 190.0, 93.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.movie_player%",
									"numinlets" : 2,
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 430.0, 180.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 158.0, 116.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.gl.td.rota%",
									"numinlets" : 2,
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 640.0, 200.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 664.0, 173.0, 95.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.gl.alphamixer%",
									"numinlets" : 2,
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 640.0, 140.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 664.0, 122.0, 119.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.cue_trigger",
									"numinlets" : 2,
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 460.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 399.0, 95.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.multicast",
									"numinlets" : 2,
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 260.0, 160.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 233.0, 83.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.vst~",
									"numinlets" : 2,
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 10.0, 620.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 41.0, 535.0, 61.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.vst~",
									"numinlets" : 2,
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 10.0, 500.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.0, 431.0, 61.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.mouse.gdif",
									"numinlets" : 2,
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 240.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 216.0, 93.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.bcf2000",
									"numinlets" : 2,
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 140.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 131.0, 78.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.rolloff~",
									"numinlets" : 2,
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 220.0, 160.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 243.0, 148.0, 95.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.blur%",
									"numinlets" : 2,
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 430.0, 260.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 216.0, 68.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.multidelay~",
									"numinlets" : 2,
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 10.0, 420.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.0, 363.0, 129.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Others",
									"numinlets" : 1,
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 640.0, 250.0, 180.0, 19.0 ],
									"patching_rect" : [ 642.0, 217.0, 155.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.background%",
									"numinlets" : 2,
									"id" : "obj-24",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 640.0, 300.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 664.0, 250.0, 107.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.similarity%",
									"numinlets" : 2,
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 640.0, 280.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 664.0, 233.0, 94.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.motiongram%",
									"numinlets" : 2,
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 640.0, 340.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 664.0, 284.0, 109.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.file_browser",
									"numinlets" : 2,
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 600.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 517.0, 99.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.noise~",
									"numinlets" : 2,
									"id" : "obj-28",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 10.0, 600.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 41.0, 518.0, 72.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sine~",
									"numinlets" : 2,
									"id" : "obj-29",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 10.0, 580.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 41.0, 501.0, 66.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.fluidsynth~",
									"numinlets" : 2,
									"id" : "obj-30",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 10.0, 560.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 41.0, 484.0, 95.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Synths",
									"numinlets" : 1,
									"id" : "obj-31",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 10.0, 530.0, 185.0, 19.0 ],
									"patching_rect" : [ 17.0, 463.0, 197.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.gl.videoplane%",
									"numinlets" : 2,
									"id" : "obj-32",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 640.0, 180.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 664.0, 156.0, 115.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "OpenGL",
									"numinlets" : 1,
									"id" : "obj-33",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 640.0, 110.0, 180.0, 19.0 ],
									"patching_rect" : [ 642.0, 108.0, 192.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.palette",
									"numinlets" : 2,
									"id" : "obj-34",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 430.0, 640.0, 160.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 519.0, 72.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.colorpicker",
									"numinlets" : 2,
									"id" : "obj-35",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 430.0, 620.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 501.0, 92.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Colors",
									"numinlets" : 1,
									"id" : "obj-36",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 430.0, 590.0, 175.0, 19.0 ],
									"patching_rect" : [ 450.0, 486.0, 197.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.yfade%",
									"numinlets" : 2,
									"id" : "obj-37",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 430.0, 520.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 427.0, 76.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.record%",
									"numinlets" : 2,
									"id" : "obj-38",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 430.0, 160.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 141.0, 80.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.keyscreen%",
									"numinlets" : 2,
									"id" : "obj-39",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 430.0, 560.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 461.0, 99.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.chromakey%",
									"numinlets" : 2,
									"id" : "obj-40",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 430.0, 540.0, 164.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 444.0, 106.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.wacom",
									"numinlets" : 2,
									"id" : "obj-41",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 360.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 319.0, 73.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.trig_mapper",
									"numinlets" : 2,
									"id" : "obj-42",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 520.0, 164.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 450.0, 100.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.equalizer~",
									"numinlets" : 2,
									"id" : "obj-43",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 10.0, 380.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.0, 329.0, 91.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.cont_mapper",
									"numinlets" : 2,
									"id" : "obj-44",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 500.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 433.0, 104.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.echo~",
									"numinlets" : 2,
									"id" : "obj-45",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 10.0, 340.0, 160.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.0, 295.0, 69.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.speaker.setup",
									"numinlets" : 2,
									"id" : "obj-46",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 220.0, 220.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 243.0, 191.0, 128.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Loudspeaker setup and correction",
									"numinlets" : 1,
									"id" : "obj-47",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 220.0, 190.0, 195.0, 19.0 ],
									"patching_rect" : [ 217.0, 172.0, 195.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"numinlets" : 1,
									"id" : "obj-48",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 358.0, 438.0, 74.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"numinlets" : 1,
									"id" : "obj-49",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 358.0, 462.0, 49.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio Spatialisation",
									"numinlets" : 1,
									"id" : "obj-50",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 220.0, 80.0, 200.0, 28.0 ],
									"patching_rect" : [ 207.0, 78.0, 200.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "General modules",
									"numinlets" : 1,
									"id" : "obj-51",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 220.0, 110.0, 195.0, 19.0 ],
									"patching_rect" : [ 217.0, 108.0, 195.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.ambi.adjust~",
									"numinlets" : 2,
									"id" : "obj-52",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 220.0, 480.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 243.0, 402.0, 125.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.output~",
									"numinlets" : 2,
									"id" : "obj-53",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 220.0, 380.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 243.0, 320.0, 99.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.multi.out~",
									"numinlets" : 2,
									"id" : "obj-54",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 220.0, 320.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 243.0, 268.0, 111.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.multi.in~",
									"numinlets" : 2,
									"id" : "obj-55",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 220.0, 300.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 243.0, 251.0, 104.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Multicable",
									"numinlets" : 1,
									"id" : "obj-56",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 220.0, 270.0, 184.0, 19.0 ],
									"patching_rect" : [ 217.0, 234.0, 196.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ambisonics",
									"numinlets" : 1,
									"id" : "obj-57",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 220.0, 410.0, 183.0, 19.0 ],
									"patching_rect" : [ 217.0, 351.0, 195.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.speaker.delay~",
									"numinlets" : 2,
									"id" : "obj-58",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 220.0, 240.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 243.0, 208.0, 136.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.doppler~",
									"numinlets" : 2,
									"id" : "obj-59",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 220.0, 140.0, 164.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 243.0, 131.0, 105.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.ambi.decode~",
									"numinlets" : 2,
									"id" : "obj-60",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 220.0, 460.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 243.0, 385.0, 131.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.ambi.encodeM~",
									"numinlets" : 2,
									"id" : "obj-61",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 220.0, 440.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 243.0, 368.0, 138.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.scope~",
									"numinlets" : 2,
									"id" : "obj-62",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 10.0, 240.0, 160.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.0, 214.0, 74.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.avg4%",
									"numinlets" : 2,
									"id" : "obj-63",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 430.0, 240.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 199.0, 73.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.fluoride%",
									"numinlets" : 2,
									"id" : "obj-64",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 430.0, 340.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 284.0, 86.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.emboss%",
									"numinlets" : 2,
									"id" : "obj-65",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 430.0, 320.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 267.0, 87.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"numinlets" : 1,
									"id" : "obj-66",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 159.0, 540.0, 74.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"numinlets" : 1,
									"id" : "obj-67",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 159.0, 564.0, 49.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Compositing",
									"numinlets" : 1,
									"id" : "obj-68",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 430.0, 450.0, 183.0, 19.0 ],
									"patching_rect" : [ 450.0, 378.0, 195.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Filters",
									"numinlets" : 1,
									"id" : "obj-69",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 430.0, 210.0, 180.0, 19.0 ],
									"patching_rect" : [ 450.0, 183.0, 192.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video I/O",
									"numinlets" : 1,
									"id" : "obj-70",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 430.0, 110.0, 180.0, 19.0 ],
									"patching_rect" : [ 450.0, 108.0, 192.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.xfade%",
									"numinlets" : 2,
									"id" : "obj-71",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 430.0, 500.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 410.0, 76.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.input%",
									"numinlets" : 2,
									"id" : "obj-72",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 430.0, 140.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 124.0, 74.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.edge%",
									"numinlets" : 2,
									"id" : "obj-73",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 430.0, 300.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 250.0, 73.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.plur%",
									"numinlets" : 2,
									"id" : "obj-74",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 430.0, 400.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 335.0, 68.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Others",
									"numinlets" : 1,
									"id" : "obj-75",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 850.0, 550.0, 155.0, 19.0 ],
									"patching_rect" : [ 857.0, 477.0, 155.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Controlling Jamoma",
									"numinlets" : 1,
									"id" : "obj-76",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 850.0, 390.0, 158.0, 19.0 ],
									"patching_rect" : [ 857.0, 344.0, 158.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.midiin",
									"numinlets" : 2,
									"id" : "obj-77",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 200.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 182.0, 68.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Data I/O",
									"numinlets" : 1,
									"id" : "obj-78",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 850.0, 110.0, 155.0, 19.0 ],
									"patching_rect" : [ 857.0, 108.0, 155.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.mouse",
									"numinlets" : 2,
									"id" : "obj-79",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 220.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 199.0, 71.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.orsize%",
									"numinlets" : 2,
									"id" : "obj-80",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 430.0, 380.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 318.0, 78.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Control",
									"numinlets" : 1,
									"id" : "obj-81",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 850.0, 80.0, 157.0, 28.0 ],
									"patching_rect" : [ 857.0, 78.0, 157.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video",
									"numinlets" : 1,
									"id" : "obj-82",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 430.0, 80.0, 184.0, 28.0 ],
									"patching_rect" : [ 450.0, 78.0, 193.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio FX",
									"numinlets" : 1,
									"id" : "obj-83",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 10.0, 270.0, 185.0, 19.0 ],
									"patching_rect" : [ 17.0, 242.0, 196.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Mixing and Metering",
									"numinlets" : 1,
									"id" : "obj-84",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 10.0, 190.0, 182.0, 19.0 ],
									"patching_rect" : [ 17.0, 172.0, 194.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio I/O",
									"numinlets" : 1,
									"id" : "obj-85",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 10.0, 110.0, 184.0, 19.0 ],
									"patching_rect" : [ 15.0, 105.0, 196.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio",
									"numinlets" : 1,
									"id" : "obj-86",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 10.0, 80.0, 187.0, 28.0 ],
									"patching_rect" : [ 15.0, 75.0, 196.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.oscnet",
									"numinlets" : 2,
									"id" : "obj-87",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 280.0, 160.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 250.0, 70.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.mblur%",
									"numinlets" : 2,
									"id" : "obj-88",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 430.0, 360.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 301.0, 78.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.mapper",
									"numinlets" : 2,
									"id" : "obj-89",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 480.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 416.0, 76.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.hi",
									"numinlets" : 2,
									"id" : "obj-90",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 160.0, 164.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 148.0, 47.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.limiter~",
									"numinlets" : 2,
									"id" : "obj-91",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 10.0, 400.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.0, 346.0, 78.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.input~",
									"numinlets" : 2,
									"id" : "obj-92",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 10.0, 140.0, 160.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 133.0, 71.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.wake%",
									"numinlets" : 2,
									"id" : "obj-93",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 430.0, 420.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 352.0, 76.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.saturation~",
									"numinlets" : 2,
									"id" : "obj-94",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 10.0, 460.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.0, 397.0, 98.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.degrade~",
									"numinlets" : 2,
									"id" : "obj-95",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 10.0, 300.0, 160.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.0, 261.0, 86.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.qmetro",
									"numinlets" : 2,
									"id" : "obj-96",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 580.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 499.0, 74.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.output~",
									"numinlets" : 2,
									"id" : "obj-97",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 10.0, 160.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 150.0, 79.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.control",
									"numinlets" : 2,
									"id" : "obj-98",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 420.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 365.0, 72.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.delay~",
									"numinlets" : 2,
									"id" : "obj-99",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 10.0, 320.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.0, 278.0, 73.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.filter~",
									"numinlets" : 2,
									"id" : "obj-100",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 10.0, 360.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.0, 312.0, 69.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.cuelist",
									"numinlets" : 2,
									"id" : "obj-101",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 850.0, 440.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 382.0, 70.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.op%",
									"numinlets" : 2,
									"id" : "obj-102",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 430.0, 480.0, 163.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 393.0, 61.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.noisegate~",
									"numinlets" : 2,
									"id" : "obj-103",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 10.0, 440.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.0, 380.0, 94.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.brcosa%",
									"numinlets" : 2,
									"id" : "obj-104",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 430.0, 280.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 233.0, 81.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.motion%",
									"numinlets" : 2,
									"id" : "obj-105",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 640.0, 320.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 664.0, 267.0, 83.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.crossfade~",
									"numinlets" : 2,
									"id" : "obj-106",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"presentation_rect" : [ 10.0, 220.0, 162.0, 17.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.0, 197.0, 93.0, 17.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"numinlets" : 1,
									"id" : "obj-107",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 715.0, 484.0, 74.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"numinlets" : 1,
									"id" : "obj-108",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 715.0, 506.0, 49.0, 18.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma modules",
									"numinlets" : 1,
									"id" : "obj-109",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 20.0, 20.0, 197.0, 28.0 ],
									"patching_rect" : [ 15.0, 16.0, 197.0, 28.0 ],
									"fontsize" : 18.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Overview of modules",
									"numinlets" : 1,
									"id" : "obj-110",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 20.0, 50.0, 280.0, 19.0 ],
									"patching_rect" : [ 16.0, 42.0, 280.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"id" : "obj-111",
									"numoutlets" : 0,
									"presentation_rect" : [ 10.0, 10.0, 292.0, 63.0 ],
									"patching_rect" : [ 9.0, 0.0, 292.0, 63.0 ],
									"presentation" : 1,
									"rounded" : 15
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-114", 0 ],
									"destination" : [ "obj-115", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-114", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-92", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-106", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-95", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-99", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-100", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-103", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-94", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-96", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-87", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-90", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-101", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-98", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-102", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-104", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-105", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [ 473.0, 263.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-107", 0 ],
									"destination" : [ "obj-108", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-113", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
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
					"text" : "Jamoma",
					"numinlets" : 1,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"presentation_rect" : [ 20.0, 20.0, 189.0, 28.0 ],
					"patching_rect" : [ 10.0, 26.0, 189.0, 28.0 ],
					"fontsize" : 17.334082,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Overview of modules, examples, externals, javascripts and components",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"numinlets" : 1,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"presentation_rect" : [ 20.0, 50.0, 244.0, 31.0 ],
					"patching_rect" : [ 11.0, 52.0, 203.0, 31.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-8",
					"numoutlets" : 0,
					"presentation_rect" : [ 10.0, 10.0, 270.0, 80.0 ],
					"patching_rect" : [ 4.0, 10.0, 205.0, 72.0 ],
					"presentation" : 1,
					"rounded" : 15
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
