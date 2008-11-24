{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 37.0, 44.0, 1354.0, 558.0 ],
		"bglocked" : 0,
		"defrect" : [ 37.0, 44.0, 1354.0, 558.0 ],
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
					"text" : "route set",
					"presentation_rect" : [ 726.0, 339.0, 0.0, 0.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 582.0, 325.0, 55.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-17",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 634.0, 375.0, 55.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-14",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 428.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr $i1 * -1 + 2",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 204.0, 303.0, 98.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 2",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 21.0, 339.0, 43.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-16",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 119.0, 339.0, 33.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-15",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "temp... freeze not sending its state with preset",
					"linecount" : 3,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 356.0, 152.0, 99.0, 43.0 ],
					"numoutlets" : 0,
					"id" : "obj-5",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 0",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 362.0, 196.0, 68.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr $i1 * -1 + 1",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 188.0, 283.0, 98.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /freeze",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 188.0, 262.0, 121.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-13",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 81.0, 493.0, 20.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-3",
					"comment" : "bang"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p thru",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 616.0, 416.0, 41.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "float" ],
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 50.0, 94.0, 178.0, 270.0 ],
						"bglocked" : 0,
						"defrect" : [ 50.0, 94.0, 178.0, 270.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 73.0, 114.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"id" : "obj-2",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 72.0, 39.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "float" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p thru",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 568.0, 416.0, 41.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 50.0, 94.0, 178.0, 270.0 ],
						"bglocked" : 0,
						"defrect" : [ 50.0, 94.0, 178.0, 270.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 73.0, 114.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"id" : "obj-2",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 72.0, 39.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 568.0, 385.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-146",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 568.0, 493.0, 70.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-141",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 0. 0.",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"patching_rect" : [ 568.0, 473.0, 55.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-140",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 2.",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"patching_rect" : [ 582.0, 347.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-139",
					"outlettype" : [ "float" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 0.",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"patching_rect" : [ 568.0, 451.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-137",
					"outlettype" : [ "float" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 0.",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"patching_rect" : [ 602.0, 451.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-138",
					"outlettype" : [ "float" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "MetroTime[2]",
					"ignoreclick" : 1,
					"presentation_rect" : [ 99.0, 52.0, 34.0, 19.0 ],
					"hbgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"triangle" : 0,
					"patching_rect" : [ 119.0, 373.0, 45.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"id" : "obj-81",
					"bgcolor" : [ 0.258824, 0.258824, 0.258824, 0.0 ],
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ms",
					"presentation_rect" : [ 126.0, 52.0, 57.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 70.0, 373.0, 43.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-82",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "MetroToggle[1]",
					"presentation_rect" : [ 132.0, 21.0, 16.0, 16.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 799.0, 363.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"id" : "obj-78",
					"outlettype" : [ "int" ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "On/Off",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 829.0, 393.0, 65.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-79",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "toggle[1]",
					"text" : "jcom.parameter toggle @type msg_toggle @ramp/drive none @repetitions/allow 0 @range/bounds 0 1 @range/clipmode both @description \"Toggle qmetro on/off\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 824.0, 358.0, 423.0, 31.0 ],
					"numoutlets" : 3,
					"id" : "obj-80",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* -1.",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"patching_rect" : [ 929.0, 101.0, 35.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-70",
					"outlettype" : [ "float" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 0.",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"patching_rect" : [ 929.0, 79.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-71",
					"outlettype" : [ "float" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 2.",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"patching_rect" : [ 795.0, 107.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-72",
					"outlettype" : [ "float" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 0.",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"patching_rect" : [ 795.0, 86.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-73",
					"outlettype" : [ "float" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"presentation_rect" : [ 2.0, 21.0, 129.0, 16.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 795.0, 31.0, 168.0, 12.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"id" : "obj-74",
					"outlettype" : [ "", "" ],
					"fgcolor" : [ 0.003922, 0.003922, 1.0, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"floatoutput" : 1,
					"size" : 3000
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "randomness[1]",
					"text" : "jcom.parameter randomness @type msg_int @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0 5000 @range/clipmode low @description \"Defines a range of randomness in milliseconds to be applied to the metro interval\"",
					"linecount" : 3,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 826.0, 265.0, 429.0, 43.0 ],
					"numoutlets" : 3,
					"id" : "obj-2",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "MetroRandomness[1]",
					"presentation_rect" : [ 75.47171, 37.411858, 35.0, 19.0 ],
					"hbgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"triangle" : 0,
					"patching_rect" : [ 582.0, 276.0, 46.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"id" : "obj-62",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/randomness",
					"presentation_rect" : [ 2.47171, 37.41185, 101.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 508.0, 276.0, 101.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-63",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "MetroTime[1]",
					"presentation_rect" : [ 46.0, 52.0, 37.0, 19.0 ],
					"hbgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"triangle" : 0,
					"patching_rect" : [ 795.0, 162.0, 45.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"id" : "obj-65",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/period",
					"presentation_rect" : [ 3.0, 52.0, 58.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 750.0, 162.0, 52.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-66",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "time[1]",
					"text" : "jcom.parameter period @type msg_int @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0 5000 @range/clipmode low @dataspace time @dataspace/unit/native ms @dataspace/unit/active ms @description \"Metro interval (ms)\"",
					"linecount" : 3,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 845.0, 157.0, 601.0, 43.0 ],
					"numoutlets" : 3,
					"id" : "obj-9",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/read",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 275.0, 100.0, 74.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-48",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "preset/store 1 default, preset/write",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 85.0, 100.0, 187.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 26.0, 232.0, 46.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-4",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"varname" : "TriggerButton",
					"outlinecolor" : [ 0.713726, 0.713726, 0.713726, 0.0 ],
					"presentation_rect" : [ 130.800354, 36.948517, 18.0, 18.0 ],
					"numinlets" : 1,
					"blinkcolor" : [ 0.180392, 0.090196, 1.0, 1.0 ],
					"patching_rect" : [ 45.0, 374.0, 18.0, 18.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"id" : "obj-6",
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return bang @description \"Sent every time the metronome fires.\"",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 460.0, 370.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-10",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 100.0, 120.0, 137.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 45.0, 100.0, 37.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-36",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.qmetro.mod",
					"text" : "nd.jalg.qmetro.maxpat",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 26.0, 291.0, 126.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-37",
					"outlettype" : [ "bang", "int" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"A queue based metro\"",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 150.0, 246.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-40",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 15.0, 100.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-41",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 180.0, 20.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-42",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_freeze" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"id" : "obj-47",
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 854.5, 226.0, 717.0, 250.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-139", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-139", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-138", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-137", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-146", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-138", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-137", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-141", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [ 577.5, 520.0, 475.0, 520.0, 475.0, 9.0, 804.5, 9.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 938.5, 132.0, 591.5, 132.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-138", 0 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-137", 0 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-140", 0 ],
					"destination" : [ "obj-141", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-139", 0 ],
					"destination" : [ "obj-146", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 1 ],
					"destination" : [ "obj-73", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 1 ],
					"destination" : [ "obj-71", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 284.5, 146.0, 27.0, 146.0, 27.0, 146.0, 24.5, 146.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 94.5, 138.0, 24.5, 138.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 54.5, 134.0, 24.5, 134.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 142.0, 24.5, 142.0 ]
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
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-16", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
