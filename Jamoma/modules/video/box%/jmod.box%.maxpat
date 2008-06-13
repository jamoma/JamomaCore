{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 21.0, 44.0, 792.0, 535.0 ],
		"bglocked" : 0,
		"defrect" : [ 21.0, 44.0, 792.0, 535.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"id" : "obj-6",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 240.0, 304.0, 100.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "centroid/on[1]",
					"text" : "jcom.parameter /contraction/window/on @type msg_toggle @description \"Turn display of contraction box on or off.\"",
					"linecount" : 2,
					"id" : "obj-43",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"patching_rect" : [ 498.0, 123.0, 253.0, 27.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/panel/open",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"id" : "obj-42",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 134.0, 227.0, 119.0, 15.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "centroid/on",
					"text" : "jcom.parameter centroid/on @type msg_toggle @description \"Turn display of centre of mass on.\"",
					"linecount" : 2,
					"id" : "obj-39",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"patching_rect" : [ 497.0, 89.0, 235.0, 27.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "contraction/max/on",
					"text" : "jcom.parameter contraction/max/on @type msg_toggle @description \"Turn max contraction box on or off.\"",
					"linecount" : 2,
					"id" : "obj-40",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"patching_rect" : [ 498.0, 57.0, 262.0, 27.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "contraction/on",
					"text" : "jcom.parameter contraction/on @type msg_toggle @description \"Turn local contraction box on or off.\"",
					"linecount" : 2,
					"id" : "obj-41",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"patching_rect" : [ 497.0, 22.0, 244.0, 27.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"id" : "obj-34",
					"presentation_rect" : [ 241.0, 24.0, 60.0, 45.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 239.0, 22.0, 60.0, 45.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "max",
					"id" : "obj-1",
					"fontname" : "Arial",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 35.0, 48.0, 61.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 415.0, 62.0, 28.0, 17.0 ],
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "running",
					"id" : "obj-2",
					"fontname" : "Arial",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 35.0, 28.0, 61.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 415.0, 29.0, 61.0, 17.0 ],
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "centroid",
					"id" : "obj-3",
					"fontname" : "Arial",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 133.0, 48.0, 61.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 415.0, 97.0, 41.0, 17.0 ],
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "windowed",
					"id" : "obj-4",
					"fontname" : "Arial",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 133.0, 28.0, 61.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 415.0, 127.0, 61.0, 17.0 ],
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"hint" : "",
					"annotation" : "Turn display of centre of mass on",
					"id" : "obj-5",
					"presentation_rect" : [ 113.0, 28.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 478.0, 129.0, 15.0, 15.0 ],
					"presentation" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"hint" : "centroid/on",
					"annotation" : "centroid/on : Turn display of centre of mass on",
					"id" : "obj-7",
					"presentation_rect" : [ 113.0, 48.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 478.0, 95.0, 15.0, 15.0 ],
					"presentation" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-9",
					"presentation_rect" : [ 13.0, 48.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 478.0, 62.0, 15.0, 15.0 ],
					"presentation" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-11",
					"presentation_rect" : [ 13.0, 28.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 478.0, 30.0, 15.0, 15.0 ],
					"presentation" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 114.0, 145.0, 191.0, 15.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"id" : "obj-14",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 52.0, 367.0, 47.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"id" : "obj-15",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 52.0, 343.0, 37.0, 17.0 ],
					"outlettype" : [ "open" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"id" : "obj-16",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 52.0, 319.0, 151.0, 17.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p more_jmod.box%_features",
					"id" : "obj-17",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 52.0, 391.0, 126.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 449.0, 169.0, 999.0, 691.0 ],
						"bglocked" : 0,
						"defrect" : [ 449.0, 169.0, 999.0, 691.0 ],
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
						"visible" : 1,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.gang",
									"id" : "obj-47",
									"fontname" : "Arial",
									"numinlets" : 4,
									"numoutlets" : 5,
									"fontsize" : 10.0,
									"patching_rect" : [ 606.0, 385.0, 100.0, 18.0 ],
									"outlettype" : [ "float", "float", "float", "float", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction/color[2]",
									"text" : "route set",
									"id" : "obj-46",
									"fontname" : "Arial",
									"hidden" : 1,
									"presentation_rect" : [ 551.0, 392.0, 0.0, 0.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 551.0, 392.0, 46.0, 17.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction/color[1]",
									"text" : "route set",
									"id" : "obj-44",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 549.0, 351.0, 46.0, 17.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"compatibility" : 1,
									"id" : "obj-40",
									"presentation_rect" : [ 64.0, 15.0, 143.0, 44.0 ],
									"numinlets" : 3,
									"numoutlets" : 2,
									"patching_rect" : [ 360.0, 288.0, 143.0, 44.0 ],
									"presentation" : 1,
									"outlettype" : [ "", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "automatic centroid size adjustment",
									"id" : "obj-36",
									"fontname" : "Arial",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"presentation_rect" : [ 287.0, 211.0, 0.0, 0.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 260.0, 156.0, 164.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : " smoothing for the returned data",
									"id" : "obj-13",
									"fontname" : "Arial",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"presentation_rect" : [ 229.0, 118.0, 0.0, 0.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 260.0, 88.0, 153.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "smoothing for contraction box",
									"id" : "obj-12",
									"fontname" : "Arial",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 260.0, 54.0, 150.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/centroid/size$1",
									"id" : "obj-1",
									"fontname" : "Arial",
									"presentation_rect" : [ 46.0, 158.0, 89.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 137.0, 256.0, 89.0, 15.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"minimum" : 0,
									"presentation_rect" : [ 8.0, 156.0, 35.0, 17.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 99.0, 254.0, 35.0, 17.0 ],
									"presentation" : 1,
									"outlettype" : [ "int", "bang" ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "reset contraction",
									"id" : "obj-3",
									"fontname" : "Arial",
									"presentation_rect" : [ 46.0, 94.0, 122.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 366.0, 125.0, 77.0, 15.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"minimum" : 0,
									"presentation_rect" : [ 6.0, 124.0, 35.0, 17.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 97.0, 222.0, 35.0, 17.0 ],
									"presentation" : 1,
									"outlettype" : [ "int", "bang" ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/contraction/window/size $1",
									"id" : "obj-5",
									"fontname" : "Arial",
									"presentation_rect" : [ 44.0, 124.0, 146.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 135.0, 222.0, 146.0, 15.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar centroid_color",
									"id" : "obj-6",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 283.0, 522.0, 100.0, 17.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar contraction_max_color",
									"id" : "obj-7",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 283.0, 435.0, 139.0, 17.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "data/smoothing",
									"text" : "jcom.parameter data/smoothing @type msg_float @range 0. 12. @range/clipmode low @description \"Level of smoothing for the returned data\"",
									"linecount" : 2,
									"id" : "obj-14",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"patching_rect" : [ 450.0, 86.0, 350.0, 27.0 ],
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "centroid/color",
									"text" : "jcom.parameter centroid/color @type msg_list @description \"Change color of centroid.\"",
									"linecount" : 2,
									"id" : "obj-16",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"patching_rect" : [ 283.0, 545.0, 224.0, 27.0 ],
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction/max/color",
									"text" : "jcom.parameter contraction/max/color @type msg_list @description \"Change color of max contraction box.\"",
									"linecount" : 2,
									"id" : "obj-17",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"patching_rect" : [ 283.0, 457.0, 263.0, 27.0 ],
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction/color",
									"text" : "jcom.parameter contraction/color @type msg_list @description \"Change color of local contraction box.\"",
									"linecount" : 2,
									"id" : "obj-18",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"patching_rect" : [ 547.0, 316.0, 250.0, 27.0 ],
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "centroid/size/on",
									"text" : "jcom.parameter centroid/size/on @type msg_toggle @description \"Turn on automatic size adjustment of centre of mass - based on quantity of motion.\"",
									"linecount" : 2,
									"id" : "obj-19",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"patching_rect" : [ 447.0, 151.0, 352.0, 27.0 ],
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "jmod.parameter[12]",
									"text" : "jcom.message contraction/max/reset @description \"Reset max_contraction box.\"",
									"id" : "obj-21",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"patching_rect" : [ 447.0, 124.0, 382.0, 17.0 ],
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction/slide",
									"text" : "jcom.parameter contraction/slide @type msg_float @range/bounds 0. 10. @range/clipmode low @repetitions 0 @description \"The level of smoothing for contraction box.\"",
									"linecount" : 2,
									"id" : "obj-24",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"patching_rect" : [ 452.0, 50.0, 406.0, 27.0 ],
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"id" : "obj-28",
									"presentation_rect" : [ 26.0, 179.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 425.0, 157.0, 15.0, 15.0 ],
									"presentation" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"minimum" : 0.0,
									"presentation_rect" : [ 6.0, 69.0, 35.0, 17.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 410.0, 55.0, 35.0, 17.0 ],
									"presentation" : 1,
									"outlettype" : [ "float", "bang" ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"compatibility" : 1,
									"id" : "obj-31",
									"presentation_rect" : [ 237.0, 111.0, 128.0, 32.0 ],
									"numinlets" : 3,
									"numoutlets" : 2,
									"patching_rect" : [ 85.0, 524.0, 128.0, 32.0 ],
									"presentation" : 1,
									"outlettype" : [ "", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/centroid/color $1 $2 $3",
									"id" : "obj-32",
									"fontname" : "Arial",
									"presentation_rect" : [ 237.0, 143.0, 127.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 85.0, 556.0, 127.0, 15.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"compatibility" : 1,
									"id" : "obj-33",
									"presentation_rect" : [ 237.0, 60.0, 128.0, 32.0 ],
									"numinlets" : 3,
									"numoutlets" : 2,
									"patching_rect" : [ 65.0, 454.0, 128.0, 32.0 ],
									"presentation" : 1,
									"outlettype" : [ "", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/contraction/max/color $1 $2 $3",
									"id" : "obj-34",
									"fontname" : "Arial",
									"presentation_rect" : [ 237.0, 92.0, 166.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 65.0, 486.0, 166.0, 15.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"compatibility" : 1,
									"id" : "obj-35",
									"presentation_rect" : [ 237.0, 9.0, 128.0, 32.0 ],
									"numinlets" : 3,
									"numoutlets" : 2,
									"patching_rect" : [ 62.0, 362.0, 128.0, 32.0 ],
									"presentation" : 1,
									"outlettype" : [ "", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/contraction/color $1 $2 $3",
									"id" : "obj-37",
									"fontname" : "Arial",
									"presentation_rect" : [ 237.0, 41.0, 141.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 61.0, 415.0, 141.0, 15.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-38",
									"fontname" : "Arial",
									"minimum" : 0.0,
									"presentation_rect" : [ 7.0, 32.0, 35.0, 17.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 412.0, 90.0, 35.0, 17.0 ],
									"presentation" : 1,
									"outlettype" : [ "float", "bang" ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Various things that might be useful",
									"linecount" : 4,
									"id" : "obj-41",
									"fontname" : "Arial",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"presentation_rect" : [ 4.0, 4.0, 252.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 12.0,
									"patching_rect" : [ 7.0, 8.0, 68.0, 62.0 ],
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-42",
									"hidden" : 1,
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 55.0, 48.0, 18.0, 18.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-43",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 338.0, 263.0, 195.0, 94.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.66667, 0.66667, 0.66667, 1.0 ],
									"id" : "obj-45",
									"presentation_rect" : [ 1.0, 0.0, 412.0, 206.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1.0, 0.0, 19.0, 32.0 ],
									"presentation" : 1,
									"background" : 1,
									"rounded" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-37", 0 ],
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
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [ 292.5, 493.0, 278.0, 493.0, 278.0, 433.0, 292.5, 433.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [ 292.5, 569.0, 279.0, 569.0, 279.0, 515.0, 292.5, 515.0 ]
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontsize" : 10.0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command output",
					"id" : "obj-18",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 27.0, 232.0, 79.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"id" : "obj-19",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 52.0, 458.0, 49.0, 17.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-20",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 24.0, 274.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"id" : "obj-21",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 39.0, 274.0, 66.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"id" : "obj-22",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"patching_rect" : [ 22.0, 294.0, 78.0, 17.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"id" : "obj-23",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 184.0, 368.0, 47.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"id" : "obj-24",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 184.0, 344.0, 78.0, 17.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-25",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 485.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "documentation/generate",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"id" : "obj-26",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 131.0, 162.0, 119.0, 15.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"id" : "obj-27",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 68.0, 485.0, 76.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.box%",
					"id" : "obj-28",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 52.0, 427.0, 76.0, 17.0 ],
					"outlettype" : [ "jit_matrix" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"id" : "obj-29",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 23.0, 159.0, 79.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.motion% @size 1U-half @module_type video @algorithm_type jitter @description \"Motion-related analysis\"",
					"linecount" : 2,
					"id" : "obj-30",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 9.0, 184.0, 358.0, 27.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-31",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 232.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-32",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 9.0, 159.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"prefix" : "video",
					"id" : "obj-35",
					"has_mute" : 1,
					"presentation_rect" : [ 4.0, 2.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"has_preview" : 1,
					"numoutlets" : 1,
					"has_bypass" : 1,
					"has_inspector" : 1,
					"patching_rect" : [ 2.0, 0.0, 300.0, 70.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"has_freeze" : 1,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 123.5, 181.0, 18.5, 181.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 140.5, 181.0, 18.5, 181.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 193.5, 416.0, 61.5, 416.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 252.5, 416.0, 61.5, 416.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.8, 0.8, 0.501961 ],
					"midpoints" : [ 31.5, 423.0, 118.5, 423.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
