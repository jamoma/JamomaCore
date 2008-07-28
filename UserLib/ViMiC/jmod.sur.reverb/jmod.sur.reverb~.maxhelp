{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 185.0, 68.0, 966.0, 535.0 ],
		"bglocked" : 0,
		"defrect" : [ 185.0, 68.0, 966.0, 535.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.sur.reverb~",
					"fontsize" : 17.334082,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-50",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 9.0, 8.0, 164.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "FDN-Reverb ",
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-51",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 9.0, 34.0, 345.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"rounded" : 15,
					"id" : "obj-52",
					"numinlets" : 1,
					"patching_rect" : [ 4.0, 4.0, 351.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-49",
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 204.0, 17.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/cpu:/enable $1",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-47",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 52.0, 206.0, 79.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-1",
					"numinlets" : 1,
					"patching_rect" : [ 710.0, 172.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "click~",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 710.0, 192.0, 37.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-3",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 762.0, 362.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-4",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 748.0, 362.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-5",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 733.0, 362.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-6",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 719.0, 362.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-7",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 703.0, 363.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-8",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 689.0, 363.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-9",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 674.0, 363.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-10",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 660.0, 363.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-11",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 646.0, 363.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-12",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 631.0, 363.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-13",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 617.0, 363.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-14",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 603.0, 363.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-15",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 589.0, 363.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-16",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 575.0, 363.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"numoutlets" : 2,
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-17",
					"numinlets" : 2,
					"patching_rect" : [ 376.0, 379.0, 22.0, 122.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"numoutlets" : 2,
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-18",
					"numinlets" : 2,
					"patching_rect" : [ 346.0, 379.0, 22.0, 122.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /cpu",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-19",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 52.0, 302.0, 98.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-20",
					"numinlets" : 1,
					"patching_rect" : [ 770.0, 63.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-21",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 263.0, 317.0, 168.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /fdn/overall_length",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-22",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 263.0, 297.0, 168.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-23",
					"numinlets" : 1,
					"patching_rect" : [ 465.0, 74.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p roomsize2predelay",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 360.0, 73.0, 104.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 285.0, 373.0, 767.0, 432.0 ],
						"bglocked" : 0,
						"defrect" : [ 285.0, 373.0, 767.0, 432.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
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
									"maxclass" : "newobj",
									"text" : "prepend /predelay",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 336.0, 330.0, 93.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "clip 0 200",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 3,
									"patching_rect" : [ 345.0, 204.0, 56.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr sqrt($f1 *$f2 *$f3)",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 3,
									"patching_rect" : [ 345.0, 179.0, 129.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /room/size",
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 345.0, 155.0, 130.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 351.0, 265.0, 16.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 602.0, 136.0, 30.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 335.0, 264.0, 16.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 568.0, 135.0, 30.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "float",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 372.0, 283.0, 31.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "select 0 1",
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 570.0, 107.0, 55.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-11",
									"numinlets" : 0,
									"patching_rect" : [ 570.0, 50.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 335.0, 309.0, 47.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-13",
									"numinlets" : 1,
									"patching_rect" : [ 337.0, 355.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-14",
									"numinlets" : 0,
									"patching_rect" : [ 345.0, 56.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
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
						"default_fontsize" : 10.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-25",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 52.0, 324.0, 52.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-26",
					"numinlets" : 1,
					"patching_rect" : [ 713.0, 62.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-27",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 560.0, 363.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 4000",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-28",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 713.0, 88.0, 64.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "click~",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"id" : "obj-29",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 695.0, 110.0, 37.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.multi.in~",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-30",
					"fontname" : "Arial",
					"numinlets" : 32,
					"patching_rect" : [ 695.0, 130.0, 208.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-31",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 347.0, 510.0, 38.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r toRemote",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-32",
					"fontname" : "Arial",
					"numinlets" : 0,
					"patching_rect" : [ 50.0, 101.0, 106.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-33",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 546.0, 363.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-34",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 531.0, 363.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-35",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 517.0, 363.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-36",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 503.0, 363.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-37",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 488.0, 363.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-38",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 474.0, 363.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-39",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 460.0, 363.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-40",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 446.0, 363.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ],
					"outlettype" : [ "float" ],
					"bgcolor" : [ 0.403922, 0.403922, 0.403922, 1.0 ],
					"id" : "obj-41",
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 432.0, 363.0, 13.0, 62.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.multi.out~",
					"fontsize" : 9.0,
					"numoutlets" : 32,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-42",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 432.0, 334.0, 469.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/reverb",
					"args" : [ "/reverb" ],
					"numoutlets" : 2,
					"name" : "jmod.sur.reverb~.maxpat",
					"outlettype" : [ "", "" ],
					"id" : "obj-43",
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 360.0, 197.0, 302.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control.mxt",
					"args" : [ "/jmod.control" ],
					"numoutlets" : 1,
					"name" : "jmod.control.maxpat",
					"outlettype" : [ "" ],
					"id" : "obj-44",
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 52.0, 226.0, 151.0, 73.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.cuelist.mxt",
					"args" : [ "/cuelist" ],
					"numoutlets" : 1,
					"name" : "jmod.cuelist.maxpat",
					"outlettype" : [ "" ],
					"id" : "obj-45",
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 50.0, 120.0, 301.0, 73.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-43", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 23 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 22 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 21 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 20 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 19 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 18 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 17 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 16 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 15 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 14 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 13 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 12 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 11 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 10 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 9 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-43", 1 ],
					"hidden" : 0,
					"midpoints" : [ 704.5, 153.0, 511.0, 153.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 8 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 7 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 6 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 5 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 4 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 3 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 2 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 1 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 1 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 652.5, 284.0, 441.5, 284.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-31", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 22 ],
					"destination" : [ "obj-18", 0 ],
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
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
