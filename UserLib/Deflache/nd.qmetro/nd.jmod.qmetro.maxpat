{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 230.0, 71.0, 1354.0, 558.0 ],
		"bglocked" : 0,
		"defrect" : [ 230.0, 71.0, 1354.0, 558.0 ],
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
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 582.0, 325.0, 55.0, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-17",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 634.0, 375.0, 55.0, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-14",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 34.0, 428.0, 20.0, 20.0 ],
					"id" : "obj-21",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr $i1 * -1 + 2",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 204.0, 303.0, 98.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-18",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 2",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 21.0, 339.0, 43.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-16",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 119.0, 339.0, 33.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-15",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "temp... freeze not sending its state with preset",
					"linecount" : 3,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patching_rect" : [ 356.0, 152.0, 99.0, 43.0 ],
					"fontsize" : 10.0,
					"id" : "obj-5",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 0",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 362.0, 196.0, 68.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-7",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr $i1 * -1 + 1",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 188.0, 283.0, 98.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-8",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /freeze",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 188.0, 262.0, 121.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-13",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 81.0, 493.0, 20.0, 20.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"comment" : "bang"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p thru",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 616.0, 416.0, 41.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-12",
					"numinlets" : 1,
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
									"numoutlets" : 0,
									"patching_rect" : [ 73.0, 114.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 72.0, 39.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numinlets" : 0,
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
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p thru",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 568.0, 416.0, 41.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-11",
					"numinlets" : 1,
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
									"numoutlets" : 0,
									"patching_rect" : [ 73.0, 114.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 72.0, 39.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numinlets" : 0,
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
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 568.0, 385.0, 20.0, 20.0 ],
					"id" : "obj-146",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 568.0, 493.0, 70.0, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-141",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 0. 0.",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 568.0, 473.0, 55.0, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-140",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 2.",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 582.0, 347.0, 32.5, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-139",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 0.",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 568.0, 451.0, 32.5, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-137",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 0.",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 602.0, 451.0, 32.5, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-138",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "MetroTime[2]",
					"numoutlets" : 2,
					"ignoreclick" : 1,
					"presentation_rect" : [ 99.0, 52.0, 34.0, 19.0 ],
					"triscale" : 0.9,
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana",
					"hbgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"patching_rect" : [ 119.0, 373.0, 45.0, 19.0 ],
					"presentation" : 1,
					"textcolor" : [ 0.490196, 0.545098, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"triangle" : 0,
					"id" : "obj-81",
					"numinlets" : 1,
					"bgcolor" : [ 0.258824, 0.258824, 0.258824, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ms",
					"numoutlets" : 0,
					"presentation_rect" : [ 126.0, 52.0, 57.0, 19.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 70.0, 373.0, 43.0, 19.0 ],
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"id" : "obj-82",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "MetroToggle[1]",
					"numoutlets" : 1,
					"presentation_rect" : [ 132.0, 21.0, 16.0, 16.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"outlettype" : [ "int" ],
					"patching_rect" : [ 799.0, 363.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-78",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "On/Off",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patching_rect" : [ 829.0, 393.0, 65.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-79",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "toggle[1]",
					"text" : "jcom.parameter toggle @type msg_toggle @ramp/drive none @repetitions/allow 0 @range/bounds 0 1 @range/clipmode both @description \"Toggle qmetro on/off\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 824.0, 358.0, 423.0, 31.0 ],
					"fontsize" : 10.0,
					"id" : "obj-80",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* -1.",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 929.0, 101.0, 35.0, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-70",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 0.",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 929.0, 79.0, 32.5, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-71",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 2.",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 795.0, 107.0, 32.5, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-72",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 0.",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 795.0, 86.0, 32.5, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-73",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"numoutlets" : 2,
					"presentation_rect" : [ 2.0, 21.0, 129.0, 16.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"floatoutput" : 1,
					"outlettype" : [ "", "" ],
					"fgcolor" : [ 0.003922, 0.003922, 1.0, 1.0 ],
					"patching_rect" : [ 795.0, 31.0, 168.0, 12.0 ],
					"presentation" : 1,
					"id" : "obj-74",
					"numinlets" : 2,
					"size" : 3000
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "randomness[1]",
					"text" : "jcom.parameter randomness @type msg_int @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0 5000 @range/clipmode low @description \"Defines a range of randomness in milliseconds to be applied to the metro interval\"",
					"linecount" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 826.0, 265.0, 429.0, 43.0 ],
					"fontsize" : 10.0,
					"id" : "obj-2",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "MetroRandomness[1]",
					"numoutlets" : 2,
					"presentation_rect" : [ 75.47171, 37.411858, 35.0, 19.0 ],
					"triscale" : 0.9,
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana",
					"hbgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"patching_rect" : [ 582.0, 276.0, 46.0, 19.0 ],
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"triangle" : 0,
					"id" : "obj-62",
					"numinlets" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/randomness",
					"numoutlets" : 0,
					"presentation_rect" : [ 2.47171, 37.41185, 101.0, 19.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 508.0, 276.0, 101.0, 19.0 ],
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"id" : "obj-63",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "MetroTime[1]",
					"numoutlets" : 2,
					"presentation_rect" : [ 46.0, 52.0, 37.0, 19.0 ],
					"triscale" : 0.9,
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana",
					"hbgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"patching_rect" : [ 795.0, 162.0, 45.0, 19.0 ],
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"triangle" : 0,
					"id" : "obj-65",
					"numinlets" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/period",
					"numoutlets" : 0,
					"presentation_rect" : [ 3.0, 52.0, 58.0, 19.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 750.0, 162.0, 52.0, 19.0 ],
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"id" : "obj-66",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "time[1]",
					"text" : "jcom.parameter period @type msg_int @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0 5000 @range/clipmode low @dataspace time @dataspace/unit/native ms @dataspace/unit/active ms @description \"Metro interval (ms)\"",
					"linecount" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 845.0, 157.0, 601.0, 43.0 ],
					"fontsize" : 10.0,
					"id" : "obj-9",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/read",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 275.0, 100.0, 74.0, 17.0 ],
					"fontsize" : 10.0,
					"id" : "obj-48",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "preset/store 1 default, preset/write",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 85.0, 100.0, 187.0, 17.0 ],
					"fontsize" : 10.0,
					"id" : "obj-1",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 26.0, 232.0, 46.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-4",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"varname" : "TriggerButton",
					"numoutlets" : 1,
					"presentation_rect" : [ 130.800354, 36.948517, 18.0, 18.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 45.0, 374.0, 18.0, 18.0 ],
					"blinkcolor" : [ 0.180392, 0.090196, 1.0, 1.0 ],
					"presentation" : 1,
					"id" : "obj-6",
					"numinlets" : 1,
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlinecolor" : [ 0.713726, 0.713726, 0.713726, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return bang @description \"Sent every time the metronome fires.\"",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 15.0, 460.0, 370.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-10",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 100.0, 120.0, 137.0, 17.0 ],
					"fontsize" : 10.0,
					"id" : "obj-20",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 45.0, 100.0, 37.0, 17.0 ],
					"fontsize" : 10.0,
					"id" : "obj-36",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.qmetro.mod",
					"text" : "nd.jalg.qmetro.maxpat",
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 26.0, 291.0, 126.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-37",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"A queue based metro\"",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 15.0, 150.0, 246.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-40",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 100.0, 20.0, 20.0 ],
					"id" : "obj-41",
					"numinlets" : 0,
					"comment" : "message input"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 180.0, 20.0, 20.0 ],
					"id" : "obj-42",
					"numinlets" : 1,
					"comment" : "message output"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numoutlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"outlettype" : [ "" ],
					"has_freeze" : 1,
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"presentation" : 1,
					"id" : "obj-47",
					"numinlets" : 1
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
