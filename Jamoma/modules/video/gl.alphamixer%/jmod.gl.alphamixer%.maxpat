{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 116.0, 103.0, 1263.0, 738.0 ],
		"bglocked" : 0,
		"defrect" : [ 116.0, 103.0, 1263.0, 738.0 ],
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
					"maxclass" : "inlet",
					"id" : "obj-1",
					"numinlets" : 0,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 222.0, 362.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-2",
					"numinlets" : 0,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 177.0, 362.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-3",
					"numinlets" : 0,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 132.0, 362.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0.25 0.25 0.25 0.25",
					"fontname" : "Arial",
					"id" : "obj-4",
					"numinlets" : 2,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 786.0, 402.0, 103.0, 15.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p inspector",
					"fontname" : "Arial",
					"id" : "obj-5",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 272.0, 408.0, 60.0, 17.0 ],
					"fontsize" : 9.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 289.0, 44.0, 996.0, 810.0 ],
						"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 289.0, 44.0, 996.0, 810.0 ],
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
						"visible" : 1,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.class.gl_slab.inspect",
									"id" : "obj-1",
									"numinlets" : 0,
									"name" : "jcom.class.gl_slab.inspect.maxpat",
									"numoutlets" : 0,
									"patching_rect" : [ 280.0, 0.0, 268.0, 762.0 ],
									"args" : [  ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.class.gl_group.inspect",
									"id" : "obj-3",
									"numinlets" : 0,
									"name" : "jcom.class.gl_group.inspect.maxpat",
									"numoutlets" : 0,
									"patching_rect" : [ 7.0, 0.0, 268.0, 761.0 ],
									"args" : [  ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-4",
									"numinlets" : 0,
									"hidden" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 691.0, 89.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontname" : "Arial",
									"id" : "obj-5",
									"numinlets" : 1,
									"hidden" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 691.0, 134.0, 40.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "front" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /panel/open",
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 1,
									"hidden" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 691.0, 114.0, 151.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Arial",
									"id" : "obj-7",
									"numinlets" : 1,
									"hidden" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 691.0, 156.0, 61.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 0 ],
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
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "layer_3",
					"text" : "jcom.parameter layer_3 @type msg_list @ramp/drive scheduler @description \"Blend coefficients for layer 3 (backmost layer) as list of rgba values.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-6",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 595.0, 319.0, 346.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar 3_a",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-7",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 540.0, 346.0, 30.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar 3_b",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-8",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 507.0, 346.0, 30.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar 3_g",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-9",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 474.0, 346.0, 30.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar 3_r",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-10",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 441.0, 346.0, 30.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 4",
					"fontname" : "Arial",
					"id" : "obj-11",
					"numinlets" : 11,
					"hidden" : 1,
					"numoutlets" : 11,
					"patching_rect" : [ 441.0, 319.0, 144.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "layer_2",
					"text" : "jcom.parameter layer_2 @type msg_list @ramp/drive scheduler @description \"Blend coefficients for layer 2 as list of rgba values.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-12",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 595.0, 232.0, 346.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar 2_a",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-13",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 540.0, 259.0, 30.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar 2_b",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-14",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 507.0, 259.0, 30.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar 2_g",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-15",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 474.0, 259.0, 30.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar 2_r",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-16",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 441.0, 259.0, 30.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 4",
					"fontname" : "Arial",
					"id" : "obj-17",
					"numinlets" : 11,
					"hidden" : 1,
					"numoutlets" : 11,
					"patching_rect" : [ 441.0, 232.0, 144.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "layer_1",
					"text" : "jcom.parameter layer_1 @type msg_list @ramp/drive scheduler @description \"Blend coefficients for layer 1 as list of rgba values.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-18",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 595.0, 145.0, 346.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar 1_a",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-19",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 540.0, 172.0, 30.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar 1_b",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-20",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 507.0, 172.0, 30.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar 1_g",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-21",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 474.0, 172.0, 30.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar 1_r",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-22",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 441.0, 172.0, 30.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 4",
					"fontname" : "Arial",
					"id" : "obj-23",
					"numinlets" : 11,
					"hidden" : 1,
					"numoutlets" : 11,
					"patching_rect" : [ 441.0, 145.0, 144.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "layer_0",
					"text" : "jcom.parameter layer_0 @type msg_list @ramp/drive scheduler @description \"Blend coefficients for layer 0 (frontmost layer) as list of rgba values.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-24",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 595.0, 57.0, 346.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar 0_a",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-25",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 540.0, 85.0, 30.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar 0_b",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-26",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 507.0, 85.0, 30.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar 0_g",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-27",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 474.0, 85.0, 30.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar 0_r",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-28",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 441.0, 85.0, 30.0, 27.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 4",
					"fontname" : "Arial",
					"id" : "obj-29",
					"numinlets" : 11,
					"hidden" : 1,
					"numoutlets" : 11,
					"patching_rect" : [ 441.0, 58.0, 144.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mix coefficients",
					"fontname" : "Arial",
					"presentation_rect" : [ 87.0, 27.0, 86.0, 19.0 ],
					"id" : "obj-30",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 86.0, 22.0, 86.0, 19.0 ],
					"fontsize" : 11.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "layer",
					"fontname" : "Arial",
					"presentation_rect" : [ 18.0, 47.0, 45.0, 17.0 ],
					"id" : "obj-31",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 17.0, 42.0, 45.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3:",
					"fontname" : "Arial",
					"presentation_rect" : [ 23.0, 113.0, 23.0, 17.0 ],
					"id" : "obj-32",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 22.0, 108.0, 23.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2:",
					"fontname" : "Arial",
					"presentation_rect" : [ 23.0, 97.0, 23.0, 17.0 ],
					"id" : "obj-33",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 22.0, 92.0, 23.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1:",
					"fontname" : "Arial",
					"presentation_rect" : [ 23.0, 81.0, 23.0, 17.0 ],
					"id" : "obj-34",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 22.0, 76.0, 23.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0:",
					"fontname" : "Arial",
					"presentation_rect" : [ 23.0, 65.0, 23.0, 17.0 ],
					"id" : "obj-35",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 22.0, 60.0, 23.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a",
					"fontname" : "Arial",
					"presentation_rect" : [ 186.75, 47.0, 16.0, 17.0 ],
					"id" : "obj-36",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 185.75, 42.0, 16.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "b",
					"fontname" : "Arial",
					"presentation_rect" : [ 144.75, 47.0, 16.0, 17.0 ],
					"id" : "obj-37",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 143.75, 42.0, 16.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "g",
					"fontname" : "Arial",
					"presentation_rect" : [ 102.75, 47.0, 16.0, 17.0 ],
					"id" : "obj-38",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 101.75, 42.0, 16.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "3_a",
					"fontname" : "Arial",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 176.0, 111.0, 35.0, 17.0 ],
					"id" : "obj-39",
					"numinlets" : 1,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 175.0, 106.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"maximum" : 1.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "3_b",
					"fontname" : "Arial",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 139.0, 111.0, 35.0, 17.0 ],
					"id" : "obj-40",
					"numinlets" : 1,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 138.0, 106.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"maximum" : 1.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "3_g",
					"fontname" : "Arial",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 102.0, 111.0, 35.0, 17.0 ],
					"id" : "obj-41",
					"numinlets" : 1,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 101.0, 106.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"maximum" : 1.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "3_r",
					"fontname" : "Arial",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 65.0, 111.0, 35.0, 17.0 ],
					"id" : "obj-42",
					"numinlets" : 1,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 64.0, 106.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"maximum" : 1.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "2_a",
					"fontname" : "Arial",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 176.0, 95.0, 35.0, 17.0 ],
					"id" : "obj-43",
					"numinlets" : 1,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 175.0, 90.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"maximum" : 1.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "2_b",
					"fontname" : "Arial",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 139.0, 95.0, 35.0, 17.0 ],
					"id" : "obj-44",
					"numinlets" : 1,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 138.0, 90.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"maximum" : 1.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "2_g",
					"fontname" : "Arial",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 102.0, 95.0, 35.0, 17.0 ],
					"id" : "obj-45",
					"numinlets" : 1,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 101.0, 90.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"maximum" : 1.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "2_r",
					"fontname" : "Arial",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 65.0, 95.0, 35.0, 17.0 ],
					"id" : "obj-46",
					"numinlets" : 1,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 64.0, 90.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"maximum" : 1.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "1_a",
					"fontname" : "Arial",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 176.0, 79.0, 35.0, 17.0 ],
					"id" : "obj-47",
					"numinlets" : 1,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 175.0, 74.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"maximum" : 1.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "1_b",
					"fontname" : "Arial",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 139.0, 79.0, 35.0, 17.0 ],
					"id" : "obj-48",
					"numinlets" : 1,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 138.0, 74.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"maximum" : 1.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "1_g",
					"fontname" : "Arial",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 102.0, 79.0, 35.0, 17.0 ],
					"id" : "obj-49",
					"numinlets" : 1,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 101.0, 74.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"maximum" : 1.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "1_r",
					"fontname" : "Arial",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 65.0, 79.0, 35.0, 17.0 ],
					"id" : "obj-50",
					"numinlets" : 1,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 64.0, 74.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"maximum" : 1.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "0_a",
					"fontname" : "Arial",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 176.0, 63.0, 35.0, 17.0 ],
					"id" : "obj-51",
					"numinlets" : 1,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 175.0, 58.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"maximum" : 1.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "0_b",
					"fontname" : "Arial",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 139.0, 63.0, 35.0, 17.0 ],
					"id" : "obj-52",
					"numinlets" : 1,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 138.0, 58.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"maximum" : 1.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "0_g",
					"fontname" : "Arial",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 102.0, 63.0, 35.0, 17.0 ],
					"id" : "obj-53",
					"numinlets" : 1,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 101.0, 58.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"maximum" : 1.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Arial",
					"id" : "obj-54",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 189.0, 431.0, 47.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Arial",
					"id" : "obj-55",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 189.0, 409.0, 78.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "0_r",
					"fontname" : "Arial",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 65.0, 63.0, 35.0, 17.0 ],
					"id" : "obj-56",
					"numinlets" : 1,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 64.0, 58.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"maximum" : 1.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Arial",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"id" : "obj-57",
					"numinlets" : 2,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 110.0, 235.0, 191.0, 15.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out 1",
					"fontname" : "Arial",
					"id" : "obj-58",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 171.0, 495.0, 58.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 4",
					"fontname" : "Arial",
					"id" : "obj-59",
					"numinlets" : 4,
					"hidden" : 1,
					"numoutlets" : 6,
					"patching_rect" : [ 87.0, 383.0, 147.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "r",
					"fontname" : "Arial",
					"presentation_rect" : [ 66.75, 47.0, 16.0, 17.0 ],
					"id" : "obj-60",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 65.75, 42.0, 16.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Arial",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"id" : "obj-61",
					"numinlets" : 2,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 122.0, 253.0, 125.0, 15.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.hub",
					"text" : "jcom.hub jmod.gl.alphamixer% @size 2U-half @module_type video @algorithm_type jitter @description \"A four channel slab-based video mixer with alpha channels and Photoshop-style layers.\"",
					"linecount" : 3,
					"fontname" : "Arial",
					"id" : "obj-62",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 16.0, 280.0, 337.0, 38.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "TEXTURE OUTPUT",
					"fontname" : "Arial",
					"id" : "obj-63",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 186.0, 528.0, 90.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-64",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 171.0, 528.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-65",
					"numinlets" : 0,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 87.0, 362.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OR GL_TEXTURE INPUT",
					"fontname" : "Arial",
					"id" : "obj-66",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 101.0, 342.0, 177.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.gl.alphamixer%",
					"fontname" : "Arial",
					"id" : "obj-67",
					"numinlets" : 5,
					"hidden" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 60.0, 468.0, 121.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "jit_gl_texture" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Arial",
					"id" : "obj-68",
					"numinlets" : 2,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 252.0, 253.0, 31.0, 15.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Arial",
					"id" : "obj-69",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 31.0, 252.0, 79.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-70",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.0, 337.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-71",
					"numinlets" : 0,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 16.0, 250.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- substitute for desired algorithm",
					"fontname" : "Arial",
					"id" : "obj-72",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"patching_rect" : [ 188.0, 470.0, 174.0, 17.0 ],
					"fontsize" : 9.0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_bypass" : 1,
					"presentation_rect" : [ 1.0, 0.0, 300.0, 140.0 ],
					"id" : "obj-74",
					"numinlets" : 1,
					"prefix" : "video",
					"numoutlets" : 1,
					"patching_rect" : [ 2.0, 0.0, 300.0, 140.0 ],
					"presentation" : 1,
					"has_controlpanel" : 1,
					"outlettype" : [ "" ],
					"has_preview" : 1,
					"has_freeze" : 1,
					"has_mute" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-55", 1 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 1,
					"midpoints" : [ 257.5, 453.0, 69.5, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 1,
					"midpoints" : [ 198.5, 453.0, 69.5, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-67", 1 ],
					"hidden" : 1,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 1 ],
					"destination" : [ "obj-67", 2 ],
					"hidden" : 1,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-59", 1 ],
					"hidden" : 1,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 2 ],
					"destination" : [ "obj-67", 3 ],
					"hidden" : 1,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 3 ],
					"destination" : [ "obj-67", 4 ],
					"hidden" : 1,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 1 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-59", 2 ],
					"hidden" : 1,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 4 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-59", 3 ],
					"hidden" : 1,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 4 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [ 198.899994, 402.0, 281.5, 402.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [ 450.5, 120.0, 431.0, 120.0, 431.0, 53.0, 450.5, 53.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 450.5, 207.0, 431.0, 207.0, 431.0, 140.0, 450.5, 140.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [ 450.5, 294.0, 431.0, 294.0, 431.0, 227.0, 450.5, 227.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [ 450.5, 381.0, 431.0, 381.0, 431.0, 314.0, 450.5, 314.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 1,
					"midpoints" : [ 483.5, 122.0, 428.0, 122.0, 428.0, 50.0, 463.0, 50.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 1,
					"midpoints" : [ 483.5, 209.0, 428.0, 209.0, 428.0, 137.0, 463.0, 137.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 1,
					"midpoints" : [ 483.5, 296.0, 428.0, 296.0, 428.0, 224.0, 463.0, 224.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 1,
					"midpoints" : [ 483.5, 383.0, 428.0, 383.0, 428.0, 311.0, 463.0, 311.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-29", 2 ],
					"hidden" : 1,
					"midpoints" : [ 516.5, 124.0, 425.0, 124.0, 425.0, 47.0, 475.5, 47.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-23", 2 ],
					"hidden" : 1,
					"midpoints" : [ 516.5, 211.0, 425.0, 211.0, 425.0, 134.0, 475.5, 134.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-17", 2 ],
					"hidden" : 1,
					"midpoints" : [ 516.5, 298.0, 425.0, 298.0, 425.0, 221.0, 475.5, 221.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-11", 2 ],
					"hidden" : 1,
					"midpoints" : [ 516.5, 385.0, 425.0, 385.0, 425.0, 308.0, 475.5, 308.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-29", 3 ],
					"hidden" : 1,
					"midpoints" : [ 549.5, 126.0, 422.0, 126.0, 422.0, 44.0, 488.0, 44.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-23", 3 ],
					"hidden" : 1,
					"midpoints" : [ 549.5, 213.0, 422.0, 213.0, 422.0, 131.0, 488.0, 131.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-17", 3 ],
					"hidden" : 1,
					"midpoints" : [ 549.5, 300.0, 422.0, 300.0, 422.0, 218.0, 488.0, 218.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-11", 3 ],
					"hidden" : 1,
					"midpoints" : [ 549.5, 387.0, 422.0, 387.0, 422.0, 305.0, 488.0, 305.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 2 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 2 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 2 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 2 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 3 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 3 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 3 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 3 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-29", 10 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-23", 10 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-17", 10 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-11", 10 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 10 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 10 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 10 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 10 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 1,
					"midpoints" : [ 131.5, 275.0, 25.5, 275.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 1,
					"midpoints" : [ 261.5, 275.0, 25.5, 275.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 1,
					"midpoints" : [ 119.5, 275.0, 25.5, 275.0 ]
				}

			}
 ]
	}

}
