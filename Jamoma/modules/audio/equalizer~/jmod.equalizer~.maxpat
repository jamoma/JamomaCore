{
	"patcher" : 	{
		"rect" : [ 414.0, 62.0, 525.0, 515.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 414.0, 62.0, 525.0, 515.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute \/open_inspector",
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"patching_rect" : [ 226.0, 344.0, 151.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 359.0, 417.0, 47.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~.maxpat",
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"patching_rect" : [ 226.0, 396.0, 143.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/preset\/store 1 default, \/preset\/write",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 158.0, 556.0, 191.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"patching_rect" : [ 118.0, 472.0, 64.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"patching_rect" : [ 118.0, 322.0, 172.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 2,
					"numoutlets" : 3,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "multi_filter~_inspector",
					"text" : "p multi_filter~_inspector",
					"hidden" : 1,
					"patching_rect" : [ 226.0, 366.0, 125.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patcher" : 					{
						"rect" : [ 100.0, 100.0, 300.0, 126.0 ],
						"bgcolor" : [ 0.196078, 0.196078, 0.196078, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 100.0, 100.0, 300.0, 126.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ablsoute maximum : 24",
									"patching_rect" : [ 23.0, 47.0, 168.0, 23.0 ],
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.288889
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_max_voices",
									"hidden" : 1,
									"patching_rect" : [ 491.0, 299.0, 91.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"outlettype" : [ "bang" ],
									"hidden" : 1,
									"patching_rect" : [ 32.0, 120.0, 48.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 100 100 400 200, window exec",
									"outlettype" : [ "" ],
									"hidden" : 1,
									"patching_rect" : [ 28.0, 92.0, 214.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"outlettype" : [ "" ],
									"hidden" : 1,
									"patching_rect" : [ 28.0, 59.0, 239.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"outlettype" : [ "" ],
									"hidden" : 1,
									"patching_rect" : [ 28.0, 75.0, 158.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "maximum",
									"patching_rect" : [ 23.0, 25.0, 70.0, 23.0 ],
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.288889
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "max_bands",
									"text" : "jcom.parameter max_bands @type msg_int @repetitions 0 @ramp/drive none @description \"Maximum Number of bands of the filter\"",
									"linecount" : 3,
									"outlettype" : [ "", "" ],
									"hidden" : 1,
									"patching_rect" : [ 405.0, 238.0, 272.0, 38.0 ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar max_voices",
									"outlettype" : [ "" ],
									"hidden" : 1,
									"patching_rect" : [ 405.0, 215.0, 88.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 50 50 50",
									"hidden" : 1,
									"patching_rect" : [ 456.0, 364.0, 88.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 4,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "max_voices",
									"outlettype" : [ "int", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 231.0, 25.0, 35.0, 23.0 ],
									"transparent" : 1,
									"fontname" : "Verdana",
									"maximum" : 24,
									"id" : "obj-11",
									"numinlets" : 1,
									"mouseup" : 1,
									"triscale" : 0.9,
									"minimum" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numoutlets" : 2,
									"fontsize" : 12.288889,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "number of bands :",
									"patching_rect" : [ 92.0, 25.0, 140.0, 23.0 ],
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.288889
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"outlettype" : [ "bang", "" ],
									"hidden" : 1,
									"patching_rect" : [ 404.0, 362.0, 40.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"outlettype" : [ "", "" ],
									"hidden" : 1,
									"patching_rect" : [ 404.0, 402.0, 69.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"outlettype" : [ "front" ],
									"hidden" : 1,
									"patching_rect" : [ 404.0, 382.0, 40.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"hidden" : 1,
									"patching_rect" : [ 404.0, 319.0, 15.0, 15.0 ],
									"id" : "obj-16",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"midpoints" : [ 414.5, 297.0, 397.0, 297.0, 397.0, 200.0, 414.5, 200.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [ 667.5, 295.0, 500.5, 295.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend max",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 188.0, 179.0, 67.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_max_voices",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 164.0, 152.0, 91.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar mode",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 165.0, 258.0, 57.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend nfilters",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 181.0, 228.0, 82.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "bands",
					"text" : "jcom.parameter bands @type msg_int @repetitions 0 @description \"Number of bands of the filter\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"patching_rect" : [ 292.0, 155.0, 240.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar voices",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 292.0, 132.0, 63.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "| filter type",
					"patching_rect" : [ 135.0, 24.0, 62.0, 17.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar voices",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 181.0, 205.0, 63.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "voices",
					"outlettype" : [ "int", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 96.0, 23.0, 35.0, 17.0 ],
					"transparent" : 1,
					"fontname" : "Verdana",
					"maximum" : 5,
					"id" : "obj-16",
					"numinlets" : 1,
					"mouseup" : 1,
					"triscale" : 0.9,
					"minimum" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar filter",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 64.0, 258.0, 58.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_xxx_to_filtergraph",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 268.0, 4.0, 207.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar filter",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 273.0, 75.0, 58.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message filtergraph @description \"Messages to filtergraph. See the MSP reference for further details\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 273.0, 38.0, 266.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar mode 2",
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"patching_rect" : [ 58.0, 179.0, 96.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "filter_params",
					"text" : "p filter",
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"patching_rect" : [ 64.0, 228.0, 111.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 6,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"patcher" : 					{
						"rect" : [ 86.0, 153.0, 652.0, 424.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 86.0, 153.0, 652.0, 424.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 454.0, 221.0, 64.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend target",
									"outlettype" : [ "" ],
									"patching_rect" : [ 508.0, 242.0, 76.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend target",
									"outlettype" : [ "" ],
									"patching_rect" : [ 94.0, 243.0, 76.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s b",
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 178.0, 239.0, 30.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 146.0, 220.0, 27.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 29.0, 55.0, 35.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 1,
									"mouseup" : 1,
									"triscale" : 0.9,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 254.0, 72.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"outlettype" : [ "" ],
									"patching_rect" : [ 454.0, 291.0, 58.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i",
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 454.0, 191.0, 36.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t #0_ i",
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 254.0, 94.0, 39.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend voices",
									"outlettype" : [ "" ],
									"patching_rect" : [ 283.0, 175.0, 76.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 482.0, 171.0, 35.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 1,
									"triscale" : 0.9,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r",
									"outlettype" : [ "" ],
									"patching_rect" : [ 454.0, 171.0, 21.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf set %sfilter_active",
									"outlettype" : [ "" ],
									"patching_rect" : [ 454.0, 149.0, 133.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend target",
									"outlettype" : [ "" ],
									"patching_rect" : [ 354.0, 228.0, 76.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s 0 s",
									"outlettype" : [ "", "int", "" ],
									"patching_rect" : [ 254.0, 125.0, 211.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 454.0, 313.0, 15.0, 15.0 ],
									"id" : "obj-17",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 40.0, 296.0, 15.0, 15.0 ],
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 142.0, 136.0, 27.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-19",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.thru",
									"outlettype" : [ "" ],
									"patching_rect" : [ 29.0, 100.0, 54.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-20",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "open $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 29.0, 76.0, 45.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-21",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "jalg.filter_params.mxt",
									"text" : "poly~ jalg.filter_params.mxt 0",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 40.0, 270.0, 424.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-22",
									"numinlets" : 4,
									"numoutlets" : 2,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend target",
									"outlettype" : [ "" ],
									"patching_rect" : [ 142.0, 159.0, 76.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-23",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0. 0. 0.",
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 158.0, 78.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-24",
									"numinlets" : 3,
									"numoutlets" : 1,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 178.0, 220.0, 15.0, 15.0 ],
									"id" : "obj-25",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 142.0, 113.0, 15.0, 15.0 ],
									"id" : "obj-26",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 108.0, 139.0, 15.0, 15.0 ],
									"id" : "obj-27",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 74.0, 139.0, 15.0, 15.0 ],
									"id" : "obj-28",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 139.0, 15.0, 15.0 ],
									"id" : "obj-29",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 517.5, 264.0, 49.5, 264.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 38.5, 201.0, 49.5, 201.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 292.5, 212.0, 49.5, 212.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 151.5, 189.0, 49.5, 189.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 103.5, 264.0, 49.5, 264.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-24", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 155.5, 240.0, 103.5, 240.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-24", 2 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 480.5, 215.0, 163.5, 215.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 0,
									"midpoints" : [ 187.5, 263.0, 184.5, 263.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 263.5, 117.0, 263.5, 117.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-22", 2 ],
									"hidden" : 0,
									"midpoints" : [ 263.5, 232.0, 319.5, 232.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-22", 2 ],
									"hidden" : 0,
									"midpoints" : [ 363.5, 250.0, 319.5, 250.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 2 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-22", 3 ],
									"hidden" : 0,
									"midpoints" : [ 517.5, 264.0, 454.5, 264.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-22", 3 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar filter 7",
					"outlettype" : [ "", "", "", "", "", "", "" ],
					"hidden" : 1,
					"patching_rect" : [ 64.0, 203.0, 77.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numinlets" : 1,
					"numoutlets" : 7,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "mode",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 198.0, 22.0, 60.0, 18.0 ],
					"pattrmode" : 1,
					"fontname" : "Verdana",
					"togcolor" : [ 0.831373, 0.05098, 0.031373, 1.0 ],
					"arrow" : 0,
					"hltcolor" : [ 0.219608, 0.231373, 0.517647, 1.0 ],
					"id" : "obj-24",
					"numinlets" : 1,
					"textcolor" : [ 0.866667, 0.905882, 0.964706, 1.0 ],
					"numoutlets" : 3,
					"items" : [ "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "highshelf" ],
					"fontsize" : 8.777778,
					"bgcolor" : [ 0.513726, 0.54902, 0.631373, 1.0 ],
					"framecolor" : [ 0.019608, 0.0, 0.690196, 1.0 ],
					"discolor" : [ 0.286275, 0.494118, 0.733333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "filtergraph~",
					"varname" : "filter",
					"curvecolor" : [ 0.019608, 0.0, 0.690196, 1.0 ],
					"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
					"domain" : [ 20.0, 22050.0 ],
					"hcurvecolor" : [ 0.74902, 0.172549, 0.160784, 1.0 ],
					"bordercolor" : [ 0.286275, 0.494118, 0.733333, 1.0 ],
					"patching_rect" : [ 9.0, 41.0, 284.0, 93.0 ],
					"bwidthcolor" : [ 0.298039, 0.423529, 0.67451, 1.0 ],
					"autoout" : 1,
					"fgcolor" : [ 0.866667, 0.905882, 0.964706, 1.0 ],
					"id" : "obj-25",
					"numinlets" : 8,
					"hbwidthwcolor" : [ 0.717647, 0.482353, 0.45098, 1.0 ],
					"textcolor" : [  ],
					"numoutlets" : 7,
					"bgcolor" : [ 0.513726, 0.54902, 0.631373, 1.0 ],
					"markercolor" : [ 0.831373, 0.05098, 0.031373, 1.0 ],
					"nfilters" : 5,
					"setfilter" : [ 4, 5, 1, 0, 0, 202.5, 0.999016, 2.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3, 5, 1, 0, 0, 551.700012, 3.405626, 1.804277, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2, 5, 1, 0, 0, 5575.186523, 0.474206, 1.804277, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1, 5, 1, 0, 0, 54.338074, 0.441901, 1.804277, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 5, 1, 0, 0, 202.5, 0.999016, 2.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "number of bands :",
					"patching_rect" : [ 10.0, 24.0, 94.0, 17.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-26",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/documentation\/generate",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 174.0, 574.0, 125.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-27",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 335.0, 601.0, 65.0, 26.0 ],
					"fontname" : "Verdana",
					"id" : "obj-28",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.equalizer~ @size 2U-half @module_type audio @inspector 1 @description \"Multi-band filter\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"patching_rect" : [ 51.0, 598.0, 278.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-29",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"hidden" : 1,
					"patching_rect" : [ 65.0, 574.0, 79.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-30",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 51.0, 574.0, 13.0, 13.0 ],
					"id" : "obj-31",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/init",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 301.0, 574.0, 37.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-32",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 118.0, 303.0, 13.0, 13.0 ],
					"id" : "obj-33",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"patching_rect" : [ 118.0, 499.0, 13.0, 13.0 ],
					"id" : "obj-34",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 280.0, 303.0, 13.0, 13.0 ],
					"id" : "obj-35",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.equalizer~.mxt",
					"outlettype" : [ "", "signal", "signal" ],
					"hidden" : 1,
					"patching_rect" : [ 64.0, 445.0, 119.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-36",
					"numinlets" : 3,
					"numoutlets" : 3,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----signal inputs----",
					"hidden" : 1,
					"patching_rect" : [ 157.0, 302.0, 113.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-37",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"patching_rect" : [ 51.0, 635.0, 13.0, 13.0 ],
					"id" : "obj-38",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"patching_rect" : [ 145.0, 499.0, 13.0, 13.0 ],
					"id" : "obj-39",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"hidden" : 1,
					"patching_rect" : [ 117.0, 513.0, 108.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-40",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "\/Jamoma",
					"outlettype" : [ "" ],
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"id" : "obj-42",
					"numinlets" : 1,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [ 167.5, 590.0, 60.5, 590.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [ 183.5, 592.0, 60.5, 592.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [ 310.5, 594.0, 60.5, 594.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [ 190.5, 250.0, 73.5, 250.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [ 368.5, 440.0, 73.5, 440.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [ 235.5, 440.0, 73.5, 440.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 2 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 3 ],
					"destination" : [ "obj-22", 2 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 6 ],
					"destination" : [ "obj-22", 3 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-22", 4 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-22", 5 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-25", 5 ],
					"hidden" : 1,
					"midpoints" : [ 277.5, 29.0, 207.785721, 29.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-36", 2 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 2 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [ 522.5, 225.0, 190.5, 225.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 2 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [ 367.5, 388.0, 235.5, 388.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [ 301.5, 192.0, 287.0, 192.0, 287.0, 125.0, 301.5, 125.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
