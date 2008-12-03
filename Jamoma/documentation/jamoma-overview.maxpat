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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"patching_rect" : [ 30.0, 345.0, 100.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "int" ],
					"text" : "Components",
					"presentation_rect" : [ 60.0, 240.0, 130.0, 20.0 ],
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"patching_rect" : [ 30.0, 285.0, 100.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "int" ],
					"text" : "Javascripts",
					"presentation_rect" : [ 60.0, 210.0, 130.0, 20.0 ],
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"patching_rect" : [ 30.0, 225.0, 100.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "int" ],
					"text" : "Externals",
					"presentation_rect" : [ 60.0, 180.0, 130.0, 20.0 ],
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"patching_rect" : [ 30.0, 165.0, 100.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "int" ],
					"text" : "Examples",
					"presentation_rect" : [ 60.0, 150.0, 130.0, 20.0 ],
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"patching_rect" : [ 30.0, 105.0, 100.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "int" ],
					"text" : "Modules",
					"presentation_rect" : [ 60.0, 120.0, 130.0, 20.0 ],
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p javascripts",
					"patching_rect" : [ 30.0, 315.0, 75.0, 18.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 279.0, 44.0, 455.0, 267.0 ],
						"bglocked" : 0,
						"defrect" : [ 279.0, 44.0, 455.0, 267.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"patching_rect" : [ 387.0, 74.0, 67.0, 19.0 ],
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-115",
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"patching_rect" : [ 387.0, 50.0, 35.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-114",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 387.0, 20.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-112",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"patching_rect" : [ 243.0, 260.0, 74.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"patching_rect" : [ 243.0, 284.0, 49.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.jsui_multigain.js",
									"patching_rect" : [ 180.0, 170.0, 120.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 170.0, 200.0, 133.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Some of the scripts are used for particular purposes in specific modules or components. Only javascripts that might be of more general use are listed here.",
									"linecount" : 2,
									"presentation_linecount" : 3,
									"patching_rect" : [ 20.0, 90.0, 414.0, 31.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 20.0, 90.0, 287.0, 43.0 ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.js_systeminfo.js",
									"patching_rect" : [ 20.0, 170.0, 119.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 20.0, 200.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma javascripts",
									"patching_rect" : [ 20.0, 20.0, 197.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 20.0, 20.0, 197.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Overview of javascripts used in Jamoma",
									"patching_rect" : [ 20.0, 50.0, 280.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 20.0, 50.0, 280.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 10.0, 10.0, 292.0, 63.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"rounded" : 15,
									"presentation_rect" : [ 10.0, 10.0, 292.0, 63.0 ],
									"id" : "obj-12",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "JSUI",
									"patching_rect" : [ 180.0, 130.0, 197.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 170.0, 160.0, 139.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "JS",
									"patching_rect" : [ 20.0, 130.0, 118.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 20.0, 160.0, 118.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 1
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
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p components",
					"patching_rect" : [ 30.0, 375.0, 78.0, 18.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 85.0, 44.0, 982.0, 554.0 ],
						"bglocked" : 0,
						"defrect" : [ 85.0, 44.0, 982.0, 554.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "what would Jamoma look like without him ?",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"patching_rect" : [ 747.0, 202.0, 194.0, 31.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 538.0, 479.0, 169.0, 31.0 ],
									"fontname" : "Verdana",
									"id" : "obj-66",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.multi.out%",
									"patching_rect" : [ 740.0, 390.0, 95.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 540.0, 430.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-59",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.multi.in%",
									"patching_rect" : [ 740.0, 370.0, 88.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 540.0, 410.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-30",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.stats",
									"patching_rect" : [ 315.0, 475.0, 98.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 300.0, 470.0, 143.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-29",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.datetime",
									"patching_rect" : [ 300.0, 460.0, 98.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 300.0, 450.0, 143.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-54",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Special guest",
									"patching_rect" : [ 580.0, 470.0, 171.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 540.0, 456.0, 171.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-53",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.eno",
									"patching_rect" : [ 580.0, 500.0, 98.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 540.0, 515.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-39",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.op",
									"patching_rect" : [ 300.0, 440.0, 98.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 300.0, 430.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-31",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.osc2opml",
									"patching_rect" : [ 300.0, 420.0, 95.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 300.0, 410.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio",
									"patching_rect" : [ 747.0, 172.0, 167.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 770.0, 150.0, 167.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"patching_rect" : [ 668.0, 77.0, 67.0, 19.0 ],
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-115",
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"patching_rect" : [ 668.0, 53.0, 35.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-114",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 668.0, 23.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-112",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.crop%",
									"patching_rect" : [ 740.0, 288.0, 69.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 540.0, 310.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.ambimonitor2xyz",
									"patching_rect" : [ 612.0, 255.0, 124.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 40.0, 460.0, 143.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.xyz2ambimonitor",
									"patching_rect" : [ 496.0, 255.0, 124.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 40.0, 440.0, 143.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.sur.ambi2UHJ~",
									"patching_rect" : [ 754.0, 495.0, 115.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 770.0, 320.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.sur.UHJ2ambi~",
									"patching_rect" : [ 754.0, 512.0, 115.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 770.0, 340.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ambisonics Converter:",
									"patching_rect" : [ 750.0, 480.0, 123.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 770.0, 290.0, 123.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.modules_dumper",
									"patching_rect" : [ 39.0, 319.0, 129.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 40.0, 190.0, 143.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.parameters_dumper",
									"patching_rect" : [ 39.0, 336.0, 141.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 40.0, 210.0, 143.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.messages_dumper",
									"patching_rect" : [ 39.0, 353.0, 131.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 40.0, 230.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.returns_dumper",
									"patching_rect" : [ 39.0, 371.0, 121.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 40.0, 250.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 12.0, 415.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-13",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.attributes_dumper",
									"patching_rect" : [ 39.0, 388.0, 130.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 40.0, 270.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.all_dumper",
									"patching_rect" : [ 39.0, 405.0, 93.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 40.0, 290.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-15",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Namespace analysis",
									"patching_rect" : [ 20.0, 290.0, 218.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 40.0, 150.0, 218.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-16",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.cpu_timer",
									"patching_rect" : [ 300.0, 255.0, 87.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 300.0, 250.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-17",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.numberslider",
									"patching_rect" : [ 497.0, 368.0, 103.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 770.0, 460.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-18",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.spray%",
									"patching_rect" : [ 740.0, 347.0, 75.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 540.0, 370.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-19",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.float2char%",
									"patching_rect" : [ 834.0, 269.0, 98.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 540.0, 290.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-20",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.char2float%",
									"patching_rect" : [ 739.0, 269.0, 98.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 540.0, 269.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-21",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jitter related things:",
									"patching_rect" : [ 732.0, 187.0, 194.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 540.0, 180.0, 194.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-22",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video",
									"patching_rect" : [ 732.0, 157.0, 167.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 540.0, 150.0, 167.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-23",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.list2parameter",
									"patching_rect" : [ 300.0, 345.0, 112.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 300.0, 350.0, 143.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-24",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.checkplanes%",
									"patching_rect" : [ 739.0, 249.0, 108.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 540.0, 250.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-25",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.luma2rgb%",
									"patching_rect" : [ 828.0, 327.0, 95.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 540.0, 390.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-26",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.rgb2luma%",
									"patching_rect" : [ 740.0, 327.0, 95.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 540.0, 350.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-27",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.vtext",
									"patching_rect" : [ 497.0, 386.0, 62.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 770.0, 480.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-28",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.init",
									"patching_rect" : [ 300.0, 309.0, 52.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 300.0, 310.0, 140.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-32",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.textslider",
									"patching_rect" : [ 497.0, 349.0, 83.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 770.0, 440.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-33",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "LCD-based widgets:",
									"patching_rect" : [ 490.0, 327.0, 194.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 770.0, 410.0, 194.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-34",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Widgets",
									"patching_rect" : [ 490.0, 297.0, 171.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 770.0, 380.0, 171.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-35",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Geometric convertions:",
									"patching_rect" : [ 489.0, 187.0, 194.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 40.0, 350.0, 194.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-36",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"patching_rect" : [ 662.0, 363.0, 74.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-37",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"patching_rect" : [ 662.0, 387.0, 49.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-38",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.dataspace",
									"linecount" : 2,
									"patching_rect" : [ 496.0, 219.0, 78.0, 29.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 40.0, 380.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-40",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Geometry",
									"patching_rect" : [ 489.0, 157.0, 171.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 40.0, 320.0, 171.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-41",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.thru~",
									"patching_rect" : [ 300.0, 400.0, 66.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 770.0, 180.0, 143.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-42",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.multi.out~",
									"patching_rect" : [ 457.0, 494.0, 90.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 770.0, 260.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-43",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.multi.in~",
									"patching_rect" : [ 457.0, 476.0, 83.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 770.0, 240.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-44",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio multi cable",
									"patching_rect" : [ 450.0, 460.0, 195.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 770.0, 210.0, 195.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-45",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.pluggo.configassist",
									"patching_rect" : [ 40.0, 238.0, 132.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-46",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"patching_rect" : [ 146.0, 516.0, 74.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-47",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"patching_rect" : [ 146.0, 540.0, 49.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-48",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Stuff that might come in handy:",
									"patching_rect" : [ 265.0, 187.0, 195.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 300.0, 180.0, 195.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-49",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Utilities",
									"patching_rect" : [ 265.0, 157.0, 219.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 300.0, 150.0, 219.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-50",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Turning modules into pluggos",
									"patching_rect" : [ 20.0, 190.0, 195.0, 19.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Verdana",
									"id" : "obj-51",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Pluggo",
									"patching_rect" : [ 20.0, 160.0, 218.0, 28.0 ],
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Verdana",
									"id" : "obj-52",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.thru",
									"patching_rect" : [ 300.0, 381.0, 57.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 300.0, 390.0, 140.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-55",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.pp",
									"patching_rect" : [ 40.0, 220.0, 49.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-56",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.post",
									"patching_rect" : [ 300.0, 363.0, 58.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 300.0, 370.0, 143.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-57",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.line",
									"patching_rect" : [ 300.0, 327.0, 54.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 300.0, 330.0, 140.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-58",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.filewatcher",
									"patching_rect" : [ 300.0, 291.0, 91.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 300.0, 290.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-60",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.filesaver",
									"patching_rect" : [ 300.0, 273.0, 79.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 300.0, 270.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-61",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.autosize%",
									"patching_rect" : [ 739.0, 230.0, 89.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 540.0, 230.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-62",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.autoscale",
									"patching_rect" : [ 300.0, 237.0, 84.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 300.0, 230.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-63",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.pwindow.mouse",
									"patching_rect" : [ 740.0, 307.0, 117.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 540.0, 330.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-64",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.pi",
									"patching_rect" : [ 496.0, 273.0, 46.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 40.0, 480.0, 143.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-65",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.autocrop%",
									"patching_rect" : [ 739.0, 212.0, 91.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 540.0, 212.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-67",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.ambimonitor2aed",
									"patching_rect" : [ 612.0, 237.0, 125.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 40.0, 420.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-68",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.aed2ambimonitor",
									"patching_rect" : [ 496.0, 237.0, 125.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 40.0, 400.0, 142.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-69",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.absdiff",
									"patching_rect" : [ 300.0, 219.0, 70.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 300.0, 210.0, 143.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-70",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "\"component\" is a Jamoma nickname for a functionality used in one or more algorithms or modules, implemented as a patch abstraction rather than an external or javascript.",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"patching_rect" : [ 15.0, 74.0, 449.0, 31.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 30.0, 80.0, 449.0, 31.0 ],
									"fontname" : "Verdana",
									"id" : "obj-71",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Some of the components are used for particular purposes in specific modules. Only components that might be of more general use are listed here.",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"patching_rect" : [ 15.0, 104.0, 405.0, 31.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 30.0, 110.0, 405.0, 31.0 ],
									"fontname" : "Verdana",
									"id" : "obj-72",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma components",
									"patching_rect" : [ 14.0, 23.0, 211.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 30.0, 20.0, 211.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-73",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Overview of components used in Jamoma",
									"patching_rect" : [ 15.0, 49.0, 280.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 30.0, 50.0, 280.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-74",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 8.0, 7.0, 292.0, 63.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"rounded" : 15,
									"presentation_rect" : [ 20.0, 10.0, 292.0, 63.0 ],
									"id" : "obj-75",
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
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
									"source" : [ "obj-40", 0 ],
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
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [ 21.0, 430.0, 34.0, 430.0, 34.0, 400.0, 48.5, 400.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [ 48.5, 406.0, 22.0, 406.0, 22.0, 412.0, 21.0, 412.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [ 48.5, 388.0, 21.0, 388.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [ 48.5, 337.0, 21.0, 337.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [ 48.5, 352.0, 21.0, 352.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [ 48.5, 370.0, 21.0, 370.0 ]
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p externals",
					"patching_rect" : [ 30.0, 255.0, 74.0, 18.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 80.0, 56.0, 624.0, 486.0 ],
						"bglocked" : 0,
						"defrect" : [ 80.0, 56.0, 624.0, 486.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.dataspace",
									"patching_rect" : [ 170.0, 330.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 170.0, 300.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-62",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tt.zerox~",
									"patching_rect" : [ 320.0, 410.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 320.0, 380.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-60",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tt.wavetable~",
									"patching_rect" : [ 320.0, 390.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 320.0, 340.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-51",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tt.ramp~",
									"patching_rect" : [ 320.0, 370.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 320.0, 320.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-49",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tt.op~",
									"patching_rect" : [ 320.0, 350.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 320.0, 280.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-48",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tt.gain~",
									"patching_rect" : [ 320.0, 330.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 320.0, 240.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-47",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.ui",
									"patching_rect" : [ 30.0, 470.0, 130.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 20.0, 460.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-44",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.paramui",
									"patching_rect" : [ 30.0, 450.0, 130.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 20.0, 300.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-42",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.dbap",
									"patching_rect" : [ 495.0, 315.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 470.0, 280.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Spatialization",
									"linecount" : 2,
									"patching_rect" : [ 481.0, 276.0, 117.0, 50.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 470.0, 240.0, 137.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.oscinstance",
									"patching_rect" : [ 170.0, 250.0, 139.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 170.0, 240.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.dataspace",
									"patching_rect" : [ 30.0, 130.0, 130.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 20.0, 120.0, 130.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-19",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tt.filter~",
									"patching_rect" : [ 320.0, 250.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 320.0, 220.0, 133.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-61",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.meter~",
									"patching_rect" : [ 320.0, 150.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 320.0, 140.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-17",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tt.overdrive~",
									"patching_rect" : [ 320.0, 290.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 320.0, 300.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-18",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tt.limiter~",
									"patching_rect" : [ 320.0, 270.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 320.0, 260.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-59",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tt.dcblock~",
									"patching_rect" : [ 320.0, 210.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 320.0, 180.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tt.balance~",
									"patching_rect" : [ 320.0, 190.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 320.0, 160.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.time",
									"patching_rect" : [ 480.0, 430.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 470.0, 390.0, 133.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-58",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.phasor~",
									"patching_rect" : [ 480.0, 410.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 470.0, 370.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-57",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.metro",
									"patching_rect" : [ 480.0, 390.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 470.0, 350.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-56",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Timing",
									"patching_rect" : [ 460.0, 350.0, 119.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 470.0, 310.0, 119.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-55",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.envexp",
									"patching_rect" : [ 320.0, 130.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 320.0, 120.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-54",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.map",
									"patching_rect" : [ 170.0, 210.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 170.0, 180.0, 133.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-53",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"patching_rect" : [ 390.0, 70.0, 67.0, 19.0 ],
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-115",
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"patching_rect" : [ 390.0, 50.0, 35.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-114",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 390.0, 20.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-112",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.receive~",
									"patching_rect" : [ 30.0, 350.0, 130.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 20.0, 360.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.send~",
									"patching_rect" : [ 30.0, 430.0, 130.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 20.0, 440.0, 130.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.mkdir",
									"patching_rect" : [ 480.0, 300.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 470.0, 210.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Other",
									"patching_rect" : [ 466.0, 261.0, 117.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 470.0, 170.0, 117.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.stats",
									"patching_rect" : [ 170.0, 309.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 170.0, 280.0, 133.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.cubic_interpolate",
									"patching_rect" : [ 170.0, 130.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 170.0, 120.0, 133.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.delta",
									"patching_rect" : [ 170.0, 150.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 170.0, 140.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.gang",
									"patching_rect" : [ 170.0, 190.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 170.0, 160.0, 130.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"patching_rect" : [ 10.0, 530.0, 74.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"patching_rect" : [ 10.0, 550.0, 49.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-15",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma Core",
									"patching_rect" : [ 25.0, 92.0, 134.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 20.0, 80.0, 134.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-16",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.send",
									"patching_rect" : [ 30.0, 410.0, 130.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 20.0, 420.0, 130.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-20",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.return",
									"patching_rect" : [ 30.0, 390.0, 130.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 20.0, 400.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-21",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.remote",
									"patching_rect" : [ 30.0, 370.0, 130.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 20.0, 380.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-22",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.receive",
									"patching_rect" : [ 30.0, 330.0, 130.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 20.0, 340.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-23",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.ramp",
									"patching_rect" : [ 30.0, 310.0, 130.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 20.0, 320.0, 133.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-24",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.parameter",
									"patching_rect" : [ 30.0, 290.0, 130.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 20.0, 281.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-25",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.out~",
									"patching_rect" : [ 30.0, 270.0, 130.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 20.0, 261.0, 133.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-26",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.out",
									"patching_rect" : [ 30.0, 250.0, 130.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 20.0, 240.0, 133.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-27",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.message",
									"patching_rect" : [ 30.0, 230.0, 130.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 20.0, 220.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-28",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.init",
									"patching_rect" : [ 30.0, 210.0, 130.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 20.0, 200.0, 130.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-29",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.in",
									"patching_rect" : [ 30.0, 170.0, 130.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 20.0, 160.0, 133.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-30",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.in~",
									"patching_rect" : [ 30.0, 190.0, 130.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 20.0, 180.0, 133.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-31",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.hub",
									"patching_rect" : [ 30.0, 150.0, 130.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 20.0, 140.0, 130.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-32",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video",
									"patching_rect" : [ 466.0, 92.0, 115.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 470.0, 80.0, 115.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-33",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.sum%",
									"patching_rect" : [ 480.0, 130.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 470.0, 120.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-34",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma externals",
									"patching_rect" : [ 20.0, 20.0, 196.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 20.0, 20.0, 196.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-35",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Overview of externals included in the Jamoma distribution.",
									"patching_rect" : [ 20.0, 50.0, 305.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 20.0, 50.0, 305.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-36",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 10.0, 10.0, 324.0, 69.904106 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"rounded" : 15,
									"presentation_rect" : [ 10.0, 10.0, 360.0, 60.0 ],
									"id" : "obj-37",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Control",
									"patching_rect" : [ 172.0, 92.0, 116.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 170.0, 80.0, 116.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-38",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio",
									"patching_rect" : [ 319.0, 92.0, 117.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 320.0, 80.0, 117.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-39",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"patching_rect" : [ 390.0, 510.0, 74.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-40",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"patching_rect" : [ 390.0, 530.0, 49.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-41",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.oscroute",
									"patching_rect" : [ 170.0, 230.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 170.0, 200.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-43",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.route",
									"patching_rect" : [ 170.0, 289.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 170.0, 260.0, 133.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-45",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jcom.pass",
									"patching_rect" : [ 170.0, 269.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 170.0, 220.0, 130.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-46",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tt.degrade~",
									"patching_rect" : [ 320.0, 230.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 320.0, 200.0, 132.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-50",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tt.xfade~",
									"patching_rect" : [ 320.0, 310.0, 140.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 320.0, 360.0, 131.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-52",
									"numinlets" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
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
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
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
									"source" : [ "obj-50", 0 ],
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
									"source" : [ "obj-43", 0 ],
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
									"source" : [ "obj-17", 0 ],
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
									"source" : [ "obj-10", 0 ],
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
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p examples",
					"patching_rect" : [ 30.0, 195.0, 74.0, 18.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 1,
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"patching_rect" : [ 387.0, 74.0, 67.0, 19.0 ],
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-115",
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"patching_rect" : [ 387.0, 50.0, 35.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-114",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 387.0, 20.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-112",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Communication in Jamoma",
									"patching_rect" : [ 437.0, 118.0, 195.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 440.0, 110.0, 195.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Mapping example",
									"patching_rect" : [ 437.0, 249.0, 194.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 440.0, 250.0, 194.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma and Pluggo",
									"patching_rect" : [ 28.0, 118.0, 196.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 30.0, 100.0, 196.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video",
									"patching_rect" : [ 230.0, 20.0, 193.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 230.0, 20.0, 193.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "WindowShade.mxt",
									"patching_rect" : [ 437.0, 84.0, 103.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 440.0, 80.0, 174.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "wildcard_demo.mxt",
									"patching_rect" : [ 437.0, 159.0, 108.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 440.0, 160.0, 174.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Video_Example.mxt",
									"patching_rect" : [ 229.0, 60.0, 109.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 230.0, 60.0, 172.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "teatrix.mxt",
									"patching_rect" : [ 437.0, 267.0, 64.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 440.0, 280.0, 170.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "simpleRecorder~.mxt",
									"patching_rect" : [ 28.0, 60.0, 117.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 30.0, 60.0, 172.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "separate-interface.mxt",
									"patching_rect" : [ 437.0, 137.0, 124.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 440.0, 140.0, 173.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Scripting_Example.mxt",
									"patching_rect" : [ 437.0, 60.0, 126.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 440.0, 60.0, 173.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Pluggo_Simple.mxt",
									"patching_rect" : [ 28.0, 137.0, 106.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 30.0, 130.0, 172.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Pluggo_Complex.mxt",
									"patching_rect" : [ 28.0, 159.0, 115.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 30.0, 150.0, 172.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.qlist.example.mxt",
									"patching_rect" : [ 437.0, 223.0, 128.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 440.0, 220.0, 173.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.pattr.example.mxt",
									"patching_rect" : [ 437.0, 181.0, 133.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 440.0, 180.0, 173.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-15",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend load",
									"patching_rect" : [ 283.0, 313.0, 73.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-16",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.pattr.communication.mxt",
									"patching_rect" : [ 437.0, 202.0, 166.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 440.0, 200.0, 173.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-17",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"patching_rect" : [ 283.0, 334.0, 49.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-18",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Control",
									"patching_rect" : [ 440.0, 20.0, 195.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 440.0, 20.0, 195.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-19",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio",
									"patching_rect" : [ 30.0, 20.0, 196.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 30.0, 20.0, 196.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-20",
									"numinlets" : 1
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
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p modules",
					"patching_rect" : [ 30.0, 135.0, 74.0, 18.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 219.0, 44.0, 1041.0, 681.0 ],
						"bglocked" : 0,
						"defrect" : [ 219.0, 44.0, 1041.0, 681.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.layout",
									"patching_rect" : [ 880.0, 500.0, 74.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 570.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-116",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.textwriter",
									"patching_rect" : [ 880.0, 575.0, 90.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 650.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-113",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"patching_rect" : [ 323.0, 53.0, 67.0, 19.0 ],
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-115",
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "front",
									"patching_rect" : [ 323.0, 32.0, 35.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-114",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 323.0, 2.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-112",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.multi.aux~",
									"patching_rect" : [ 243.0, 303.0, 113.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 220.0, 360.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.multi.input~",
									"patching_rect" : [ 243.0, 286.0, 122.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 220.0, 340.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.tremolo~",
									"patching_rect" : [ 38.0, 414.0, 85.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 10.0, 480.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.phidgets.interfacekit",
									"patching_rect" : [ 882.0, 285.0, 141.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 320.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.phidgets.accelerometer",
									"patching_rect" : [ 881.0, 268.0, 155.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 300.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.condition",
									"patching_rect" : [ 880.0, 557.0, 83.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 630.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.messages",
									"patching_rect" : [ 881.0, 165.0, 87.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 180.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.uc-33",
									"patching_rect" : [ 881.0, 302.0, 66.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 340.0, 160.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.gl.edgeblend%",
									"patching_rect" : [ 664.0, 139.0, 113.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 640.0, 160.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.gl.text2d%",
									"patching_rect" : [ 664.0, 190.0, 93.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 640.0, 220.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.movie_player%",
									"patching_rect" : [ 472.0, 158.0, 116.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 430.0, 180.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.gl.td.rota%",
									"patching_rect" : [ 664.0, 173.0, 95.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 640.0, 200.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.gl.alphamixer%",
									"patching_rect" : [ 664.0, 122.0, 119.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 640.0, 140.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.cue_trigger",
									"patching_rect" : [ 881.0, 399.0, 95.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 460.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.multicast",
									"patching_rect" : [ 881.0, 233.0, 83.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 260.0, 160.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-15",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.vst~",
									"patching_rect" : [ 41.0, 535.0, 61.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 10.0, 620.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-16",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.vst~",
									"patching_rect" : [ 38.0, 431.0, 61.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 10.0, 500.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-17",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.mouse.gdif",
									"patching_rect" : [ 881.0, 216.0, 93.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 240.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-18",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.bcf2000",
									"patching_rect" : [ 881.0, 131.0, 78.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 140.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-19",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.rolloff~",
									"patching_rect" : [ 243.0, 148.0, 95.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 220.0, 160.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-20",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.blur%",
									"patching_rect" : [ 472.0, 216.0, 68.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 430.0, 260.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-21",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.multidelay~",
									"patching_rect" : [ 38.0, 363.0, 129.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 10.0, 420.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-22",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Others",
									"patching_rect" : [ 642.0, 217.0, 155.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 640.0, 250.0, 180.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-23",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.background%",
									"patching_rect" : [ 664.0, 250.0, 107.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 640.0, 300.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-24",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.similarity%",
									"patching_rect" : [ 664.0, 233.0, 94.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 640.0, 280.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-25",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.motiongram%",
									"patching_rect" : [ 664.0, 284.0, 109.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 640.0, 340.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-26",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.file_browser",
									"patching_rect" : [ 880.0, 538.0, 99.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 610.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-27",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.noise~",
									"patching_rect" : [ 41.0, 518.0, 72.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 10.0, 600.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-28",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sine~",
									"patching_rect" : [ 41.0, 501.0, 66.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 10.0, 580.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-29",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.fluidsynth~",
									"patching_rect" : [ 41.0, 484.0, 95.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 10.0, 560.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-30",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Synths",
									"patching_rect" : [ 17.0, 463.0, 197.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 10.0, 530.0, 185.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-31",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.gl.videoplane%",
									"patching_rect" : [ 664.0, 156.0, 115.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 640.0, 180.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-32",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "OpenGL",
									"patching_rect" : [ 642.0, 108.0, 192.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 640.0, 110.0, 180.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-33",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.palette",
									"patching_rect" : [ 472.0, 519.0, 72.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 430.0, 640.0, 160.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-34",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.colorpicker",
									"patching_rect" : [ 472.0, 501.0, 92.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 430.0, 620.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-35",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Colors",
									"patching_rect" : [ 450.0, 486.0, 197.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 430.0, 590.0, 175.0, 19.0 ],
									"fontname" : "Verdana",
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"id" : "obj-36",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.yfade%",
									"patching_rect" : [ 472.0, 427.0, 76.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 430.0, 520.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-37",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.record%",
									"patching_rect" : [ 472.0, 141.0, 80.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 430.0, 160.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-38",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.keyscreen%",
									"patching_rect" : [ 472.0, 461.0, 99.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 430.0, 560.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-39",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.chromakey%",
									"patching_rect" : [ 472.0, 444.0, 106.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 430.0, 540.0, 164.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-40",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.wacom",
									"patching_rect" : [ 881.0, 319.0, 73.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 360.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-41",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.trig_mapper",
									"patching_rect" : [ 881.0, 450.0, 100.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 520.0, 164.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-42",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.equalizer~",
									"patching_rect" : [ 38.0, 329.0, 91.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 10.0, 380.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-43",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.cont_mapper",
									"patching_rect" : [ 881.0, 433.0, 104.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 500.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-44",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.echo~",
									"patching_rect" : [ 38.0, 295.0, 69.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 10.0, 340.0, 160.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-45",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.speaker.setup",
									"patching_rect" : [ 243.0, 191.0, 128.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 220.0, 220.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-46",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Loudspeaker setup and correction",
									"patching_rect" : [ 217.0, 172.0, 195.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 220.0, 190.0, 195.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-47",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"patching_rect" : [ 358.0, 438.0, 74.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-48",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"patching_rect" : [ 358.0, 462.0, 49.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-49",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio Spatialisation",
									"patching_rect" : [ 207.0, 78.0, 200.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 220.0, 80.0, 200.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-50",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "General modules",
									"patching_rect" : [ 217.0, 108.0, 195.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 220.0, 110.0, 195.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-51",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.ambi.adjust~",
									"patching_rect" : [ 243.0, 402.0, 125.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 220.0, 480.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-52",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.output~",
									"patching_rect" : [ 243.0, 320.0, 99.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 220.0, 380.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-53",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.multi.out~",
									"patching_rect" : [ 243.0, 268.0, 111.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 220.0, 320.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-54",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.multi.in~",
									"patching_rect" : [ 243.0, 251.0, 104.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 220.0, 300.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-55",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Multicable",
									"patching_rect" : [ 217.0, 234.0, 196.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 220.0, 270.0, 184.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-56",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ambisonics",
									"patching_rect" : [ 217.0, 351.0, 195.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 220.0, 410.0, 183.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-57",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.speaker.delay~",
									"patching_rect" : [ 243.0, 208.0, 136.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 220.0, 240.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-58",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.doppler~",
									"patching_rect" : [ 243.0, 131.0, 105.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 220.0, 140.0, 164.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-59",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.ambi.decode~",
									"patching_rect" : [ 243.0, 385.0, 131.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 220.0, 460.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-60",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.sur.ambi.encodeM~",
									"patching_rect" : [ 243.0, 368.0, 138.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 220.0, 440.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-61",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.scope~",
									"patching_rect" : [ 38.0, 214.0, 74.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 10.0, 240.0, 160.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-62",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.avg4%",
									"patching_rect" : [ 472.0, 199.0, 73.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 430.0, 240.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-63",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.fluoride%",
									"patching_rect" : [ 472.0, 284.0, 86.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 430.0, 340.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-64",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.emboss%",
									"patching_rect" : [ 472.0, 267.0, 87.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 430.0, 320.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-65",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"patching_rect" : [ 159.0, 540.0, 74.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-66",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"patching_rect" : [ 159.0, 564.0, 49.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-67",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Compositing",
									"patching_rect" : [ 450.0, 378.0, 195.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 430.0, 450.0, 183.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-68",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Filters",
									"patching_rect" : [ 450.0, 183.0, 192.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"presentation_rect" : [ 430.0, 210.0, 180.0, 19.0 ],
									"fontname" : "Verdana",
									"textcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
									"id" : "obj-69",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video I/O",
									"patching_rect" : [ 450.0, 108.0, 192.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 430.0, 110.0, 180.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-70",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.xfade%",
									"patching_rect" : [ 472.0, 410.0, 76.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 430.0, 500.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-71",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.input%",
									"patching_rect" : [ 472.0, 124.0, 74.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 430.0, 140.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-72",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.edge%",
									"patching_rect" : [ 472.0, 250.0, 73.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 430.0, 300.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-73",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.plur%",
									"patching_rect" : [ 472.0, 335.0, 68.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 430.0, 400.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-74",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Others",
									"patching_rect" : [ 857.0, 477.0, 155.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 850.0, 545.0, 155.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-75",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Controlling Jamoma",
									"patching_rect" : [ 857.0, 344.0, 158.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 850.0, 390.0, 158.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-76",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.midiin",
									"patching_rect" : [ 881.0, 182.0, 68.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 200.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-77",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Data I/O",
									"patching_rect" : [ 857.0, 108.0, 155.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 850.0, 110.0, 155.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-78",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.mouse",
									"patching_rect" : [ 881.0, 199.0, 71.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 220.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-79",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.orsize%",
									"patching_rect" : [ 472.0, 318.0, 78.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 430.0, 380.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-80",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Control",
									"patching_rect" : [ 857.0, 78.0, 157.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 850.0, 80.0, 157.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-81",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Video",
									"patching_rect" : [ 450.0, 78.0, 193.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 430.0, 80.0, 184.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-82",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio FX",
									"patching_rect" : [ 17.0, 242.0, 196.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 10.0, 270.0, 185.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-83",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Mixing and Metering",
									"patching_rect" : [ 17.0, 172.0, 194.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 10.0, 190.0, 182.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-84",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio I/O",
									"patching_rect" : [ 15.0, 105.0, 196.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 10.0, 110.0, 184.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-85",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio",
									"patching_rect" : [ 15.0, 75.0, 196.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 10.0, 80.0, 187.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-86",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.oscnet",
									"patching_rect" : [ 881.0, 250.0, 70.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 280.0, 160.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-87",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.mblur%",
									"patching_rect" : [ 472.0, 301.0, 78.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 430.0, 360.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-88",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.mapper",
									"patching_rect" : [ 881.0, 416.0, 76.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 480.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-89",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.hi",
									"patching_rect" : [ 881.0, 148.0, 47.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 160.0, 164.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-90",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.limiter~",
									"patching_rect" : [ 38.0, 346.0, 78.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 10.0, 400.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-91",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.input~",
									"patching_rect" : [ 30.0, 133.0, 71.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 10.0, 140.0, 160.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-92",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.wake%",
									"patching_rect" : [ 472.0, 352.0, 76.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 430.0, 420.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-93",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.saturation~",
									"patching_rect" : [ 38.0, 397.0, 98.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 10.0, 460.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-94",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.degrade~",
									"patching_rect" : [ 38.0, 261.0, 87.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 10.0, 300.0, 160.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-95",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.qmetro",
									"patching_rect" : [ 880.0, 520.0, 74.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 590.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-96",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.output~",
									"patching_rect" : [ 30.0, 150.0, 79.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 10.0, 160.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-97",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.control",
									"patching_rect" : [ 881.0, 365.0, 72.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 420.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-98",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.delay~",
									"patching_rect" : [ 38.0, 278.0, 73.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 10.0, 320.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-99",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.filter~",
									"patching_rect" : [ 38.0, 312.0, 69.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 10.0, 360.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-100",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.cuelist",
									"patching_rect" : [ 881.0, 382.0, 70.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 850.0, 440.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-101",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.op%",
									"patching_rect" : [ 472.0, 393.0, 61.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 430.0, 480.0, 163.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-102",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.noisegate~",
									"patching_rect" : [ 38.0, 380.0, 94.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 10.0, 440.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-103",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.brcosa%",
									"patching_rect" : [ 472.0, 233.0, 81.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 430.0, 280.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-104",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.motion%",
									"patching_rect" : [ 664.0, 267.0, 83.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 640.0, 320.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-105",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "jmod.crossfade~",
									"patching_rect" : [ 38.0, 197.0, 93.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 10.0, 220.0, 162.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-106",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"patching_rect" : [ 715.0, 484.0, 74.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-107",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"patching_rect" : [ 715.0, 506.0, 49.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-108",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Jamoma modules",
									"patching_rect" : [ 15.0, 16.0, 197.0, 28.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 20.0, 20.0, 197.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-109",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Overview of modules",
									"patching_rect" : [ 16.0, 42.0, 280.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 20.0, 50.0, 280.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-110",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 9.0, 0.0, 292.0, 63.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"rounded" : 15,
									"presentation_rect" : [ 10.0, 10.0, 292.0, 63.0 ],
									"id" : "obj-111",
									"numinlets" : 1
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-116", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Jamoma",
					"patching_rect" : [ 10.0, 26.0, 189.0, 28.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"fontsize" : 17.334082,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 20.0, 20.0, 189.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Overview of modules, examples, externals, javascripts and components",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"patching_rect" : [ 11.0, 52.0, 203.0, 31.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 20.0, 50.0, 244.0, 31.0 ],
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 4.0, 10.0, 205.0, 72.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"rounded" : 15,
					"presentation_rect" : [ 10.0, 10.0, 270.0, 80.0 ],
					"id" : "obj-8",
					"numinlets" : 1
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
