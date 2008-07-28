{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 176.0, 44.0, 773.0, 460.0 ],
		"bglocked" : 0,
		"defrect" : [ 176.0, 44.0, 773.0, 460.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
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
					"maxclass" : "newobj",
					"text" : "p wilcards&instances",
					"patching_rect" : [ 320.0, 20.0, 201.0, 28.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"id" : "obj-62",
					"fontname" : "Verdana",
					"fontsize" : 18.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 50.0, 94.0, 636.0, 327.0 ],
						"bglocked" : 0,
						"defrect" : [ 50.0, 94.0, 636.0, 327.0 ],
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
									"text" : "t set",
									"patching_rect" : [ 475.0, 185.0, 38.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "set" ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"patching_rect" : [ 475.0, 160.0, 58.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/robot.1/param dog",
									"patching_rect" : [ 240.0, 110.0, 108.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"presentation_rect" : [ 238.0, 106.0, 0.0, 0.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"patching_rect" : [ 345.0, 225.0, 87.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"presentation_rect" : [ 343.0, 219.0, 0.0, 0.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"patching_rect" : [ 235.0, 225.0, 87.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"presentation_rect" : [ 233.0, 219.0, 0.0, 0.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"patching_rect" : [ 130.0, 225.0, 87.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"presentation_rect" : [ 129.0, 220.0, 0.0, 0.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"patching_rect" : [ 20.0, 225.0, 87.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 218.0, 0.0, 0.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /robot.* /foot/*",
									"patching_rect" : [ 250.0, 179.0, 166.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/robot.1 0.5",
									"patching_rect" : [ 159.0, 146.0, 74.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/foot/hand/finger 0.2",
									"patching_rect" : [ 375.0, 140.0, 159.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-51",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/robot.2/param 0.1",
									"patching_rect" : [ 250.0, 135.0, 108.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-54",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/fruit/barf 0.5",
									"patching_rect" : [ 67.0, 146.0, 87.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-56",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /fruit/* /robot.*",
									"patching_rect" : [ 67.0, 179.0, 166.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.oscroute also manages the * (star) wildcard.",
									"patching_rect" : [ 60.0, 55.0, 265.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.490196, 0.172549, 0.070588, 1.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"presentation_rect" : [ 60.0, 51.0, 0.0, 0.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "according to the JIG namespace, you can use the . (dot) to identify class members (such as instances)",
									"patching_rect" : [ 60.0, 25.0, 529.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.490196, 0.172549, 0.070588, 1.0 ],
									"id" : "obj-58",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [ 484.5, 210.0, 354.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [ 484.5, 210.0, 244.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [ 484.5, 210.0, 139.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [ 484.5, 210.0, 29.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 249.5, 131.0, 246.0, 131.0, 246.0, 164.0, 259.5, 164.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.oscroute",
					"patching_rect" : [ 14.0, 18.0, 189.0, 28.0 ],
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"fontsize" : 17.334082
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "routing of open sound control messages",
					"patching_rect" : [ 15.0, 45.0, 269.0, 19.0 ],
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 8.0, 12.0, 287.0, 50.0 ],
					"numinlets" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/bar/foo",
					"patching_rect" : [ 647.0, 327.0, 64.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/foobar",
					"patching_rect" : [ 629.0, 306.0, 56.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/foobar/doo",
					"patching_rect" : [ 647.0, 279.0, 81.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/bar/foo 34",
					"patching_rect" : [ 558.0, 279.0, 83.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print B",
					"patching_rect" : [ 629.0, 374.0, 50.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print A",
					"patching_rect" : [ 558.0, 374.0, 51.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute",
					"patching_rect" : [ 558.0, 349.0, 90.0, 19.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/fruitless/helpless 23",
					"patching_rect" : [ 199.0, 147.0, 115.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/fruit/applepie 23",
					"patching_rect" : [ 386.0, 87.0, 98.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/fruit/orange",
					"patching_rect" : [ 311.0, 87.0, 74.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 560.0, 167.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 560.0, 101.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/limiter/bypass $1",
					"patching_rect" : [ 560.0, 124.0, 124.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /fruit /vegetable",
					"patching_rect" : [ 35.0, 208.0, 195.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p thru",
					"patching_rect" : [ 35.0, 178.0, 46.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 44.0, 74.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 44.0, 74.0, 600.0, 426.0 ],
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
									"maxclass" : "outlet",
									"patching_rect" : [ 50.0, 60.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /limiter/bypass",
					"patching_rect" : [ 560.0, 146.0, 188.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t set",
					"patching_rect" : [ 418.0, 214.0, 38.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "set" ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"patching_rect" : [ 446.0, 190.0, 58.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 224.0, 266.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"patching_rect" : [ 241.0, 266.0, 70.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 135.0, 266.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"patching_rect" : [ 151.0, 266.0, 70.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 45.0, 266.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"patching_rect" : [ 61.0, 266.0, 70.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 401.0, 389.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"patching_rect" : [ 418.0, 389.0, 50.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 328.0, 389.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"patching_rect" : [ 345.0, 389.0, 50.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-35",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 255.0, 389.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"patching_rect" : [ 272.0, 389.0, 50.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-38",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 181.0, 389.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"patching_rect" : [ 198.0, 389.0, 50.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-41",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 108.0, 389.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"patching_rect" : [ 125.0, 389.0, 50.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-44",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 35.0, 389.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-46"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"patching_rect" : [ 52.0, 389.0, 50.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-47",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /potato /carrots",
					"patching_rect" : [ 255.0, 332.0, 166.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-49",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /apple /orange",
					"patching_rect" : [ 35.0, 332.0, 165.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-50",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/vegetable/carrots 1 2 3",
					"patching_rect" : [ 200.0, 117.0, 159.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-51",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/vegetable/beans 6",
					"patching_rect" : [ 363.0, 117.0, 122.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-52",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/vegetable/potato 7.8",
					"patching_rect" : [ 55.0, 117.0, 139.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-53",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/fruit/banana 3",
					"patching_rect" : [ 223.0, 87.0, 86.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-54",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/fruit/orange 3",
					"patching_rect" : [ 137.0, 87.0, 84.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-55",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/fruit/apple red",
					"patching_rect" : [ 48.0, 87.0, 87.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-56",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/meat/chicken roasted",
					"patching_rect" : [ 55.0, 147.0, 123.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-57",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "You can route according to namespace and one or more subspaces in one go:",
					"linecount" : 2,
					"patching_rect" : [ 542.0, 60.0, 207.0, 31.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.490196, 0.172549, 0.070588, 1.0 ],
					"id" : "obj-58",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If no argument is provided to jcom.oscroute, a second inlet will be created. You can then an OSC string to this second inlet to set the pattern to match.",
					"linecount" : 5,
					"patching_rect" : [ 538.0, 208.0, 213.0, 67.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.490196, 0.172549, 0.070588, 1.0 ],
					"id" : "obj-59",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 537.0, 204.0, 204.0, 193.0 ],
					"numinlets" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"id" : "obj-60"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 537.0, 47.0, 204.0, 148.0 ],
					"numinlets" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"id" : "obj-61"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-17", 2 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 2 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 2 ],
					"destination" : [ "obj-32", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 2 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 1 ],
					"destination" : [ "obj-35", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 1 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-38", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 2 ],
					"destination" : [ "obj-41", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 2 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-47", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 1 ],
					"destination" : [ "obj-44", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 1 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 656.5, 298.0, 567.5, 298.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [ 44.5, 204.0, 427.5, 204.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"color" : [ 0.65098, 0.647059, 0.647059, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"color" : [ 0.65098, 0.647059, 0.647059, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 132.5, 323.0, 264.5, 323.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"color" : [ 0.65098, 0.647059, 0.647059, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"color" : [ 0.65098, 0.647059, 0.647059, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"color" : [ 0.65098, 0.647059, 0.647059, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"color" : [ 0.65098, 0.647059, 0.647059, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"color" : [ 0.65098, 0.647059, 0.647059, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"color" : [ 0.65098, 0.647059, 0.647059, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 209.5, 139.0, 44.5, 139.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 372.5, 139.0, 44.5, 139.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 64.5, 139.0, 44.5, 139.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 232.5, 109.0, 44.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 146.5, 109.0, 44.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 57.5, 109.0, 44.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 64.5, 169.0, 44.5, 169.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 320.5, 109.0, 44.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 395.5, 109.0, 44.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 208.5, 169.0, 44.5, 169.0 ]
				}

			}
 ]
	}

}
