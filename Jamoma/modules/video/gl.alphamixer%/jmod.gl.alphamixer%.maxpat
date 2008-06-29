{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 110.0, 161.0, 1122.0, 621.0 ],
		"bglocked" : 0,
		"defrect" : [ 110.0, 161.0, 1122.0, 621.0 ],
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
					"numinlets" : 0,
					"patching_rect" : [ 217.0, 363.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 174.0, 363.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 132.0, 363.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0.25 0.25 0.25 0.25",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 951.0, 437.0, 103.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p inspector",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 272.0, 408.0, 60.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-5",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 289.0, 44.0, 550.0, 766.0 ],
						"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 289.0, 44.0, 550.0, 766.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 640.0, 739.0, 100.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 11.595187,
									"patching_rect" : [ 166.0, 740.0, 178.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-50",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, window exec",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 11.595187,
									"patching_rect" : [ 438.0, 739.0, 191.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-49",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 640.0, 719.0, 100.0, 18.0 ],
									"numoutlets" : 2,
									"id" : "obj-46",
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.class.gl_slab.inspect",
									"presentation_rect" : [ 278.0, 3.0, 268.0, 762.0 ],
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 277.0, 0.0, 268.0, 762.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"id" : "obj-1",
									"args" : [  ],
									"name" : "jcom.class.gl_slab.inspect.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.class.gl_group.inspect",
									"presentation_rect" : [ 5.0, 3.0, 268.0, 761.0 ],
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 4.0, 0.0, 268.0, 761.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"id" : "obj-3",
									"args" : [  ],
									"name" : "jcom.class.gl_group.inspect.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"hidden" : 1,
									"numinlets" : 0,
									"patching_rect" : [ 688.0, 89.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 688.0, 134.0, 40.0, 17.0 ],
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "front" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /panel/open",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 688.0, 114.0, 151.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-6",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 688.0, 156.0, 61.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-7",
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 761.0, 366.0, 346.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-6",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 4",
					"fontname" : "Arial",
					"numinlets" : 11,
					"fontsize" : 9.0,
					"patching_rect" : [ 603.0, 371.0, 144.0, 17.0 ],
					"numoutlets" : 11,
					"id" : "obj-11",
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
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 760.0, 267.0, 346.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-12",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 4",
					"fontname" : "Arial",
					"numinlets" : 11,
					"fontsize" : 9.0,
					"patching_rect" : [ 605.0, 272.0, 144.0, 17.0 ],
					"numoutlets" : 11,
					"id" : "obj-17",
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
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 760.0, 180.0, 346.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-18",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 4",
					"fontname" : "Arial",
					"numinlets" : 11,
					"fontsize" : 9.0,
					"patching_rect" : [ 606.0, 184.0, 144.0, 17.0 ],
					"numoutlets" : 11,
					"id" : "obj-23",
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
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 760.0, 92.0, 346.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-24",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 4",
					"fontname" : "Arial",
					"numinlets" : 11,
					"fontsize" : 9.0,
					"patching_rect" : [ 606.0, 93.0, 144.0, 17.0 ],
					"numoutlets" : 11,
					"id" : "obj-29",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mix coefficients",
					"fontname" : "Arial",
					"presentation_rect" : [ 87.0, 27.0, 86.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"patching_rect" : [ 622.0, 37.0, 86.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "layer",
					"fontname" : "Arial",
					"presentation_rect" : [ 18.0, 47.0, 45.0, 17.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 534.0, 56.0, 45.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3:",
					"fontname" : "Arial",
					"presentation_rect" : [ 23.0, 113.0, 23.0, 17.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 536.0, 394.0, 23.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2:",
					"fontname" : "Arial",
					"presentation_rect" : [ 23.0, 97.0, 23.0, 17.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 535.0, 304.0, 23.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1:",
					"fontname" : "Arial",
					"presentation_rect" : [ 23.0, 81.0, 23.0, 17.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 536.0, 218.0, 23.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0:",
					"fontname" : "Arial",
					"presentation_rect" : [ 23.0, 65.0, 23.0, 17.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 536.0, 134.0, 23.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a",
					"fontname" : "Arial",
					"presentation_rect" : [ 186.75, 47.0, 16.0, 17.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 721.75, 57.0, 16.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "b",
					"fontname" : "Arial",
					"presentation_rect" : [ 140.75, 47.0, 16.0, 17.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 679.75, 57.0, 16.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "g",
					"fontname" : "Arial",
					"presentation_rect" : [ 102.75, 47.0, 16.0, 17.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 637.75, 57.0, 16.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "3_a",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 176.0, 114.0, 35.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 716.0, 404.0, 35.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"maximum" : 1.0,
					"id" : "obj-39",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "3_b",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 139.0, 114.0, 35.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 679.0, 404.0, 35.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"maximum" : 1.0,
					"id" : "obj-40",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "3_g",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 102.0, 114.0, 35.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 642.0, 404.0, 35.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"maximum" : 1.0,
					"id" : "obj-41",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "3_r",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 65.0, 114.0, 35.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 603.0, 404.0, 35.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"maximum" : 1.0,
					"id" : "obj-42",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "2_a",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 176.0, 97.0, 35.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 718.0, 304.0, 35.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"maximum" : 1.0,
					"id" : "obj-43",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "2_b",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 139.0, 97.0, 35.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 681.0, 304.0, 35.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"maximum" : 1.0,
					"id" : "obj-44",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "2_g",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 102.0, 97.0, 35.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 644.0, 304.0, 35.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"maximum" : 1.0,
					"id" : "obj-45",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "2_r",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 65.0, 97.0, 35.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 607.0, 304.0, 35.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"maximum" : 1.0,
					"id" : "obj-46",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "1_a",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 176.0, 81.0, 35.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 717.0, 222.0, 35.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"maximum" : 1.0,
					"id" : "obj-47",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "1_b",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 139.0, 81.0, 35.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 680.0, 222.0, 35.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"maximum" : 1.0,
					"id" : "obj-48",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "1_g",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 102.0, 81.0, 35.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 643.0, 222.0, 35.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"maximum" : 1.0,
					"id" : "obj-49",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "1_r",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 65.0, 81.0, 35.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 606.0, 222.0, 35.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"maximum" : 1.0,
					"id" : "obj-50",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "0_a",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 176.0, 65.0, 35.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 717.0, 132.0, 35.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"maximum" : 1.0,
					"id" : "obj-51",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "0_b",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 139.0, 65.0, 35.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 680.0, 132.0, 35.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"maximum" : 1.0,
					"id" : "obj-52",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "0_g",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 102.0, 65.0, 35.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 643.0, 132.0, 35.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"maximum" : 1.0,
					"id" : "obj-53",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 189.0, 431.0, 47.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-54",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 189.0, 409.0, 78.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-55",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "0_r",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 65.0, 65.0, 35.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 606.0, 132.0, 35.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"maximum" : 1.0,
					"id" : "obj-56",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Arial",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 109.0, 169.0, 191.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-57",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out 1",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 163.0, 494.0, 58.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-58",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 4",
					"fontname" : "Arial",
					"numinlets" : 4,
					"fontsize" : 9.0,
					"patching_rect" : [ 87.0, 383.0, 147.0, 17.0 ],
					"numoutlets" : 6,
					"id" : "obj-59",
					"outlettype" : [ "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "r",
					"fontname" : "Arial",
					"presentation_rect" : [ 66.75, 47.0, 16.0, 17.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 601.75, 57.0, 16.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-60"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Arial",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 121.0, 187.0, 125.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-61",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.hub",
					"text" : "jcom.hub @module_type video @algorithm_type jitter @description \"A four channel slab-based video mixer with alpha channels and Photoshop-style layers.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 13.0, 214.0, 337.0, 27.0 ],
					"numoutlets" : 2,
					"id" : "obj-62",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "TEXTURE OUTPUT",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 180.0, 520.0, 90.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-63"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 165.0, 520.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-64",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 89.0, 363.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-65",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OR GL_TEXTURE INPUT",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 101.0, 342.0, 177.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-66"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.gl.alphamixer%",
					"fontname" : "Arial",
					"numinlets" : 5,
					"fontsize" : 9.0,
					"patching_rect" : [ 61.0, 468.0, 121.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-67",
					"outlettype" : [ "", "jit_gl_texture" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 254.0, 187.0, 31.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-68",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 30.0, 186.0, 79.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-69"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 271.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-70",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 15.0, 184.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-71",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"prefix" : "video",
					"presentation_rect" : [ 1.0, 0.0, 300.0, 140.0 ],
					"has_mute" : 1,
					"numinlets" : 1,
					"has_panel" : 1,
					"has_freeze" : 1,
					"patching_rect" : [ 2.0, 0.0, 300.0, 140.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"has_bypass" : 1,
					"id" : "obj-74",
					"outlettype" : [ "" ],
					"has_preview" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 118.5, 209.0, 22.5, 209.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 263.5, 209.0, 22.5, 209.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 130.5, 209.0, 22.5, 209.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 10 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 10 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 10 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 10 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-11", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-17", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-23", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-29", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 4 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 198.899994, 402.0, 281.5, 402.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-59", 3 ],
					"hidden" : 0,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 4 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-59", 2 ],
					"hidden" : 0,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 1 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 3 ],
					"destination" : [ "obj-67", 4 ],
					"hidden" : 0,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 2 ],
					"destination" : [ "obj-67", 3 ],
					"hidden" : 0,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-59", 1 ],
					"hidden" : 0,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 1 ],
					"destination" : [ "obj-67", 2 ],
					"hidden" : 0,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-67", 1 ],
					"hidden" : 0,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [ 198.5, 453.0, 70.5, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 1 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [ 257.5, 453.0, 70.5, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [ 615.5, 111.0, 615.5, 129.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 615.5, 152.0, 597.0, 152.0, 597.0, 90.0, 615.5, 90.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [ 628.0, 126.0, 652.5, 126.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 0,
					"midpoints" : [ 652.5, 155.0, 593.0, 155.0, 593.0, 86.0, 628.0, 86.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 2 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [ 640.5, 121.0, 689.5, 121.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-29", 2 ],
					"hidden" : 0,
					"midpoints" : [ 689.5, 158.0, 588.0, 158.0, 588.0, 82.0, 640.5, 82.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 3 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 653.0, 115.0, 726.5, 115.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-29", 3 ],
					"hidden" : 0,
					"midpoints" : [ 726.5, 161.0, 584.0, 161.0, 584.0, 78.0, 653.0, 78.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [ 615.5, 202.0, 615.5, 217.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 628.0, 214.0, 652.5, 214.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 2 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [ 640.5, 209.0, 689.5, 209.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 3 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [ 653.0, 205.0, 726.5, 205.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 615.5, 243.0, 598.0, 243.0, 598.0, 180.0, 615.5, 180.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"midpoints" : [ 652.5, 246.0, 594.0, 246.0, 594.0, 176.0, 628.0, 176.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-23", 2 ],
					"hidden" : 0,
					"midpoints" : [ 689.5, 249.0, 590.0, 249.0, 590.0, 173.0, 640.5, 173.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-23", 3 ],
					"hidden" : 0,
					"midpoints" : [ 726.5, 253.0, 585.0, 253.0, 585.0, 169.0, 653.0, 169.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 616.5, 325.0, 600.0, 325.0, 600.0, 267.0, 614.5, 267.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [ 653.5, 329.0, 595.0, 329.0, 595.0, 264.0, 627.0, 264.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-17", 2 ],
					"hidden" : 0,
					"midpoints" : [ 690.5, 333.0, 590.0, 333.0, 590.0, 261.0, 639.5, 261.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-17", 3 ],
					"hidden" : 0,
					"midpoints" : [ 727.5, 337.0, 585.0, 337.0, 585.0, 258.0, 652.0, 258.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 614.5, 300.0, 616.5, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [ 627.0, 298.0, 653.5, 298.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 2 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 639.5, 295.0, 690.5, 295.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 3 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [ 652.0, 292.0, 727.5, 292.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 612.5, 428.0, 598.0, 428.0, 598.0, 367.0, 612.5, 367.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [ 651.5, 433.0, 594.0, 433.0, 594.0, 363.0, 625.0, 363.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-11", 2 ],
					"hidden" : 0,
					"midpoints" : [ 688.5, 438.0, 590.0, 438.0, 590.0, 360.0, 637.5, 360.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-11", 3 ],
					"hidden" : 0,
					"midpoints" : [ 725.5, 443.0, 585.0, 443.0, 585.0, 357.0, 650.0, 357.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 612.5, 390.0, 612.5, 408.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 625.0, 399.0, 651.5, 399.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 2 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 637.5, 395.0, 688.5, 395.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 3 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 650.0, 392.0, 725.5, 392.0 ]
				}

			}
 ]
	}

}
