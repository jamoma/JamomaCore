{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 363.0, 44.0, 918.0, 711.0 ],
		"bglocked" : 0,
		"defrect" : [ 363.0, 44.0, 918.0, 711.0 ],
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
					"maxclass" : "inlet",
					"patching_rect" : [ 880.0, 222.0, 24.0, 24.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ],
					"comment" : "0.-1. value"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "temp... freeze not sending its state with preset",
					"linecount" : 3,
					"fontsize" : 10.0,
					"patching_rect" : [ 537.0, 239.0, 99.0, 43.0 ],
					"numinlets" : 1,
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
					"patching_rect" : [ 467.0, 247.0, 68.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set 1",
					"fontsize" : 10.0,
					"patching_rect" : [ 439.0, 424.0, 80.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-24",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"fontsize" : 10.0,
					"patching_rect" : [ 439.0, 401.0, 56.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-21",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr $i1 * -1 + 1",
					"fontsize" : 10.0,
					"patching_rect" : [ 295.0, 394.0, 98.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /audio/freeze",
					"fontsize" : 10.0,
					"patching_rect" : [ 295.0, 372.0, 153.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 425.0, 445.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-73",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontsize" : 10.0,
					"patching_rect" : [ 425.0, 471.0, 33.0, 19.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-74",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/raw (0.-1.)",
					"fontsize" : 9.0,
					"patching_rect" : [ 532.0, 456.0, 67.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-66",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"fontsize" : 9.873845,
					"patching_rect" : [ 775.0, 392.0, 55.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p display",
					"fontsize" : 9.873845,
					"patching_rect" : [ 775.0, 414.0, 53.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 9.0, 62.0, 321.0, 413.0 ],
						"bglocked" : 0,
						"defrect" : [ 9.0, 62.0, 321.0, 413.0 ],
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
									"maxclass" : "newobj",
									"text" : "p explinlog",
									"fontsize" : 9.873845,
									"patching_rect" : [ 60.0, 193.0, 111.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"outlettype" : [ "float" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 30.0, 89.0, 556.0, 508.0 ],
										"bglocked" : 0,
										"defrect" : [ 30.0, 89.0, 556.0, 508.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "email : tmays@free.fr - web : http://www.tommays.net",
													"fontsize" : 10.793149,
													"patching_rect" : [ 221.0, 394.0, 265.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-1",
													"fontname" : "Bell MT"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "made by Tom Mays",
													"fontsize" : 10.793149,
													"patching_rect" : [ 221.0, 383.0, 103.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-2",
													"fontname" : "Bell MT"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 100.0, 393.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-3",
													"comment" : "output 0. to 1."
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 100.0, 98.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "float" ],
													"comment" : "input 0. to 1."
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"triscale" : 0.9,
													"fontsize" : 9.873845,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"patching_rect" : [ 283.0, 214.0, 35.0, 18.0 ],
													"numinlets" : 1,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"numoutlets" : 2,
													"id" : "obj-5",
													"fontname" : "Verdana",
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr pow($f1\\,$f2)",
													"fontsize" : 9.873845,
													"patching_rect" : [ 70.0, 284.0, 103.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-6",
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "abs 0.",
													"fontsize" : 9.873845,
													"patching_rect" : [ 283.0, 157.0, 39.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"id" : "obj-7",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t f f",
													"fontsize" : 9.873845,
													"patching_rect" : [ 244.0, 135.0, 49.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-8",
													"fontname" : "Verdana",
													"outlettype" : [ "float", "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 2",
													"fontsize" : 9.873845,
													"patching_rect" : [ 244.0, 180.0, 27.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-9",
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "< 0.",
													"fontsize" : 9.873845,
													"patching_rect" : [ 244.0, 159.0, 30.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-10",
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "1",
													"fontsize" : 9.873845,
													"patching_rect" : [ 211.0, 135.0, 27.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-11",
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0.",
													"fontsize" : 9.873845,
													"patching_rect" : [ 211.0, 114.0, 43.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-12",
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "!- 1.",
													"fontsize" : 9.873845,
													"patching_rect" : [ 100.0, 340.0, 30.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-13",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "!- 1.",
													"fontsize" : 9.873845,
													"patching_rect" : [ 100.0, 260.0, 30.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-14",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"triscale" : 0.9,
													"fontsize" : 9.873845,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"patching_rect" : [ 100.0, 120.0, 61.0, 18.0 ],
													"numinlets" : 1,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"numoutlets" : 2,
													"id" : "obj-15",
													"fontname" : "Verdana",
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"triscale" : 0.9,
													"fontsize" : 9.873845,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"patching_rect" : [ 40.0, 220.0, 26.0, 18.0 ],
													"numinlets" : 1,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"numoutlets" : 2,
													"id" : "obj-16",
													"fontname" : "Verdana",
													"outlettype" : [ "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 3",
													"fontsize" : 9.873845,
													"patching_rect" : [ 40.0, 239.0, 70.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 3,
													"id" : "obj-17",
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"triscale" : 0.9,
													"fontsize" : 9.873845,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"patching_rect" : [ 100.0, 369.0, 64.0, 18.0 ],
													"numinlets" : 1,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"numoutlets" : 2,
													"id" : "obj-18",
													"fontname" : "Verdana",
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 211.0, 54.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-19",
													"outlettype" : [ "" ],
													"comment" : "curve (-1. <= x <= 1.)"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"triscale" : 0.9,
													"fontsize" : 9.873845,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"patching_rect" : [ 211.0, 96.0, 35.0, 18.0 ],
													"numinlets" : 1,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"numoutlets" : 2,
													"id" : "obj-20",
													"fontname" : "Verdana",
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"triscale" : 0.9,
													"fontsize" : 9.873845,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"patching_rect" : [ 190.0, 268.0, 46.0, 18.0 ],
													"numinlets" : 1,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"numoutlets" : 2,
													"id" : "obj-21",
													"fontname" : "Verdana",
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr pow(2\\,($f1*15)/2.)",
													"fontsize" : 9.873845,
													"patching_rect" : [ 190.0, 247.0, 136.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"id" : "obj-22",
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr pow($f1\\,$f2)",
													"fontsize" : 9.873845,
													"patching_rect" : [ 100.0, 319.0, 103.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-23",
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "log/exp curve",
													"fontsize" : 9.873845,
													"patching_rect" : [ 118.0, 304.0, 77.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-24",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "scale control",
													"fontsize" : 9.873845,
													"patching_rect" : [ 214.0, 234.0, 71.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-25",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "0<x<=1 = exponential;\r-1<=x<0 = logarithmic;\r0 = linear",
													"linecount" : 3,
													"fontsize" : 9.873845,
													"patching_rect" : [ 227.0, 54.0, 134.0, 42.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-26",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "arg 1 : initial curve value",
													"fontsize" : 9.873845,
													"patching_rect" : [ 290.0, 305.0, 134.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-27",
													"fontname" : "Verdana"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-17", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 2 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [ 49.5, 364.0, 109.5, 364.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [ 79.5, 364.0, 109.5, 364.0 ]
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
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [ 292.5, 232.0, 199.5, 232.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-23", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "email : tmays@free.fr - web : http://www.tommays.net",
									"fontsize" : 10.793149,
									"patching_rect" : [ 24.0, 338.0, 265.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-4",
									"fontname" : "Bell MT"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "made by Tom Mays",
									"fontsize" : 10.793149,
									"patching_rect" : [ 24.0, 327.0, 103.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-5",
									"fontname" : "Bell MT"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 156.0, 38.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "" ],
									"comment" : "curve (-1. <= x <= 1.)"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0<x<=1 = exponential;\r-1<=x<0 = logarithmic;\r0 = linear",
									"linecount" : 3,
									"fontsize" : 9.873845,
									"patching_rect" : [ 19.0, 38.0, 134.0, 42.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-7",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 60.0, 258.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-8",
									"comment" : "out to multislider"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl group 32",
									"fontsize" : 9.873845,
									"patching_rect" : [ 60.0, 236.0, 65.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"id" : "obj-9",
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 30.0, 107.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "Uzi 32",
									"fontsize" : 9.873845,
									"patching_rect" : [ 30.0, 129.0, 40.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 3,
									"id" : "obj-11",
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale 0 32 0. 1.",
									"fontsize" : 9.873845,
									"patching_rect" : [ 60.0, 150.0, 86.0, 18.0 ],
									"numinlets" : 6,
									"numoutlets" : 1,
									"id" : "obj-13",
									"fontname" : "Verdana",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "attacher un multislider float avec range de 0. à 1. pour visualiser la courbe",
									"linecount" : 4,
									"fontsize" : 9.873845,
									"patching_rect" : [ 80.0, 259.0, 118.0, 54.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-16",
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 2 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* -1.",
					"fontsize" : 10.0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"patching_rect" : [ 882.0, 426.0, 34.0, 19.0 ],
					"numinlets" : 2,
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"numoutlets" : 1,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* -1.",
					"fontsize" : 10.0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"patching_rect" : [ 882.0, 480.0, 34.0, 19.0 ],
					"numinlets" : 2,
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"numoutlets" : 1,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[5]",
					"text" : "jcom.parameter curve @repetitions/allow 0 @type decimal @range/bounds -1. 1. @range/clipmode both @description \"Curve applied on scaling: <0 exponential, 0 linear, >0 logarithmic\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 882.0, 447.0, 554.0, 31.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[6]",
					"text" : "jcom.parameter max @repetitions/allow 0 @type decimal @description \"scale maximum\"",
					"fontsize" : 10.0,
					"patching_rect" : [ 882.0, 387.0, 472.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-38",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[7]",
					"text" : "jcom.parameter min @repetitions/allow 0 @type decimal @description \"scale minimum\"",
					"fontsize" : 10.0,
					"patching_rect" : [ 881.0, 349.0, 466.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-40",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[8]",
					"text" : "jcom.message raw @repetitions/allow 1 @type decimal @range/bounds 0. 1. @range/clipmode both @description \"Dynamic input: 0-1. to be scaled to /value according to output range\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 880.0, 268.0, 601.0, 31.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-42",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[9]",
					"text" : "jcom.return value @repetitions/allow 1 @type decimal @description \"Scaled value\"",
					"fontsize" : 10.0,
					"patching_rect" : [ 68.0, 583.0, 441.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-55",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/raw (0.-1.)",
					"presentation_rect" : [ 3.0, 27.0, 66.0, 17.0 ],
					"fontsize" : 9.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 461.0, 457.0, 69.0, 17.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-81",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "curve[3]",
					"triscale" : 0.9,
					"ignoreclick" : 1,
					"presentation_rect" : [ 134.0, 38.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"htricolor" : [ 0.572549, 0.803922, 0.811765, 1.0 ],
					"bgcolor" : [ 0.192157, 0.207843, 0.239216, 1.0 ],
					"patching_rect" : [ 646.0, 471.0, 40.0, 19.0 ],
					"hbgcolor" : [ 0.109804, 0.113725, 0.129412, 1.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"bordercolor" : [ 0.266667, 0.345098, 0.470588, 0.0 ],
					"textcolor" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"htextcolor" : [ 0.572549, 0.803922, 0.811765, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-79",
					"fontname" : "Verdana",
					"tricolor" : [ 0.266667, 0.345098, 0.470588, 1.0 ],
					"triangle" : 0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "curve[1]",
					"triscale" : 0.9,
					"presentation_rect" : [ 175.0, 38.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"htricolor" : [ 0.572549, 0.803922, 0.811765, 1.0 ],
					"bgcolor" : [ 0.192157, 0.207843, 0.239216, 1.0 ],
					"patching_rect" : [ 688.0, 471.0, 40.0, 19.0 ],
					"hbgcolor" : [ 0.109804, 0.113725, 0.129412, 1.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"bordercolor" : [ 0.266667, 0.345098, 0.470588, 0.0 ],
					"textcolor" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"htextcolor" : [ 0.572549, 0.803922, 0.811765, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-78",
					"fontname" : "Verdana",
					"tricolor" : [ 0.266667, 0.345098, 0.470588, 1.0 ],
					"triangle" : 0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "curve[2]",
					"triscale" : 0.9,
					"presentation_rect" : [ 216.0, 38.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"htricolor" : [ 0.572549, 0.803922, 0.811765, 1.0 ],
					"bgcolor" : [ 0.192157, 0.207843, 0.239216, 1.0 ],
					"patching_rect" : [ 730.0, 471.0, 40.0, 19.0 ],
					"hbgcolor" : [ 0.109804, 0.113725, 0.129412, 1.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"bordercolor" : [ 0.266667, 0.345098, 0.470588, 0.0 ],
					"textcolor" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"htextcolor" : [ 0.572549, 0.803922, 0.811765, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-77",
					"fontname" : "Verdana",
					"tricolor" : [ 0.266667, 0.345098, 0.470588, 1.0 ],
					"triangle" : 0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "curve_slid",
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"compatibility" : 1,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"presentation_rect" : [ 289.0, 26.0, 10.0, 31.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 811.0, 464.0, 10.0, 31.0 ],
					"numinlets" : 1,
					"setminmax" : [ -0.53, 0.5 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"presentation" : 1,
					"slidercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 2,
					"contdata" : 1,
					"id" : "obj-70",
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"outlettype" : [ "", "" ],
					"frozen_box_attributes" : [ "bgcolor", "slidercolor" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "curve",
					"triscale" : 0.9,
					"maximum" : 1.0,
					"fontsize" : 10.0,
					"htricolor" : [ 0.572549, 0.803922, 0.811765, 1.0 ],
					"bgcolor" : [ 0.192157, 0.207843, 0.239216, 1.0 ],
					"patching_rect" : [ 823.0, 468.0, 32.0, 19.0 ],
					"hbgcolor" : [ 0.109804, 0.113725, 0.129412, 1.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 0.266667, 0.345098, 0.470588, 0.0 ],
					"textcolor" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"htextcolor" : [ 0.572549, 0.803922, 0.811765, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-71",
					"fontname" : "Verdana",
					"tricolor" : [ 0.266667, 0.345098, 0.470588, 1.0 ],
					"triangle" : 0,
					"minimum" : -1.0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "curve_disp",
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"presentation_rect" : [ 257.0, 26.0, 33.0, 31.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 775.0, 464.0, 33.0, 31.0 ],
					"numinlets" : 1,
					"setminmax" : [ 0.0, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"presentation" : 1,
					"slidercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-72",
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"size" : 32,
					"outlettype" : [ "", "" ],
					"frozen_box_attributes" : [ "bgcolor", "slidercolor" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/curve",
					"fontsize" : 9.0,
					"patching_rect" : [ 821.0, 446.0, 42.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-13",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/value",
					"presentation_rect" : [ 130.0, 25.0, 39.0, 17.0 ],
					"fontsize" : 9.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 642.0, 454.0, 39.0, 17.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-14",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/max",
					"presentation_rect" : [ 216.0, 25.0, 33.0, 17.0 ],
					"fontsize" : 9.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 730.0, 453.0, 42.0, 17.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-16",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"presentation_rect" : [ 3.0, 43.0, 130.0, 14.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"patching_rect" : [ 461.0, 473.0, 183.0, 14.0 ],
					"numinlets" : 1,
					"setminmax" : [ 0.0, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"presentation" : 1,
					"slidercolor" : [ 0.098039, 0.196078, 1.0, 1.0 ],
					"numoutlets" : 2,
					"contdata" : 1,
					"id" : "obj-23",
					"orientation" : 0,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/min",
					"presentation_rect" : [ 173.0, 25.0, 42.0, 17.0 ],
					"fontsize" : 9.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 686.0, 454.0, 42.0, 17.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-58",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "UI:\r\r/freqSlow/low\r/freqSlow/high\r/freqSlow/curve (Graph)\r/freqSlow/value\n\r/freqSlow/drunk/curve\r/freqSlow/drunk/period\r/freqSlow/drunk/value\r\r/freqRapid/*\r\r/frameSize/curve  (Graph)\r/frameSize/drunk/curve\r/frameSize/drunk/value\r\r/overlapFactor/value\r\r/level\r\r/preset/interpolate\r\rattention : qd metro change de valeur de delay, il ne doit pas envoyer un bang.\r",
					"linecount" : 25,
					"fontsize" : 9.0,
					"frgb" : [ 0.392157, 0.0, 0.101961, 1.0 ],
					"patching_rect" : [ 43.0, 808.0, 201.0, 280.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.392157, 0.0, 0.101961, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-1",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_freeze" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"prefix" : "audio",
					"patching_rect" : [ 1.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-37",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontsize" : 10.0,
					"patching_rect" : [ 36.0, 252.0, 247.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontsize" : 10.0,
					"patching_rect" : [ 68.0, 357.0, 48.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 10.0,
					"patching_rect" : [ 56.0, 272.0, 140.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"Scale a 0.-1. value\"",
					"fontsize" : 10.0,
					"patching_rect" : [ 16.0, 305.0, 351.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-30",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontsize" : 10.0,
					"patching_rect" : [ 46.0, 222.0, 99.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-31",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 16.0, 222.0, 24.0, 24.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-32",
					"outlettype" : [ "" ],
					"comment" : "message"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontsize" : 10.0,
					"patching_rect" : [ 252.0, 276.0, 41.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-33",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 154.0, 503.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-35",
					"comment" : "scaled value"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.scale",
					"fontsize" : 13.0,
					"patching_rect" : [ 68.0, 407.0, 72.0, 22.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-43",
					"fontname" : "Verdana",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 16.0, 352.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-45",
					"comment" : "messages output"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 45.5, 293.0, 25.5, 293.0 ]
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 65.5, 293.0, 25.5, 293.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 261.5, 297.0, 25.5, 297.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 120.0, 394.0, 289.0, 360.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-18", 0 ],
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
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-74", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
