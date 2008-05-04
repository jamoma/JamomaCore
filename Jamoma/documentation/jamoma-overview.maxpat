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
					"outlettype" : [ "int", "", "int" ],
					"text" : "Components",
					"fontsize" : 10.970939,
					"presentation_rect" : [ 60.0, 240.0, 130.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 30.0, 345.0, 100.0, 20.0 ],
					"id" : "obj-13",
					"presentation" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"outlettype" : [ "int", "", "int" ],
					"text" : "Javascripts",
					"fontsize" : 10.970939,
					"presentation_rect" : [ 60.0, 210.0, 130.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 30.0, 285.0, 100.0, 20.0 ],
					"id" : "obj-12",
					"presentation" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"outlettype" : [ "int", "", "int" ],
					"text" : "Externals",
					"fontsize" : 10.970939,
					"presentation_rect" : [ 60.0, 180.0, 130.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 30.0, 225.0, 100.0, 20.0 ],
					"id" : "obj-11",
					"presentation" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"outlettype" : [ "int", "", "int" ],
					"text" : "Examples",
					"fontsize" : 10.970939,
					"presentation_rect" : [ 60.0, 150.0, 130.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 30.0, 165.0, 100.0, 20.0 ],
					"id" : "obj-10",
					"presentation" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"outlettype" : [ "int", "", "int" ],
					"text" : "Modules",
					"fontsize" : 10.970939,
					"presentation_rect" : [ 60.0, 120.0, 130.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 30.0, 105.0, 100.0, 20.0 ],
					"id" : "obj-9",
					"presentation" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p javascripts",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 30.0, 315.0, 75.0, 18.0 ],
					"id" : "obj-1",
					"numoutlets" : 0,
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
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 387.0, 74.0, 67.0, 19.0 ],
									"hidden" : 1,
									"id" : "obj-115",
									"numoutlets" : 2,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 387.0, 50.0, 35.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-114",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "int" ],
									"numinlets" : 0,
									"patching_rect" : [ 387.0, 20.0, 25.0, 25.0 ],
									"hidden" : 1,
									"id" : "obj-112",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.jsui_3dknob.js",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 230.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 180.0, 210.0, 109.0, 16.0 ],
									"id" : "obj-2",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 243.0, 260.0, 74.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-3",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 243.0, 284.0, 49.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-4",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.jsui_texttoggle.js",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 210.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 180.0, 190.0, 122.0, 16.0 ],
									"id" : "obj-5",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.jsui_multigain.js",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 190.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 180.0, 170.0, 118.0, 16.0 ],
									"id" : "obj-6",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Some of the scripts are used for particular purposes in specific modules or components. Only javascripts that might be of more general use are listed here.",
									"linecount" : 2,
									"presentation_linecount" : 3,
									"fontsize" : 9.873845,
									"presentation_rect" : [ 20.0, 90.0, 283.0, 42.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 20.0, 90.0, 408.0, 30.0 ],
									"id" : "obj-7",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.js_systeminfo.js",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 20.0, 190.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 20.0, 190.0, 117.0, 16.0 ],
									"id" : "obj-8",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma javascripts",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 20.0, 20.0, 189.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 20.0, 20.0, 189.0, 28.0 ],
									"id" : "obj-10",
									"presentation" : 1,
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Overview of javascripts used in Jamoma",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 20.0, 50.0, 277.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 20.0, 50.0, 277.0, 18.0 ],
									"id" : "obj-11",
									"presentation" : 1,
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
									"presentation_rect" : [ 10.0, 10.0, 292.0, 63.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 10.0, 10.0, 292.0, 63.0 ],
									"id" : "obj-12",
									"presentation" : 1,
									"numoutlets" : 0,
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "JSUI",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 170.0, 150.0, 133.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 180.0, 130.0, 189.0, 28.0 ],
									"id" : "obj-13",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "JS",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 20.0, 154.0, 113.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 20.0, 130.0, 113.0, 28.0 ],
									"id" : "obj-14",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
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
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p components",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 30.0, 375.0, 78.0, 18.0 ],
					"id" : "obj-2",
					"numoutlets" : 0,
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
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 668.0, 77.0, 67.0, 19.0 ],
									"hidden" : 1,
									"id" : "obj-115",
									"numoutlets" : 2,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 668.0, 53.0, 35.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-114",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "int" ],
									"numinlets" : 0,
									"patching_rect" : [ 668.0, 23.0, 25.0, 25.0 ],
									"hidden" : 1,
									"id" : "obj-112",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.crop%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 780.0, 290.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 740.0, 288.0, 68.0, 16.0 ],
									"id" : "obj-1",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.atomidi",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 270.0, 450.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 300.0, 436.0, 73.0, 16.0 ],
									"id" : "obj-2",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.miditoa",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 270.0, 430.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 300.0, 418.0, 73.0, 16.0 ],
									"id" : "obj-3",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.ambimonitor2xyz",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 630.0, 250.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 612.0, 255.0, 122.0, 16.0 ],
									"id" : "obj-4",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.xyz2ambimonitor",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 490.0, 250.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 496.0, 255.0, 122.0, 16.0 ],
									"id" : "obj-5",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.sur.ambi2UHJ~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 780.0, 500.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 743.0, 462.0, 113.0, 16.0 ],
									"id" : "obj-6",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.sur.UHJ2ambi~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 780.0, 520.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 743.0, 479.0, 113.0, 16.0 ],
									"id" : "obj-7",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ambisonics Converter:",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 780.0, 470.0, 121.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 739.0, 447.0, 121.0, 18.0 ],
									"id" : "obj-8",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.modules_dumper",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 30.0, 410.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 47.0, 384.0, 126.0, 16.0 ],
									"id" : "obj-9",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.parameters_dumper",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 30.0, 430.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 47.0, 401.0, 138.0, 16.0 ],
									"id" : "obj-10",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.messages_dumper",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 30.0, 450.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 47.0, 418.0, 130.0, 16.0 ],
									"id" : "obj-11",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.returns_dumper",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 30.0, 470.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 47.0, 436.0, 119.0, 16.0 ],
									"id" : "obj-12",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"outlettype" : [ "bang" ],
									"numinlets" : 1,
									"patching_rect" : [ 20.0, 480.0, 15.0, 15.0 ],
									"hidden" : 1,
									"id" : "obj-13",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.attributes_dumper",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 30.0, 490.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 47.0, 453.0, 129.0, 16.0 ],
									"id" : "obj-14",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.all_dumper",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 30.0, 510.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 47.0, 470.0, 92.0, 16.0 ],
									"id" : "obj-15",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Namespace analysis",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 30.0, 370.0, 210.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 28.0, 355.0, 210.0, 28.0 ],
									"id" : "obj-16",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.cpu_timer",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 270.0, 250.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 300.0, 255.0, 86.0, 16.0 ],
									"id" : "obj-17",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.numberslider",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 490.0, 380.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 497.0, 368.0, 101.0, 16.0 ],
									"id" : "obj-18",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.spray%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 780.0, 350.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 740.0, 347.0, 74.0, 16.0 ],
									"id" : "obj-19",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.float2char%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 920.0, 270.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 834.0, 269.0, 97.0, 16.0 ],
									"id" : "obj-20",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.char2float%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 780.0, 269.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 739.0, 269.0, 97.0, 16.0 ],
									"id" : "obj-21",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jitter related things:",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 780.0, 180.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 732.0, 187.0, 192.0, 18.0 ],
									"id" : "obj-22",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 780.0, 150.0, 164.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 732.0, 157.0, 164.0, 28.0 ],
									"id" : "obj-23",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.list2parameter",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 270.0, 350.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 300.0, 345.0, 109.0, 16.0 ],
									"id" : "obj-24",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.checkplanes%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 780.0, 250.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 739.0, 249.0, 107.0, 16.0 ],
									"id" : "obj-25",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.luma2rgb%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 920.0, 330.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 828.0, 327.0, 94.0, 16.0 ],
									"id" : "obj-26",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.rgb2luma%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 780.0, 330.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 740.0, 327.0, 94.0, 16.0 ],
									"id" : "obj-27",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.vtext",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 490.0, 400.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 497.0, 386.0, 62.0, 16.0 ],
									"id" : "obj-28",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.dbap",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 780.0, 440.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 743.0, 425.0, 61.0, 16.0 ],
									"id" : "obj-29",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Distance based amplitude panning:",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 780.0, 410.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 737.0, 409.0, 192.0, 18.0 ],
									"id" : "obj-30",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Spatialisation",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 780.0, 380.0, 164.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 738.0, 383.0, 164.0, 28.0 ],
									"id" : "obj-31",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.init",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 270.0, 310.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 300.0, 309.0, 52.0, 16.0 ],
									"id" : "obj-32",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.textslider",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 490.0, 360.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 497.0, 349.0, 83.0, 16.0 ],
									"id" : "obj-33",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "LCD-based widgets:",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 490.0, 330.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 490.0, 327.0, 192.0, 18.0 ],
									"id" : "obj-34",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Widgets",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 490.0, 300.0, 164.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 490.0, 297.0, 164.0, 28.0 ],
									"id" : "obj-35",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Geometric convertions:",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 490.0, 180.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 489.0, 187.0, 192.0, 18.0 ],
									"id" : "obj-36",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 662.0, 363.0, 74.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-37",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 662.0, 387.0, 49.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-38",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.deg2rad",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 630.0, 210.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 570.0, 219.0, 77.0, 16.0 ],
									"id" : "obj-39",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.rad2deg",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 490.0, 210.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 496.0, 219.0, 77.0, 16.0 ],
									"id" : "obj-40",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Geometry",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 490.0, 150.0, 164.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 489.0, 157.0, 164.0, 28.0 ],
									"id" : "obj-41",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.thru~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 270.0, 410.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 300.0, 399.0, 65.0, 16.0 ],
									"id" : "obj-42",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.multi.out~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 490.0, 480.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 497.0, 452.0, 89.0, 16.0 ],
									"id" : "obj-43",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.multi.in~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 490.0, 460.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 497.0, 434.0, 82.0, 16.0 ],
									"id" : "obj-44",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio multi cable",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 490.0, 430.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 490.0, 418.0, 192.0, 18.0 ],
									"id" : "obj-45",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.pluggo.configassist",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 30.0, 340.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 48.0, 334.0, 131.0, 16.0 ],
									"id" : "obj-46",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 146.0, 516.0, 74.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-47",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 146.0, 540.0, 49.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-48",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Stuff that might come in handy:",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 270.0, 180.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 265.0, 187.0, 192.0, 18.0 ],
									"id" : "obj-49",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Utilities",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 270.0, 150.0, 210.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 265.0, 157.0, 210.0, 28.0 ],
									"id" : "obj-50",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Turning modules into pluggos",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 30.0, 290.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 27.0, 294.0, 192.0, 18.0 ],
									"id" : "obj-51",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Pluggo",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 30.0, 260.0, 210.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 27.0, 264.0, 210.0, 28.0 ],
									"id" : "obj-52",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Components required:",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 30.0, 180.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 24.0, 187.0, 192.0, 18.0 ],
									"id" : "obj-53",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Building new modules",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 30.0, 150.0, 210.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 24.0, 157.0, 210.0, 28.0 ],
									"id" : "obj-54",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.thru",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 270.0, 390.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 300.0, 381.0, 57.0, 16.0 ],
									"id" : "obj-55",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.pp",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 30.0, 320.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 48.0, 316.0, 49.0, 16.0 ],
									"id" : "obj-56",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.post",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 270.0, 370.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 300.0, 363.0, 57.0, 16.0 ],
									"id" : "obj-57",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.line",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 270.0, 330.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 300.0, 327.0, 54.0, 16.0 ],
									"id" : "obj-58",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.gui",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 30.0, 210.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 45.0, 219.0, 51.0, 16.0 ],
									"id" : "obj-59",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.filewatcher",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 270.0, 290.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 300.0, 291.0, 90.0, 16.0 ],
									"id" : "obj-60",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.filesaver",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 270.0, 270.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 300.0, 273.0, 78.0, 16.0 ],
									"id" : "obj-61",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.autosize%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 780.0, 230.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 739.0, 230.0, 88.0, 16.0 ],
									"id" : "obj-62",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.autoscale",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 270.0, 230.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 300.0, 237.0, 83.0, 16.0 ],
									"id" : "obj-63",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.pwindow.mouse",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 780.0, 310.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 740.0, 307.0, 116.0, 16.0 ],
									"id" : "obj-64",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.pi",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 490.0, 270.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 496.0, 273.0, 45.0, 16.0 ],
									"id" : "obj-65",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.parameter.gain",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 30.0, 230.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 45.0, 237.0, 113.0, 16.0 ],
									"id" : "obj-66",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.autocrop%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 780.0, 212.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 739.0, 212.0, 90.0, 16.0 ],
									"id" : "obj-67",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.ambimonitor2aed",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 630.0, 230.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 612.0, 237.0, 124.0, 16.0 ],
									"id" : "obj-68",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.aed2ambimonitor",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 490.0, 230.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 496.0, 237.0, 124.0, 16.0 ],
									"id" : "obj-69",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.absdiff",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 270.0, 210.0, 140.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 300.0, 219.0, 69.0, 16.0 ],
									"id" : "obj-70",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "\"component\" is a Jamoma nickname for a functionality used in one or more algorithms or modules, implemented as a patch abstraction rather than an external or javascript.",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"fontsize" : 9.873845,
									"presentation_rect" : [ 30.0, 80.0, 444.0, 30.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 15.0, 74.0, 444.0, 30.0 ],
									"id" : "obj-71",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Some of the components are used for particular purposes in specific modules. Only components that might be of more general use are listed here.",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"fontsize" : 9.873845,
									"presentation_rect" : [ 30.0, 110.0, 400.0, 30.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 15.0, 104.0, 400.0, 30.0 ],
									"id" : "obj-72",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma components",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 30.0, 20.0, 203.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 14.0, 23.0, 203.0, 28.0 ],
									"id" : "obj-73",
									"presentation" : 1,
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Overview of components used in Jamoma",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 30.0, 50.0, 277.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 15.0, 49.0, 277.0, 18.0 ],
									"id" : "obj-74",
									"presentation" : 1,
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
									"presentation_rect" : [ 20.0, 10.0, 292.0, 63.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 8.0, 7.0, 292.0, 63.0 ],
									"id" : "obj-75",
									"presentation" : 1,
									"numoutlets" : 0,
									"rounded" : 0
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
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p externals",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 30.0, 255.0, 74.0, 18.0 ],
					"id" : "obj-3",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 277.0, 44.0, 626.0, 536.0 ],
						"bglocked" : 0,
						"defrect" : [ 277.0, 44.0, 626.0, 536.0 ],
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
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 470.0, 340.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 470.0, 430.0, 60.0, 16.0 ],
									"id" : "obj-58",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.phasor~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 470.0, 320.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 470.0, 410.0, 80.0, 16.0 ],
									"id" : "obj-57",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.metro",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 470.0, 300.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 470.0, 390.0, 68.0, 16.0 ],
									"id" : "obj-56",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Timing",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 470.0, 260.0, 112.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 460.0, 350.0, 112.0, 28.0 ],
									"id" : "obj-55",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.envexp",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 320.0, 120.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 330.0, 140.0, 74.0, 16.0 ],
									"id" : "obj-54",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.map",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 280.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 172.0, 280.0, 61.0, 16.0 ],
									"id" : "obj-53",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 387.0, 74.0, 67.0, 19.0 ],
									"hidden" : 1,
									"id" : "obj-115",
									"numoutlets" : 2,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 387.0, 50.0, 35.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-114",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "int" ],
									"numinlets" : 0,
									"patching_rect" : [ 387.0, 20.0, 25.0, 25.0 ],
									"hidden" : 1,
									"id" : "obj-112",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.receive~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 20.0, 320.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 30.0, 301.071442, 80.0, 16.0 ],
									"id" : "obj-1",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.send~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 20.0, 400.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 30.0, 373.071442, 68.0, 16.0 ],
									"id" : "obj-2",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.mkdir",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 470.0, 210.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 484.0, 302.0, 65.0, 16.0 ],
									"id" : "obj-3",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Other",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 470.0, 170.0, 112.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 466.0, 261.0, 112.0, 28.0 ],
									"id" : "obj-4",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.aed2xyz",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 120.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 172.0, 130.0, 77.0, 16.0 ],
									"id" : "obj-5",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.xyz2aed",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 400.0, 132.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 172.0, 392.0, 77.0, 16.0 ],
									"id" : "obj-6",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.colorspace",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 160.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 172.0, 166.0, 89.0, 16.0 ],
									"id" : "obj-7",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.stats",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 380.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 172.0, 374.0, 60.0, 16.0 ],
									"id" : "obj-8",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.cubic_interpolate",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 180.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 172.0, 184.0, 121.0, 16.0 ],
									"id" : "obj-9",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.velocity",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 420.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 172.0, 410.0, 74.0, 16.0 ],
									"id" : "obj-10",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.delta2",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 220.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 172.0, 220.0, 67.0, 16.0 ],
									"id" : "obj-11",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.delta",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 200.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 172.0, 202.0, 61.0, 16.0 ],
									"id" : "obj-12",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.gang",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 260.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 172.0, 256.0, 61.0, 16.0 ],
									"id" : "obj-13",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 69.0, 480.0, 74.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-14",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 69.0, 500.0, 49.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-15",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma Core",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 20.0, 80.0, 129.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 25.0, 92.0, 129.0, 28.0 ],
									"id" : "obj-16",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.teabox~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 490.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 172.0, 485.0, 78.0, 16.0 ],
									"id" : "obj-17",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.teabox.count~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 470.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 172.0, 468.0, 109.0, 16.0 ],
									"id" : "obj-18",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.teabox.bits~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 450.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 172.0, 451.0, 99.0, 16.0 ],
									"id" : "obj-19",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.send",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 20.0, 380.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 30.0, 355.071442, 60.0, 16.0 ],
									"id" : "obj-20",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.return",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 20.0, 360.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 30.0, 337.071442, 67.0, 16.0 ],
									"id" : "obj-21",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.remote",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 20.0, 340.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 30.0, 319.071442, 72.0, 16.0 ],
									"id" : "obj-22",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.receive",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 20.0, 300.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 30.0, 283.071442, 72.0, 16.0 ],
									"id" : "obj-23",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.ramp",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 20.0, 280.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 30.0, 265.071442, 62.0, 16.0 ],
									"id" : "obj-24",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.parameter",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 20.0, 260.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 30.0, 247.071426, 88.0, 16.0 ],
									"id" : "obj-25",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.out~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 20.0, 240.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 30.0, 224.071426, 60.0, 16.0 ],
									"id" : "obj-26",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.out",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 20.0, 219.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 30.0, 204.071426, 52.0, 16.0 ],
									"id" : "obj-27",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.message",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 20.0, 199.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 30.0, 184.071426, 80.0, 16.0 ],
									"id" : "obj-28",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.init",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 20.0, 179.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 30.0, 164.071426, 52.0, 16.0 ],
									"id" : "obj-29",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.in",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 20.0, 139.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 30.0, 124.071426, 45.0, 16.0 ],
									"id" : "obj-30",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.in~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 20.0, 159.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 30.0, 144.071426, 53.0, 16.0 ],
									"id" : "obj-31",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.hub",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 20.0, 119.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 37.0, 135.0, 55.0, 16.0 ],
									"id" : "obj-32",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 470.0, 80.0, 112.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 466.0, 92.0, 112.0, 28.0 ],
									"id" : "obj-33",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.sum%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 470.0, 120.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 484.0, 135.0, 68.0, 16.0 ],
									"id" : "obj-34",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma externals",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 20.0, 20.0, 189.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 20.0, 20.0, 189.0, 28.0 ],
									"id" : "obj-35",
									"presentation" : 1,
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Overview of externals included in the Jamoma distribution.",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 20.0, 50.0, 302.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 20.0, 50.0, 302.0, 18.0 ],
									"id" : "obj-36",
									"presentation" : 1,
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
									"presentation_rect" : [ 10.0, 10.0, 360.0, 60.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 10.0, 10.0, 324.0, 69.904106 ],
									"id" : "obj-37",
									"presentation" : 1,
									"numoutlets" : 0,
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Control",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 170.0, 80.0, 112.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 172.0, 92.0, 112.0, 28.0 ],
									"id" : "obj-38",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 320.0, 80.0, 112.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 319.0, 92.0, 112.0, 28.0 ],
									"id" : "obj-39",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 356.0, 305.0, 74.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-40",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 356.0, 325.0, 49.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-41",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.equals",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 240.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 172.0, 238.0, 68.0, 16.0 ],
									"id" : "obj-42",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.oscroute",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 300.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 172.0, 300.0, 79.0, 16.0 ],
									"id" : "obj-43",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.round",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 340.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 172.0, 338.0, 65.0, 16.0 ],
									"id" : "obj-44",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.route",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 360.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 172.0, 356.0, 62.0, 16.0 ],
									"id" : "obj-45",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.pass",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 320.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 172.0, 320.0, 59.0, 16.0 ],
									"id" : "obj-46",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.change",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 170.0, 140.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 172.0, 148.0, 72.0, 16.0 ],
									"id" : "obj-47",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.meter~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 320.0, 180.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 330.0, 196.0, 74.0, 16.0 ],
									"id" : "obj-48",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.saturation~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 320.0, 200.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 330.0, 214.0, 95.0, 16.0 ],
									"id" : "obj-49",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.gain~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 320.0, 140.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 330.0, 160.0, 65.0, 16.0 ],
									"id" : "obj-50",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.limiter~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 320.0, 160.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 330.0, 178.0, 76.0, 16.0 ],
									"id" : "obj-51",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.xfade~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 320.0, 220.0, 130.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 330.0, 232.0, 72.0, 16.0 ],
									"id" : "obj-52",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
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
									"source" : [ "obj-6", 0 ],
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
									"source" : [ "obj-10", 0 ],
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
									"source" : [ "obj-11", 0 ],
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
									"source" : [ "obj-7", 0 ],
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
									"source" : [ "obj-44", 0 ],
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
									"source" : [ "obj-51", 0 ],
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
									"source" : [ "obj-49", 0 ],
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
									"source" : [ "obj-19", 0 ],
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
									"source" : [ "obj-17", 0 ],
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
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p examples",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 30.0, 195.0, 74.0, 18.0 ],
					"id" : "obj-4",
					"numoutlets" : 0,
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
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 387.0, 74.0, 67.0, 19.0 ],
									"hidden" : 1,
									"id" : "obj-115",
									"numoutlets" : 2,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 387.0, 50.0, 35.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-114",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "int" ],
									"numinlets" : 0,
									"patching_rect" : [ 387.0, 20.0, 25.0, 25.0 ],
									"hidden" : 1,
									"id" : "obj-112",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Communication in Jamoma",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 440.0, 110.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 437.0, 118.0, 192.0, 18.0 ],
									"id" : "obj-1",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Mapping example",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 440.0, 250.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 437.0, 249.0, 192.0, 18.0 ],
									"id" : "obj-2",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma and Pluggo",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 30.0, 100.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 28.0, 118.0, 192.0, 18.0 ],
									"id" : "obj-3",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 230.0, 20.0, 189.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 230.0, 20.0, 189.0, 28.0 ],
									"id" : "obj-4",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "WindowShade.mxt",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 440.0, 80.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 437.0, 84.0, 101.0, 16.0 ],
									"id" : "obj-5",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "wildcard_demo.mxt",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 440.0, 160.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 437.0, 159.0, 106.0, 16.0 ],
									"id" : "obj-6",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Video_Example.mxt",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 230.0, 60.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 229.0, 60.0, 108.0, 16.0 ],
									"id" : "obj-7",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "teatrix.mxt",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 440.0, 280.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 437.0, 267.0, 64.0, 16.0 ],
									"id" : "obj-8",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "simpleRecorder~.mxt",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 30.0, 60.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 28.0, 60.0, 116.0, 16.0 ],
									"id" : "obj-9",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "separate-interface.mxt",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 440.0, 140.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 437.0, 137.0, 122.0, 16.0 ],
									"id" : "obj-10",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Scripting_Example.mxt",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 440.0, 60.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 437.0, 60.0, 124.0, 16.0 ],
									"id" : "obj-11",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Pluggo_Simple.mxt",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 30.0, 130.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 28.0, 137.0, 105.0, 16.0 ],
									"id" : "obj-12",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Pluggo_Complex.mxt",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 30.0, 150.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 28.0, 159.0, 114.0, 16.0 ],
									"id" : "obj-13",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.qlist.example.mxt",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 440.0, 220.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 437.0, 223.0, 126.0, 16.0 ],
									"id" : "obj-14",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.pattr.example.mxt",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 440.0, 180.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 437.0, 181.0, 130.0, 16.0 ],
									"id" : "obj-15",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend load",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 283.0, 313.0, 73.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-16",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.pattr.communication.mxt",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 440.0, 200.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 437.0, 202.0, 163.0, 16.0 ],
									"id" : "obj-17",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 283.0, 334.0, 49.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-18",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Control",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 440.0, 20.0, 189.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 440.0, 20.0, 189.0, 28.0 ],
									"id" : "obj-19",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 30.0, 20.0, 189.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 30.0, 20.0, 189.0, 28.0 ],
									"id" : "obj-20",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
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
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p modules",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 30.0, 135.0, 74.0, 18.0 ],
					"id" : "obj-5",
					"numoutlets" : 0,
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
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 640.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 881.0, 554.0, 88.0, 16.0 ],
									"id" : "obj-113",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 323.0, 53.0, 67.0, 19.0 ],
									"hidden" : 1,
									"id" : "obj-115",
									"numoutlets" : 2,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 323.0, 32.0, 35.0, 17.0 ],
									"hidden" : 1,
									"id" : "obj-114",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "int" ],
									"numinlets" : 0,
									"patching_rect" : [ 323.0, 2.0, 25.0, 25.0 ],
									"hidden" : 1,
									"id" : "obj-112",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.multi.aux~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 220.0, 360.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 243.0, 303.0, 111.0, 16.0 ],
									"id" : "obj-1",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.multi.input~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 220.0, 340.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 243.0, 286.0, 119.0, 16.0 ],
									"id" : "obj-2",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.tremolo~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 480.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 38.0, 414.0, 84.0, 16.0 ],
									"id" : "obj-3",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.phidgets.interfacekit",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 320.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 882.0, 285.0, 139.0, 16.0 ],
									"id" : "obj-4",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.phidgets.accelerometer",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 300.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 881.0, 268.0, 154.0, 16.0 ],
									"id" : "obj-5",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.condition",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 620.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 881.0, 536.0, 82.0, 16.0 ],
									"id" : "obj-6",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.messages",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 180.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 881.0, 165.0, 86.0, 16.0 ],
									"id" : "obj-7",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.uc-33",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 340.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 881.0, 302.0, 66.0, 16.0 ],
									"id" : "obj-8",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.gl.edgeblend%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 640.0, 160.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 664.0, 139.0, 112.0, 16.0 ],
									"id" : "obj-9",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.gl.text2d%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 640.0, 220.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 664.0, 190.0, 92.0, 16.0 ],
									"id" : "obj-10",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.movie_player%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 180.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 472.0, 158.0, 115.0, 16.0 ],
									"id" : "obj-11",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.gl.td.rota%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 640.0, 200.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 664.0, 173.0, 94.0, 16.0 ],
									"id" : "obj-12",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.gl.alphamixer%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 640.0, 140.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 664.0, 122.0, 116.0, 16.0 ],
									"id" : "obj-13",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.cue_trigger",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 460.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 881.0, 399.0, 94.0, 16.0 ],
									"id" : "obj-14",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.multicast",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 260.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 881.0, 233.0, 83.0, 16.0 ],
									"id" : "obj-15",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.vst~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 620.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 41.0, 535.0, 60.0, 16.0 ],
									"id" : "obj-16",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.vst~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 500.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 38.0, 431.0, 60.0, 16.0 ],
									"id" : "obj-17",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.mouse.gdif",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 240.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 881.0, 216.0, 92.0, 16.0 ],
									"id" : "obj-18",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.bcf2000",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 140.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 881.0, 131.0, 77.0, 16.0 ],
									"id" : "obj-19",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.rolloff~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 220.0, 160.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 243.0, 148.0, 93.0, 16.0 ],
									"id" : "obj-20",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.blur%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 260.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 472.0, 216.0, 67.0, 16.0 ],
									"id" : "obj-21",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.multidelay~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 420.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 38.0, 363.0, 127.0, 16.0 ],
									"id" : "obj-22",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Others",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 640.0, 250.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 642.0, 217.0, 155.0, 18.0 ],
									"id" : "obj-23",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.background%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 640.0, 300.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 664.0, 250.0, 106.0, 16.0 ],
									"id" : "obj-24",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.similarity%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 640.0, 280.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 664.0, 233.0, 93.0, 16.0 ],
									"id" : "obj-25",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.motiongram%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 640.0, 340.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 664.0, 284.0, 108.0, 16.0 ],
									"id" : "obj-26",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.file_browser",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 600.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 881.0, 517.0, 98.0, 16.0 ],
									"id" : "obj-27",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.noise~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 600.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 41.0, 518.0, 71.0, 16.0 ],
									"id" : "obj-28",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sine~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 580.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 41.0, 501.0, 65.0, 16.0 ],
									"id" : "obj-29",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.fluidsynth~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 560.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 41.0, 484.0, 94.0, 16.0 ],
									"id" : "obj-30",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Synths",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 530.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 17.0, 463.0, 192.0, 18.0 ],
									"id" : "obj-31",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.gl.videoplane%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 640.0, 180.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 664.0, 156.0, 114.0, 16.0 ],
									"id" : "obj-32",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "OpenGL",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 640.0, 110.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 642.0, 108.0, 192.0, 18.0 ],
									"id" : "obj-33",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.palette",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 640.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 472.0, 519.0, 72.0, 16.0 ],
									"id" : "obj-34",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.colorpicker",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 620.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 472.0, 501.0, 91.0, 16.0 ],
									"id" : "obj-35",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Colors",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 590.0, 170.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 450.0, 486.0, 192.0, 18.0 ],
									"id" : "obj-36",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.yfade%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 520.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 472.0, 427.0, 75.0, 16.0 ],
									"id" : "obj-37",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.record%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 160.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 472.0, 141.0, 79.0, 16.0 ],
									"id" : "obj-38",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.keyscreen%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 560.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 472.0, 461.0, 98.0, 16.0 ],
									"id" : "obj-39",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.chromakey%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 540.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 472.0, 444.0, 103.0, 16.0 ],
									"id" : "obj-40",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.wacom",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 360.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 881.0, 319.0, 72.0, 16.0 ],
									"id" : "obj-41",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.trig_mapper",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 520.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 881.0, 450.0, 98.0, 16.0 ],
									"id" : "obj-42",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.equalizer~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 380.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 38.0, 329.0, 90.0, 16.0 ],
									"id" : "obj-43",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.cont_mapper",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 500.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 881.0, 433.0, 103.0, 16.0 ],
									"id" : "obj-44",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.echo~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 340.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 38.0, 295.0, 69.0, 16.0 ],
									"id" : "obj-45",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.speaker.setup",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 220.0, 220.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 243.0, 191.0, 126.0, 16.0 ],
									"id" : "obj-46",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Loudspeaker setup and correction",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 220.0, 190.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 217.0, 172.0, 192.0, 18.0 ],
									"id" : "obj-47",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 358.0, 438.0, 74.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-48",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 358.0, 462.0, 49.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-49",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio Spatialisation",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 220.0, 80.0, 192.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 207.0, 78.0, 192.0, 28.0 ],
									"id" : "obj-50",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "General modules",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 220.0, 110.0, 192.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 217.0, 108.0, 192.0, 18.0 ],
									"id" : "obj-51",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.ambi.adjust~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 220.0, 480.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 243.0, 402.0, 123.0, 16.0 ],
									"id" : "obj-52",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.output~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 220.0, 380.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 243.0, 320.0, 97.0, 16.0 ],
									"id" : "obj-53",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.multi.out~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 220.0, 320.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 243.0, 268.0, 109.0, 16.0 ],
									"id" : "obj-54",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.multi.in~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 220.0, 300.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 243.0, 251.0, 102.0, 16.0 ],
									"id" : "obj-55",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Multicable",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 220.0, 270.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 217.0, 234.0, 192.0, 18.0 ],
									"id" : "obj-56",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ambisonics",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 220.0, 410.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 217.0, 351.0, 192.0, 18.0 ],
									"id" : "obj-57",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.speaker.delay~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 220.0, 240.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 243.0, 208.0, 134.0, 16.0 ],
									"id" : "obj-58",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.doppler~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 220.0, 140.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 243.0, 131.0, 102.0, 16.0 ],
									"id" : "obj-59",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.ambi.decode~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 220.0, 460.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 243.0, 385.0, 128.0, 16.0 ],
									"id" : "obj-60",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.ambi.encodeM~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 220.0, 440.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 243.0, 368.0, 136.0, 16.0 ],
									"id" : "obj-61",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.scope~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 240.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 38.0, 214.0, 74.0, 16.0 ],
									"id" : "obj-62",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.avg4%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 240.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 472.0, 199.0, 72.0, 16.0 ],
									"id" : "obj-63",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.fluoride%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 340.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 472.0, 284.0, 85.0, 16.0 ],
									"id" : "obj-64",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.emboss%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 320.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 472.0, 267.0, 86.0, 16.0 ],
									"id" : "obj-65",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 159.0, 540.0, 74.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-66",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 159.0, 564.0, 49.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-67",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Compositing",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 450.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 450.0, 378.0, 192.0, 18.0 ],
									"id" : "obj-68",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Filters",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 210.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 450.0, 183.0, 192.0, 18.0 ],
									"id" : "obj-69",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video I/O",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 110.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 450.0, 108.0, 192.0, 18.0 ],
									"id" : "obj-70",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.xfade%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 500.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 472.0, 410.0, 75.0, 16.0 ],
									"id" : "obj-71",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.input%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 140.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 472.0, 124.0, 73.0, 16.0 ],
									"id" : "obj-72",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.edge%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 300.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 472.0, 250.0, 72.0, 16.0 ],
									"id" : "obj-73",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.plur%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 400.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 472.0, 335.0, 67.0, 16.0 ],
									"id" : "obj-74",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Others",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 550.0, 155.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 857.0, 477.0, 155.0, 18.0 ],
									"id" : "obj-75",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Controlling Jamoma",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 390.0, 155.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 857.0, 344.0, 155.0, 18.0 ],
									"id" : "obj-76",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.midiin",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 200.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 881.0, 182.0, 67.0, 16.0 ],
									"id" : "obj-77",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Data I/O",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 110.0, 155.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 857.0, 108.0, 155.0, 18.0 ],
									"id" : "obj-78",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.mouse",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 220.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 881.0, 199.0, 70.0, 16.0 ],
									"id" : "obj-79",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.orsize%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 380.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 472.0, 318.0, 77.0, 16.0 ],
									"id" : "obj-80",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Control",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 850.0, 80.0, 152.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 857.0, 78.0, 152.0, 28.0 ],
									"id" : "obj-81",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 430.0, 80.0, 180.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 450.0, 78.0, 189.0, 28.0 ],
									"id" : "obj-82",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio FX",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 270.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 17.0, 242.0, 192.0, 18.0 ],
									"id" : "obj-83",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Mixing and Metering",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 190.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 17.0, 172.0, 192.0, 18.0 ],
									"id" : "obj-84",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio I/O",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 110.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 15.0, 105.0, 192.0, 18.0 ],
									"id" : "obj-85",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 10.0, 80.0, 180.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 15.0, 75.0, 189.0, 28.0 ],
									"id" : "obj-86",
									"presentation" : 1,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.oscnet",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 280.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 881.0, 250.0, 70.0, 16.0 ],
									"id" : "obj-87",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.mblur%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 360.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 472.0, 301.0, 77.0, 16.0 ],
									"id" : "obj-88",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.mapper",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 480.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 881.0, 416.0, 75.0, 16.0 ],
									"id" : "obj-89",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.hi",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 160.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 881.0, 148.0, 46.0, 16.0 ],
									"id" : "obj-90",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.limiter~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 400.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 38.0, 346.0, 77.0, 16.0 ],
									"id" : "obj-91",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.input~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 140.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 30.0, 133.0, 71.0, 16.0 ],
									"id" : "obj-92",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.wake%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 420.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 472.0, 352.0, 74.0, 16.0 ],
									"id" : "obj-93",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.saturation~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 460.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 38.0, 397.0, 96.0, 16.0 ],
									"id" : "obj-94",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.degrade~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 300.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 38.0, 261.0, 86.0, 16.0 ],
									"id" : "obj-95",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.qmetro",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 580.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 881.0, 499.0, 73.0, 16.0 ],
									"id" : "obj-96",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.output~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 160.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 30.0, 150.0, 78.0, 16.0 ],
									"id" : "obj-97",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.control",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 420.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 881.0, 365.0, 71.0, 16.0 ],
									"id" : "obj-98",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.delay~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 320.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 38.0, 278.0, 72.0, 16.0 ],
									"id" : "obj-99",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.filter~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 360.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 38.0, 312.0, 68.0, 16.0 ],
									"id" : "obj-100",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.cuelist",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 850.0, 440.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 881.0, 382.0, 69.0, 16.0 ],
									"id" : "obj-101",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.op%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 480.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 472.0, 393.0, 60.0, 16.0 ],
									"id" : "obj-102",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.noisegate~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 440.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 38.0, 380.0, 93.0, 16.0 ],
									"id" : "obj-103",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.brcosa%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 430.0, 280.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 472.0, 233.0, 80.0, 16.0 ],
									"id" : "obj-104",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.motion%",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 640.0, 320.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 664.0, 267.0, 82.0, 16.0 ],
									"id" : "obj-105",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.crossfade~",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"presentation_rect" : [ 10.0, 220.0, 160.0, 16.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 38.0, 197.0, 92.0, 16.0 ],
									"id" : "obj-106",
									"presentation" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 715.0, 484.0, 74.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-107",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 715.0, 506.0, 49.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-108",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma modules",
									"fontsize" : 17.334082,
									"presentation_rect" : [ 20.0, 20.0, 189.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 15.0, 16.0, 189.0, 28.0 ],
									"id" : "obj-109",
									"presentation" : 1,
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Overview of modules",
									"fontsize" : 9.873845,
									"presentation_rect" : [ 20.0, 50.0, 277.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 16.0, 42.0, 277.0, 18.0 ],
									"id" : "obj-110",
									"presentation" : 1,
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
									"presentation_rect" : [ 10.0, 10.0, 292.0, 63.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 9.0, 0.0, 292.0, 63.0 ],
									"id" : "obj-111",
									"presentation" : 1,
									"numoutlets" : 0,
									"rounded" : 0
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
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Jamoma",
					"fontsize" : 17.334082,
					"presentation_rect" : [ 20.0, 20.0, 189.0, 28.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 10.0, 26.0, 189.0, 28.0 ],
					"id" : "obj-6",
					"presentation" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Overview of modules, examples, externals, javascripts and components",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"fontsize" : 9.873845,
					"presentation_rect" : [ 20.0, 50.0, 240.0, 30.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 11.0, 52.0, 200.0, 30.0 ],
					"id" : "obj-7",
					"presentation" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"presentation_rect" : [ 10.0, 10.0, 270.0, 80.0 ],
					"numinlets" : 1,
					"grad2" : [ 0.258824, 0.25098, 0.423529, 1.0 ],
					"patching_rect" : [ 4.0, 10.0, 205.0, 72.0 ],
					"id" : "obj-8",
					"presentation" : 1,
					"numoutlets" : 0,
					"rounded" : 0
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
