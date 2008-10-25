{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 190.0, 104.0, 939.0, 712.0 ],
		"bglocked" : 0,
		"defrect" : [ 190.0, 104.0, 939.0, 712.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 9.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 0,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/noise~",
					"presentation" : 1,
					"id" : "obj-16",
					"name" : "jmod.noise~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"presentation_rect" : [ 600.0, 35.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal" ],
					"lockeddragscroll" : 1,
					"args" : [ "/noise~" ],
					"patching_rect" : [ 439.0, 209.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~",
					"presentation" : 1,
					"id" : "obj-15",
					"name" : "jmod.output~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"presentation_rect" : [ 450.0, 245.0, 300.0, 140.0 ],
					"outlettype" : [ "" ],
					"lockeddragscroll" : 1,
					"args" : [ "/output~" ],
					"patching_rect" : [ 595.0, 320.0, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"id" : "obj-3",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 15.0, 295.0, 45.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess /preset/read jmod.layouthelp.xml",
					"linecount" : 2,
					"id" : "obj-1",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 25.0, 260.0, 100.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/limiter~",
					"presentation" : 1,
					"id" : "obj-35",
					"name" : "jmod.limiter~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"presentation_rect" : [ 0.0, 210.0, 300.0, 105.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/limiter~" ],
					"patching_rect" : [ 360.0, 26.0, 300.0, 105.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.layout must be connected to the thispatcher object in the main patcher",
					"id" : "obj-43",
					"textcolor" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 204.0, 543.0, 312.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"id" : "obj-42",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 239.0, 403.0, 100.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
									"maxclass" : "message",
									"text" : "/preset/read jmod.layouthelp.xml",
									"id" : "obj-33",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 152.0, 285.0, 141.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"id" : "obj-12",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 152.0, 240.0, 45.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"id" : "obj-8",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 152.0, 265.0, 45.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 1",
									"id" : "obj-3",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 51.0, 100.0, 66.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"id" : "obj-1",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 51.0, 119.0, 66.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pipe 1000",
									"id" : "obj-27",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 51.0, 139.0, 66.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qmetro 1000",
									"id" : "obj-21",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 50.0, 183.0, 100.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "counter 1 6",
									"id" : "obj-17",
									"fontsize" : 9.0,
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 50.0, 203.0, 100.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-18",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-34",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.0, 360.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-36",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 56.0, 360.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-40",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 157.0, 360.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 60.5, 157.0, 161.5, 157.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/degrade~",
					"presentation" : 1,
					"id" : "obj-28",
					"name" : "jmod.degrade~.maxpat",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 3,
					"numoutlets" : 3,
					"presentation_rect" : [ 0.0, 140.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/degrade~" ],
					"patching_rect" : [ 94.0, 161.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"presentation" : 1,
					"id" : "obj-22",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"presentation_rect" : [ 230.0, 475.0, 50.0, 17.0 ],
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 239.0, 429.0, 50.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/layout $1",
					"presentation" : 1,
					"id" : "obj-9",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"presentation_rect" : [ 230.0, 494.0, 50.0, 15.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 239.0, 454.0, 50.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "use the preset interface from the topleft menu of the module to edit/name/copy...etc presets",
					"linecount" : 3,
					"presentation_linecount" : 2,
					"presentation" : 1,
					"id" : "obj-7",
					"fontsize" : 12.723935,
					"numinlets" : 1,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 194.0, 588.0, 283.0, 36.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 370.0, 450.0, 210.0, 50.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~",
					"presentation" : 1,
					"id" : "obj-5",
					"name" : "jmod.filter~.maxpat",
					"numinlets" : 3,
					"numoutlets" : 3,
					"presentation_rect" : [ 0.0, 70.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"args" : [ "/filter~" ],
					"patching_rect" : [ 36.0, 69.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.layout must be connected to these 2 objects in the main patcher",
					"id" : "obj-20",
					"textcolor" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 184.0, 303.0, 292.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "demo",
					"presentation" : 1,
					"id" : "obj-31",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 61.0, 413.0, 33.0, 17.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 276.0, 378.0, 54.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation" : 1,
					"id" : "obj-26",
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 38.0, 411.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ],
					"patching_rect" : [ 253.0, 376.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.layout",
					"presentation" : 1,
					"id" : "obj-23",
					"fontsize" : 18.0,
					"numinlets" : 1,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 11.0, 8.0, 197.0, 28.0 ],
					"fontname" : "Verdana",
					"patching_rect" : [ 11.0, 7.0, 197.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "store position of this patcher's modules into presets",
					"linecount" : 2,
					"presentation" : 1,
					"id" : "obj-24",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 9.0, 38.0, 272.0, 19.0 ],
					"fontname" : "Verdana",
					"patching_rect" : [ 11.0, 37.0, 260.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 1,
					"id" : "obj-25",
					"rounded" : 15,
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 3.0, 3.0, 284.0, 59.0 ],
					"patching_rect" : [ 3.0, 2.0, 276.0, 65.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<-- open inspector to edit layouts",
					"presentation" : 1,
					"id" : "obj-11",
					"fontsize" : 11.230778,
					"numinlets" : 1,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 194.0, 445.0, 199.0, 19.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 171.0, 329.0, 205.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"presentation" : 1,
					"id" : "obj-13",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"presentation_rect" : [ 315.0, 476.0, 38.0, 17.0 ],
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 239.0, 473.0, 50.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store $1",
					"presentation" : 1,
					"id" : "obj-14",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"presentation_rect" : [ 314.0, 494.0, 94.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 239.0, 493.0, 94.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.layout will store in it's presets the presentation position + \"include in presentation\" attribute of any named module in this patcher.",
					"linecount" : 4,
					"presentation_linecount" : 3,
					"presentation" : 1,
					"id" : "obj-10",
					"fontsize" : 12.723935,
					"numinlets" : 1,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numoutlets" : 0,
					"presentation_rect" : [ 194.0, 529.0, 280.0, 50.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 367.0, 374.0, 210.0, 65.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t none",
					"id" : "obj-65",
					"bgcolor" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"fontsize" : 9.295724,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "none" ],
					"fontname" : "Arial",
					"patching_rect" : [ 141.106232, 301.501831, 37.875458, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "hover",
					"id" : "obj-19",
					"bgcolor" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"fontsize" : 9.295724,
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 84.0, 303.0, 53.369965, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"presentation" : 1,
					"id" : "obj-2",
					"name" : "jmod.layout.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"presentation_rect" : [ 38.0, 442.0, 150.0, 210.0 ],
					"outlettype" : [ "", "" ],
					"args" : [ "/layout" ],
					"patching_rect" : [ 10.0, 327.0, 150.0, 210.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"id" : "obj-54",
					"fontsize" : 9.295724,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 140.791199, 540.783875, 58.534798, 17.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 1,
					"id" : "obj-4",
					"rounded" : 15,
					"bgcolor" : [ 0.992157, 0.031373, 0.031373, 0.301961 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"border" : 1,
					"presentation_rect" : [ 35.0, 409.0, 61.0, 25.0 ],
					"patching_rect" : [ 194.0, 368.0, 11.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 1,
					"id" : "obj-32",
					"rounded" : 15,
					"numinlets" : 1,
					"numoutlets" : 0,
					"border" : 1,
					"presentation_rect" : [ 33.0, 437.0, 447.0, 219.0 ],
					"patching_rect" : [ 226.0, 366.0, 128.0, 152.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-42", 2 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 2 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-15", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
