{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 279.0, 44.0, 1152.0, 547.0 ],
		"bglocked" : 0,
		"defrect" : [ 279.0, 44.0, 1152.0, 547.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 1 1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 520.0, 60.0, 46.5, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-53",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1 i 0",
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 785.0, 445.0, 36.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-52",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"patching_rect" : [ 930.0, 425.0, 100.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-51",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0 7 10 edczce",
					"outlettype" : [ "" ],
					"patching_rect" : [ 820.0, 390.0, 183.0, 16.0 ],
					"fontname" : "Arial",
					"id" : "obj-50",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"outlettype" : [ "" ],
					"patching_rect" : [ 460.0, 75.0, 48.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-42",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 310.0, 265.0, 32.5, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-19",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 342.0, 266.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 342.0, 266.0 ],
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
									"maxclass" : "outlet",
									"patching_rect" : [ 160.0, 170.0, 20.0, 20.0 ],
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 255.0, 170.0, 20.0, 20.0 ],
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"outlettype" : [ "" ],
									"patching_rect" : [ 45.0, 115.0, 48.0, 18.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 i 0",
									"outlettype" : [ "int", "int", "int" ],
									"patching_rect" : [ 55.0, 85.0, 218.0, 18.0 ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-14",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 2 ],
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
					"maxclass" : "newobj",
					"text" : "gate 1 1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 190.0, 70.0, 46.5, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-13",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1 i 0",
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 213.0, 261.0, 36.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-10",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 1 1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 755.0, 390.0, 46.5, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-49",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 1",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 610.0, 145.0, 32.5, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-48",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1 i 0",
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 600.0, 110.0, 36.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-15",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "select 1 $1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 610.0, 175.0, 59.0, 16.0 ],
					"fontname" : "Arial",
					"id" : "obj-12",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter layout @type msg_int @repetitions/allow 0",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 240.0, 35.0, 272.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-8",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "del 1000",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 895.0, 59.0, 70.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-44",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"outlettype" : [ "" ],
					"patching_rect" : [ 895.0, 39.0, 70.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-41",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 895.0, 18.0, 70.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-28",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"hint" : "set main patcher to fullscreen",
					"presentation_rect" : [ 74.0, 189.0, 70.0, 18.0 ],
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 186.0, 324.0, 63.0, 15.0 ],
					"fontname" : "Arial",
					"texton" : "! fullscreen !",
					"presentation" : 1,
					"id" : "obj-23",
					"mode" : 1,
					"numinlets" : 1,
					"text" : "fullscreen",
					"fontsize" : 10.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl nth 3",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 785.0, 415.0, 100.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-45",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "del 100",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 785.0, 157.0, 48.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-40",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b l",
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 785.0, 95.0, 39.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-36",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b clear",
					"outlettype" : [ "bang", "clear" ],
					"patching_rect" : [ 846.0, 83.0, 100.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-35",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /preset",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 724.0, 40.0, 112.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-34",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "refer #0-layout.presets, col 0 width 20, col 1 width 150",
					"outlettype" : [ "" ],
					"patching_rect" : [ 785.0, 181.0, 283.0, 16.0 ],
					"fontname" : "Arial",
					"id" : "obj-30",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.cellblock",
					"hint" : "layouts presets (click to recall)",
					"presentation_rect" : [ 1.0, 20.0, 147.0, 168.0 ],
					"cols" : 2,
					"outlettype" : [ "list", "", "", "" ],
					"outmode" : 1,
					"patching_rect" : [ 785.0, 205.0, 173.0, 178.0 ],
					"fontname" : "Arial",
					"presentation" : 1,
					"id" : "obj-25",
					"rows" : 6,
					"numinlets" : 2,
					"fontsize" : 10.0,
					"selmode" : 3,
					"hscroll" : 0,
					"numoutlets" : 4,
					"coldef" : [ [ 0, 20, 1, 1.0, 1.0, 1.0, 1, 1.0, 1.0, 1.0, -1, -1, -1 ], [ 1, 150, 1, 1.0, 1.0, 1.0, 1, 1.0, 1.0, 1.0, -1, -1, -1 ] ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "coll #0-layout.presets 1",
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 805.0, 134.5, 189.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-21",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 4,
					"save" : [ "#N", "coll", "$0-layout.presets", 1, ";" ],
					"saved_object_attributes" : 					{
						"embed" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /recall /dump",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 724.0, 60.0, 141.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-20",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/dump",
					"outlettype" : [ "" ],
					"patching_rect" : [ 846.0, 105.0, 84.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js jmod.layout.locate_patcher.js",
					"outlettype" : [ "" ],
					"patching_rect" : [ 381.0, 324.0, 174.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "fullscreen",
					"patching_rect" : [ 208.0, 344.0, 54.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-18",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "fullscreen $1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 186.0, 366.0, 76.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-7",
					"numinlets" : 2,
					"fontsize" : 11.595187,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 186.0, 343.0, 20.0, 20.0 ],
					"id" : "obj-46",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /preset/recall /preset/store",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 225.0, 225.0, 147.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"color" : [ 1.0, 0.52549, 0.05098, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"patching_rect" : [ 484.0, 342.0, 25.0, 25.0 ],
					"id" : "obj-1",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : "from hover"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 276.0, 405.0, 22.0, 22.0 ],
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : "to thispatcher"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "current layout",
					"annotation" : "",
					"presentation_rect" : [ 2.0, 188.0, 28.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 191.0, 34.0, 46.0, 19.0 ],
					"fontname" : "Arial",
					"presentation" : 1,
					"id" : "obj-4",
					"minimum" : 1,
					"triangle" : 0,
					"numinlets" : 1,
					"fontsize" : 11.040068,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/recall $1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 190.0, 100.0, 94.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/filter~ 0 70 1 /degrade~ 0 140 1 /limiter~ 0 210 1 /noise~ 300 70 1 /output~ 300 140 1",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"patching_rect" : [ 375.0, 455.0, 319.0, 27.0 ],
					"fontname" : "Arial",
					"id" : "obj-31",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle",
					"text" : "jcom.parameter positions @repetitions/allow 1 @type msg_list @description \"list of modules + position + show/hide\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 375.0, 413.0, 334.0, 31.0 ],
					"fontname" : "Verdana",
					"id" : "obj-29",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"outlettype" : [ "" ],
					"patching_rect" : [ 226.0, 128.0, 251.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 275.0, 295.0, 56.0, 19.0 ],
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"patching_rect" : [ 276.0, 346.0, 55.0, 19.0 ],
					"fontname" : "Verdana",
					"id" : "obj-26",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 276.0, 321.0, 95.0, 19.0 ],
					"fontname" : "Verdana",
					"id" : "obj-27",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"outlettype" : [ "" ],
					"patching_rect" : [ 286.0, 97.0, 40.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-32",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p LAYOUTS",
					"outlettype" : [ "", "", "bang" ],
					"patching_rect" : [ 276.0, 381.0, 228.0, 19.0 ],
					"fontname" : "Verdana",
					"id" : "obj-33",
					"numinlets" : 3,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 1201.0, 593.0, 182.0, 265.0 ],
						"bgcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 1201.0, 593.0, 182.0, 265.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 9.3,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"visible" : 1,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "button",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 415.0, 604.0, 20.0, 20.0 ],
									"id" : "obj-39",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "auto refresh list of module wen recalling a preset (only when inspector is opened)",
									"linecount" : 3,
									"patching_rect" : [ 433.0, 521.0, 150.0, 39.0 ],
									"fontname" : "Arial",
									"id" : "obj-38",
									"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.3,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"outlettype" : [ "" ],
									"patching_rect" : [ 389.0, 523.0, 40.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-31",
									"numinlets" : 2,
									"fontsize" : 9.3,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 389.0, 543.0, 30.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-29",
									"numinlets" : 1,
									"fontsize" : 9.3,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "del 500",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 389.0, 564.0, 61.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-28",
									"numinlets" : 2,
									"fontsize" : 9.3,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 77.0, 421.0, 30.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-25",
									"numinlets" : 1,
									"fontsize" : 9.3,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 400.0, 34.0, 30.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-24",
									"numinlets" : 1,
									"fontsize" : 9.3,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 467.0, 605.0, 25.0, 25.0 ],
									"id" : "obj-23",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : "to js.locate.patcher"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "refresh",
									"presentation_rect" : [ 128.0, 243.0, 38.0, 17.0 ],
									"patching_rect" : [ 485.0, 359.0, 41.0, 17.0 ],
									"fontname" : "Arial",
									"presentation" : 1,
									"id" : "obj-8",
									"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"hint" : "refresh list of modules",
									"presentation_rect" : [ 161.608063, 242.560425, 17.216118, 17.216118 ],
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 464.608063, 358.560425, 17.216118, 17.216118 ],
									"presentation" : 1,
									"id" : "obj-19",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"prototypename" : "Arial9",
									"presentation_rect" : [ 82.0, 164.0, 18.0, 18.0 ],
									"outlettype" : [ "int" ],
									"patching_rect" : [ 148.0, 121.0, 18.0, 18.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"id" : "obj-58",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "NoFloat",
									"presentation_rect" : [ 102.0, 163.0, 56.0, 21.0 ],
									"patching_rect" : [ 137.0, 96.0, 56.0, 21.0 ],
									"hidden" : 1,
									"fontname" : "Arial Bold Italic",
									"presentation" : 1,
									"id" : "obj-61",
									"frgb" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"textcolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 12.754706,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"prototypename" : "Arial9",
									"presentation_rect" : [ 21.0, 164.0, 18.0, 18.0 ],
									"outlettype" : [ "int" ],
									"patching_rect" : [ 111.0, 121.0, 18.0, 18.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"id" : "obj-117",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "View",
									"presentation_rect" : [ 40.0, 163.0, 41.0, 21.0 ],
									"patching_rect" : [ 100.0, 96.0, 41.0, 21.0 ],
									"hidden" : 1,
									"fontname" : "Arial Bold Italic",
									"presentation" : 1,
									"id" : "obj-115",
									"frgb" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"textcolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 12.754706,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p View",
									"presentation_rect" : [ 60.0, 187.0, 56.0, 20.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 111.0, 143.0, 56.0, 20.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"presentation" : 1,
									"id" : "obj-140",
									"numinlets" : 2,
									"fontsize" : 11.595187,
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 449.0, 484.0, 657.0, 488.0 ],
										"bglocked" : 0,
										"defrect" : [ 449.0, 484.0, 657.0, 488.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l",
													"outlettype" : [ "" ],
													"patching_rect" : [ 466.0, 378.0, 19.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-13",
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"prototypename" : "Arial9",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 466.0, 257.0, 18.0, 18.0 ],
													"id" : "obj-5",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"prototypename" : "Arial9",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 466.0, 279.0, 18.0, 18.0 ],
													"id" : "obj-6",
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1 0",
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 466.0, 301.0, 46.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-8",
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "savewindow 1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 362.0, 428.0, 76.0, 16.0 ],
													"fontname" : "Arial",
													"id" : "obj-1",
													"numinlets" : 2,
													"fontsize" : 10.435669,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim",
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 301.0, 32.5, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-63",
													"numinlets" : 2,
													"fontsize" : 10.435669,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim",
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 301.0, 32.5, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-62",
													"numinlets" : 2,
													"fontsize" : 10.435669,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l",
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 378.0, 19.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-37",
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window flags nofloat, window exec",
													"outlettype" : [ "" ],
													"patching_rect" : [ 466.0, 323.0, 170.0, 16.0 ],
													"fontname" : "Arial",
													"id" : "obj-38",
													"numinlets" : 2,
													"fontsize" : 10.435669,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window exec",
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 323.0, 70.0, 16.0 ],
													"fontname" : "Arial",
													"id" : "obj-39",
													"numinlets" : 2,
													"fontsize" : 10.435669,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l b",
													"outlettype" : [ "bang", "", "bang" ],
													"patching_rect" : [ 43.0, 279.0, 46.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-40",
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window flags grow, window flags zoom, window flags close",
													"linecount" : 3,
													"outlettype" : [ "" ],
													"patching_rect" : [ 70.0, 343.0, 102.0, 40.0 ],
													"fontname" : "Arial",
													"id" : "obj-42",
													"numinlets" : 2,
													"fontsize" : 10.435669,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend window size",
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 257.0, 108.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-43",
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Ymax",
													"patching_rect" : [ 208.0, 186.0, 37.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-45",
													"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Xmax",
													"patching_rect" : [ 157.0, 186.0, 37.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-46",
													"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Ymin",
													"patching_rect" : [ 105.0, 186.0, 34.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-47",
													"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Xmin",
													"patching_rect" : [ 54.0, 186.0, 34.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-48",
													"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "pref.",
													"patching_rect" : [ 180.0, 147.0, 31.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-49",
													"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0 0 0",
													"outlettype" : [ "int", "int", "int", "int" ],
													"patching_rect" : [ 43.0, 167.0, 173.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-51",
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "278 50 1247 600",
													"linecount" : 2,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 147.0, 83.0, 28.0 ],
													"fontname" : "Arial",
													"id" : "obj-52",
													"numinlets" : 2,
													"fontsize" : 10.435669,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 197.0, 205.0, 50.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-53",
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 146.0, 205.0, 50.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-54",
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak 0 0 0 0",
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 227.0, 173.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-55",
													"numinlets" : 4,
													"fontsize" : 10.435669,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 94.0, 205.0, 51.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-56",
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 43.0, 205.0, 50.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-57",
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l",
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 395.0, 19.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-35",
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window flags float, window exec",
													"outlettype" : [ "" ],
													"patching_rect" : [ 480.0, 343.0, 158.0, 16.0 ],
													"fontname" : "Arial",
													"id" : "obj-32",
													"numinlets" : 2,
													"fontsize" : 10.435669,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window exec",
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 323.0, 70.0, 16.0 ],
													"fontname" : "Arial",
													"id" : "obj-31",
													"numinlets" : 2,
													"fontsize" : 10.435669,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l b",
													"outlettype" : [ "bang", "", "bang" ],
													"patching_rect" : [ 283.0, 279.0, 46.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-30",
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window flags nogrow, window flags nozoom, window flags noclose",
													"linecount" : 3,
													"outlettype" : [ "" ],
													"patching_rect" : [ 310.0, 343.0, 114.0, 40.0 ],
													"fontname" : "Arial",
													"id" : "obj-29",
													"numinlets" : 2,
													"fontsize" : 10.435669,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend window size",
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 257.0, 108.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-28",
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Ymax",
													"patching_rect" : [ 448.0, 186.0, 37.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-27",
													"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Xmax",
													"patching_rect" : [ 397.0, 186.0, 37.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-26",
													"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Ymin",
													"patching_rect" : [ 345.0, 186.0, 34.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-23",
													"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Xmin",
													"patching_rect" : [ 294.0, 186.0, 34.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-22",
													"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "pref.",
													"patching_rect" : [ 411.0, 147.0, 31.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-20",
													"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0 0 0",
													"outlettype" : [ "int", "int", "int", "int" ],
													"patching_rect" : [ 283.0, 167.0, 173.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-18",
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "699 98 881 363",
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 147.0, 127.0, 16.0 ],
													"fontname" : "Arial",
													"id" : "obj-16",
													"numinlets" : 2,
													"fontsize" : 10.435669,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 437.0, 205.0, 50.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-12",
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 386.0, 205.0, 50.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-15",
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak 0 0 0 0",
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 227.0, 173.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-7",
													"numinlets" : 4,
													"fontsize" : 10.435669,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 334.0, 205.0, 51.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-4",
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 283.0, 205.0, 50.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-3",
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "view",
													"patching_rect" : [ 284.0, 69.0, 31.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-11",
													"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "presentation $1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 250.0, 90.0, 82.0, 16.0 ],
													"fontname" : "Arial",
													"id" : "obj-10",
													"numinlets" : 2,
													"fontsize" : 10.435669,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 250.0, 69.0, 32.5, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-9",
													"numinlets" : 2,
													"fontsize" : 10.435669,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"prototypename" : "Arial9",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 153.0, 17.0, 18.0, 18.0 ],
													"id" : "obj-44",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"prototypename" : "Arial9",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 153.0, 52.0, 18.0, 18.0 ],
													"id" : "obj-41",
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1 0",
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 153.0, 74.0, 46.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-25",
													"numinlets" : 1,
													"fontsize" : 10.435669,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"prototypename" : "Arial9",
													"patching_rect" : [ 250.0, 443.0, 18.0, 18.0 ],
													"id" : "obj-21",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-30", 2 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 2 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-7", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-7", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 2 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 3 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-16", 1 ],
													"hidden" : 0,
													"midpoints" : [ 292.5, 251.0, 274.0, 251.0, 274.0, 139.0, 400.5, 139.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-52", 1 ],
													"hidden" : 0,
													"midpoints" : [ 52.5, 251.0, 34.0, 251.0, 34.0, 139.0, 116.5, 139.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-51", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 3 ],
													"destination" : [ "obj-53", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 2 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 1 ],
													"destination" : [ "obj-56", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 0 ],
													"destination" : [ "obj-57", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-55", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-54", 0 ],
													"destination" : [ "obj-55", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-56", 0 ],
													"destination" : [ "obj-55", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-57", 0 ],
													"destination" : [ "obj-55", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-63", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 1 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-62", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 1 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-63", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 1 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 9.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"presentation_rect" : [ 66.0, 245.0, 49.0, 17.0 ],
									"bgcolor" : [ 0.74902, 0.74902, 0.827451, 1.0 ],
									"outlettype" : [ "", "", "int" ],
									"patching_rect" : [ 182.0, 13.0, 37.0, 17.0 ],
									"fontname" : "Arial",
									"presentation" : 1,
									"id" : "obj-17",
									"numinlets" : 1,
									"text" : "done",
									"fontsize" : 9.3,
									"bgovercolor" : [ 0.239216, 0.643137, 0.709804, 1.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "wclose",
									"outlettype" : [ "" ],
									"patching_rect" : [ 68.0, 70.0, 50.0, 15.0 ],
									"fontname" : "Arial",
									"id" : "obj-15",
									"numinlets" : 2,
									"fontsize" : 9.3,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 230.0, 85.0, 38.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 1,
									"fontsize" : 9.3,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "col 0 width 100, col 1 width 30, col 2 width 30, col 3 width 20",
									"linecount" : 4,
									"outlettype" : [ "" ],
									"patching_rect" : [ 230.0, 110.0, 76.0, 47.0 ],
									"fontname" : "Arial",
									"id" : "obj-12",
									"numinlets" : 2,
									"fontsize" : 9.3,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "column",
									"patching_rect" : [ 559.0, 92.0, 46.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-26",
									"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 11.595187,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 552.0, 111.0, 35.0, 20.0 ],
									"triscale" : 0.9,
									"fontname" : "Arial",
									"id" : "obj-32",
									"minimum" : 0,
									"maximum" : 4,
									"numinlets" : 1,
									"fontsize" : 11.595187,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 513.0, 112.0, 35.0, 20.0 ],
									"triscale" : 0.9,
									"fontname" : "Arial",
									"id" : "obj-33",
									"minimum" : 0,
									"maximum" : 100,
									"numinlets" : 1,
									"fontsize" : 11.595187,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 0",
									"outlettype" : [ "" ],
									"patching_rect" : [ 513.0, 137.0, 58.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-34",
									"numinlets" : 2,
									"fontsize" : 11.595187,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "col $2 width $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 513.0, 159.0, 86.0, 18.0 ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 2,
									"fontsize" : 11.595187,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "width",
									"patching_rect" : [ 512.0, 93.0, 37.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-7",
									"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 11.595187,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 0",
									"outlettype" : [ "" ],
									"patching_rect" : [ 317.0, 34.0, 64.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-5",
									"numinlets" : 1,
									"fontsize" : 9.3,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "click & drag modules in the main patcher",
									"linecount" : 2,
									"presentation_rect" : [ 6.0, 20.0, 177.0, 17.0 ],
									"patching_rect" : [ 516.0, 211.0, 173.0, 28.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"presentation" : 1,
									"id" : "obj-30",
									"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.3,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $i1 == 1 then bang else out2 bang",
									"linecount" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 331.0, 96.0, 104.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-27",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 1",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 96.0, 450.0, 36.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-20",
									"numinlets" : 2,
									"fontsize" : 9.3,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 27.0, 277.0, 72.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-16",
									"numinlets" : 1,
									"fontsize" : 9.3,
									"numoutlets" : 2,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $i1 == 0 then bang else out2 bang",
									"linecount" : 3,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 27.0, 182.0, 78.0, 39.0 ],
									"fontname" : "Verdana",
									"id" : "obj-18",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script hide add_modules",
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 244.0, 124.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-21",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script show add_modules",
									"outlettype" : [ "" ],
									"patching_rect" : [ 27.0, 227.0, 125.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "hidden 0",
									"outlettype" : [ "" ],
									"patching_rect" : [ 331.0, 129.0, 50.0, 15.0 ],
									"fontname" : "Arial",
									"id" : "obj-11",
									"numinlets" : 2,
									"fontsize" : 9.3,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "hidden 1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 416.0, 129.0, 50.0, 15.0 ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"numinlets" : 2,
									"fontsize" : 9.3,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "add_modules",
									"presentation_rect" : [ 0.0, 49.0, 182.0, 94.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 26.0, 301.0, 213.0, 95.0 ],
									"embed" : 1,
									"presentation" : 1,
									"id" : "obj-10",
									"numinlets" : 1,
									"args" : [  ],
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 0.0, 49.0, 182.0, 94.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
										"bglocked" : 0,
										"defrect" : [ 0.0, 49.0, 182.0, 94.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 1,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l l",
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 44.0, 476.0, 100.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-19",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"outlettype" : [ "" ],
													"patching_rect" : [ 44.0, 556.0, 49.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-17",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"outlettype" : [ "" ],
													"patching_rect" : [ 44.0, 571.0, 49.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-14",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script bringtofront %s",
													"outlettype" : [ "" ],
													"patching_rect" : [ 44.0, 601.0, 140.937729, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-8",
													"numinlets" : 1,
													"fontsize" : 9.295724,
													"numoutlets" : 1,
													"color" : [ 0.082353, 0.25098, 0.431373, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p auto.name",
													"outlettype" : [ "" ],
													"patching_rect" : [ 108.0, 204.0, 100.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-35",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"color" : [ 0.317647, 0.709804, 0.321569, 1.0 ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
														"bglocked" : 0,
														"defrect" : [ 50.0, 94.0, 640.0, 480.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 9.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "be sure that name start with a /",
																	"patching_rect" : [ 164.0, 195.0, 156.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-41",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "replace . by _",
																	"patching_rect" : [ 188.0, 133.0, 150.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-36",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (\\\\.) @substitute _",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 50.0, 132.0, 136.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-35",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (jmod.) @substitute %0",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 50.0, 101.0, 158.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-33",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "remove jmod.",
																	"patching_rect" : [ 212.0, 100.0, 150.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-27",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 51.0, 69.0, 25.0, 25.0 ],
																	"id" : "obj-31",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 99.0, 277.0, 25.0, 25.0 ],
																	"id" : "obj-32",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf /%s",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 99.0, 249.703308, 59.461533, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-3",
																	"numinlets" : 1,
																	"fontsize" : 9.295724,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl ecils 1",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 69.0, 220.0, 49.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-52",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "tosymbol",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 171.0, 50.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-53",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (.*\\\\/)(.*)",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 49.0, 193.0, 109.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-54",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 5
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 3 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 163.75, 123.0, 59.5, 123.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-54", 3 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 126.0, 210.0, 120.0, 210.0, 120.0, 243.0, 108.5, 243.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-52", 1 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-53", 0 ],
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-54", 1 ],
																	"destination" : [ "obj-52", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 3 ],
																	"destination" : [ "obj-53", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-53", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"fontname" : "Verdana",
														"default_fontsize" : 9.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 9.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p auto.name",
													"outlettype" : [ "" ],
													"patching_rect" : [ 67.0, 413.0, 100.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-34",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"color" : [ 0.317647, 0.709804, 0.321569, 1.0 ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
														"bglocked" : 0,
														"defrect" : [ 50.0, 94.0, 640.0, 480.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 9.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "be sure that name start with a /",
																	"patching_rect" : [ 164.0, 195.0, 156.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-41",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "replace . by _",
																	"patching_rect" : [ 188.0, 133.0, 150.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-36",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (\\\\.) @substitute _",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 50.0, 132.0, 136.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-35",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (jmod.) @substitute %0",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 50.0, 101.0, 158.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-33",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "remove jmod.",
																	"patching_rect" : [ 212.0, 100.0, 150.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-27",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 51.0, 69.0, 25.0, 25.0 ],
																	"id" : "obj-31",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 99.0, 277.0, 25.0, 25.0 ],
																	"id" : "obj-32",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf /%s",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 99.0, 249.703308, 59.461533, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-3",
																	"numinlets" : 1,
																	"fontsize" : 9.295724,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl ecils 1",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 69.0, 220.0, 49.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-52",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "tosymbol",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 171.0, 50.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-53",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (.*\\\\/)(.*)",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 49.0, 193.0, 109.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-54",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 5
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-53", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 3 ],
																	"destination" : [ "obj-53", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-54", 1 ],
																	"destination" : [ "obj-52", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-53", 0 ],
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-52", 1 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-54", 3 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 126.0, 210.0, 120.0, 210.0, 120.0, 243.0, 108.5, 243.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 3 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 163.75, 123.0, 59.5, 123.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"fontname" : "Verdana",
														"default_fontsize" : 9.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 9.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 47.0, 323.0, 38.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-30",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 44.0, 454.0, 42.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-28",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf store %s 100 100 1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 85.0, 500.703308, 145.461533, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-16",
													"numinlets" : 1,
													"fontsize" : 9.295724,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #0-modules_position 1",
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 84.659332, 524.655701, 179.512817, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-42",
													"numinlets" : 1,
													"fontsize" : 9.295724,
													"numoutlets" : 4,
													"save" : [ "#N", "coll", "1197-modules_position", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"hint" : "refresh modules list",
													"presentation_rect" : [ 167.0, 11.0, 10.0, 10.0 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 91.0, 20.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-10",
													"fgcolor" : [ 0.047059, 0.913725, 0.913725, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 125.0, 650.0, 25.0, 25.0 ],
													"id" : "obj-7",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 37.0, 38.0, 25.0, 25.0 ],
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "scripting + OSC name :",
													"presentation_rect" : [ 9.0, 47.0, 118.0, 17.0 ],
													"patching_rect" : [ 190.0, 306.0, 150.0, 17.0 ],
													"fontname" : "Verdana",
													"presentation" : 1,
													"id" : "obj-6",
													"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "module type :",
													"presentation_rect" : [ 7.0, 8.0, 73.0, 17.0 ],
													"patching_rect" : [ 94.0, 110.0, 150.0, 17.0 ],
													"fontname" : "Verdana",
													"presentation" : 1,
													"id" : "obj-2",
													"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 67.0, 283.0, 38.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-13",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 13",
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 116.0, 352.0, 46.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-12",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 67.0, 353.0, 42.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-11",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"hint" : "create module",
													"presentation_rect" : [ 2.0, 65.0, 20.0, 20.0 ],
													"bgcolor" : [ 0.823529, 0.431373, 0.431373, 0.74902 ],
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 67.0, 260.0, 20.0, 20.0 ],
													"presentation" : 1,
													"id" : "obj-9",
													"fgcolor" : [ 0.976471, 0.976471, 0.976471, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route text",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 90.0, 332.0, 68.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-5",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"outlettype" : [ "" ],
													"patching_rect" : [ 108.0, 281.0, 74.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-4",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "textedit",
													"text" : "/sur_multi_input~",
													"presentation_rect" : [ 25.0, 65.0, 150.0, 18.0 ],
													"outlettype" : [ "", "int", "", "" ],
													"patching_rect" : [ 90.0, 304.0, 97.0, 21.0 ],
													"fontname" : "Verdana",
													"presentation" : 1,
													"id" : "obj-3",
													"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
													"lines" : 1,
													"numinlets" : 1,
													"fontsize" : 9.0,
													"autoscroll" : 0,
													"numoutlets" : 4,
													"keymode" : 1,
													"tabmode" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script newdefault %s 100 100 bpatcher @name %s @presentation 1 @args %s",
													"outlettype" : [ "" ],
													"patching_rect" : [ 125.0, 564.0, 414.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-55",
													"numinlets" : 3,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p auto-path",
													"outlettype" : [ "int", "", "" ],
													"patching_rect" : [ 91.0, 45.0, 78.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-51",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 50.0, 94.0, 569.0, 452.0 ],
														"bglocked" : 0,
														"defrect" : [ 50.0, 94.0, 569.0, 452.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 9.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 33.0, 398.0, 25.0, 25.0 ],
																	"id" : "obj-3",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0 l",
																	"outlettype" : [ "int", "" ],
																	"patching_rect" : [ 28.0, 81.0, 45.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-2",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 28.0, 1.0, 25.0, 25.0 ],
																	"id" : "obj-1",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (.*)(\\\\/.*)",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 115.0, 329.0, 98.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-63",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl ecils 1",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 135.0, 349.0, 47.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-64",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (.*\\\\/).*$",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 135.0, 371.0, 104.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-65",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "user lib",
																	"patching_rect" : [ 186.0, 258.0, 144.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-14",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (.*)(\\\\/.*)",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 76.0, 216.0, 98.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl ecils 1",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 76.0, 236.0, 47.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-12",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (.*\\\\/).*$",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 76.0, 258.0, 104.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "Servo:/Users/pascalbaltazar/Documents/Docs_boulo/Max_trucs/Jamomactive/Jamoma/modules/",
																	"linecount" : 2,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 137.0, 295.0, 415.0, 26.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-10",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "Servo:/Users/pascalbaltazar/Documents/Docs_boulo/Max_trucs/Jamomactive/Jamoma/modules/control/",
																	"linecount" : 2,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 115.0, 194.0, 415.0, 26.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-5",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "strip everything after last /",
																	"patching_rect" : [ 165.0, 165.0, 144.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-16",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "tosymbol",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 55.0, 103.0, 50.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-19",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (.*)(\\\\/.*)",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 55.0, 122.0, 98.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-20",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "strip trailing slash",
																	"patching_rect" : [ 154.0, 123.0, 100.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-21",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl ecils 1",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 55.0, 142.0, 47.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-22",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (.*\\\\/).*$",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 55.0, 164.0, 104.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-23",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 28.0, 28.0, 20.0, 20.0 ],
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "Servo:/Users/pascalbaltazar/Documents/Docs_boulo/Max_trucs/Jamomactive/Jamoma/modules/control/layout/",
																	"linecount" : 2,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 119.0, 79.0, 419.0, 26.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-6",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jalg.layout.path",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 28.0, 53.0, 100.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-4",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 86.0, 398.0, 25.0, 25.0 ],
																	"id" : "obj-49",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 156.0, 400.0, 25.0, 25.0 ],
																	"id" : "obj-50",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 1 ],
																	"destination" : [ "obj-63", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-64", 0 ],
																	"destination" : [ "obj-65", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-63", 1 ],
																	"destination" : [ "obj-64", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 1 ],
																	"destination" : [ "obj-10", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 1 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 1 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 1 ],
																	"destination" : [ "obj-5", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-6", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 1 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 1 ],
																	"destination" : [ "obj-49", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-65", 1 ],
																	"destination" : [ "obj-50", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 1 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"fontname" : "Verdana",
														"default_fontsize" : 9.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 9.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p select-type",
													"outlettype" : [ "clear" ],
													"patching_rect" : [ 92.0, 150.0, 100.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-48",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 50.0, 94.0, 725.0, 392.0 ],
														"bglocked" : 0,
														"defrect" : [ 50.0, 94.0, 725.0, 392.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 9.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl slice 1",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 81.5, 268.0, 61.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-70",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp (.*)(\\\\..*)",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 49.87439, 239.060303, 147.0, 20.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-75",
																	"numinlets" : 1,
																	"fontsize" : 11.595187,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "refer jmods_user_lib, dump",
																	"linecount" : 2,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 528.0, 151.0, 132.0, 26.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-38",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "refer jmods_video, dump",
																	"linecount" : 2,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 407.0, 151.0, 120.0, 26.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-37",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "refer jmods_spat, dump",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 288.0, 151.0, 118.0, 15.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-36",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route symbol",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 50.0, 217.0, 87.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-35",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t i clear",
																	"outlettype" : [ "int", "clear" ],
																	"patching_rect" : [ 51.0, 100.0, 634.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-34",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "refer jmods_control, dump",
																	"linecount" : 2,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 169.0, 151.0, 127.0, 26.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-32",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "refer jmods_audio, dump",
																	"linecount" : 2,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 51.0, 151.0, 120.0, 26.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-31",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "coll jmods_audio 1",
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 50.0, 196.0, 122.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-28",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 4,
																	"save" : [ "#N", "coll", "jmods_audio", 1, ";" ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0 1 2 3 4",
																	"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "" ],
																	"patching_rect" : [ 51.0, 129.0, 612.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-27",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 6
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend append",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 81.0, 289.0, 87.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-51",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 51.0, 70.0, 25.0, 25.0 ],
																	"id" : "obj-46",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 81.0, 325.0, 25.0, 25.0 ],
																	"id" : "obj-47",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 4 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 3 ],
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 2 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 1 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-46", 0 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 1 ],
																	"destination" : [ "obj-47", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 675.5, 318.0, 90.5, 318.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-75", 1 ],
																	"destination" : [ "obj-70", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-51", 0 ],
																	"destination" : [ "obj-47", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-75", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-70", 0 ],
																	"destination" : [ "obj-51", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-28", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-28", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 178.5, 177.0, 59.5, 177.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-28", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 0 ],
																	"destination" : [ "obj-28", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 297.5, 192.0, 59.5, 192.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 0 ],
																	"destination" : [ "obj-28", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 416.5, 192.0, 59.5, 192.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-28", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 537.5, 192.0, 59.5, 192.0 ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"fontname" : "Verdana",
														"default_fontsize" : 9.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 9.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"presentation_rect" : [ 7.0, 28.0, 171.0, 17.0 ],
													"items" : [ "jmod.10_harmonics~", ",", "jmod.crossfade~", ",", "jmod.degrade~", ",", "jmod.delay~", ",", "jmod.echo~", ",", "jmod.equalizer~", ",", "jmod.filter~", ",", "jmod.fluidsynth~", ",", "jmod.input~", ",", "jmod.limiter~", ",", "jmod.multidelay~", ",", "jmod.noisegate~", ",", "jmod.noise~", ",", "jmod.output~", ",", "jmod.rissetGlissando~", ",", "jmod.saturation~", ",", "jmod.scope~", ",", "jmod.sine~", ",", "jmod.tremolo~", ",", "jmod.vst~" ],
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"patching_rect" : [ 92.0, 170.0, 181.0, 17.0 ],
													"fontname" : "Verdana",
													"presentation" : 1,
													"id" : "obj-29",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p video",
													"patching_rect" : [ 359.0, 78.0, 43.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-26",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 50.0, 94.0, 430.0, 420.0 ],
														"bglocked" : 0,
														"defrect" : [ 50.0, 94.0, 430.0, 420.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 9.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf store %s %s",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 188.0, 347.0, 100.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "coll jmods_video 1",
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 188.0, 385.0, 142.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 4,
																	"save" : [ "#N", "coll", "jmods_video", 1, ";" ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "starting by jmod.",
																	"patching_rect" : [ 295.5, 284.0, 97.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-68",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 187.5, 319.0, 49.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-69",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t l l",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 173.5, 236.0, 51.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-70",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 271.5, 285.0, 23.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-71",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp jmod[\\\\w]*",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 205.5, 256.0, 105.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-73",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "only .maxpat",
																	"patching_rect" : [ 275.5, 213.0, 69.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-74",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp .+\\\\.(maxpat)",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 124.87439, 211.060303, 147.0, 20.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-75",
																	"numinlets" : 1,
																	"fontsize" : 11.595187,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp .+/(.+)",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 109.5, 187.0, 80.0, 20.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-76",
																	"numinlets" : 1,
																	"fontsize" : 11.595187,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t count l clear",
																	"outlettype" : [ "count", "", "clear" ],
																	"patching_rect" : [ 94.5, 92.0, 311.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-77",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 1",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 247.5, 285.0, 23.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-78",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 46.5, 95.0, 42.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-79",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "uzi",
																	"outlettype" : [ "bang", "bang", "int" ],
																	"patching_rect" : [ 23.5, 74.0, 42.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-80",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route count",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 149.5, 147.0, 70.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-82",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "umenu",
																	"prefix" : "Servo:/Users/pascalbaltazar/Documents/Docs_boulo/Max_trucs/Jamomactive/Jamoma/Jamoma/modules/video",
																	"items" : [ "avg4%/jalg.avg4%.maxpat", ",", "avg4%/jmod.avg4%.maxhelp", ",", "avg4%/jmod.avg4%.maxpat", ",", "background%/jalg.background%.maxpat", ",", "background%/jmod.background%.maxhelp", ",", "background%/jmod.background%.maxpat", ",", "blur%/jalg.blur%.maxpat", ",", "blur%/jmod.blur%.maxhelp", ",", "blur%/jmod.blur%.maxpat", ",", "box%/jalg.box%.maxpat", ",", "box%/jmod.box%.maxhelp", ",", "box%/jmod.box%.maxpat", ",", "brcosa%/jalg.brcosa%.maxpat", ",", "brcosa%/jmod.brcosa%.maxhelp", ",", "brcosa%/jmod.brcosa%.maxpat", ",", "chromakey%/jalg.chromakey%.maxpat", ",", "chromakey%/jmod.chromakey%.maxhelp", ",", "chromakey%/jmod.chromakey%.maxpat", ",", "edge%/jalg.edge%.maxpat", ",", "edge%/jmod.edge%.maxhelp", ",", "edge%/jmod.edge%.maxpat", ",", "emboss%/jalg.emboss%.maxpat", ",", "emboss%/jmod.emboss%.maxhelp", ",", "emboss%/jmod.emboss%.maxpat", ",", "fluoride%/jalg.fluoride%.maxpat", ",", "fluoride%/jmod.fluoride%.maxhelp", ",", "fluoride%/jmod.fluoride%.maxpat", ",", "gl.alphamixer%/jalg.gl.alphamixer%.maxpat", ",", "gl.alphamixer%/jmod.gl.alphamixer%.maxhelp", ",", "gl.alphamixer%/jmod.gl.alphamixer%.maxpat", ",", "gl.edgeblend%/jalg.gl.edgeblend%.maxpat", ",", "gl.edgeblend%/jmod.gl.edgeblend%.maxhelp", ",", "gl.edgeblend%/jmod.gl.edgeblend%.maxpat", ",", "gl.td.rota%/jalg.gl.td.rota%.maxpat", ",", "gl.td.rota%/jmod.gl.td.rota%.maxhelp", ",", "gl.td.rota%/jmod.gl.td.rota%.maxpat", ",", "gl.text2d%/jmod.gl.text2d%.maxpat", ",", "gl.videoplane%/jalg.gl.videoplane%.maxpat", ",", "gl.videoplane%/jmod.gl.videoplane%.maxhelp", ",", "gl.videoplane%/jmod.gl.videoplane%.maxpat", ",", "input%/jalg.input%.maxpat", ",", "input%/jalg.input%.ui.maxpat", ",", "input%/jmod.input%.maxhelp", ",", "input%/jmod.input%.maxpat", ",", "keyscreen%/jalg.keyscreen%.maxpat", ",", "keyscreen%/jmod.keyscreen%.maxhelp", ",", "keyscreen%/jmod.keyscreen%.maxpat", ",", "mblur%/jalg.mblur%.maxpat", ",", "mblur%/jmod.mblur%.maxhelp", ",", "mblur%/jmod.mblur%.maxpat", ",", "motion%/jalg.motion%.maxpat", ",", "motion%/jmod.motion%.maxhelp", ",", "motion%/jmod.motion%.maxpat", ",", "motion2%/jalg.motion2%.maxpat", ",", "motion2%/jmod.motion2%.maxhelp", ",", "motion2%/jmod.motion2%.maxpat", ",", "motiongram%/jalg.motiongram%.maxpat", ",", "motiongram%/jmod.motiongram%.maxhelp", ",", "motiongram%/jmod.motiongram%.maxpat", ",", "movie_player%/jalg.movie_player%.maxpat", ",", "movie_player%/jmod.movie_player%.maxhelp", ",", "movie_player%/jmod.movie_player%.maxpat", ",", "op%/jalg.op%.maxpat", ",", "op%/jmod.op%.maxhelp", ",", "op%/jmod.op%.maxpat", ",", "orsize%/jalg.orsize%.maxpat", ",", "orsize%/jmod.orsize%.maxhelp", ",", "orsize%/jmod.orsize%.maxpat", ",", "output%/jalg.output%.maxpat", ",", "output%/jmod.output%.maxhelp", ",", "output%/jmod.output%.maxpat", ",", "plur%/jalg.plur%.maxpat", ",", "plur%/jmod.plur%.maxhelp", ",", "plur%/jmod.plur%.maxpat", ",", "record%/jalg.record%.maxpat", ",", "record%/jmod.record%.maxhelp", ",", "record%/jmod.record%.maxpat", ",", "similarity%/jalg.similarity%.maxpat", ",", "similarity%/jmod.similarity%.maxpat", ",", "wake%/jalg.wake%.maxpat", ",", "wake%/jmod.wake%.maxhelp", ",", "wake%/jmod.wake%.maxpat", ",", "xfade%/jalg.xfade%.maxpat", ",", "xfade%/jmod.xfade%.maxhelp", ",", "xfade%/jmod.xfade%.maxpat", ",", "yfade%/jalg.yfade%.maxpat", ",", "yfade%/jmod.yfade%.maxhelp", ",", "yfade%/jmod.yfade%.maxpat" ],
																	"outlettype" : [ "int", "", "" ],
																	"types" : "JSON",
																	"patching_rect" : [ 68.5, 125.0, 100.0, 17.0 ],
																	"fontname" : "Verdana",
																	"depth" : 4,
																	"id" : "obj-84",
																	"autopopulate" : 1,
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend prefix",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 94.5, 71.0, 75.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-85",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf %sJamoma/modules/video",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 94.5, 49.0, 170.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-67",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 94.5, 18.0, 25.0, 25.0 ],
																	"id" : "obj-17",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-67", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-67", 0 ],
																	"destination" : [ "obj-85", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-70", 0 ],
																	"destination" : [ "obj-69", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-71", 0 ],
																	"destination" : [ "obj-69", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-78", 0 ],
																	"destination" : [ "obj-69", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-70", 1 ],
																	"destination" : [ "obj-73", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-75", 2 ],
																	"destination" : [ "obj-70", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-73", 3 ],
																	"destination" : [ "obj-71", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-73", 2 ],
																	"destination" : [ "obj-78", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-76", 1 ],
																	"destination" : [ "obj-75", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-84", 1 ],
																	"destination" : [ "obj-76", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-80", 2 ],
																	"destination" : [ "obj-79", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-82", 0 ],
																	"destination" : [ "obj-80", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 159.0, 171.0, 15.5, 171.0, 15.5, 41.0, 33.0, 41.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-84", 2 ],
																	"destination" : [ "obj-82", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-85", 0 ],
																	"destination" : [ "obj-77", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-77", 1 ],
																	"destination" : [ "obj-84", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 250.0, 121.0, 78.0, 121.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-77", 0 ],
																	"destination" : [ "obj-84", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 104.0, 109.0, 90.0, 109.0, 90.0, 118.0, 78.0, 118.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-69", 0 ],
																	"destination" : [ "obj-2", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-69", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-79", 0 ],
																	"destination" : [ "obj-84", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 56.0, 118.0, 78.0, 118.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-77", 2 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 396.0, 361.0, 307.0, 361.0, 307.0, 376.0, 197.5, 376.0 ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"fontname" : "Verdana",
														"default_fontsize" : 9.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 9.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p spat",
													"patching_rect" : [ 299.0, 78.0, 39.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-25",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 50.0, 94.0, 430.0, 420.0 ],
														"bglocked" : 0,
														"defrect" : [ 50.0, 94.0, 430.0, 420.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 9.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf store %s %s",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 188.0, 347.0, 100.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "coll jmods_spat 1",
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 188.0, 385.0, 142.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 4,
																	"save" : [ "#N", "coll", "jmods_spat", 1, ";" ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "starting by jmod.",
																	"patching_rect" : [ 295.5, 284.0, 97.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-68",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 187.5, 319.0, 49.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-69",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t l l",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 173.5, 236.0, 51.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-70",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 271.5, 285.0, 23.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-71",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp jmod[\\\\w]*",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 205.5, 256.0, 105.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-73",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "only .maxpat",
																	"patching_rect" : [ 275.5, 213.0, 69.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-74",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp .+\\\\.(maxpat)",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 124.87439, 211.060303, 147.0, 20.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-75",
																	"numinlets" : 1,
																	"fontsize" : 11.595187,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp .+/(.+)",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 109.5, 187.0, 80.0, 20.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-76",
																	"numinlets" : 1,
																	"fontsize" : 11.595187,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t count l clear",
																	"outlettype" : [ "count", "", "clear" ],
																	"patching_rect" : [ 94.5, 92.0, 311.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-77",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 1",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 247.5, 285.0, 23.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-78",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 46.5, 95.0, 42.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-79",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "uzi",
																	"outlettype" : [ "bang", "bang", "int" ],
																	"patching_rect" : [ 23.5, 74.0, 42.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-80",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route count",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 149.5, 147.0, 70.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-82",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "umenu",
																	"prefix" : "Servo:/Users/pascalbaltazar/Documents/Docs_boulo/Max_trucs/Jamomactive/Jamoma/Jamoma/modules/spatialization",
																	"items" : [ "sur.ambi.adjust~/jalg.sur.ambi.adjust~.maxpat", ",", "sur.ambi.adjust~/jmod.sur.ambi.adjust~.maxhelp", ",", "sur.ambi.adjust~/jmod.sur.ambi.adjust~.maxpat", ",", "sur.ambi.decode~/jalg.sur.ambi.decode~.maxpat", ",", "sur.ambi.decode~/jmod.sur.ambi.decode~.maxhelp", ",", "sur.ambi.decode~/jmod.sur.ambi.decode~.maxpat", ",", "sur.ambi.encodeM~/jalg.sur.ambi.encodeM~.maxpat", ",", "sur.ambi.encodeM~/jmod.sur.ambi.encodeM~.maxhelp", ",", "sur.ambi.encodeM~/jmod.sur.ambi.encodeM~.maxpat", ",", "sur.dbap~/jalg.sur.dbap~.maxpat", ",", "sur.dbap~/jcom.sur.dbap.source_instance.maxpat", ",", "sur.dbap~/jcom.sur.dbap.speaker_instance.maxpat", ",", "sur.dbap~/jmod.sur.dbap~.maxhelp", ",", "sur.dbap~/jmod.sur.dbap~.maxpat", ",", "sur.doppler~/jalg.sur.doppler~.maxpat", ",", "sur.doppler~/jcom.sur.ch.doppler~.maxpat", ",", "sur.doppler~/jmod.sur.doppler~.maxhelp", ",", "sur.doppler~/jmod.sur.doppler~.maxpat", ",", "sur.multi.aux~/jalg.sur.multi.aux~.maxpat", ",", "sur.multi.aux~/jmod.sur.multi.aux~.maxhelp", ",", "sur.multi.aux~/jmod.sur.multi.aux~.maxpat", ",", "sur.multi.input~/jalg.sur.multi.input~.maxpat", ",", "sur.multi.input~/jmod.sur.multi.input~.maxhelp", ",", "sur.multi.input~/jmod.sur.multi.input~.maxpat", ",", "sur.multi.in~/jalg.sur.multi.in~.maxpat", ",", "sur.multi.in~/jmod.sur.multi.in~.maxhelp", ",", "sur.multi.in~/jmod.sur.multi.in~.maxpat", ",", "sur.multi.out~/jalg.sur.multi.out~.maxpat", ",", "sur.multi.out~/jmod.sur.multi.out~.maxhelp", ",", "sur.multi.out~/jmod.sur.multi.out~.maxpat", ",", "sur.output~/jalg.sur.output~.maxpat", ",", "sur.output~/jmod.sur.output~.maxhelp", ",", "sur.output~/jmod.sur.output~.maxpat", ",", "sur.position/jmod.sur.position.maxhelp", ",", "sur.position/jmod.sur.position.maxpat", ",", "sur.rolloff~/jalg.sur.rolloff~.maxpat", ",", "sur.rolloff~/jcom.sur.ch.rolloff~.maxpat", ",", "sur.rolloff~/jmod.sur.rolloff~.maxhelp", ",", "sur.rolloff~/jmod.sur.rolloff~.maxpat", ",", "sur.speaker.delay~/jalg.sur.speaker.delay~.maxpat", ",", "sur.speaker.delay~/jmod.sur.speaker.delay~.maxhelp", ",", "sur.speaker.delay~/jmod.sur.speaker.delay~.maxpat", ",", "sur.speaker.distamp~/jalg.sur.speaker.distamp~.maxpat", ",", "sur.speaker.distamp~/jmod.sur.speaker.distamp~.maxpat", ",", "sur.speaker.setup/jmod.sur.speaker.setup.maxhelp", ",", "sur.speaker.setup/jmod.sur.speaker.setup.maxpat", ",", "sur.vbap~/jalg.sur.vbap~.maxpat", ",", "sur.vbap~/jmod.sur.vbap~.maxhelp", ",", "sur.vbap~/jmod.sur.vbap~.maxpat" ],
																	"outlettype" : [ "int", "", "" ],
																	"types" : "JSON",
																	"patching_rect" : [ 68.5, 125.0, 100.0, 17.0 ],
																	"fontname" : "Verdana",
																	"depth" : 4,
																	"id" : "obj-84",
																	"autopopulate" : 1,
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend prefix",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 94.5, 71.0, 75.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-85",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf %sJamoma/modules/spatialization",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 94.5, 49.0, 218.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-67",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 94.5, 18.0, 25.0, 25.0 ],
																	"id" : "obj-17",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-67", 0 ],
																	"destination" : [ "obj-85", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-67", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-79", 0 ],
																	"destination" : [ "obj-84", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 56.0, 118.0, 78.0, 118.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-69", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-69", 0 ],
																	"destination" : [ "obj-2", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-77", 0 ],
																	"destination" : [ "obj-84", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 104.0, 109.0, 90.0, 109.0, 90.0, 118.0, 78.0, 118.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-77", 1 ],
																	"destination" : [ "obj-84", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 250.0, 121.0, 78.0, 121.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-85", 0 ],
																	"destination" : [ "obj-77", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-84", 2 ],
																	"destination" : [ "obj-82", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-82", 0 ],
																	"destination" : [ "obj-80", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 159.0, 171.0, 15.5, 171.0, 15.5, 41.0, 33.0, 41.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-80", 2 ],
																	"destination" : [ "obj-79", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-84", 1 ],
																	"destination" : [ "obj-76", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-76", 1 ],
																	"destination" : [ "obj-75", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-73", 2 ],
																	"destination" : [ "obj-78", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-73", 3 ],
																	"destination" : [ "obj-71", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-75", 2 ],
																	"destination" : [ "obj-70", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-70", 1 ],
																	"destination" : [ "obj-73", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-78", 0 ],
																	"destination" : [ "obj-69", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-71", 0 ],
																	"destination" : [ "obj-69", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-70", 0 ],
																	"destination" : [ "obj-69", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-77", 2 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 396.0, 361.0, 307.0, 361.0, 307.0, 376.0, 197.5, 376.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"fontname" : "Verdana",
														"default_fontsize" : 9.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 9.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p control",
													"patching_rect" : [ 239.0, 78.0, 50.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-24",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 50.0, 94.0, 430.0, 420.0 ],
														"bglocked" : 0,
														"defrect" : [ 50.0, 94.0, 430.0, 420.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 9.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf store %s %s",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 188.0, 347.0, 100.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "coll jmods_control 1",
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 188.0, 385.0, 142.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 4,
																	"save" : [ "#N", "coll", "jmods_control", 1, ";" ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "starting by jmod.",
																	"patching_rect" : [ 295.5, 284.0, 97.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-68",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 187.5, 319.0, 49.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-69",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t l l",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 173.5, 236.0, 51.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-70",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 271.5, 285.0, 23.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-71",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp jmod[\\\\w]*",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 205.5, 256.0, 105.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-73",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "only .maxpat",
																	"patching_rect" : [ 275.5, 213.0, 69.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-74",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp .+\\\\.(maxpat)",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 124.87439, 211.060303, 147.0, 20.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-75",
																	"numinlets" : 1,
																	"fontsize" : 11.595187,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp .+/(.+)",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 109.5, 187.0, 80.0, 20.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-76",
																	"numinlets" : 1,
																	"fontsize" : 11.595187,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t count l clear",
																	"outlettype" : [ "count", "", "clear" ],
																	"patching_rect" : [ 94.5, 92.0, 311.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-77",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 1",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 247.5, 285.0, 23.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-78",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 46.5, 95.0, 42.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-79",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "uzi",
																	"outlettype" : [ "bang", "bang", "int" ],
																	"patching_rect" : [ 23.5, 74.0, 42.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-80",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route count",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 149.5, 147.0, 70.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-82",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "umenu",
																	"prefix" : "Servo:/Users/pascalbaltazar/Documents/Docs_boulo/Max_trucs/Jamomactive/Jamoma/Jamoma/modules/control",
																	"items" : [ "bcf2000/jalg.bcf2000.maxpat", ",", "bcf2000/jmod.bcf2000.maxhelp", ",", "bcf2000/jmod.bcf2000.maxpat", ",", "colorpicker/jmod.colorpicker.maxhelp", ",", "colorpicker/jmod.colorpicker.maxpat", ",", "condition/jalg.condition.maxpat", ",", "condition/jmod.condition.maxhelp", ",", "condition/jmod.condition.maxpat", ",", "cont_mapper/jmod.cont_mapper.maxhelp", ",", "cont_mapper/jmod.cont_mapper.maxpat", ",", "continuum/jalg.continuum.maxpat", ",", "continuum/jalg.continuum_synth.maxpat", ",", "continuum/jmod.continuum.maxhelp", ",", "continuum/jmod.continuum.maxpat", ",", "control/jmod.control.maxhelp", ",", "control/jmod.control.maxpat", ",", "cpu_test/jmod.cpu_test.maxhelp", ",", "cpu_test/jmod.cpu_test.maxpat", ",", "cue_trigger/jmod.cue_trigger.maxhelp", ",", "cue_trigger/jmod.cue_trigger.maxpat", ",", "cuelist/jalg.cuelist.maxpat", ",", "cuelist/jmod.cuelist.maxhelp", ",", "cuelist/jmod.cuelist.maxpat", ",", "file_browser/jmod.file_browser.maxhelp", ",", "file_browser/jmod.file_browser.maxpat", ",", "hi/jalg.hi.maxpat", ",", "hi/jmod.hi.maxhelp", ",", "hi/jmod.hi.maxpat", ",", "layout/jalg.layout.path.maxpat", ",", "layout/jmod.layout.maxhelp", ",", "layout/jmod.layout.maxpat", ",", "mapper/jalg.mapper.maxpat", ",", "mapper/jalg.transformation.maxpat", ",", "mapper/jmod.mapper.maxhelp", ",", "mapper/jmod.mapper.maxpat", ",", "messages/jmod.messages.maxpat", ",", "midiin/jalg.midiin.maxpat", ",", "midiin/jmod.midiin.maxhelp", ",", "midiin/jmod.midiin.maxpat", ",", "mouse/jalg.mouse.maxpat", ",", "mouse/jmod.mouse.maxhelp", ",", "mouse/jmod.mouse.maxpat", ",", "mouse.gdif/jalg.mouse.gdif.maxpat", ",", "mouse.gdif/jmod.mouse.gdif.maxhelp", ",", "mouse.gdif/jmod.mouse.gdif.maxpat", ",", "multicast/jalg.multicast.maxpat", ",", "multicast/jalg.multicast_elt.maxpat", ",", "multicast/jmod.multicast.maxhelp", ",", "multicast/jmod.multicast.maxpat", ",", "oscnet/jalg.oscnet.maxpat", ",", "oscnet/jalg.oscnet.ui.maxpat", ",", "oscnet/jmod.oscnet.maxhelp", ",", "oscnet/jmod.oscnet.maxpat", ",", "palette/jalg.palette.maxpat", ",", "palette/jmod.palette.maxhelp", ",", "palette/jmod.palette.maxpat", ",", "polhemus/jalg.polhemus.maxpat", ",", "polhemus/jmod.polhemus.maxhelp", ",", "polhemus/jmod.polhemus.maxpat", ",", "qmetro/jalg.qmetro.maxpat", ",", "qmetro/jmod.qmetro.maxhelp", ",", "qmetro/jmod.qmetro.maxpat", ",", "qmetro/jmod.qmetro.test.maxpat", ",", "spacenavigator/jalg.spacenavigator.maxpat", ",", "spacenavigator/jmod.spacenavigator.maxhelp", ",", "spacenavigator/jmod.spacenavigator.maxpat", ",", "textwriter/jmod.textwriter.maxhelp", ",", "textwriter/jmod.textwriter.maxpat", ",", "trig_mapper/jmod.trig_mapper.maxhelp", ",", "trig_mapper/jmod.trig_mapper.maxpat", ",", "uc-33/jalg.uc-33.maxpat", ",", "uc-33/jmod.uc-33.maxhelp", ",", "uc-33/jmod.uc-33.maxpat", ",", "wacom/jalg.wacom.maxpat", ",", "wacom/jmod.wacom.maxhelp", ",", "wacom/jmod.wacom.maxpat" ],
																	"outlettype" : [ "int", "", "" ],
																	"types" : "JSON",
																	"patching_rect" : [ 68.5, 125.0, 100.0, 17.0 ],
																	"fontname" : "Verdana",
																	"depth" : 4,
																	"id" : "obj-84",
																	"autopopulate" : 1,
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend prefix",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 94.5, 71.0, 75.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-85",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf %sJamoma/modules/control",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 94.5, 49.0, 170.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-67",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 94.5, 18.0, 25.0, 25.0 ],
																	"id" : "obj-17",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-67", 0 ],
																	"destination" : [ "obj-85", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-67", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-70", 0 ],
																	"destination" : [ "obj-69", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-71", 0 ],
																	"destination" : [ "obj-69", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-78", 0 ],
																	"destination" : [ "obj-69", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-70", 1 ],
																	"destination" : [ "obj-73", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-75", 2 ],
																	"destination" : [ "obj-70", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-73", 3 ],
																	"destination" : [ "obj-71", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-73", 2 ],
																	"destination" : [ "obj-78", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-76", 1 ],
																	"destination" : [ "obj-75", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-84", 1 ],
																	"destination" : [ "obj-76", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-80", 2 ],
																	"destination" : [ "obj-79", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-82", 0 ],
																	"destination" : [ "obj-80", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 159.0, 171.0, 15.5, 171.0, 15.5, 41.0, 33.0, 41.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-84", 2 ],
																	"destination" : [ "obj-82", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-85", 0 ],
																	"destination" : [ "obj-77", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-77", 1 ],
																	"destination" : [ "obj-84", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 250.0, 121.0, 78.0, 121.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-77", 0 ],
																	"destination" : [ "obj-84", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 104.0, 109.0, 90.0, 109.0, 90.0, 118.0, 78.0, 118.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-69", 0 ],
																	"destination" : [ "obj-2", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-69", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-79", 0 ],
																	"destination" : [ "obj-84", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 56.0, 118.0, 78.0, 118.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-77", 2 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 396.0, 361.0, 307.0, 361.0, 307.0, 376.0, 197.5, 376.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"fontname" : "Verdana",
														"default_fontsize" : 9.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 9.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p audio",
													"patching_rect" : [ 179.0, 78.0, 44.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-18",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 50.0, 94.0, 430.0, 420.0 ],
														"bglocked" : 0,
														"defrect" : [ 50.0, 94.0, 430.0, 420.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 9.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf store %s %s",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 188.0, 347.0, 100.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "coll jmods_audio 1",
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 188.0, 385.0, 142.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 4,
																	"save" : [ "#N", "coll", "jmods_audio", 1, ";" ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "starting by jmod.",
																	"patching_rect" : [ 295.5, 284.0, 97.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-68",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 187.5, 319.0, 49.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-69",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t l l",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 173.5, 236.0, 51.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-70",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 271.5, 285.0, 23.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-71",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp jmod[\\\\w]*",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 205.5, 256.0, 105.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-73",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "only .maxpat",
																	"patching_rect" : [ 275.5, 213.0, 69.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-74",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp .+\\\\.(maxpat)",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 124.87439, 211.060303, 147.0, 20.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-75",
																	"numinlets" : 1,
																	"fontsize" : 11.595187,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp .+/(.+)",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 109.5, 187.0, 80.0, 20.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-76",
																	"numinlets" : 1,
																	"fontsize" : 11.595187,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t count l clear",
																	"outlettype" : [ "count", "", "clear" ],
																	"patching_rect" : [ 94.5, 92.0, 311.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-77",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 1",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 247.5, 285.0, 23.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-78",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 46.5, 95.0, 42.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-79",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "uzi",
																	"outlettype" : [ "bang", "bang", "int" ],
																	"patching_rect" : [ 23.5, 74.0, 42.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-80",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route count",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 149.5, 147.0, 70.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-82",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "umenu",
																	"prefix" : "Servo:/Users/pascalbaltazar/Documents/Docs_boulo/Max_trucs/Jamomactive/Jamoma/Jamoma/modules/audio",
																	"items" : [ "10harmonics~/jalg.10_harmonics~.maxpat", ",", "10harmonics~/jmod.10_harmonics~.maxhelp", ",", "10harmonics~/jmod.10_harmonics~.maxpat", ",", "crossfade~/jalg.crossfade~.maxpat", ",", "crossfade~/jmod.crossfade~.maxhelp", ",", "crossfade~/jmod.crossfade~.maxpat", ",", "degrade~/jalg.degrade~.maxpat", ",", "degrade~/jmod.degrade~.maxhelp", ",", "degrade~/jmod.degrade~.maxpat", ",", "delay~/jalg.delay~.maxpat", ",", "delay~/jmod.delay~.maxhelp", ",", "delay~/jmod.delay~.maxpat", ",", "echo~/jalg.echo~.maxpat", ",", "echo~/jmod.echo~.maxhelp", ",", "echo~/jmod.echo~.maxpat", ",", "equalizer~/jalg.equalizer~.maxpat", ",", "equalizer~/jalg.equalizer~_params.maxpat", ",", "equalizer~/jmod.equalizer~.maxhelp", ",", "equalizer~/jmod.equalizer~.maxpat", ",", "filter~/jalg.filter~.maxpat", ",", "filter~/jmod.filter~.maxhelp", ",", "filter~/jmod.filter~.maxpat", ",", "fluidsynth~/jalg.fluidsynth~.maxpat", ",", "fluidsynth~/jmod.fluidsynth~.maxhelp", ",", "fluidsynth~/jmod.fluidsynth~.maxpat", ",", "input~/jmod.input~.maxhelp", ",", "input~/jmod.input~.maxpat", ",", "limiter~/jmod.limiter~.maxhelp", ",", "limiter~/jmod.limiter~.maxpat", ",", "multidelay~/jalg.multidelay~.maxpat", ",", "multidelay~/jmod.multidelay~.maxhelp", ",", "multidelay~/jmod.multidelay~.maxpat", ",", "noisegate~/jalg.noisegate~.maxpat", ",", "noisegate~/jmod.noisegate~.maxhelp", ",", "noisegate~/jmod.noisegate~.maxpat", ",", "noise~/jalg.noise~.maxpat", ",", "noise~/jmod.noise~.maxhelp", ",", "noise~/jmod.noise~.maxpat", ",", "output~/jmod.output~.maxhelp", ",", "output~/jmod.output~.maxpat", ",", "rissetGlissando/jalg.rissetGlissando~.maxpat", ",", "rissetGlissando/jmod.rissetGlissando~.maxhelp", ",", "rissetGlissando/jmod.rissetGlissando~.maxpat", ",", "saturation~/jalg.saturation~.maxpat", ",", "saturation~/jmod.saturation~.maxhelp", ",", "saturation~/jmod.saturation~.maxpat", ",", "scope~/jmod.scope~.maxhelp", ",", "scope~/jmod.scope~.maxpat", ",", "sine~/jalg.sine~.maxpat", ",", "sine~/jmod.sine~.maxhelp", ",", "sine~/jmod.sine~.maxpat", ",", "tremolo~/jalg.tremolo~.maxpat", ",", "tremolo~/jmod.tremolo~.maxhelp", ",", "tremolo~/jmod.tremolo~.maxpat", ",", "vst~/jalg.vst~.maxpat", ",", "vst~/jmod.vst~.maxhelp", ",", "vst~/jmod.vst~.maxpat" ],
																	"outlettype" : [ "int", "", "" ],
																	"types" : "JSON",
																	"patching_rect" : [ 68.5, 125.0, 100.0, 17.0 ],
																	"fontname" : "Verdana",
																	"depth" : 4,
																	"id" : "obj-84",
																	"autopopulate" : 1,
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend prefix",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 94.5, 71.0, 75.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-85",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf %sJamoma/modules/audio",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 94.5, 49.0, 170.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-67",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 94.5, 18.0, 25.0, 25.0 ],
																	"id" : "obj-17",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-79", 0 ],
																	"destination" : [ "obj-84", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 56.0, 118.0, 78.0, 118.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-69", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-69", 0 ],
																	"destination" : [ "obj-2", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-77", 0 ],
																	"destination" : [ "obj-84", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 104.0, 109.0, 90.0, 109.0, 90.0, 118.0, 78.0, 118.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-77", 1 ],
																	"destination" : [ "obj-84", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 250.0, 121.0, 78.0, 121.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-85", 0 ],
																	"destination" : [ "obj-77", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-84", 2 ],
																	"destination" : [ "obj-82", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-82", 0 ],
																	"destination" : [ "obj-80", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 159.0, 171.0, 15.5, 171.0, 15.5, 41.0, 33.0, 41.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-80", 2 ],
																	"destination" : [ "obj-79", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-84", 1 ],
																	"destination" : [ "obj-76", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-76", 1 ],
																	"destination" : [ "obj-75", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-73", 2 ],
																	"destination" : [ "obj-78", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-73", 3 ],
																	"destination" : [ "obj-71", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-75", 2 ],
																	"destination" : [ "obj-70", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-70", 1 ],
																	"destination" : [ "obj-73", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-78", 0 ],
																	"destination" : [ "obj-69", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-71", 0 ],
																	"destination" : [ "obj-69", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-70", 0 ],
																	"destination" : [ "obj-69", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-67", 0 ],
																	"destination" : [ "obj-85", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-67", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-77", 2 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 396.0, 361.0, 307.0, 361.0, 307.0, 376.0, 197.5, 376.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"fontname" : "Verdana",
														"default_fontsize" : 9.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 9.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p user_lib",
													"patching_rect" : [ 120.5, 77.5, 55.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-15",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 50.0, 94.0, 470.0, 529.0 ],
														"bglocked" : 0,
														"defrect" : [ 50.0, 94.0, 470.0, 529.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 9.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf store %s %s",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 205.0, 428.0, 100.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "coll jmods_user_lib 1",
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 205.0, 466.0, 142.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 4,
																	"save" : [ "#N", "coll", "jmods_user_lib", 1, ";" ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "starting by jmod.",
																	"patching_rect" : [ 265.5, 369.5, 97.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-62",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 183.5, 371.5, 49.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-61",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t l l",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 213.5, 297.5, 51.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-60",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 306.5, 340.5, 23.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-59",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "print File",
																	"patching_rect" : [ 87.5, 449.5, 51.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-58",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp jmod[\\\\w]*",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 242.5, 319.5, 105.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-57",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "only .maxpat",
																	"patching_rect" : [ 287.5, 272.5, 69.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-45",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp .+\\\\.(maxpat)",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 160.87439, 271.560303, 125.0, 20.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-43",
																	"numinlets" : 1,
																	"fontsize" : 11.595187,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "regexp .+/(.+)",
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 145.5, 247.5, 80.0, 20.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-42",
																	"numinlets" : 1,
																	"fontsize" : 11.595187,
																	"numoutlets" : 5
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t count l clear",
																	"outlettype" : [ "count", "", "clear" ],
																	"patching_rect" : [ 166.5, 97.5, 252.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-41",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 1",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 282.5, 340.5, 23.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-50",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 61.5, 134.5, 42.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-39",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "uzi",
																	"outlettype" : [ "bang", "bang", "int" ],
																	"patching_rect" : [ 52.5, 111.5, 42.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-38",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"outlettype" : [ "int", "bang" ],
																	"patching_rect" : [ 60.5, 159.5, 50.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-37",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route count",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 185.5, 207.5, 70.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-34",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "count",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 233.5, 162.5, 50.0, 15.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-33",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "umenu",
																	"prefix" : "Servo:/Users/pascalbaltazar/Documents/Docs_boulo/Max_trucs/Jamomactive/Jamoma/modules/",
																	"items" : [ "audio/10harmonics~/jalg.10_harmonics~.maxpat", ",", "audio/10harmonics~/jmod.10_harmonics~.maxhelp", ",", "audio/10harmonics~/jmod.10_harmonics~.maxpat", ",", "audio/crossfade~/jalg.crossfade~.maxpat", ",", "audio/crossfade~/jmod.crossfade~.maxhelp", ",", "audio/crossfade~/jmod.crossfade~.maxpat", ",", "audio/degrade~/jalg.degrade~.maxpat", ",", "audio/degrade~/jmod.degrade~.maxhelp", ",", "audio/degrade~/jmod.degrade~.maxpat", ",", "audio/delay~/jalg.delay~.maxpat", ",", "audio/delay~/jmod.delay~.maxhelp", ",", "audio/delay~/jmod.delay~.maxpat", ",", "audio/echo~/jalg.echo~.maxpat", ",", "audio/echo~/jmod.echo~.maxhelp", ",", "audio/echo~/jmod.echo~.maxpat", ",", "audio/equalizer~/jalg.equalizer~.maxpat", ",", "audio/equalizer~/jalg.equalizer~_params.maxpat", ",", "audio/equalizer~/jmod.equalizer~.maxhelp", ",", "audio/equalizer~/jmod.equalizer~.maxpat", ",", "audio/filter~/jalg.filter~.maxpat", ",", "audio/filter~/jmod.filter~.maxhelp", ",", "audio/filter~/jmod.filter~.maxpat", ",", "audio/fluidsynth~/jalg.fluidsynth~.maxpat", ",", "audio/fluidsynth~/jmod.fluidsynth~.maxhelp", ",", "audio/fluidsynth~/jmod.fluidsynth~.maxpat", ",", "audio/input~/jmod.input~.maxhelp", ",", "audio/input~/jmod.input~.maxpat", ",", "audio/limiter~/jmod.limiter~.maxhelp", ",", "audio/limiter~/jmod.limiter~.maxpat", ",", "audio/multidelay~/jalg.multidelay~.maxpat", ",", "audio/multidelay~/jmod.multidelay~.maxhelp", ",", "audio/multidelay~/jmod.multidelay~.maxpat", ",", "audio/noisegate~/jalg.noisegate~.maxpat", ",", "audio/noisegate~/jmod.noisegate~.maxhelp", ",", "audio/noisegate~/jmod.noisegate~.maxpat", ",", "audio/noise~/jalg.noise~.maxpat", ",", "audio/noise~/jmod.noise~.maxhelp", ",", "audio/noise~/jmod.noise~.maxpat", ",", "audio/output~/jmod.output~.maxhelp", ",", "audio/output~/jmod.output~.maxpat", ",", "audio/rissetGlissando/jalg.rissetGlissando~.maxpat", ",", "audio/rissetGlissando/jmod.rissetGlissando~.maxhelp", ",", "audio/rissetGlissando/jmod.rissetGlissando~.maxpat", ",", "audio/saturation~/jalg.saturation~.maxpat", ",", "audio/saturation~/jmod.saturation~.maxhelp", ",", "audio/saturation~/jmod.saturation~.maxpat", ",", "audio/scope~/jmod.scope~.maxhelp", ",", "audio/scope~/jmod.scope~.maxpat", ",", "audio/sine~/jalg.sine~.maxpat", ",", "audio/sine~/jmod.sine~.maxhelp", ",", "audio/sine~/jmod.sine~.maxpat", ",", "audio/tremolo~/jalg.tremolo~.maxpat", ",", "audio/tremolo~/jmod.tremolo~.maxhelp", ",", "audio/tremolo~/jmod.tremolo~.maxpat", ",", "audio/vst~/jalg.vst~.maxpat", ",", "audio/vst~/jmod.vst~.maxhelp", ",", "audio/vst~/jmod.vst~.maxpat", ",", "control/bcf2000/jalg.bcf2000.maxpat", ",", "control/bcf2000/jmod.bcf2000.maxhelp", ",", "control/bcf2000/jmod.bcf2000.maxpat", ",", "control/colorpicker/jmod.colorpicker.maxhelp", ",", "control/colorpicker/jmod.colorpicker.maxpat", ",", "control/condition/jalg.condition.maxpat", ",", "control/condition/jmod.condition.maxhelp", ",", "control/condition/jmod.condition.maxpat", ",", "control/cont_mapper/jmod.cont_mapper.maxhelp", ",", "control/cont_mapper/jmod.cont_mapper.maxpat", ",", "control/continuum/jalg.continuum.maxpat", ",", "control/continuum/jalg.continuum_synth.maxpat", ",", "control/continuum/jmod.continuum.maxhelp", ",", "control/continuum/jmod.continuum.maxpat", ",", "control/control/jmod.control.maxhelp", ",", "control/control/jmod.control.maxpat", ",", "control/cpu_test/jmod.cpu_test.maxhelp", ",", "control/cpu_test/jmod.cpu_test.maxpat", ",", "control/cue_trigger/jmod.cue_trigger.maxhelp", ",", "control/cue_trigger/jmod.cue_trigger.maxpat", ",", "control/cuelist/jalg.cuelist.maxpat", ",", "control/cuelist/jmod.cuelist.maxhelp", ",", "control/cuelist/jmod.cuelist.maxpat", ",", "control/file_browser/jmod.file_browser.maxhelp", ",", "control/file_browser/jmod.file_browser.maxpat", ",", "control/hi/jalg.hi.maxpat", ",", "control/hi/jmod.hi.maxhelp", ",", "control/hi/jmod.hi.maxpat", ",", "control/layout/jalg.layout.path.maxpat", ",", "control/layout/jmod.layout.maxhelp", ",", "control/layout/jmod.layout.maxpat", ",", "control/mapper/jalg.mapper.maxpat", ",", "control/mapper/jalg.transformation.maxpat", ",", "control/mapper/jmod.mapper.maxhelp", ",", "control/mapper/jmod.mapper.maxpat", ",", "control/messages/jmod.messages.maxpat", ",", "control/midiin/jalg.midiin.maxpat", ",", "control/midiin/jmod.midiin.maxhelp", ",", "control/midiin/jmod.midiin.maxpat", ",", "control/mouse/jalg.mouse.maxpat", ",", "control/mouse/jmod.mouse.maxhelp", ",", "control/mouse/jmod.mouse.maxpat", ",", "control/mouse.gdif/jalg.mouse.gdif.maxpat", ",", "control/mouse.gdif/jmod.mouse.gdif.maxhelp", ",", "control/mouse.gdif/jmod.mouse.gdif.maxpat", ",", "control/multicast/jalg.multicast.maxpat", ",", "control/multicast/jalg.multicast_elt.maxpat", ",", "control/multicast/jmod.multicast.maxhelp", ",", "control/multicast/jmod.multicast.maxpat", ",", "control/oscnet/jalg.oscnet.maxpat", ",", "control/oscnet/jalg.oscnet.ui.maxpat", ",", "control/oscnet/jmod.oscnet.maxhelp", ",", "control/oscnet/jmod.oscnet.maxpat", ",", "control/palette/jalg.palette.maxpat", ",", "control/palette/jmod.palette.maxhelp", ",", "control/palette/jmod.palette.maxpat", ",", "control/polhemus/jalg.polhemus.maxpat", ",", "control/polhemus/jmod.polhemus.maxhelp", ",", "control/polhemus/jmod.polhemus.maxpat", ",", "control/qmetro/jalg.qmetro.maxpat", ",", "control/qmetro/jmod.qmetro.maxhelp", ",", "control/qmetro/jmod.qmetro.maxpat", ",", "control/qmetro/jmod.qmetro.test.maxpat", ",", "control/spacenavigator/jalg.spacenavigator.maxpat", ",", "control/spacenavigator/jmod.spacenavigator.maxhelp", ",", "control/spacenavigator/jmod.spacenavigator.maxpat", ",", "control/textwriter/jmod.textwriter.maxhelp", ",", "control/textwriter/jmod.textwriter.maxpat", ",", "control/trig_mapper/jmod.trig_mapper.maxhelp", ",", "control/trig_mapper/jmod.trig_mapper.maxpat", ",", "control/uc-33/jalg.uc-33.maxpat", ",", "control/uc-33/jmod.uc-33.maxhelp", ",", "control/uc-33/jmod.uc-33.maxpat", ",", "control/wacom/jalg.wacom.maxpat", ",", "control/wacom/jmod.wacom.maxhelp", ",", "control/wacom/jmod.wacom.maxpat", ",", "spatialization/sur.ambi.adjust~/jalg.sur.ambi.adjust~.maxpat", ",", "spatialization/sur.ambi.adjust~/jmod.sur.ambi.adjust~.maxhelp", ",", "spatialization/sur.ambi.adjust~/jmod.sur.ambi.adjust~.maxpat", ",", "spatialization/sur.ambi.decode~/jalg.sur.ambi.decode~.maxpat", ",", "spatialization/sur.ambi.decode~/jmod.sur.ambi.decode~.maxhelp", ",", "spatialization/sur.ambi.decode~/jmod.sur.ambi.decode~.maxpat", ",", "spatialization/sur.ambi.encodeM~/jalg.sur.ambi.encodeM~.maxpat", ",", "spatialization/sur.ambi.encodeM~/jmod.sur.ambi.encodeM~.maxhelp", ",", "spatialization/sur.ambi.encodeM~/jmod.sur.ambi.encodeM~.maxpat", ",", "spatialization/sur.dbap~/jalg.sur.dbap~.maxpat", ",", "spatialization/sur.dbap~/jcom.sur.dbap.source_instance.maxpat", ",", "spatialization/sur.dbap~/jcom.sur.dbap.speaker_instance.maxpat", ",", "spatialization/sur.dbap~/jmod.sur.dbap~.maxhelp", ",", "spatialization/sur.dbap~/jmod.sur.dbap~.maxpat", ",", "spatialization/sur.doppler~/jalg.sur.doppler~.maxpat", ",", "spatialization/sur.doppler~/jcom.sur.ch.doppler~.maxpat", ",", "spatialization/sur.doppler~/jmod.sur.doppler~.maxhelp", ",", "spatialization/sur.doppler~/jmod.sur.doppler~.maxpat", ",", "spatialization/sur.multi.aux~/jalg.sur.multi.aux~.maxpat", ",", "spatialization/sur.multi.aux~/jmod.sur.multi.aux~.maxhelp", ",", "spatialization/sur.multi.aux~/jmod.sur.multi.aux~.maxpat", ",", "spatialization/sur.multi.input~/jalg.sur.multi.input~.maxpat", ",", "spatialization/sur.multi.input~/jmod.sur.multi.input~.maxhelp", ",", "spatialization/sur.multi.input~/jmod.sur.multi.input~.maxpat", ",", "spatialization/sur.multi.in~/jalg.sur.multi.in~.maxpat", ",", "spatialization/sur.multi.in~/jmod.sur.multi.in~.maxhelp", ",", "spatialization/sur.multi.in~/jmod.sur.multi.in~.maxpat", ",", "spatialization/sur.multi.out~/jalg.sur.multi.out~.maxpat", ",", "spatialization/sur.multi.out~/jmod.sur.multi.out~.maxhelp", ",", "spatialization/sur.multi.out~/jmod.sur.multi.out~.maxpat", ",", "spatialization/sur.output~/jalg.sur.output~.maxpat", ",", "spatialization/sur.output~/jmod.sur.output~.maxhelp", ",", "spatialization/sur.output~/jmod.sur.output~.maxpat", ",", "spatialization/sur.position/jmod.sur.position.maxhelp", ",", "spatialization/sur.position/jmod.sur.position.maxpat", ",", "spatialization/sur.rolloff~/jalg.sur.rolloff~.maxpat", ",", "spatialization/sur.rolloff~/jcom.sur.ch.rolloff~.maxpat", ",", "spatialization/sur.rolloff~/jmod.sur.rolloff~.maxhelp", ",", "spatialization/sur.rolloff~/jmod.sur.rolloff~.maxpat", ",", "spatialization/sur.speaker.delay~/jalg.sur.speaker.delay~.maxpat", ",", "spatialization/sur.speaker.delay~/jmod.sur.speaker.delay~.maxhelp", ",", "spatialization/sur.speaker.delay~/jmod.sur.speaker.delay~.maxpat", ",", "spatialization/sur.speaker.distamp~/jalg.sur.speaker.distamp~.maxpat", ",", "spatialization/sur.speaker.distamp~/jmod.sur.speaker.distamp~.maxpat", ",", "spatialization/sur.speaker.setup/jmod.sur.speaker.setup.maxhelp", ",", "spatialization/sur.speaker.setup/jmod.sur.speaker.setup.maxpat", ",", "spatialization/sur.vbap~/jalg.sur.vbap~.maxpat", ",", "spatialization/sur.vbap~/jmod.sur.vbap~.maxhelp", ",", "spatialization/sur.vbap~/jmod.sur.vbap~.maxpat", ",", "video/avg4%/jalg.avg4%.maxpat", ",", "video/avg4%/jmod.avg4%.maxhelp", ",", "video/avg4%/jmod.avg4%.maxpat", ",", "video/background%/jalg.background%.maxpat", ",", "video/background%/jmod.background%.maxhelp", ",", "video/background%/jmod.background%.maxpat", ",", "video/blur%/jalg.blur%.maxpat", ",", "video/blur%/jmod.blur%.maxhelp", ",", "video/blur%/jmod.blur%.maxpat", ",", "video/box%/jalg.box%.maxpat", ",", "video/box%/jmod.box%.maxhelp", ",", "video/box%/jmod.box%.maxpat", ",", "video/brcosa%/jalg.brcosa%.maxpat", ",", "video/brcosa%/jmod.brcosa%.maxhelp", ",", "video/brcosa%/jmod.brcosa%.maxpat", ",", "video/chromakey%/jalg.chromakey%.maxpat", ",", "video/chromakey%/jmod.chromakey%.maxhelp", ",", "video/chromakey%/jmod.chromakey%.maxpat", ",", "video/edge%/jalg.edge%.maxpat", ",", "video/edge%/jmod.edge%.maxhelp", ",", "video/edge%/jmod.edge%.maxpat", ",", "video/emboss%/jalg.emboss%.maxpat", ",", "video/emboss%/jmod.emboss%.maxhelp", ",", "video/emboss%/jmod.emboss%.maxpat", ",", "video/fluoride%/jalg.fluoride%.maxpat", ",", "video/fluoride%/jmod.fluoride%.maxhelp", ",", "video/fluoride%/jmod.fluoride%.maxpat", ",", "video/gl.alphamixer%/jalg.gl.alphamixer%.maxpat", ",", "video/gl.alphamixer%/jmod.gl.alphamixer%.maxhelp", ",", "video/gl.alphamixer%/jmod.gl.alphamixer%.maxpat", ",", "video/gl.edgeblend%/jalg.gl.edgeblend%.maxpat", ",", "video/gl.edgeblend%/jmod.gl.edgeblend%.maxhelp", ",", "video/gl.edgeblend%/jmod.gl.edgeblend%.maxpat", ",", "video/gl.td.rota%/jalg.gl.td.rota%.maxpat", ",", "video/gl.td.rota%/jmod.gl.td.rota%.maxhelp", ",", "video/gl.td.rota%/jmod.gl.td.rota%.maxpat", ",", "video/gl.text2d%/jmod.gl.text2d%.maxpat", ",", "video/gl.videoplane%/jalg.gl.videoplane%.maxpat", ",", "video/gl.videoplane%/jmod.gl.videoplane%.maxhelp", ",", "video/gl.videoplane%/jmod.gl.videoplane%.maxpat", ",", "video/input%/jalg.input%.maxpat", ",", "video/input%/jalg.input%.ui.maxpat", ",", "video/input%/jmod.input%.maxhelp", ",", "video/input%/jmod.input%.maxpat", ",", "video/keyscreen%/jalg.keyscreen%.maxpat", ",", "video/keyscreen%/jmod.keyscreen%.maxhelp", ",", "video/keyscreen%/jmod.keyscreen%.maxpat", ",", "video/mblur%/jalg.mblur%.maxpat", ",", "video/mblur%/jmod.mblur%.maxhelp", ",", "video/mblur%/jmod.mblur%.maxpat", ",", "video/motion%/jalg.motion%.maxpat", ",", "video/motion%/jmod.motion%.maxhelp", ",", "video/motion%/jmod.motion%.maxpat", ",", "video/motion2%/jalg.motion2%.maxpat", ",", "video/motion2%/jmod.motion2%.maxhelp", ",", "video/motion2%/jmod.motion2%.maxpat", ",", "video/motiongram%/jalg.motiongram%.maxpat", ",", "video/motiongram%/jmod.motiongram%.maxhelp", ",", "video/motiongram%/jmod.motiongram%.maxpat", ",", "video/movie_player%/jalg.movie_player%.maxpat", ",", "video/movie_player%/jmod.movie_player%.maxhelp", ",", "video/movie_player%/jmod.movie_player%.maxpat", ",", "video/op%/jalg.op%.maxpat", ",", "video/op%/jmod.op%.maxhelp", ",", "video/op%/jmod.op%.maxpat", ",", "video/orsize%/jalg.orsize%.maxpat", ",", "video/orsize%/jmod.orsize%.maxhelp", ",", "video/orsize%/jmod.orsize%.maxpat", ",", "video/output%/jalg.output%.maxpat", ",", "video/output%/jmod.output%.maxhelp", ",", "video/output%/jmod.output%.maxpat", ",", "video/plur%/jalg.plur%.maxpat", ",", "video/plur%/jmod.plur%.maxhelp", ",", "video/plur%/jmod.plur%.maxpat", ",", "video/record%/jalg.record%.maxpat", ",", "video/record%/jmod.record%.maxhelp", ",", "video/record%/jmod.record%.maxpat", ",", "video/similarity%/jalg.similarity%.maxpat", ",", "video/similarity%/jmod.similarity%.maxpat", ",", "video/wake%/jalg.wake%.maxpat", ",", "video/wake%/jmod.wake%.maxhelp", ",", "video/wake%/jmod.wake%.maxpat", ",", "video/xfade%/jalg.xfade%.maxpat", ",", "video/xfade%/jmod.xfade%.maxhelp", ",", "video/xfade%/jmod.xfade%.maxpat", ",", "video/yfade%/jalg.yfade%.maxpat", ",", "video/yfade%/jmod.yfade%.maxhelp", ",", "video/yfade%/jmod.yfade%.maxpat" ],
																	"outlettype" : [ "int", "", "" ],
																	"types" : "JSON",
																	"patching_rect" : [ 104.5, 185.5, 100.0, 17.0 ],
																	"fontname" : "Verdana",
																	"depth" : 4,
																	"id" : "obj-31",
																	"autopopulate" : 1,
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend prefix",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 166.5, 71.5, 75.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-29",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 166.5, 40.0, 25.0, 25.0 ],
																	"id" : "obj-8",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-61", 0 ],
																	"destination" : [ "obj-2", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-61", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-41", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-41", 1 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-41", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-60", 0 ],
																	"destination" : [ "obj-61", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-59", 0 ],
																	"destination" : [ "obj-61", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-50", 0 ],
																	"destination" : [ "obj-61", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-60", 1 ],
																	"destination" : [ "obj-57", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-43", 2 ],
																	"destination" : [ "obj-60", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-57", 3 ],
																	"destination" : [ "obj-59", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-57", 2 ],
																	"destination" : [ "obj-50", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-42", 1 ],
																	"destination" : [ "obj-43", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 1 ],
																	"destination" : [ "obj-42", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 2 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 195.0, 231.5, 51.5, 231.5, 51.5, 101.5, 62.0, 101.5 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-39", 0 ],
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 2 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-41", 2 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 409.0, 453.0, 292.0, 453.0, 292.0, 462.0, 214.5, 462.0 ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"fontname" : "Verdana",
														"default_fontsize" : 9.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 9.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"presentation_rect" : [ 78.0, 8.0, 87.0, 17.0 ],
													"items" : [ "Audio", ",", "Control", ",", "Spatialization", ",", "Video", ",", "User_Lib" ],
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"patching_rect" : [ 92.0, 128.0, 100.0, 17.0 ],
													"fontname" : "Verdana",
													"presentation" : 1,
													"id" : "obj-87",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 2 ],
													"destination" : [ "obj-55", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 1 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-28", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 1 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 125.5, 376.0, 173.0, 376.0, 173.0, 252.0, 76.5, 252.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 1 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 2 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [ 159.5, 63.0, 188.5, 63.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 2 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [ 159.5, 63.0, 248.5, 63.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 2 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [ 159.5, 63.0, 308.5, 63.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 2 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [ 159.5, 63.0, 368.5, 63.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-87", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 1 ],
													"destination" : [ "obj-55", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-55", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-51", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 0 ],
													"destination" : [ "obj-87", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "tab",
									"presentation_rect" : [ 0.0, 0.0, 183.0, 20.0 ],
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 317.0, 59.0, 200.0, 20.0 ],
									"fontname" : "Arial",
									"presentation" : 1,
									"id" : "obj-4",
									"spacing_y" : 0.0,
									"tabs" : [ "Add", "Edit" ],
									"multiline" : 0,
									"numinlets" : 1,
									"fontsize" : 9.3,
									"valign" : 2,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p",
									"outlettype" : [ "", "bang", "" ],
									"patching_rect" : [ 326.971619, 357.569183, 100.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-97",
									"numinlets" : 2,
									"fontsize" : 9.3,
									"numoutlets" : 3,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 77.0, 396.0, 846.0, 540.0 ],
										"bglocked" : 0,
										"defrect" : [ 77.0, 396.0, 846.0, 540.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "refer jcom.Cue_Modules",
													"outlettype" : [ "" ],
													"patching_rect" : [ 610.0, 386.0, 119.0, 16.0 ],
													"fontname" : "Arial",
													"id" : "obj-25",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"outlettype" : [ "" ],
													"patching_rect" : [ 598.0, 208.0, 54.0, 18.0 ],
													"fontname" : "Verdana",
													"id" : "obj-19",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"outlettype" : [ "" ],
													"patching_rect" : [ 684.0, 207.0, 54.0, 18.0 ],
													"fontname" : "Verdana",
													"id" : "obj-18",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 652.0, 187.0, 51.0, 18.0 ],
													"fontname" : "Verdana",
													"id" : "obj-32",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b s",
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 685.0, 227.0, 48.0, 18.0 ],
													"fontname" : "Verdana",
													"id" : "obj-33",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "refer #0-modules_position",
													"outlettype" : [ "" ],
													"patching_rect" : [ 598.0, 323.0, 161.0, 16.0 ],
													"fontname" : "Arial",
													"id" : "obj-2",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "store $1 1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 627.0, 250.5, 65.0, 16.0 ],
													"fontname" : "Arial",
													"id" : "obj-3",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #0-modules_position 1",
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 635.0, 291.5, 138.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-13",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 4,
													"save" : [ "#N", "coll", "$0-modules_position", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 566.0, 187.0, 51.0, 18.0 ],
													"fontname" : "Verdana",
													"id" : "obj-6",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend remove",
													"outlettype" : [ "" ],
													"patching_rect" : [ 714.0, 248.0, 92.0, 18.0 ],
													"fontname" : "Verdana",
													"id" : "obj-7",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "print rem",
													"patching_rect" : [ 698.0, 348.0, 55.0, 18.0 ],
													"fontname" : "Verdana",
													"id" : "obj-8",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b s",
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 598.0, 228.0, 48.0, 18.0 ],
													"fontname" : "Verdana",
													"id" : "obj-10",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.receive notifications",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 566.0, 139.0, 188.0, 18.0 ],
													"fontname" : "Verdana",
													"id" : "obj-11",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route module.new module.removed",
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 566.0, 166.0, 190.0, 18.0 ],
													"fontname" : "Verdana",
													"id" : "obj-15",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 209.283447, 435.257477, 63.549702, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-5",
													"numinlets" : 2,
													"fontsize" : 8.462612,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script bringtofront %s",
													"outlettype" : [ "" ],
													"patching_rect" : [ 209.0, 455.0, 140.937729, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-1",
													"numinlets" : 1,
													"fontsize" : 9.295724,
													"numoutlets" : 1,
													"color" : [ 0.082353, 0.25098, 0.431373, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess refer #0-modules_position",
													"outlettype" : [ "" ],
													"patching_rect" : [ 16.002625, 448.877289, 145.629242, 15.0 ],
													"fontname" : "Verdana",
													"id" : "obj-114",
													"numinlets" : 1,
													"fontsize" : 6.622751,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "pour etre sur que c un symbol...",
													"patching_rect" : [ 348.028381, 154.430817, 150.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-9",
													"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"outlettype" : [ "" ],
													"patching_rect" : [ 338.028381, 138.430817, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-4",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p colors",
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 168.317322, 48.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-39",
													"numinlets" : 3,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 103.0, 381.0, 698.0, 590.0 ],
														"bglocked" : 0,
														"defrect" : [ 103.0, 381.0, 698.0, 590.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 9.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0 1",
																	"outlettype" : [ "bang", "bang", "" ],
																	"patching_rect" : [ 123.51062, 394.113495, 97.163124, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-34",
																	"numinlets" : 1,
																	"fontsize" : 8.390105,
																	"numoutlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 1",
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 125.0, 350.0, 100.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-31",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "hcellcolor 0.784314 1. 0.784314 255",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 163.404297, 434.078033, 163.0, 14.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-28",
																	"numinlets" : 2,
																	"fontsize" : 8.148671,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "hcellcolor 1. 0.784314 0.784314 255",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 124.418457, 414.617035, 163.0, 14.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-30",
																	"numinlets" : 2,
																	"fontsize" : 8.148671,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "i",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 125.0, 371.0, 35.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-27",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "==",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 125.0, 329.0, 55.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-22",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 80.0, 277.0, 50.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-21",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "200 255 200",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 241.092224, 282.48938, 64.0, 15.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-16",
																	"numinlets" : 2,
																	"fontsize" : 8.372468,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "255 200 200",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 176.99292, 282.404297, 64.0, 15.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"fontsize" : 8.372468,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0 1",
																	"outlettype" : [ "bang", "bang", "" ],
																	"patching_rect" : [ 177.51062, 261.113495, 97.163124, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-19",
																	"numinlets" : 1,
																	"fontsize" : 8.390105,
																	"numoutlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack row 0 brgb 0 0 0",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 80.0, 303.468109, 180.723404, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-20",
																	"numinlets" : 6,
																	"fontsize" : 8.390105,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "print",
																	"patching_rect" : [ 436.0, 487.0, 100.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "deferlow",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 82.0, 74.0, 56.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 82.028381, 43.0, 25.0, 25.0 ],
																	"id" : "obj-10",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 151.0, 69.0, 20.0, 20.0 ],
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 80.0, 211.0, 45.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t dump 0",
																	"outlettype" : [ "dump", "int" ],
																	"patching_rect" : [ 81.0, 143.0, 63.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl nth 3",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 80.0, 191.0, 47.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "counter",
																	"outlettype" : [ "int", "", "", "int" ],
																	"patching_rect" : [ 80.0, 231.0, 108.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-2",
																	"numinlets" : 5,
																	"fontsize" : 9.0,
																	"numoutlets" : 4
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "coll #0-modules_position 1",
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 81.013062, 163.939941, 175.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-17",
																	"numinlets" : 1,
																	"fontsize" : 9.242982,
																	"numoutlets" : 4,
																	"save" : [ "#N", "coll", "$0-modules_position", 1, ";" ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 269.0, 552.0, 25.0, 25.0 ],
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "hcellcolor 0.784314 1. 0.784314 255",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 437.404297, 305.078033, 163.0, 14.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-46",
																	"numinlets" : 2,
																	"fontsize" : 8.148671,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "hcellcolor 1. 0.784314 0.784314 255",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 429.418457, 287.617035, 163.0, 14.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-23",
																	"numinlets" : 2,
																	"fontsize" : 8.148671,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t l",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 394.028381, 439.595764, 34.163124, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-40",
																	"numinlets" : 1,
																	"fontsize" : 8.390105,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 345.801453, 246.205688, 19.432625, 19.432625 ],
																	"id" : "obj-36",
																	"numinlets" : 1,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "200 255 200",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 494.092224, 247.48938, 64.0, 15.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-35",
																	"numinlets" : 2,
																	"fontsize" : 8.372468,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "255 200 200",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 429.99292, 247.404297, 64.0, 15.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-24",
																	"numinlets" : 2,
																	"fontsize" : 8.372468,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0 1",
																	"outlettype" : [ "bang", "bang", "" ],
																	"patching_rect" : [ 430.51062, 226.113495, 97.163124, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-33",
																	"numinlets" : 1,
																	"fontsize" : 8.390105,
																	"numoutlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "$2",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 364.092224, 216.0, 48.581562, 14.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-32",
																	"numinlets" : 2,
																	"fontsize" : 8.148671,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack row 0 brgb 0 0 0",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 333.0, 268.468109, 180.723404, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-29",
																	"numinlets" : 6,
																	"fontsize" : 8.390105,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 363.028381, 89.0, 25.0, 25.0 ],
																	"id" : "obj-37",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 429.028381, 89.0, 25.0, 25.0 ],
																	"id" : "obj-38",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 1 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 0 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-29", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-29", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-29", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-40", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 1 ],
																	"destination" : [ "obj-46", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-46", 0 ],
																	"destination" : [ "obj-40", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-40", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-40", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-2", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-20", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-20", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 1 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 1 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 1 ],
																	"destination" : [ "obj-20", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-22", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 1 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 1 ],
																	"destination" : [ "obj-27", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 1 ],
																	"destination" : [ "obj-28", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-28", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 172.904297, 537.0, 278.5, 537.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 133.918457, 429.0, 129.0, 429.0, 129.0, 537.0, 278.5, 537.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 89.5, 537.0, 278.5, 537.0 ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"fontname" : "Verdana",
														"default_fontsize" : 9.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 9.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "fromsymbol",
													"outlettype" : [ "" ],
													"patching_rect" : [ 338.028381, 170.430817, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-149",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend store",
													"linecount" : 2,
													"outlettype" : [ "" ],
													"patching_rect" : [ 350.884766, 232.080963, 49.007832, 28.0 ],
													"fontname" : "Arial",
													"id" : "obj-138",
													"numinlets" : 1,
													"fontsize" : 9.484676,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t dump l clear",
													"outlettype" : [ "dump", "", "clear" ],
													"patching_rect" : [ 337.882141, 189.605759, 87.550911, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-137",
													"numinlets" : 1,
													"fontsize" : 9.242982,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl iter 4",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 350.884766, 213.877289, 53.744125, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-135",
													"numinlets" : 2,
													"fontsize" : 9.242982,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 78.028381, 135.939957, 17.336815, 17.336815 ],
													"id" : "obj-128",
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0 1",
													"outlettype" : [ "int", "int", "int" ],
													"patching_rect" : [ 297.746399, 348.650146, 110.684074, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-126",
													"numinlets" : 1,
													"fontsize" : 9.242982,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack script sendbox /nom presentation 1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 178.858643, 398.595306, 201.775452, 16.0 ],
													"fontname" : "Verdana",
													"id" : "obj-124",
													"numinlets" : 5,
													"fontsize" : 8.195202,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf store %s %i %i %i",
													"outlettype" : [ "" ],
													"patching_rect" : [ 115.283447, 174.549713, 134.802399, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-115",
													"numinlets" : 4,
													"fontsize" : 8.462612,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 159.538574, 138.514969, 46.217968, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-116",
													"numinlets" : 2,
													"fontsize" : 8.462612,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 3",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 115.283447, 119.257492, 63.549702, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-12",
													"numinlets" : 2,
													"fontsize" : 8.462612,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 2",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 70.028381, 100.0, 63.549702, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-117",
													"numinlets" : 2,
													"fontsize" : 8.462612,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b l",
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 115.041443, 308.775452, 42.475197, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-21",
													"numinlets" : 1,
													"fontsize" : 9.242982,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 210.393921, 320.911224, 69.684074, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-14",
													"numinlets" : 1,
													"fontsize" : 9.242982,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack script sendbox /filter~ presentation_position 0 0",
													"outlettype" : [ "" ],
													"patching_rect" : [ 115.041443, 369.454315, 247.916443, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-16",
													"numinlets" : 6,
													"fontsize" : 9.242982,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #0-modules_position 1",
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 115.041443, 285.370758, 307.498688, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-17",
													"numinlets" : 1,
													"fontsize" : 9.242982,
													"numoutlets" : 4,
													"save" : [ "#N", "coll", "$0-modules_position", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 193.028381, 40.0, 25.0, 25.0 ],
													"id" : "obj-92",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "list" ],
													"patching_rect" : [ 75.028381, 40.0, 25.0, 25.0 ],
													"id" : "obj-93",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 54.028381, 483.595306, 25.0, 25.0 ],
													"id" : "obj-94",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 83.028381, 483.595306, 25.0, 25.0 ],
													"id" : "obj-95",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 157.028381, 483.595306, 25.0, 25.0 ],
													"id" : "obj-96",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 1 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-137", 2 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 415.933044, 279.436035, 124.541443, 279.436035 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-138", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 360.384766, 266.433441, 124.541443, 266.433441 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-137", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 347.382141, 255.16449, 124.541443, 255.16449 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-115", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-114", 0 ],
													"destination" : [ "obj-94", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-96", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-149", 0 ],
													"destination" : [ "obj-137", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-135", 0 ],
													"destination" : [ "obj-138", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-137", 1 ],
													"destination" : [ "obj-135", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-117", 0 ],
													"destination" : [ "obj-128", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 1 ],
													"destination" : [ "obj-124", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 2 ],
													"destination" : [ "obj-126", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-124", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-126", 2 ],
													"destination" : [ "obj-124", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-126", 1 ],
													"destination" : [ "obj-16", 5 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-126", 0 ],
													"destination" : [ "obj-16", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-117", 1 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-116", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-116", 0 ],
													"destination" : [ "obj-115", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-115", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-16", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-116", 0 ],
													"destination" : [ "obj-39", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-117", 0 ],
													"destination" : [ "obj-39", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-149", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-92", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-92", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-93", 0 ],
													"destination" : [ "obj-117", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-94", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-128", 0 ],
													"destination" : [ "obj-95", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-96", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-124", 0 ],
													"destination" : [ "obj-96", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 1 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-94", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 9.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 78.0, 563.926697, 100.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-91",
									"numinlets" : 5,
									"fontsize" : 9.3,
									"numoutlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 244.0, 70.0, 884.0, 876.0 ],
										"bglocked" : 0,
										"defrect" : [ 244.0, 70.0, 884.0, 876.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p refresh",
													"patching_rect" : [ 88.0, 125.0, 70.0, 17.0 ],
													"fontname" : "Verdana",
													"id" : "obj-2",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 0,
													"color" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 307.0, 183.0, 456.0, 409.0 ],
														"bglocked" : 0,
														"defrect" : [ 307.0, 183.0, 456.0, 409.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 9.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "coll #0-modules_position 1",
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 29.659332, 360.655701, 120.512817, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-23",
																	"numinlets" : 1,
																	"fontsize" : 9.295724,
																	"numoutlets" : 4,
																	"save" : [ "#N", "coll", "$0-modules_position", 1, ";" ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 49.0, 45.0, 25.0, 25.0 ],
																	"id" : "obj-21",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 104.0, 245.0, 38.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-14",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 30.0, 299.0, 38.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-13",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t l l 1",
																	"outlettype" : [ "", "", "int" ],
																	"patching_rect" : [ 49.0, 132.0, 63.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-12",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "if not, store it",
																	"patching_rect" : [ 255.0, 342.0, 92.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-10",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "check if symnol exists in coll",
																	"patching_rect" : [ 240.0, 206.0, 150.0, 17.0 ],
																	"fontname" : "Verdana",
																	"id" : "obj-9",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl slice 1",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 49.0, 75.333344, 64.065933, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-144",
																	"numinlets" : 2,
																	"fontsize" : 9.295724,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 30.0, 318.714294, 67.849823, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-113",
																	"numinlets" : 1,
																	"fontsize" : 9.295724,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl slice 2",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 93.952362, 95.333344, 49.065933, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-103",
																	"numinlets" : 2,
																	"fontsize" : 9.295724,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "itoa",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 49.0, 112.194153, 31.849817, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-101",
																	"numinlets" : 3,
																	"fontsize" : 9.295724,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "atoi",
																	"outlettype" : [ "list" ],
																	"patching_rect" : [ 49.0, 94.39563, 30.989012, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-100",
																	"numinlets" : 3,
																	"fontsize" : 9.295724,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "filter unnamed objects",
																	"patching_rect" : [ 148.875458, 95.534821, 97.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-97",
																	"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
																	"numinlets" : 1,
																	"fontsize" : 9.071487,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route symbol",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 104.091583, 226.175812, 86.080589, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"fontsize" : 9.295724,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack store /nom 0 0 1",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 30.0, 339.703308, 214.461533, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-6",
																	"numinlets" : 5,
																	"fontsize" : 9.295724,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend symbol",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 70.659332, 185.996338, 86.941391, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-48",
																	"numinlets" : 1,
																	"fontsize" : 9.295724,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "coll #0-modules_position 1",
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 70.659332, 205.655701, 120.512817, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-42",
																	"numinlets" : 1,
																	"fontsize" : 9.295724,
																	"numoutlets" : 4,
																	"save" : [ "#N", "coll", "$0-modules_position", 1, ";" ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0
																	}

																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-48", 0 ],
																	"destination" : [ "obj-42", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-42", 1 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-144", 1 ],
																	"destination" : [ "obj-103", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-144", 0 ],
																	"destination" : [ "obj-100", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-113", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-113", 1 ],
																	"destination" : [ "obj-6", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-103", 0 ],
																	"destination" : [ "obj-6", 2 ],
																	"hidden" : 0,
																	"midpoints" : [ 103.452362, 124.0, 122.0, 124.0, 122.0, 175.0, 218.0, 175.0, 218.0, 286.0, 137.230774, 286.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-100", 0 ],
																	"destination" : [ "obj-101", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 1 ],
																	"destination" : [ "obj-48", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 2 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 102.5, 172.0, 39.5, 172.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-13", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 113.5, 274.0, 39.5, 274.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-113", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-101", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-144", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"fontname" : "Verdana",
														"default_fontsize" : 9.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 9.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script bringtofront %s",
													"outlettype" : [ "" ],
													"patching_rect" : [ 416.791199, 721.893799, 140.937729, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-1",
													"numinlets" : 1,
													"fontsize" : 9.295724,
													"numoutlets" : 1,
													"color" : [ 0.082353, 0.25098, 0.431373, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 633.36554, 598.553711, 69.684074, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-76",
													"numinlets" : 1,
													"fontsize" : 9.242982,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"outlettype" : [ "" ],
													"patching_rect" : [ 592.0, 646.073242, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-66",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "del 1000",
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 535.0, 535.073242, 53.0, 18.0 ],
													"fontname" : "Arial",
													"id" : "obj-67",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl group",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 591.950378, 625.592896, 86.684074, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-68",
													"numinlets" : 2,
													"fontsize" : 9.242982,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #0-modules_position 1",
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 592.013062, 576.013184, 140.498688, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-71",
													"numinlets" : 1,
													"fontsize" : 9.242982,
													"numoutlets" : 4,
													"save" : [ "#N", "coll", "$0-modules_position", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "dump",
													"outlettype" : [ "" ],
													"patching_rect" : [ 591.0, 556.062866, 52.877285, 16.0 ],
													"fontname" : "Arial",
													"id" : "obj-72",
													"numinlets" : 2,
													"fontsize" : 9.939816,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 694.073242, 73.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-65",
													"numinlets" : 2,
													"fontsize" : 9.3,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 81.0, 672.073242, 29.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-62",
													"numinlets" : 1,
													"fontsize" : 9.3,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 672.073242, 29.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-36",
													"numinlets" : 1,
													"fontsize" : 9.3,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel none",
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 50.0, 652.073242, 50.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-5",
													"numinlets" : 1,
													"fontsize" : 9.3,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "del 10",
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 92.0, 599.073242, 43.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-60",
													"numinlets" : 2,
													"fontsize" : 9.3,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t stop",
													"outlettype" : [ "stop" ],
													"patching_rect" : [ 55.0, 592.073242, 35.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-47",
													"numinlets" : 1,
													"fontsize" : 9.3,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "onebang",
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 92.0, 624.073242, 66.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-24",
													"numinlets" : 2,
													"fontsize" : 9.3,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 116.0, 459.073273, 58.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-54",
													"numinlets" : 1,
													"fontsize" : 9.3,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 139.0, 428.073273, 50.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-49",
													"numinlets" : 1,
													"fontsize" : 9.3,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 92.0, 533.073242, 58.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-23",
													"numinlets" : 1,
													"fontsize" : 9.3,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 155.0, 563.073242, 39.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-46",
													"numinlets" : 2,
													"fontsize" : 9.3,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 92.0, 513.073242, 42.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-33",
													"numinlets" : 2,
													"fontsize" : 9.3,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 114.0, 563.073242, 39.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-25",
													"numinlets" : 2,
													"fontsize" : 9.3,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "print --locate-bang",
													"patching_rect" : [ 72.0, 339.073273, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-19",
													"numinlets" : 1,
													"fontsize" : 9.3,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 404.0, 454.073273, 42.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-44",
													"numinlets" : 2,
													"fontsize" : 9.3,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 118.0, 376.073273, 32.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-38",
													"numinlets" : 2,
													"fontsize" : 9.3,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 340.0, 454.073273, 42.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-32",
													"numinlets" : 2,
													"fontsize" : 9.3,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 35.",
													"outlettype" : [ "float" ],
													"patching_rect" : [ 427.0, 513.573242, 41.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-29",
													"numinlets" : 2,
													"fontsize" : 9.3,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 35.",
													"outlettype" : [ "float" ],
													"patching_rect" : [ 427.0, 475.073273, 41.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-30",
													"numinlets" : 2,
													"fontsize" : 9.3,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "round",
													"outlettype" : [ "" ],
													"patching_rect" : [ 427.0, 494.573273, 41.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-31",
													"numinlets" : 1,
													"fontsize" : 9.3,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 150.",
													"outlettype" : [ "float" ],
													"patching_rect" : [ 363.0, 513.573242, 41.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-28",
													"numinlets" : 2,
													"fontsize" : 9.3,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 150.",
													"outlettype" : [ "float" ],
													"patching_rect" : [ 363.0, 475.073273, 41.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-27",
													"numinlets" : 2,
													"fontsize" : 9.3,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "round",
													"outlettype" : [ "" ],
													"patching_rect" : [ 363.0, 494.573273, 41.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-26",
													"numinlets" : 1,
													"fontsize" : 9.3,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "parceque sinon, une liste est tronquée par jcom.parameter",
													"linecount" : 2,
													"patching_rect" : [ 704.0, 627.073242, 150.0, 29.0 ],
													"fontname" : "Arial",
													"id" : "obj-10",
													"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 214.597076, 183.39563, 28.406593, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-143",
													"numinlets" : 1,
													"fontsize" : 9.295724,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1 0",
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 195.824188, 100.0, 86.941391, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-142",
													"numinlets" : 1,
													"fontsize" : 9.295724,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "nopoll",
													"outlettype" : [ "" ],
													"patching_rect" : [ 229.230774, 119.659363, 36.153847, 16.0 ],
													"fontname" : "Arial",
													"id" : "obj-141",
													"numinlets" : 2,
													"fontsize" : 9.763547,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "poll",
													"outlettype" : [ "" ],
													"patching_rect" : [ 195.659332, 119.659363, 31.849817, 16.0 ],
													"fontname" : "Arial",
													"id" : "obj-140",
													"numinlets" : 2,
													"fontsize" : 9.763547,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 230.091583, 333.175812, 86.080589, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-11",
													"numinlets" : 1,
													"fontsize" : 9.295724,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 195.659332, 270.337006, 86.941391, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-74",
													"numinlets" : 1,
													"fontsize" : 9.295724,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 195.659332, 204.054962, 37.875458, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-70",
													"numinlets" : 2,
													"fontsize" : 9.295724,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b l",
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 195.659332, 354.695953, 86.941391, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-64",
													"numinlets" : 1,
													"fontsize" : 9.295724,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack store /filter~ 100 100 1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 196.659332, 719.446899, 156.780212, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-63",
													"numinlets" : 5,
													"fontsize" : 9.295724,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #0-modules_position 1",
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 196.659332, 740.106201, 120.512817, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-61",
													"numinlets" : 1,
													"fontsize" : 9.295724,
													"numoutlets" : 4,
													"save" : [ "#N", "coll", "$0-modules_position", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 329.399231, 398.483551, 24.963369, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-59",
													"numinlets" : 2,
													"fontsize" : 9.295724,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0 1",
													"outlettype" : [ "int", "int", "int" ],
													"patching_rect" : [ 265.384613, 376.216156, 146.080597, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-58",
													"numinlets" : 1,
													"fontsize" : 9.295724,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 265.245422, 397.20517, 24.963369, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-57",
													"numinlets" : 2,
													"fontsize" : 9.295724,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1 0",
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 195.659332, 225.575104, 41.31868, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-56",
													"numinlets" : 1,
													"fontsize" : 9.295724,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 195.659332, 247.956055, 63.699635, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-55",
													"numinlets" : 2,
													"fontsize" : 9.295724,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack script sendbox /filter~ presentation_position 0 0",
													"outlettype" : [ "" ],
													"patching_rect" : [ 399.791199, 698.893799, 253.937729, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-53",
													"numinlets" : 6,
													"fontsize" : 9.295724,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 195.659332, 182.534821, 17.216118, 17.216118 ],
													"id" : "obj-20",
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 317.227112, 173.487183, 43.9011, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-50",
													"numinlets" : 1,
													"fontsize" : 9.295724,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 276.123657, 173.487183, 43.9011, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-18",
													"numinlets" : 1,
													"fontsize" : 9.295724,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Ver. Delta",
													"linecount" : 2,
													"patching_rect" : [ 325.835205, 189.842499, 36.153847, 28.0 ],
													"fontname" : "Arial",
													"id" : "obj-51",
													"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 9.401981,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Hor. Delta",
													"linecount" : 2,
													"patching_rect" : [ 282.794861, 189.842499, 36.153847, 28.0 ],
													"fontname" : "Arial",
													"id" : "obj-52",
													"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 9.401981,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend symbol",
													"outlettype" : [ "" ],
													"patching_rect" : [ 195.659332, 290.996338, 86.941391, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-48",
													"numinlets" : 1,
													"fontsize" : 9.295724,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "clear",
													"outlettype" : [ "" ],
													"patching_rect" : [ 150.505493, 314.970703, 31.849817, 16.0 ],
													"fontname" : "Arial",
													"id" : "obj-45",
													"numinlets" : 2,
													"fontsize" : 9.763547,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #0-modules_position 1",
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 195.659332, 311.655701, 120.512817, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-42",
													"numinlets" : 1,
													"fontsize" : 9.295724,
													"numoutlets" : 4,
													"save" : [ "#N", "coll", "$0-modules_position", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "mousestate",
													"outlettype" : [ "int", "int", "int", "int", "int" ],
													"patching_rect" : [ 195.659332, 141.736267, 131.523804, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-34",
													"numinlets" : 1,
													"fontsize" : 9.295724,
													"numoutlets" : 5
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 24.0, 40.0, 25.0, 25.0 ],
													"id" : "obj-84",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 88.0, 40.0, 25.0, 25.0 ],
													"id" : "obj-85",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 57.0, 39.0, 25.0, 25.0 ],
													"id" : "obj-86",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 244.0, 40.0, 25.0, 25.0 ],
													"id" : "obj-87",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 596.0, 40.0, 25.0, 25.0 ],
													"id" : "obj-88",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 401.0, 754.106201, 25.0, 25.0 ],
													"id" : "obj-89",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 594.0, 754.106201, 25.0, 25.0 ],
													"id" : "obj-90",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-72", 0 ],
													"destination" : [ "obj-71", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-71", 3 ],
													"destination" : [ "obj-68", 0 ],
													"hidden" : 0,
													"midpoints" : [ 723.011719, 619.399658, 601.450378, 619.399658 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-71", 1 ],
													"destination" : [ "obj-76", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-71", 0 ],
													"destination" : [ "obj-68", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-63", 0 ],
													"destination" : [ "obj-61", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 1 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-64", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-76", 0 ],
													"destination" : [ "obj-68", 0 ],
													"hidden" : 0,
													"midpoints" : [ 642.86554, 617.073242, 601.450378, 617.073242 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-65", 0 ],
													"destination" : [ "obj-63", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-65", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-74", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-62", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-54", 1 ],
													"destination" : [ "obj-33", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 2 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 1 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 1 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-70", 0 ],
													"destination" : [ "obj-56", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-56", 0 ],
													"destination" : [ "obj-55", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-63", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 0 ],
													"destination" : [ "obj-63", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-46", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-25", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-59", 0 ],
													"destination" : [ "obj-63", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-57", 0 ],
													"destination" : [ "obj-63", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-64", 1 ],
													"destination" : [ "obj-53", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-74", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-74", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-70", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-59", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-57", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 4 ],
													"destination" : [ "obj-50", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 3 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-53", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-63", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-64", 0 ],
													"destination" : [ "obj-63", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 0 ],
													"destination" : [ "obj-57", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 1 ],
													"destination" : [ "obj-59", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-64", 2 ],
													"destination" : [ "obj-58", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 2 ],
													"destination" : [ "obj-63", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-141", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-140", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-142", 0 ],
													"destination" : [ "obj-140", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-142", 1 ],
													"destination" : [ "obj-141", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 3 ],
													"destination" : [ "obj-143", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-143", 0 ],
													"destination" : [ "obj-70", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-57", 0 ],
													"destination" : [ "obj-32", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-59", 0 ],
													"destination" : [ "obj-44", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-53", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-53", 5 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 1 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 1 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-53", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-53", 5 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-24", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 0 ],
													"destination" : [ "obj-24", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-60", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-60", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-68", 0 ],
													"destination" : [ "obj-66", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-67", 0 ],
													"destination" : [ "obj-72", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-54", 0 ],
													"destination" : [ "obj-67", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-84", 0 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-84", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-84", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-86", 0 ],
													"destination" : [ "obj-142", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-87", 0 ],
													"destination" : [ "obj-55", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-88", 0 ],
													"destination" : [ "obj-72", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-89", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-66", 0 ],
													"destination" : [ "obj-90", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-89", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-85", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 9.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "snap to grid",
									"presentation_linecount" : 2,
									"presentation_rect" : [ 19.0, 239.0, 34.0, 27.0 ],
									"patching_rect" : [ 537.0, 191.0, 63.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"presentation" : 1,
									"id" : "obj-37",
									"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 8.908006,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"presentation_rect" : [ 2.0, 242.0, 19.0, 19.0 ],
									"outlettype" : [ "int" ],
									"patching_rect" : [ 516.0, 189.0, 20.0, 20.0 ],
									"hidden" : 1,
									"presentation" : 1,
									"id" : "obj-35",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 146.0, 529.0, 22.0, 22.0 ],
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : "from hover"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 159.0, 628.0, 25.0, 25.0 ],
									"id" : "obj-150",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : "preset (list) as a symbol"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"outlettype" : [ "front" ],
									"patching_rect" : [ 16.0, 68.0, 46.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-40",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 16.0, 93.0, 73.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-41",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "nogrow", "noclose", "nozoom", "float", "menu", "minimize", ";", "#Q", "window", "constrain", 2, 2, 32768, 32768, ";", "#Q", "window", "size", 1201, 593, 1383, 858, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /panel/open /positions",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 16.0, 47.0, 211.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-43",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 120.0, 529.0, 22.0, 22.0 ],
									"id" : "obj-22",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : "from js locate_patcher"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"hint" : "click in list to hide / show module",
									"presentation_rect" : [ 0.0, 32.681458, 183.381195, 211.686676 ],
									"bgcolor" : [ 0.784314, 1.0, 0.784314, 0.0 ],
									"cols" : 4,
									"hcellcolor" : [ 0.784314, 1.0, 0.784314, 255.0 ],
									"outlettype" : [ "list", "", "", "" ],
									"outmode" : 1,
									"bblend" : 100,
									"patching_rect" : [ 327.0, 251.681458, 238.381195, 99.686684 ],
									"hidden" : 1,
									"fontname" : "Verdana",
									"presentation" : 1,
									"id" : "obj-119",
									"rows" : 5,
									"numinlets" : 2,
									"fontsize" : 9.0,
									"selmode" : 3,
									"hscroll" : 0,
									"numoutlets" : 4,
									"rowdef" : [ [ 0, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 4, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 3, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 2, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 1, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 5, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 6, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 7, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 8, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 9, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 10, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 11, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 12, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 13, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 14, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 15, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 16, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 17, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 18, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 19, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 20, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 21, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 22, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 23, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 24, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ], [ 25, 0, 1, 1.0, 1.0, 1.0, 0, 0.78125, 0.996094, 0.78125, -1, -1, -1 ] ],
									"coldef" : [ [ 0, 100, 1, 1.0, 1.0, 1.0, 1, 1.0, 1.0, 1.0, -1, -1, -1 ], [ 1, 30, 1, 1.0, 1.0, 1.0, 1, 1.0, 1.0, 1.0, -1, -1, -1 ], [ 2, 30, 1, 1.0, 1.0, 1.0, 1, 1.0, 1.0, 1.0, -1, -1, -1 ], [ 3, 20, 1, 1.0, 1.0, 1.0, 1, 1.0, 1.0, 1.0, -1, -1, -1 ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "edit",
									"patching_rect" : [ 71.355316, 471.0, 24.256409, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-79",
									"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.295724,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"hint" : "enable moving modules in patch (presentation mode only)",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 95.824188, 469.216125, 21.989012, 21.989012 ],
									"id" : "obj-75",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 78.0, 629.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : "to thispatcher"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 17.0, 25.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 1 ],
									"destination" : [ "obj-31", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-119", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-119", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 1 ],
									"destination" : [ "obj-97", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-119", 0 ],
									"destination" : [ "obj-97", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 0 ],
									"destination" : [ "obj-119", 0 ],
									"hidden" : 0,
									"midpoints" : [ 336.471619, 378.0, 309.0, 378.0, 309.0, 246.0, 336.5, 246.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 1 ],
									"destination" : [ "obj-91", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 2 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-91", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-91", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-91", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-91", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 1 ],
									"destination" : [ "obj-150", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-43", 0 ],
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
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-34", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-119", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-119", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-117", 0 ],
									"destination" : [ "obj-140", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-140", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-140", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-39", 0 ],
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
						"default_fontsize" : 9.3,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 9.3
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.layout @module_type control @description \"store presentation position of modules in presets\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 191.0, 178.0, 311.0, 31.0 ],
					"fontname" : "Verdana",
					"id" : "obj-37",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"patching_rect" : [ 203.0, 126.0, 22.0, 22.0 ],
					"id" : "obj-38",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 191.0, 218.0, 22.0, 22.0 ],
					"id" : "obj-39",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"outlettype" : [ "" ],
					"patching_rect" : [ 251.0, 148.0, 159.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-43",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 210.0 ],
					"has_panel" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 0.0, 0.0, 150.0, 210.0 ],
					"presentation" : 1,
					"id" : "obj-16",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 803.0, 465.0, 717.0, 465.0, 717.0, 21.0, 576.0, 21.0, 576.0, 21.0, 249.5, 21.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-53", 1 ],
					"hidden" : 0,
					"midpoints" : [ 376.0, 63.0, 447.0, 63.0, 447.0, 45.0, 557.0, 45.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [ 376.0, 66.0, 227.0, 66.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.419608, 0.0, 1.0 ],
					"midpoints" : [ 231.0, 289.0, 177.0, 289.0, 177.0, 21.0, 249.5, 21.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 2 ],
					"destination" : [ "obj-13", 0 ],
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 609.5, 378.0, 764.5, 378.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 2 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 626.5, 135.0, 764.5, 135.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-49", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 936.5, 129.0, 814.5, 129.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-21", 0 ],
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
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 235.5, 171.0, 200.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 260.5, 171.0, 200.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 295.5, 119.0, 200.5, 119.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-33", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-6", 0 ],
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
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 361.5, 368.0, 285.5, 368.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 1 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 390.0, 405.0, 384.5, 405.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-33", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 2 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 494.5, 405.0, 590.0, 405.0, 590.0, 311.0, 390.5, 311.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 2 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 619.5, 201.0, 794.5, 201.0 ],
					"watchpoint_id" : 1,
					"watchpoint_flags" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 469.5, 105.0, 609.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-50", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 2 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
