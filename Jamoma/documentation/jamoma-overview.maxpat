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
					"id" : "obj-13",
					"fontname" : "Verdana",
					"presentation_rect" : [ 60.0, 240.0, 130.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"text" : "Components",
					"patching_rect" : [ 30.0, 345.0, 100.0, 20.0 ],
					"fontsize" : 10.970939,
					"presentation" : 1,
					"outlettype" : [ "int", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"id" : "obj-12",
					"fontname" : "Verdana",
					"presentation_rect" : [ 60.0, 210.0, 130.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"text" : "Javascripts",
					"patching_rect" : [ 30.0, 285.0, 100.0, 20.0 ],
					"fontsize" : 10.970939,
					"presentation" : 1,
					"outlettype" : [ "int", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"id" : "obj-11",
					"fontname" : "Verdana",
					"presentation_rect" : [ 60.0, 180.0, 130.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"text" : "Externals",
					"patching_rect" : [ 30.0, 225.0, 100.0, 20.0 ],
					"fontsize" : 10.970939,
					"presentation" : 1,
					"outlettype" : [ "int", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"id" : "obj-10",
					"fontname" : "Verdana",
					"presentation_rect" : [ 60.0, 150.0, 130.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"text" : "Examples",
					"patching_rect" : [ 30.0, 165.0, 100.0, 20.0 ],
					"fontsize" : 10.970939,
					"presentation" : 1,
					"outlettype" : [ "int", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"id" : "obj-9",
					"fontname" : "Verdana",
					"presentation_rect" : [ 60.0, 120.0, 130.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"text" : "Modules",
					"patching_rect" : [ 30.0, 105.0, 100.0, 20.0 ],
					"fontsize" : 10.970939,
					"presentation" : 1,
					"outlettype" : [ "int", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p javascripts",
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 315.0, 75.0, 18.0 ],
					"fontsize" : 9.873845,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 279.0, 44.0, 323.0, 282.0 ],
						"bglocked" : 0,
						"defrect" : [ 279.0, 44.0, 323.0, 282.0 ],
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
									"id" : "obj-115",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 387.0, 74.0, 67.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"id" : "obj-114",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 387.0, 50.0, 35.0, 17.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-112",
									"hidden" : 1,
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 387.0, 20.0, 25.0, 25.0 ],
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"id" : "obj-3",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 243.0, 260.0, 74.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"id" : "obj-4",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 243.0, 284.0, 49.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.jsui_multigain.js",
									"id" : "obj-6",
									"fontname" : "Verdana",
									"presentation_rect" : [ 170.0, 190.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 180.0, 170.0, 118.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Some of the scripts are used for particular purposes in specific modules or components. Only javascripts that might be of more general use are listed here.",
									"linecount" : 2,
									"presentation_linecount" : 3,
									"id" : "obj-7",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 20.0, 90.0, 283.0, 42.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 90.0, 408.0, 30.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.js_systeminfo.js",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 190.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 20.0, 190.0, 117.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma javascripts",
									"id" : "obj-10",
									"fontname" : "Verdana",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation_rect" : [ 20.0, 20.0, 189.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 20.0, 189.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Overview of javascripts used in Jamoma",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation_rect" : [ 20.0, 50.0, 277.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 50.0, 277.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"id" : "obj-12",
									"presentation_rect" : [ 10.0, 10.0, 292.0, 63.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
									"patching_rect" : [ 10.0, 10.0, 292.0, 63.0 ],
									"presentation" : 1,
									"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "JSUI",
									"id" : "obj-13",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 170.0, 150.0, 133.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 180.0, 130.0, 189.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "JS",
									"id" : "obj-14",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 20.0, 154.0, 113.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 130.0, 113.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-114", 0 ],
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
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 375.0, 78.0, 18.0 ],
					"fontsize" : 9.873845,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 280.0, 44.0, 1094.0, 572.0 ],
						"bglocked" : 0,
						"defrect" : [ 280.0, 44.0, 1094.0, 572.0 ],
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
									"id" : "obj-115",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 668.0, 77.0, 67.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"id" : "obj-114",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 668.0, 53.0, 35.0, 17.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-112",
									"hidden" : 1,
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 668.0, 23.0, 25.0, 25.0 ],
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.crop%",
									"id" : "obj-1",
									"fontname" : "Verdana",
									"presentation_rect" : [ 780.0, 290.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 740.0, 288.0, 68.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.atomidi",
									"id" : "obj-2",
									"fontname" : "Verdana",
									"presentation_rect" : [ 270.0, 450.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 436.0, 73.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.miditoa",
									"id" : "obj-3",
									"fontname" : "Verdana",
									"presentation_rect" : [ 270.0, 430.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 418.0, 73.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.ambimonitor2xyz",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"presentation_rect" : [ 630.0, 250.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 612.0, 255.0, 122.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.xyz2ambimonitor",
									"id" : "obj-5",
									"fontname" : "Verdana",
									"presentation_rect" : [ 490.0, 250.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 496.0, 255.0, 122.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.sur.ambi2UHJ~",
									"id" : "obj-6",
									"fontname" : "Verdana",
									"presentation_rect" : [ 780.0, 500.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 743.0, 462.0, 113.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.sur.UHJ2ambi~",
									"id" : "obj-7",
									"fontname" : "Verdana",
									"presentation_rect" : [ 780.0, 520.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 743.0, 479.0, 113.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ambisonics Converter:",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 780.0, 470.0, 121.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 739.0, 447.0, 121.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.modules_dumper",
									"id" : "obj-9",
									"fontname" : "Verdana",
									"presentation_rect" : [ 30.0, 410.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 47.0, 384.0, 126.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.parameters_dumper",
									"id" : "obj-10",
									"fontname" : "Verdana",
									"presentation_rect" : [ 30.0, 430.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 47.0, 401.0, 138.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.messages_dumper",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"presentation_rect" : [ 30.0, 450.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 47.0, 418.0, 130.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.returns_dumper",
									"id" : "obj-12",
									"fontname" : "Verdana",
									"presentation_rect" : [ 30.0, 470.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 47.0, 436.0, 119.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-13",
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 20.0, 480.0, 15.0, 15.0 ],
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.attributes_dumper",
									"id" : "obj-14",
									"fontname" : "Verdana",
									"presentation_rect" : [ 30.0, 490.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 47.0, 453.0, 129.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.all_dumper",
									"id" : "obj-15",
									"fontname" : "Verdana",
									"presentation_rect" : [ 30.0, 510.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 47.0, 470.0, 92.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Namespace analysis",
									"id" : "obj-16",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 30.0, 370.0, 210.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 28.0, 355.0, 210.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.cpu_timer",
									"id" : "obj-17",
									"fontname" : "Verdana",
									"presentation_rect" : [ 270.0, 250.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 255.0, 86.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.numberslider",
									"id" : "obj-18",
									"fontname" : "Verdana",
									"presentation_rect" : [ 490.0, 380.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 497.0, 368.0, 101.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.spray%",
									"id" : "obj-19",
									"fontname" : "Verdana",
									"presentation_rect" : [ 780.0, 350.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 740.0, 347.0, 74.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.float2char%",
									"id" : "obj-20",
									"fontname" : "Verdana",
									"presentation_rect" : [ 920.0, 270.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 834.0, 269.0, 97.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.char2float%",
									"id" : "obj-21",
									"fontname" : "Verdana",
									"presentation_rect" : [ 780.0, 269.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 739.0, 269.0, 97.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jitter related things:",
									"id" : "obj-22",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 780.0, 180.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 732.0, 187.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video",
									"id" : "obj-23",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 780.0, 150.0, 164.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 732.0, 157.0, 164.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.list2parameter",
									"id" : "obj-24",
									"fontname" : "Verdana",
									"presentation_rect" : [ 270.0, 350.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 345.0, 109.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.checkplanes%",
									"id" : "obj-25",
									"fontname" : "Verdana",
									"presentation_rect" : [ 780.0, 250.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 739.0, 249.0, 107.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.luma2rgb%",
									"id" : "obj-26",
									"fontname" : "Verdana",
									"presentation_rect" : [ 920.0, 330.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 828.0, 327.0, 94.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.rgb2luma%",
									"id" : "obj-27",
									"fontname" : "Verdana",
									"presentation_rect" : [ 780.0, 330.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 740.0, 327.0, 94.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.vtext",
									"id" : "obj-28",
									"fontname" : "Verdana",
									"presentation_rect" : [ 490.0, 400.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 497.0, 386.0, 62.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.dbap",
									"id" : "obj-29",
									"fontname" : "Verdana",
									"presentation_rect" : [ 780.0, 440.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 743.0, 425.0, 61.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Distance based amplitude panning:",
									"id" : "obj-30",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 780.0, 410.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 737.0, 409.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Spatialisation",
									"id" : "obj-31",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 780.0, 380.0, 164.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 738.0, 383.0, 164.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.init",
									"id" : "obj-32",
									"fontname" : "Verdana",
									"presentation_rect" : [ 270.0, 310.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 309.0, 52.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.textslider",
									"id" : "obj-33",
									"fontname" : "Verdana",
									"presentation_rect" : [ 490.0, 360.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 497.0, 349.0, 83.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "LCD-based widgets:",
									"id" : "obj-34",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 490.0, 330.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 490.0, 327.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Widgets",
									"id" : "obj-35",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 490.0, 300.0, 164.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 490.0, 297.0, 164.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Geometric convertions:",
									"id" : "obj-36",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 490.0, 180.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 489.0, 187.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"id" : "obj-37",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 662.0, 363.0, 74.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"id" : "obj-38",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 662.0, 387.0, 49.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.deg2rad",
									"id" : "obj-39",
									"fontname" : "Verdana",
									"presentation_rect" : [ 630.0, 210.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 570.0, 219.0, 77.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.rad2deg",
									"id" : "obj-40",
									"fontname" : "Verdana",
									"presentation_rect" : [ 490.0, 210.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 496.0, 219.0, 77.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Geometry",
									"id" : "obj-41",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 490.0, 150.0, 164.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 489.0, 157.0, 164.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.thru~",
									"id" : "obj-42",
									"fontname" : "Verdana",
									"presentation_rect" : [ 270.0, 410.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 399.0, 65.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.multi.out~",
									"id" : "obj-43",
									"fontname" : "Verdana",
									"presentation_rect" : [ 490.0, 480.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 497.0, 452.0, 89.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.multi.in~",
									"id" : "obj-44",
									"fontname" : "Verdana",
									"presentation_rect" : [ 490.0, 460.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 497.0, 434.0, 82.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio multi cable",
									"id" : "obj-45",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 490.0, 430.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 490.0, 418.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.pluggo.configassist",
									"id" : "obj-46",
									"fontname" : "Verdana",
									"presentation_rect" : [ 30.0, 340.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 48.0, 334.0, 131.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"id" : "obj-47",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 146.0, 516.0, 74.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"id" : "obj-48",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 146.0, 540.0, 49.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Stuff that might come in handy:",
									"id" : "obj-49",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 270.0, 180.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 265.0, 187.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Utilities",
									"id" : "obj-50",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 270.0, 150.0, 210.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 265.0, 157.0, 210.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Turning modules into pluggos",
									"id" : "obj-51",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 30.0, 290.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 27.0, 294.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Pluggo",
									"id" : "obj-52",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 30.0, 260.0, 210.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 27.0, 264.0, 210.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Components required:",
									"id" : "obj-53",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 30.0, 180.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 24.0, 187.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Building new modules",
									"id" : "obj-54",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 30.0, 150.0, 210.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 24.0, 157.0, 210.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.thru",
									"id" : "obj-55",
									"fontname" : "Verdana",
									"presentation_rect" : [ 270.0, 390.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 381.0, 57.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.pp",
									"id" : "obj-56",
									"fontname" : "Verdana",
									"presentation_rect" : [ 30.0, 320.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 48.0, 316.0, 49.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.post",
									"id" : "obj-57",
									"fontname" : "Verdana",
									"presentation_rect" : [ 270.0, 370.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 363.0, 57.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.line",
									"id" : "obj-58",
									"fontname" : "Verdana",
									"presentation_rect" : [ 270.0, 330.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 327.0, 54.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.gui",
									"id" : "obj-59",
									"fontname" : "Verdana",
									"presentation_rect" : [ 30.0, 210.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 45.0, 219.0, 51.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.filewatcher",
									"id" : "obj-60",
									"fontname" : "Verdana",
									"presentation_rect" : [ 270.0, 290.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 291.0, 90.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.filesaver",
									"id" : "obj-61",
									"fontname" : "Verdana",
									"presentation_rect" : [ 270.0, 270.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 273.0, 78.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.autosize%",
									"id" : "obj-62",
									"fontname" : "Verdana",
									"presentation_rect" : [ 780.0, 230.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 739.0, 230.0, 88.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.autoscale",
									"id" : "obj-63",
									"fontname" : "Verdana",
									"presentation_rect" : [ 270.0, 230.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 237.0, 83.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.pwindow.mouse",
									"id" : "obj-64",
									"fontname" : "Verdana",
									"presentation_rect" : [ 780.0, 310.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 740.0, 307.0, 116.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.pi",
									"id" : "obj-65",
									"fontname" : "Verdana",
									"presentation_rect" : [ 490.0, 270.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 496.0, 273.0, 45.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.parameter.gain",
									"id" : "obj-66",
									"fontname" : "Verdana",
									"presentation_rect" : [ 30.0, 230.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 45.0, 237.0, 113.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.autocrop%",
									"id" : "obj-67",
									"fontname" : "Verdana",
									"presentation_rect" : [ 780.0, 212.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 739.0, 212.0, 90.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.ambimonitor2aed",
									"id" : "obj-68",
									"fontname" : "Verdana",
									"presentation_rect" : [ 630.0, 230.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 612.0, 237.0, 124.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.aed2ambimonitor",
									"id" : "obj-69",
									"fontname" : "Verdana",
									"presentation_rect" : [ 490.0, 230.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 496.0, 237.0, 124.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.absdiff",
									"id" : "obj-70",
									"fontname" : "Verdana",
									"presentation_rect" : [ 270.0, 210.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 300.0, 219.0, 69.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "\"component\" is a Jamoma nickname for a functionality used in one or more algorithms or modules, implemented as a patch abstraction rather than an external or javascript.",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"id" : "obj-71",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 30.0, 80.0, 444.0, 30.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 74.0, 444.0, 30.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Some of the components are used for particular purposes in specific modules. Only components that might be of more general use are listed here.",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"id" : "obj-72",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 30.0, 110.0, 400.0, 30.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 104.0, 400.0, 30.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma components",
									"id" : "obj-73",
									"fontname" : "Verdana",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation_rect" : [ 30.0, 20.0, 203.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 14.0, 23.0, 203.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Overview of components used in Jamoma",
									"id" : "obj-74",
									"fontname" : "Verdana",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation_rect" : [ 30.0, 50.0, 277.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 49.0, 277.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"id" : "obj-75",
									"presentation_rect" : [ 20.0, 10.0, 292.0, 63.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
									"patching_rect" : [ 8.0, 7.0, 292.0, 63.0 ],
									"presentation" : 1,
									"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"rounded" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-38", 0 ],
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
									"source" : [ "obj-5", 0 ],
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
									"source" : [ "obj-19", 0 ],
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
									"source" : [ "obj-21", 0 ],
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
									"source" : [ "obj-62", 0 ],
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
									"source" : [ "obj-27", 0 ],
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
									"source" : [ "obj-64", 0 ],
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
									"source" : [ "obj-69", 0 ],
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
									"source" : [ "obj-33", 0 ],
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
									"source" : [ "obj-40", 0 ],
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
									"source" : [ "obj-28", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-37", 0 ],
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
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-48", 0 ],
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
									"source" : [ "obj-70", 0 ],
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
									"source" : [ "obj-42", 0 ],
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
									"source" : [ "obj-43", 0 ],
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
									"source" : [ "obj-63", 0 ],
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
									"source" : [ "obj-60", 0 ],
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
									"source" : [ "obj-57", 0 ],
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
									"source" : [ "obj-56", 0 ],
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
									"source" : [ "obj-32", 0 ],
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
									"source" : [ "obj-15", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
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
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [ 56.5, 471.0, 30.0, 471.0, 30.0, 477.0, 29.0, 477.0 ]
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [ 56.5, 402.0, 29.0, 402.0 ]
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [ 56.5, 435.0, 29.0, 435.0 ]
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
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-114", 0 ],
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
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 255.0, 74.0, 18.0 ],
					"fontsize" : 9.873845,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 277.0, 44.0, 633.0, 454.0 ],
						"bglocked" : 0,
						"defrect" : [ 277.0, 44.0, 633.0, 454.0 ],
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
									"maxclass" : "message",
									"text" : "jcom.time",
									"id" : "obj-58",
									"fontname" : "Verdana",
									"presentation_rect" : [ 470.0, 340.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 470.0, 430.0, 60.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.phasor~",
									"id" : "obj-57",
									"fontname" : "Verdana",
									"presentation_rect" : [ 470.0, 320.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 470.0, 410.0, 80.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.metro",
									"id" : "obj-56",
									"fontname" : "Verdana",
									"presentation_rect" : [ 470.0, 300.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 470.0, 390.0, 68.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Timing",
									"id" : "obj-55",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 470.0, 260.0, 112.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 460.0, 350.0, 112.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.envexp",
									"id" : "obj-54",
									"fontname" : "Verdana",
									"presentation_rect" : [ 320.0, 120.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 330.0, 140.0, 74.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.map",
									"id" : "obj-53",
									"fontname" : "Verdana",
									"presentation_rect" : [ 170.0, 260.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 172.0, 280.0, 61.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"id" : "obj-115",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 387.0, 74.0, 67.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"id" : "obj-114",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 387.0, 50.0, 35.0, 17.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-112",
									"hidden" : 1,
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 387.0, 20.0, 25.0, 25.0 ],
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.receive~",
									"id" : "obj-1",
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 320.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 301.071442, 80.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.send~",
									"id" : "obj-2",
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 400.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 373.071442, 68.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.mkdir",
									"id" : "obj-3",
									"fontname" : "Verdana",
									"presentation_rect" : [ 470.0, 210.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 484.0, 302.0, 65.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Other",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 470.0, 170.0, 112.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 466.0, 261.0, 112.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.aed2xyz",
									"id" : "obj-5",
									"fontname" : "Verdana",
									"presentation_rect" : [ 170.0, 120.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 172.0, 130.0, 77.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.xyz2aed",
									"id" : "obj-6",
									"fontname" : "Verdana",
									"presentation_rect" : [ 170.0, 380.0, 132.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 172.0, 392.0, 77.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.colorspace",
									"id" : "obj-7",
									"fontname" : "Verdana",
									"presentation_rect" : [ 170.0, 160.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 172.0, 166.0, 89.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.stats",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"presentation_rect" : [ 170.0, 360.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 172.0, 374.0, 60.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.cubic_interpolate",
									"id" : "obj-9",
									"fontname" : "Verdana",
									"presentation_rect" : [ 170.0, 180.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 172.0, 184.0, 121.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.delta",
									"id" : "obj-12",
									"fontname" : "Verdana",
									"presentation_rect" : [ 170.0, 200.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 172.0, 202.0, 61.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.gang",
									"id" : "obj-13",
									"fontname" : "Verdana",
									"presentation_rect" : [ 170.0, 240.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 172.0, 256.0, 61.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"id" : "obj-14",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 69.0, 480.0, 74.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"id" : "obj-15",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 69.0, 500.0, 49.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma Core",
									"id" : "obj-16",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 20.0, 80.0, 129.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 25.0, 92.0, 129.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.send",
									"id" : "obj-20",
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 380.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 355.071442, 60.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.return",
									"id" : "obj-21",
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 360.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 337.071442, 67.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.remote",
									"id" : "obj-22",
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 340.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 319.071442, 72.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.receive",
									"id" : "obj-23",
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 300.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 283.071442, 72.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.ramp",
									"id" : "obj-24",
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 280.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 265.071442, 62.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.parameter",
									"id" : "obj-25",
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 260.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 247.071426, 88.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.out~",
									"id" : "obj-26",
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 240.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 224.071426, 60.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.out",
									"id" : "obj-27",
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 219.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 204.071426, 52.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.message",
									"id" : "obj-28",
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 199.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 184.071426, 80.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.init",
									"id" : "obj-29",
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 179.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 164.071426, 52.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.in",
									"id" : "obj-30",
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 139.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 124.071426, 45.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.in~",
									"id" : "obj-31",
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 159.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 144.071426, 53.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.hub",
									"id" : "obj-32",
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 119.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 37.0, 135.0, 55.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video",
									"id" : "obj-33",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 470.0, 80.0, 112.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 466.0, 92.0, 112.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.sum%",
									"id" : "obj-34",
									"fontname" : "Verdana",
									"presentation_rect" : [ 470.0, 120.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 484.0, 135.0, 68.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma externals",
									"id" : "obj-35",
									"fontname" : "Verdana",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation_rect" : [ 20.0, 20.0, 189.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 20.0, 189.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Overview of externals included in the Jamoma distribution.",
									"id" : "obj-36",
									"fontname" : "Verdana",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation_rect" : [ 20.0, 50.0, 302.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 50.0, 302.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"id" : "obj-37",
									"presentation_rect" : [ 10.0, 10.0, 360.0, 60.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
									"patching_rect" : [ 10.0, 10.0, 324.0, 69.904106 ],
									"presentation" : 1,
									"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Control",
									"id" : "obj-38",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 170.0, 80.0, 112.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 172.0, 92.0, 112.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio",
									"id" : "obj-39",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 320.0, 80.0, 112.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 319.0, 92.0, 112.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"id" : "obj-40",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 356.0, 305.0, 74.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"id" : "obj-41",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 356.0, 325.0, 49.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.equals",
									"id" : "obj-42",
									"fontname" : "Verdana",
									"presentation_rect" : [ 170.0, 220.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 172.0, 238.0, 68.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.oscroute",
									"id" : "obj-43",
									"fontname" : "Verdana",
									"presentation_rect" : [ 170.0, 280.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 172.0, 300.0, 79.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.round",
									"id" : "obj-44",
									"fontname" : "Verdana",
									"presentation_rect" : [ 170.0, 320.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 172.0, 338.0, 65.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.route",
									"id" : "obj-45",
									"fontname" : "Verdana",
									"presentation_rect" : [ 170.0, 340.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 172.0, 356.0, 62.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.pass",
									"id" : "obj-46",
									"fontname" : "Verdana",
									"presentation_rect" : [ 170.0, 300.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 172.0, 320.0, 59.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.change",
									"id" : "obj-47",
									"fontname" : "Verdana",
									"presentation_rect" : [ 170.0, 140.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 172.0, 148.0, 72.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.meter~",
									"id" : "obj-48",
									"fontname" : "Verdana",
									"presentation_rect" : [ 320.0, 180.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 330.0, 196.0, 74.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.saturation~",
									"id" : "obj-49",
									"fontname" : "Verdana",
									"presentation_rect" : [ 320.0, 200.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 330.0, 214.0, 95.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.gain~",
									"id" : "obj-50",
									"fontname" : "Verdana",
									"presentation_rect" : [ 320.0, 140.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 330.0, 160.0, 65.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tt.limiter~",
									"id" : "obj-51",
									"fontname" : "Verdana",
									"presentation_rect" : [ 320.0, 160.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 330.0, 178.0, 76.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.xfade~",
									"id" : "obj-52",
									"fontname" : "Verdana",
									"presentation_rect" : [ 320.0, 220.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 330.0, 232.0, 72.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-41", 0 ],
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
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
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
									"source" : [ "obj-51", 0 ],
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
									"source" : [ "obj-47", 0 ],
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
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
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
									"source" : [ "obj-42", 0 ],
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
									"source" : [ "obj-7", 0 ],
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-40", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-40", 0 ],
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
									"source" : [ "obj-32", 0 ],
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
									"source" : [ "obj-31", 0 ],
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
									"source" : [ "obj-28", 0 ],
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
									"source" : [ "obj-26", 0 ],
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
									"source" : [ "obj-24", 0 ],
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
									"source" : [ "obj-22", 0 ],
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
									"source" : [ "obj-20", 0 ],
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-14", 0 ],
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
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-114", 0 ],
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
									"source" : [ "obj-54", 0 ],
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
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-40", 0 ],
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
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 1,
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
									"id" : "obj-115",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 387.0, 74.0, 67.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"id" : "obj-114",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 387.0, 50.0, 35.0, 17.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-112",
									"hidden" : 1,
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 387.0, 20.0, 25.0, 25.0 ],
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Communication in Jamoma",
									"id" : "obj-1",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 440.0, 110.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 437.0, 118.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Mapping example",
									"id" : "obj-2",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 440.0, 250.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 437.0, 249.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma and Pluggo",
									"id" : "obj-3",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 30.0, 100.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 28.0, 118.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 230.0, 20.0, 189.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 230.0, 20.0, 189.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "WindowShade.mxt",
									"id" : "obj-5",
									"fontname" : "Verdana",
									"presentation_rect" : [ 440.0, 80.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 437.0, 84.0, 101.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "wildcard_demo.mxt",
									"id" : "obj-6",
									"fontname" : "Verdana",
									"presentation_rect" : [ 440.0, 160.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 437.0, 159.0, 106.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Video_Example.mxt",
									"id" : "obj-7",
									"fontname" : "Verdana",
									"presentation_rect" : [ 230.0, 60.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 229.0, 60.0, 108.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "teatrix.mxt",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"presentation_rect" : [ 440.0, 280.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 437.0, 267.0, 64.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "simpleRecorder~.mxt",
									"id" : "obj-9",
									"fontname" : "Verdana",
									"presentation_rect" : [ 30.0, 60.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 28.0, 60.0, 116.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "separate-interface.mxt",
									"id" : "obj-10",
									"fontname" : "Verdana",
									"presentation_rect" : [ 440.0, 140.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 437.0, 137.0, 122.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Scripting_Example.mxt",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"presentation_rect" : [ 440.0, 60.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 437.0, 60.0, 124.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Pluggo_Simple.mxt",
									"id" : "obj-12",
									"fontname" : "Verdana",
									"presentation_rect" : [ 30.0, 130.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 28.0, 137.0, 105.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Pluggo_Complex.mxt",
									"id" : "obj-13",
									"fontname" : "Verdana",
									"presentation_rect" : [ 30.0, 150.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 28.0, 159.0, 114.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.qlist.example.mxt",
									"id" : "obj-14",
									"fontname" : "Verdana",
									"presentation_rect" : [ 440.0, 220.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 437.0, 223.0, 126.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.pattr.example.mxt",
									"id" : "obj-15",
									"fontname" : "Verdana",
									"presentation_rect" : [ 440.0, 180.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 437.0, 181.0, 130.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend load",
									"id" : "obj-16",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 283.0, 313.0, 73.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.pattr.communication.mxt",
									"id" : "obj-17",
									"fontname" : "Verdana",
									"presentation_rect" : [ 440.0, 200.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 437.0, 202.0, 163.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"id" : "obj-18",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 283.0, 334.0, 49.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Control",
									"id" : "obj-19",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 440.0, 20.0, 189.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 440.0, 20.0, 189.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio",
									"id" : "obj-20",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 30.0, 20.0, 189.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 20.0, 189.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-18", 0 ],
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
									"source" : [ "obj-5", 0 ],
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
									"source" : [ "obj-8", 0 ],
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
									"source" : [ "obj-10", 0 ],
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
									"source" : [ "obj-12", 0 ],
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
									"source" : [ "obj-15", 0 ],
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
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-16", 0 ],
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
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-114", 0 ],
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
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 135.0, 74.0, 18.0 ],
					"fontsize" : 9.873845,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 278.0, 44.0, 1050.0, 677.0 ],
						"bglocked" : 0,
						"defrect" : [ 278.0, 44.0, 1050.0, 677.0 ],
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
									"maxclass" : "message",
									"text" : "jmod.textwriter",
									"id" : "obj-113",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 640.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 881.0, 554.0, 88.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"id" : "obj-115",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 323.0, 53.0, 67.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"id" : "obj-114",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 323.0, 32.0, 35.0, 17.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-112",
									"hidden" : 1,
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 323.0, 2.0, 25.0, 25.0 ],
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.multi.aux~",
									"id" : "obj-1",
									"fontname" : "Verdana",
									"presentation_rect" : [ 220.0, 360.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 243.0, 303.0, 111.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.multi.input~",
									"id" : "obj-2",
									"fontname" : "Verdana",
									"presentation_rect" : [ 220.0, 340.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 243.0, 286.0, 119.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.tremolo~",
									"id" : "obj-3",
									"fontname" : "Verdana",
									"presentation_rect" : [ 10.0, 480.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 38.0, 414.0, 84.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.phidgets.interfacekit",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 320.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 882.0, 285.0, 139.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.phidgets.accelerometer",
									"id" : "obj-5",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 300.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 881.0, 268.0, 154.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.condition",
									"id" : "obj-6",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 620.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 881.0, 536.0, 82.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.messages",
									"id" : "obj-7",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 180.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 881.0, 165.0, 86.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.uc-33",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 340.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 881.0, 302.0, 66.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.gl.edgeblend%",
									"id" : "obj-9",
									"fontname" : "Verdana",
									"presentation_rect" : [ 640.0, 160.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 664.0, 139.0, 112.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.gl.text2d%",
									"id" : "obj-10",
									"fontname" : "Verdana",
									"presentation_rect" : [ 640.0, 220.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 664.0, 190.0, 92.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.movie_player%",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"presentation_rect" : [ 430.0, 180.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 472.0, 158.0, 115.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.gl.td.rota%",
									"id" : "obj-12",
									"fontname" : "Verdana",
									"presentation_rect" : [ 640.0, 200.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 664.0, 173.0, 94.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.gl.alphamixer%",
									"id" : "obj-13",
									"fontname" : "Verdana",
									"presentation_rect" : [ 640.0, 140.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 664.0, 122.0, 116.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.cue_trigger",
									"id" : "obj-14",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 460.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 881.0, 399.0, 94.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.multicast",
									"id" : "obj-15",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 260.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 881.0, 233.0, 83.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.vst~",
									"id" : "obj-16",
									"fontname" : "Verdana",
									"presentation_rect" : [ 10.0, 620.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 41.0, 535.0, 60.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.vst~",
									"id" : "obj-17",
									"fontname" : "Verdana",
									"presentation_rect" : [ 10.0, 500.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 38.0, 431.0, 60.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.mouse.gdif",
									"id" : "obj-18",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 240.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 881.0, 216.0, 92.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.bcf2000",
									"id" : "obj-19",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 140.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 881.0, 131.0, 77.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.rolloff~",
									"id" : "obj-20",
									"fontname" : "Verdana",
									"presentation_rect" : [ 220.0, 160.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 243.0, 148.0, 93.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.blur%",
									"id" : "obj-21",
									"fontname" : "Verdana",
									"presentation_rect" : [ 430.0, 260.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 472.0, 216.0, 67.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.multidelay~",
									"id" : "obj-22",
									"fontname" : "Verdana",
									"presentation_rect" : [ 10.0, 420.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 38.0, 363.0, 127.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Others",
									"id" : "obj-23",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 640.0, 250.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 642.0, 217.0, 155.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.background%",
									"id" : "obj-24",
									"fontname" : "Verdana",
									"presentation_rect" : [ 640.0, 300.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 664.0, 250.0, 106.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.similarity%",
									"id" : "obj-25",
									"fontname" : "Verdana",
									"presentation_rect" : [ 640.0, 280.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 664.0, 233.0, 93.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.motiongram%",
									"id" : "obj-26",
									"fontname" : "Verdana",
									"presentation_rect" : [ 640.0, 340.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 664.0, 284.0, 108.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.file_browser",
									"id" : "obj-27",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 600.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 881.0, 517.0, 98.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.noise~",
									"id" : "obj-28",
									"fontname" : "Verdana",
									"presentation_rect" : [ 10.0, 600.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 41.0, 518.0, 71.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sine~",
									"id" : "obj-29",
									"fontname" : "Verdana",
									"presentation_rect" : [ 10.0, 580.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 41.0, 501.0, 65.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.fluidsynth~",
									"id" : "obj-30",
									"fontname" : "Verdana",
									"presentation_rect" : [ 10.0, 560.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 41.0, 484.0, 94.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Synths",
									"id" : "obj-31",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 10.0, 530.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.0, 463.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.gl.videoplane%",
									"id" : "obj-32",
									"fontname" : "Verdana",
									"presentation_rect" : [ 640.0, 180.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 664.0, 156.0, 114.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "OpenGL",
									"id" : "obj-33",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 640.0, 110.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 642.0, 108.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.palette",
									"id" : "obj-34",
									"fontname" : "Verdana",
									"presentation_rect" : [ 430.0, 640.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 472.0, 519.0, 72.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.colorpicker",
									"id" : "obj-35",
									"fontname" : "Verdana",
									"presentation_rect" : [ 430.0, 620.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 472.0, 501.0, 91.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Colors",
									"id" : "obj-36",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 430.0, 590.0, 170.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 450.0, 486.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.yfade%",
									"id" : "obj-37",
									"fontname" : "Verdana",
									"presentation_rect" : [ 430.0, 520.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 472.0, 427.0, 75.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.record%",
									"id" : "obj-38",
									"fontname" : "Verdana",
									"presentation_rect" : [ 430.0, 160.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 472.0, 141.0, 79.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.keyscreen%",
									"id" : "obj-39",
									"fontname" : "Verdana",
									"presentation_rect" : [ 430.0, 560.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 472.0, 461.0, 98.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.chromakey%",
									"id" : "obj-40",
									"fontname" : "Verdana",
									"presentation_rect" : [ 430.0, 540.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 472.0, 444.0, 103.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.wacom",
									"id" : "obj-41",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 360.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 881.0, 319.0, 72.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.trig_mapper",
									"id" : "obj-42",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 520.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 881.0, 450.0, 98.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.equalizer~",
									"id" : "obj-43",
									"fontname" : "Verdana",
									"presentation_rect" : [ 10.0, 380.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 38.0, 329.0, 90.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.cont_mapper",
									"id" : "obj-44",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 500.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 881.0, 433.0, 103.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.echo~",
									"id" : "obj-45",
									"fontname" : "Verdana",
									"presentation_rect" : [ 10.0, 340.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 38.0, 295.0, 69.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.speaker.setup",
									"id" : "obj-46",
									"fontname" : "Verdana",
									"presentation_rect" : [ 220.0, 220.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 243.0, 191.0, 126.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Loudspeaker setup and correction",
									"id" : "obj-47",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 220.0, 190.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 217.0, 172.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"id" : "obj-48",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 358.0, 438.0, 74.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"id" : "obj-49",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 358.0, 462.0, 49.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio Spatialisation",
									"id" : "obj-50",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 220.0, 80.0, 192.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 207.0, 78.0, 192.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "General modules",
									"id" : "obj-51",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 220.0, 110.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 217.0, 108.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.ambi.adjust~",
									"id" : "obj-52",
									"fontname" : "Verdana",
									"presentation_rect" : [ 220.0, 480.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 243.0, 402.0, 123.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.output~",
									"id" : "obj-53",
									"fontname" : "Verdana",
									"presentation_rect" : [ 220.0, 380.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 243.0, 320.0, 97.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.multi.out~",
									"id" : "obj-54",
									"fontname" : "Verdana",
									"presentation_rect" : [ 220.0, 320.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 243.0, 268.0, 109.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.multi.in~",
									"id" : "obj-55",
									"fontname" : "Verdana",
									"presentation_rect" : [ 220.0, 300.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 243.0, 251.0, 102.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Multicable",
									"id" : "obj-56",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 220.0, 270.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 217.0, 234.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ambisonics",
									"id" : "obj-57",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 220.0, 410.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 217.0, 351.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.speaker.delay~",
									"id" : "obj-58",
									"fontname" : "Verdana",
									"presentation_rect" : [ 220.0, 240.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 243.0, 208.0, 134.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.doppler~",
									"id" : "obj-59",
									"fontname" : "Verdana",
									"presentation_rect" : [ 220.0, 140.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 243.0, 131.0, 102.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.ambi.decode~",
									"id" : "obj-60",
									"fontname" : "Verdana",
									"presentation_rect" : [ 220.0, 460.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 243.0, 385.0, 128.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.ambi.encodeM~",
									"id" : "obj-61",
									"fontname" : "Verdana",
									"presentation_rect" : [ 220.0, 440.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 243.0, 368.0, 136.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.scope~",
									"id" : "obj-62",
									"fontname" : "Verdana",
									"presentation_rect" : [ 10.0, 240.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 38.0, 214.0, 74.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.avg4%",
									"id" : "obj-63",
									"fontname" : "Verdana",
									"presentation_rect" : [ 430.0, 240.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 472.0, 199.0, 72.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.fluoride%",
									"id" : "obj-64",
									"fontname" : "Verdana",
									"presentation_rect" : [ 430.0, 340.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 472.0, 284.0, 85.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.emboss%",
									"id" : "obj-65",
									"fontname" : "Verdana",
									"presentation_rect" : [ 430.0, 320.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 472.0, 267.0, 86.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"id" : "obj-66",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 159.0, 540.0, 74.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"id" : "obj-67",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 159.0, 564.0, 49.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Compositing",
									"id" : "obj-68",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 430.0, 450.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 450.0, 378.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Filters",
									"id" : "obj-69",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 430.0, 210.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 450.0, 183.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video I/O",
									"id" : "obj-70",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 430.0, 110.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 450.0, 108.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.xfade%",
									"id" : "obj-71",
									"fontname" : "Verdana",
									"presentation_rect" : [ 430.0, 500.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 472.0, 410.0, 75.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.input%",
									"id" : "obj-72",
									"fontname" : "Verdana",
									"presentation_rect" : [ 430.0, 140.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 472.0, 124.0, 73.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.edge%",
									"id" : "obj-73",
									"fontname" : "Verdana",
									"presentation_rect" : [ 430.0, 300.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 472.0, 250.0, 72.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.plur%",
									"id" : "obj-74",
									"fontname" : "Verdana",
									"presentation_rect" : [ 430.0, 400.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 472.0, 335.0, 67.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Others",
									"id" : "obj-75",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 850.0, 550.0, 155.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 857.0, 477.0, 155.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Controlling Jamoma",
									"id" : "obj-76",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 850.0, 390.0, 155.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 857.0, 344.0, 155.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.midiin",
									"id" : "obj-77",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 200.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 881.0, 182.0, 67.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Data I/O",
									"id" : "obj-78",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 850.0, 110.0, 155.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 857.0, 108.0, 155.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.mouse",
									"id" : "obj-79",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 220.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 881.0, 199.0, 70.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.orsize%",
									"id" : "obj-80",
									"fontname" : "Verdana",
									"presentation_rect" : [ 430.0, 380.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 472.0, 318.0, 77.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Control",
									"id" : "obj-81",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 850.0, 80.0, 152.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 857.0, 78.0, 152.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video",
									"id" : "obj-82",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 430.0, 80.0, 180.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 450.0, 78.0, 189.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio FX",
									"id" : "obj-83",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 10.0, 270.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.0, 242.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Mixing and Metering",
									"id" : "obj-84",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 10.0, 190.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.0, 172.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio I/O",
									"id" : "obj-85",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 10.0, 110.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 105.0, 192.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio",
									"id" : "obj-86",
									"fontname" : "Verdana",
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 10.0, 80.0, 180.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 75.0, 189.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.oscnet",
									"id" : "obj-87",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 280.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 881.0, 250.0, 70.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.mblur%",
									"id" : "obj-88",
									"fontname" : "Verdana",
									"presentation_rect" : [ 430.0, 360.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 472.0, 301.0, 77.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.mapper",
									"id" : "obj-89",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 480.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 881.0, 416.0, 75.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.hi",
									"id" : "obj-90",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 160.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 881.0, 148.0, 46.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.limiter~",
									"id" : "obj-91",
									"fontname" : "Verdana",
									"presentation_rect" : [ 10.0, 400.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 38.0, 346.0, 77.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.input~",
									"id" : "obj-92",
									"fontname" : "Verdana",
									"presentation_rect" : [ 10.0, 140.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 133.0, 71.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.wake%",
									"id" : "obj-93",
									"fontname" : "Verdana",
									"presentation_rect" : [ 430.0, 420.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 472.0, 352.0, 74.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.saturation~",
									"id" : "obj-94",
									"fontname" : "Verdana",
									"presentation_rect" : [ 10.0, 460.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 38.0, 397.0, 96.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.degrade~",
									"id" : "obj-95",
									"fontname" : "Verdana",
									"presentation_rect" : [ 10.0, 300.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 38.0, 261.0, 86.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.qmetro",
									"id" : "obj-96",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 580.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 881.0, 499.0, 73.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.output~",
									"id" : "obj-97",
									"fontname" : "Verdana",
									"presentation_rect" : [ 10.0, 160.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 150.0, 78.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.control",
									"id" : "obj-98",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 420.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 881.0, 365.0, 71.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.delay~",
									"id" : "obj-99",
									"fontname" : "Verdana",
									"presentation_rect" : [ 10.0, 320.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 38.0, 278.0, 72.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.filter~",
									"id" : "obj-100",
									"fontname" : "Verdana",
									"presentation_rect" : [ 10.0, 360.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 38.0, 312.0, 68.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.cuelist",
									"id" : "obj-101",
									"fontname" : "Verdana",
									"presentation_rect" : [ 850.0, 440.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 881.0, 382.0, 69.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.op%",
									"id" : "obj-102",
									"fontname" : "Verdana",
									"presentation_rect" : [ 430.0, 480.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 472.0, 393.0, 60.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.noisegate~",
									"id" : "obj-103",
									"fontname" : "Verdana",
									"presentation_rect" : [ 10.0, 440.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 38.0, 380.0, 93.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.brcosa%",
									"id" : "obj-104",
									"fontname" : "Verdana",
									"presentation_rect" : [ 430.0, 280.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 472.0, 233.0, 80.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.motion%",
									"id" : "obj-105",
									"fontname" : "Verdana",
									"presentation_rect" : [ 640.0, 320.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 664.0, 267.0, 82.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.crossfade~",
									"id" : "obj-106",
									"fontname" : "Verdana",
									"presentation_rect" : [ 10.0, 220.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 38.0, 197.0, 92.0, 16.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"id" : "obj-107",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 715.0, 484.0, 74.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"id" : "obj-108",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 715.0, 506.0, 49.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma modules",
									"id" : "obj-109",
									"fontname" : "Verdana",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation_rect" : [ 20.0, 20.0, 189.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 16.0, 189.0, 28.0 ],
									"fontsize" : 17.334082,
									"presentation" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Overview of modules",
									"id" : "obj-110",
									"fontname" : "Verdana",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation_rect" : [ 20.0, 50.0, 277.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 16.0, 42.0, 277.0, 18.0 ],
									"fontsize" : 9.873845,
									"presentation" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"id" : "obj-111",
									"presentation_rect" : [ 10.0, 10.0, 292.0, 63.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
									"patching_rect" : [ 9.0, 0.0, 292.0, 63.0 ],
									"presentation" : 1,
									"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"rounded" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-113", 0 ],
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
									"source" : [ "obj-4", 0 ],
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
									"source" : [ "obj-7", 0 ],
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
									"source" : [ "obj-10", 0 ],
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
									"source" : [ "obj-21", 0 ],
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
									"source" : [ "obj-34", 0 ],
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
									"source" : [ "obj-37", 0 ],
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
									"source" : [ "obj-63", 0 ],
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
									"source" : [ "obj-64", 0 ],
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
									"source" : [ "obj-104", 0 ],
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
									"source" : [ "obj-88", 0 ],
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
									"source" : [ "obj-98", 0 ],
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
									"source" : [ "obj-90", 0 ],
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
									"source" : [ "obj-87", 0 ],
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
									"source" : [ "obj-80", 0 ],
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
									"source" : [ "obj-77", 0 ],
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
									"source" : [ "obj-72", 0 ],
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
									"source" : [ "obj-71", 0 ],
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
									"source" : [ "obj-42", 0 ],
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
									"source" : [ "obj-40", 0 ],
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
									"source" : [ "obj-27", 0 ],
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
									"source" : [ "obj-24", 0 ],
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
									"source" : [ "obj-19", 0 ],
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
									"source" : [ "obj-15", 0 ],
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
									"source" : [ "obj-12", 0 ],
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-107", 0 ],
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
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-49", 0 ],
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
									"source" : [ "obj-20", 0 ],
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
									"source" : [ "obj-58", 0 ],
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
									"source" : [ "obj-54", 0 ],
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
									"source" : [ "obj-61", 0 ],
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
									"source" : [ "obj-52", 0 ],
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-48", 0 ],
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
									"source" : [ "obj-16", 0 ],
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
									"source" : [ "obj-43", 0 ],
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
									"source" : [ "obj-62", 0 ],
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
									"source" : [ "obj-103", 0 ],
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
									"source" : [ "obj-100", 0 ],
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
									"source" : [ "obj-95", 0 ],
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
									"source" : [ "obj-97", 0 ],
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
									"source" : [ "obj-28", 0 ],
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
									"source" : [ "obj-30", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-66", 0 ],
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
					"id" : "obj-6",
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 20.0, 20.0, 189.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 26.0, 189.0, 28.0 ],
					"fontsize" : 17.334082,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Overview of modules, examples, externals, javascripts and components",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 20.0, 50.0, 240.0, 30.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 11.0, 52.0, 200.0, 30.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-8",
					"presentation_rect" : [ 10.0, 10.0, 270.0, 80.0 ],
					"numinlets" : 1,
					"grad2" : [ 0.258824, 0.25098, 0.423529, 1.0 ],
					"numoutlets" : 0,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"patching_rect" : [ 4.0, 10.0, 205.0, 72.0 ],
					"presentation" : 1,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"rounded" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-5", 0 ],
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
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-3", 0 ],
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
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
