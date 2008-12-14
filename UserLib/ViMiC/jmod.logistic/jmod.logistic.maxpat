{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 33.0, 44.0, 1028.0, 475.0 ],
		"bglocked" : 0,
		"defrect" : [ 33.0, 44.0, 1028.0, 475.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 4.",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "float" ],
					"id" : "obj-13",
					"patching_rect" : [ 275.0, 402.0, 32.5, 18.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sqrt",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "float" ],
					"id" : "obj-4",
					"patching_rect" : [ 275.0, 379.0, 27.0, 18.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-45",
					"patching_rect" : [ 439.0, 378.0, 100.0, 18.0 ],
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 544.0, 237.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 544.0, 237.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"patching_rect" : [ 216.0, 169.0, 70.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim 50",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"patching_rect" : [ 51.0, 135.0, 48.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend text",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-35",
									"patching_rect" : [ 50.0, 156.0, 66.0, 18.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr pow(0.25*$f1\\, 2.0)",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-34",
									"patching_rect" : [ 165.0, 134.0, 117.0, 18.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ],
									"id" : "obj-33",
									"patching_rect" : [ 51.0, 85.0, 49.0, 18.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-43",
									"patching_rect" : [ 83.0, 40.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-44",
									"patching_rect" : [ 85.0, 249.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-33", 0 ],
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
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Depth:",
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 1.0, 51.0, 38.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-15",
					"patching_rect" : [ 342.0, 80.0, 150.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter iterationdepth @type msg_int @range/bounds 1 13 @range/clipmode both @description \"index of the iteration sample , x[n-1] by default\"",
					"linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-10",
					"patching_rect" : [ 425.0, 315.0, 573.0, 29.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "iteration depth",
					"numinlets" : 1,
					"numoutlets" : 2,
					"presentation_rect" : [ 34.0, 51.0, 23.0, 18.0 ],
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-7",
					"triangle" : 0,
					"patching_rect" : [ 373.0, 314.0, 50.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 0.0, 20.0, 150.0, 14.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-37",
					"name" : "jcom.textsliderOLD.maxpat",
					"patching_rect" : [ 275.0, 356.0, 153.0, 17.0 ],
					"presentation" : 1,
					"args" : [ 0.8, "@text", " ", "@size", 150, 15 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 0.000001",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "float" ],
					"id" : "obj-28",
					"patching_rect" : [ 387.0, 178.0, 59.0, 18.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "seed (x[0])",
					"numinlets" : 1,
					"numoutlets" : 2,
					"presentation_rect" : [ 7.0, 35.0, 50.0, 18.0 ],
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-11",
					"triangle" : 0,
					"patching_rect" : [ 322.0, 223.0, 50.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-9",
					"patching_rect" : [ 102.0, 336.0, 25.0, 25.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[2]",
					"text" : "jcom.parameter a @type msg_float @range/bounds 0. 4. @range/clipmode both @description \"value of the a-parameter\"",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-3",
					"patching_rect" : [ 439.0, 355.0, 493.0, 17.0 ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "random 1000000",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "int" ],
					"id" : "obj-2",
					"patching_rect" : [ 387.0, 159.0, 86.0, 18.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Update [Hz] :",
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 58.0, 41.0, 67.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-21",
					"patching_rect" : [ 344.0, 104.0, 150.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"text" : "Init",
					"presentation_rect" : [ 93.0, 3.0, 27.0, 14.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "int" ],
					"id" : "obj-12",
					"patching_rect" : [ 387.0, 136.0, 33.0, 20.0 ],
					"presentation" : 1,
					"rounded" : 8.0,
					"fontsize" : 10.0,
					"texton" : "Spacenavigator (On)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "audio",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"text" : "Off",
					"presentation_rect" : [ 121.0, 3.0, 27.0, 14.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "int" ],
					"id" : "obj-5",
					"patching_rect" : [ 477.0, 138.0, 33.0, 20.0 ],
					"presentation" : 1,
					"rounded" : 8.0,
					"fontsize" : 10.0,
					"texton" : "On"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"presentation_rect" : [ 125.0, 40.0, 22.0, 19.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-32",
					"triangle" : 0,
					"patching_rect" : [ 320.0, 251.0, 30.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[1]",
					"text" : "jcom.message update @type msg_none @description \"update from  an external clock\"",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-1",
					"patching_rect" : [ 374.0, 282.0, 356.0, 17.0 ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "updaterate",
					"text" : "jcom.parameter updaterate @type msg_int @range/bounds 1 66 @range/clipmode both @description \"set the frequency how often the function computes data\"",
					"linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-6",
					"patching_rect" : [ 375.0, 244.0, 584.0, 27.0 ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[3]",
					"text" : "jcom.parameter seed @type msg_float @range/bounds 0. 1. @priority 1 @range/clipmode both @description \"new x-parameter\"",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-8",
					"patching_rect" : [ 381.0, 223.0, 523.0, 17.0 ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "on",
					"text" : "jcom.parameter active @type msg_toggle @description \"Turns internal clock on\"",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-14",
					"patching_rect" : [ 514.0, 141.0, 331.0, 17.0 ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numinlets" : 2,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"patching_rect" : [ 53.0, 107.0, 191.0, 15.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"id" : "obj-18",
					"patching_rect" : [ 102.0, 243.0, 43.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-22",
					"patching_rect" : [ 189.0, 124.0, 31.0, 15.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.logistic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"patching_rect" : [ 102.0, 268.0, 55.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.logistic @description \"Logistic Map  x[n] = x[n-1] * a(1 - x[n-1])\"",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"id" : "obj-24",
					"patching_rect" : [ 20.0, 149.0, 321.0, 17.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"patching_rect" : [ 20.0, 125.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-26",
					"patching_rect" : [ 20.0, 182.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-29",
					"patching_rect" : [ 60.0, 124.0, 125.0, 15.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-31",
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"presentation" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 111.5, 333.0, 111.5, 333.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 62.5, 145.0, 29.5, 145.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 69.5, 145.0, 29.5, 145.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 198.5, 145.0, 29.5, 145.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-8", 0 ],
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
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
