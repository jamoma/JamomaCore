{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 290.0, 44.0, 945.0, 556.0 ],
		"bglocked" : 0,
		"defrect" : [ 290.0, 44.0, 945.0, 556.0 ],
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
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 191.0, 286.0, 50.0, 16.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"id" : "obj-66"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 297.0, 326.0, 143.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-62"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "",
					"annotation" : "",
					"varname" : "outputs",
					"arrow" : 0,
					"presentation_rect" : [ 62.0, 44.0, 30.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 62.0, 43.0, 30.0, 19.0 ],
					"types" : [  ],
					"items" : [ 1, ",", 2, ",", 3, ",", 4, ",", 5, ",", 8, ",", 12, ",", 16, ",", 24 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-48"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "",
					"annotation" : "",
					"varname" : "inputs",
					"arrow" : 0,
					"presentation_rect" : [ 62.0, 23.0, 30.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 62.0, 23.0, 30.0, 19.0 ],
					"types" : [  ],
					"items" : [ 1, ",", 2, ",", 3, ",", 4, ",", 5, ",", 8, ",", 12, ",", 16 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "del 100",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 501.0, 151.0, 43.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "bang" ],
					"id" : "obj-46"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 501.0, 128.0, 32.5, 18.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "bang", "" ],
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 181.0, 44.0, 42.0, 18.0 ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 394.0, 71.0, 50.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-68"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 181.0, 23.0, 42.0, 18.0 ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 392.0, 32.0, 50.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"id" : "obj-67"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 24",
					"fontname" : "Arial",
					"numinlets" : 24,
					"patching_rect" : [ 143.0, 450.0, 344.0, 17.0 ],
					"numoutlets" : 25,
					"fontsize" : 9.0,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.multi.in~",
					"fontname" : "Arial",
					"numinlets" : 32,
					"patching_rect" : [ 143.0, 479.0, 437.5, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----monocable signal input----",
					"fontname" : "Arial",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 302.0, 185.0, 152.0, 17.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 8",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 844.0, 415.0, 33.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 475.0, 183.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"comment" : "signal input"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 284.0, 280.0, 47.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p control~",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 161.0, 255.0, 142.0, 18.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "int", "" ],
					"id" : "obj-7",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 747.0, 354.0, 379.0, 271.0 ],
						"bglocked" : 0,
						"defrect" : [ 747.0, 354.0, 379.0, 271.0 ],
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
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 91.0, 169.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"id" : "obj-8",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /audio/mute",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 120.0, 85.0, 144.0, 18.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 0",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 120.0, 109.0, 34.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "int" ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "enable $1 1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 120.0, 130.0, 67.0, 16.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.pass open",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 53.0, 62.0, 86.0, 18.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 53.0, 169.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"id" : "obj-5",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 120.0, 169.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"id" : "obj-6",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 53.0, 32.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"comment" : "Connect to 2nd last outlet of jcom.in~"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 254.5, 157.0, 62.5, 157.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-8", 0 ],
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
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 7",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 806.0, 415.0, 33.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 6",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 769.0, 415.0, 33.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 5",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 731.0, 416.0, 33.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 4",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 696.0, 415.0, 33.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 3",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 660.0, 414.0, 33.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p thru",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 553.0, 443.0, 37.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
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
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 209.0, 87.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 191.0, 224.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-2",
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
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 2",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 623.0, 414.0, 33.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 1",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 588.0, 414.0, 33.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 0",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 553.0, 415.0, 33.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1 2 3 4 5 8 12 16 24",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 554.0, 391.0, 337.0, 17.0 ],
					"numoutlets" : 10,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 554.0, 371.0, 51.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "outputs[1]",
					"text" : "jcom.parameter outputs @priority 2 @type msg_int @range/bounds 1 24 @range/clipmode both @description \"number of input signals\"",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 556.0, 337.0, 549.0, 17.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 7",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 801.0, 243.0, 33.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 6",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 764.0, 243.0, 33.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 5",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 726.0, 244.0, 33.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 4",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 691.0, 243.0, 33.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 3",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 655.0, 242.0, 33.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p thru",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 548.0, 271.0, 37.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-27",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
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
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 209.0, 87.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 191.0, 224.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-2",
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
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 2",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 618.0, 242.0, 33.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 1",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 583.0, 242.0, 33.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 0",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 548.0, 243.0, 33.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1 2 3 4 5 8 12 16",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 549.0, 219.0, 303.0, 17.0 ],
					"numoutlets" : 9,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 549.0, 199.0, 51.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inputs[1]",
					"text" : "jcom.parameter inputs @priority 1 @type msg_int @range/bounds 1 16 @range/clipmode both @description \"number of input signals\"",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 549.0, 167.0, 543.0, 17.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar outputs 2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 553.0, 313.0, 76.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar inputs 2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 559.0, 140.0, 70.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Outputs:",
					"presentation_rect" : [ 5.0, 45.0, 56.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 4.0, 43.0, 56.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Inputs:",
					"presentation_rect" : [ 10.0, 24.0, 49.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 24.0, 49.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"fontname" : "Arial",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 225.0, 159.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 272.0, 44.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 251.0, 41.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "open" ],
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p inspector",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 293.0, 67.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-41",
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 44.0, 1245.0, 644.0 ],
						"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 44.0, 1245.0, 644.0 ],
						"openrect" : [ 0.0, 44.0, 303.0, 339.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"title" : "jmod.sur.reverb~",
						"visible" : 1,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Gain",
									"presentation_rect" : [ 188.616074, 128.931961, 33.63303, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 261.640381, 226.063202, 98.857826, 19.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"id" : "obj-150"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Frequency [Hz]",
									"presentation_rect" : [ 102.178619, 128.931961, 89.222351, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 171.956268, 226.063202, 89.222351, 19.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"id" : "obj-142"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Interp. time for changes [ms]:",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 6.670719, 186.443192, 90.637344, 31.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 70.413132, 458.79715, 90.0, 31.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"id" : "obj-136"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Max:",
									"presentation_rect" : [ 5.929529, 166.368179, 35.115417, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 225.322021, 496.59787, 35.115417, 19.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"id" : "obj-134"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Min:",
									"presentation_rect" : [ 5.929531, 144.838409, 35.115417, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 220.874878, 470.656189, 35.115417, 19.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"id" : "obj-132"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Path length [ms]",
									"presentation_rect" : [ 6.670716, 128.931961, 95.893066, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 71.15432, 226.063202, 95.893066, 19.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"id" : "obj-129"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Gain:",
									"presentation_rect" : [ 20.0, 62.0, 36.0, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 75.299995, 158.199982, 36.0, 19.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"id" : "obj-122"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Q/S:",
									"presentation_rect" : [ 22.0, 42.0, 34.0, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 77.299995, 138.199997, 34.0, 19.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"id" : "obj-123"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "cf [Hz]:",
									"presentation_rect" : [ 7.0, 22.0, 49.0, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 62.299995, 118.199997, 49.0, 19.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"id" : "obj-124"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "FDN path settings",
									"presentation_rect" : [ 104.306198, 111.882141, 108.410683, 20.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 143.300003, 208.199982, 164.0, 20.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"underline" : 1,
									"fontsize" : 11.0,
									"id" : "obj-121"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Input filter",
									"presentation_rect" : [ 119.871208, 4.223573, 68.645187, 20.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 147.041199, 92.235237, 165.0, 20.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"underline" : 1,
									"fontsize" : 11.0,
									"id" : "obj-119"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Gain:",
									"presentation_rect" : [ 20.0, 285.0, 36.0, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 75.299995, 369.199982, 36.0, 19.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"id" : "obj-107"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Q/S:",
									"presentation_rect" : [ 22.0, 264.0, 34.0, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 77.299995, 349.199982, 34.0, 19.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"id" : "obj-105"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "cf [Hz]:",
									"presentation_rect" : [ 7.0, 243.0, 49.0, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 62.299995, 329.199982, 49.0, 19.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"id" : "obj-103"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "FDN path filter",
									"presentation_rect" : [ 115.424065, 221.846893, 95.0, 20.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 176.300003, 309.199982, 94.0, 20.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"underline" : 1,
									"fontsize" : 11.0,
									"id" : "obj-101"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"presentation_rect" : [ 230.242294, 145.767654, 59.167126, 37.159073 ],
									"truncate" : 0,
									"fontname" : "Verdana",
									"texton" : "Modulation On",
									"numinlets" : 1,
									"patching_rect" : [ 443.299988, 228.199982, 36.257587, 17.035236 ],
									"mode" : 1,
									"presentation" : 1,
									"numoutlets" : 3,
									"text" : "Modulation Off",
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "int" ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "modulation/active",
									"text" : "jcom.parameter modulation/active @type msg_int @range/bounds 0 1 @range/clipmode both @description \"activate modulation of the FDN delay path length\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 531.299988, 221.199982, 358.0, 27.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 s 0",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 1212.299927, 511.199982, 40.0, 17.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "", "int" ],
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p DecodeFilterGraph",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 4,
									"patching_rect" : [ 1003.299988, 579.200012, 100.0, 17.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-7",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 564.0, 189.0, 486.0, 356.0 ],
										"bglocked" : 0,
										"defrect" : [ 564.0, 189.0, 486.0, 356.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Else \"Restore Default Settings\" will not function properly as past values for q, filtergain and cf maintained in FilterGraph will overrule the attempt to reset values to defaults.",
													"linecount" : 2,
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 34.0, 260.0, 415.0, 27.0 ],
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 142.0, 194.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-2",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 88.0, 194.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-3",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 34.0, 194.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-4",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "atodb",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 88.0, 157.0, 33.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 179.0, 35.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 125.0, 35.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-7",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 71.0, 35.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-8",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 142.0, 128.0, 47.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 88.0, 128.0, 47.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-10"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 34.0, 128.0, 47.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-11"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 263.0, 35.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"id" : "obj-12",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Output from FilterFraph has to be muted when filtertype is changes.",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 34.0, 238.0, 315.0, 17.0 ],
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"id" : "obj-13"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-4", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p PrepareForFiltergraph~",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 3,
									"patching_rect" : [ 985.299988, 800.200012, 124.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 91.0, 247.0, 597.0, 355.0 ],
										"bglocked" : 0,
										"defrect" : [ 91.0, 247.0, 597.0, 355.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 267.0, 143.0, 33.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Set message to 6nd inlet",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 401.0, 232.0, 119.0, 17.0 ],
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 96.0, 274.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-3",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak set 1200. 1. 1.",
													"fontname" : "Arial",
													"numinlets" : 4,
													"patching_rect" : [ 96.0, 232.0, 215.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 335.0, 119.0, 50.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 199.0, 50.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 267.0, 119.0, 50.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 267.0, 50.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-8",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 199.0, 119.0, 50.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 335.0, 50.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-10",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Get rid of set",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 405.0, 121.0, 100.0, 17.0 ],
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"id" : "obj-11"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 2 ],
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
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
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
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"presentation_rect" : [ 56.0, 63.0, 44.0, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 1144.299927, 655.200012, 50.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"id" : "obj-10",
									"numdecimalplaces" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"presentation_rect" : [ 56.0, 43.0, 44.0, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 1144.299927, 579.200012, 50.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"id" : "obj-11",
									"numdecimalplaces" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"presentation_rect" : [ 56.0, 23.0, 44.0, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 1144.299927, 738.200012, 68.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar PreFilterType 2",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 1012.299988, 435.199982, 106.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar PreFilterGraph 7",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 990.299988, 554.200012, 110.0, 17.0 ],
									"numoutlets" : 7,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "", "", "", "", "" ],
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "input_eq/filtertype",
									"text" : "jcom.parameter input_eq/filtertype @type msg_symbol @description \"What kind of filter to use. Possible values: lowpass | highpass | bandpass | bandstop | peaknotch | lowshelf | highshelf\"",
									"linecount" : 3,
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 1012.299988, 460.199982, 306.0, 38.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "input_eq/filtergain",
									"text" : "jcom.parameter input_eq/filtergain @type msg_float @range/bounds -24 24 @range/clipmode both @ramp/drive scheduler @repetitions/allow 1 @description \"Gain (dB)\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 1144.299927, 679.200012, 381.0, 27.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "input_eq/q",
									"text" : "jcom.parameter input_eq/q @type msg_float @ramp/drive scheduler @range/bounds 0. 100. @range/clipmode both @repetitions/allow 1 @description \"Resonance (Q)\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 1144.299927, 603.200012, 364.0, 27.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "input_eq/cf",
									"text" : "jcom.parameter input_eq/cf @type msg_float @range/bounds 30. 11025. @range/clipmode both @ramp/drive scheduler @repetitions/allow 1 @description \"Center frequency (Hz)\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 1144.299927, 759.200012, 387.0, 27.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "FilterType",
									"presentation_rect" : [ 12.30476, 306.0, 88.0, 17.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 67.299995, 386.199982, 78.0, 17.0 ],
									"types" : [  ],
									"items" : [ "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "highshelf" ],
									"presentation" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "", "" ],
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "filtergraph~",
									"varname" : "FilterGraph",
									"bgcolor" : [ 0.678431, 0.678431, 0.678431, 1.0 ],
									"range" : [ 0.0625, 2.0 ],
									"presentation_rect" : [ 108.0, 242.0, 180.0, 84.0 ],
									"hbwidthcolor" : [ 0.478431, 0.290196, 0.290196, 1.0 ],
									"fgcolor" : [ 0.388235, 0.388235, 0.388235, 1.0 ],
									"hcurvecolor" : [ 1.0, 0.086275, 0.086275, 1.0 ],
									"numinlets" : 8,
									"patching_rect" : [ 237.300003, 745.200012, 167.0, 75.0 ],
									"presentation" : 1,
									"logmarkers" : [ 50.0, 500.0, 5000.0 ],
									"numoutlets" : 7,
									"bwidthcolor" : [ 0.462745, 0.47451, 0.65098, 1.0 ],
									"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
									"id" : "obj-29",
									"domain" : [ 20.0, 22050.0 ],
									"markercolor" : [ 0.329412, 0.329412, 0.329412, 1.0 ],
									"nfilters" : 1,
									"setfilter" : [ 0, 3, 1, 0, 0, 732.0, 1.0, 0.054497, 30.0, 11025.0, 0.0625, 16.0, 0.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "PreFilterType",
									"presentation_rect" : [ 12.30476, 83.652382, 88.0, 17.0 ],
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 67.299995, 176.199982, 79.0, 17.0 ],
									"types" : [  ],
									"items" : [ "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "highshelf", ",", "resonant", ",", "allpass" ],
									"presentation" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "", "" ],
									"id" : "obj-30"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "filtergraph~",
									"varname" : "PreFilterGraph",
									"bgcolor" : [ 0.678431, 0.678431, 0.678431, 1.0 ],
									"range" : [ 0.0625, 2.0 ],
									"presentation_rect" : [ 107.0, 21.552855, 180.0, 84.0 ],
									"hbwidthcolor" : [ 0.478431, 0.290196, 0.290196, 1.0 ],
									"fgcolor" : [ 0.388235, 0.388235, 0.388235, 1.0 ],
									"hcurvecolor" : [ 1.0, 0.086275, 0.086275, 1.0 ],
									"numinlets" : 8,
									"patching_rect" : [ 879.299988, 822.200012, 167.0, 75.0 ],
									"presentation" : 1,
									"logmarkers" : [ 50.0, 500.0, 5000.0 ],
									"numoutlets" : 7,
									"bwidthcolor" : [ 0.462745, 0.47451, 0.65098, 1.0 ],
									"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
									"id" : "obj-40",
									"domain" : [ 20.0, 22050.0 ],
									"markercolor" : [ 0.329412, 0.329412, 0.329412, 1.0 ],
									"nfilters" : 1,
									"setfilter" : [ 0, 1, 1, 0, 0, 2548.0, 1.0, 0.606826, 30.0, 11025.0, 0.0625, 16.0, 0.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 s 0",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 695.299988, 513.200012, 40.0, 17.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "", "int" ],
									"id" : "obj-41"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p DecodeFilterGraph",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 4,
									"patching_rect" : [ 486.299988, 581.200012, 100.0, 17.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-42",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 564.0, 189.0, 486.0, 356.0 ],
										"bglocked" : 0,
										"defrect" : [ 564.0, 189.0, 486.0, 356.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Else \"Restore Default Settings\" will not function properly as past values for q, filtergain and cf maintained in FilterGraph will overrule the attempt to reset values to defaults.",
													"linecount" : 2,
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 34.0, 260.0, 415.0, 27.0 ],
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 142.0, 194.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-2",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 88.0, 194.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-3",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 34.0, 194.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-4",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "atodb",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 88.0, 157.0, 33.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 179.0, 35.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 125.0, 35.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-7",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 71.0, 35.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-8",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 142.0, 128.0, 47.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 88.0, 128.0, 47.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-10"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"patching_rect" : [ 34.0, 128.0, 47.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-11"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 263.0, 35.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"id" : "obj-12",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Output from FilterFraph has to be muted when filtertype is changes.",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 34.0, 238.0, 315.0, 17.0 ],
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"id" : "obj-13"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-4", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p PrepareForFiltergraph~",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 3,
									"patching_rect" : [ 468.299988, 802.200012, 124.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-44",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 91.0, 247.0, 597.0, 355.0 ],
										"bglocked" : 0,
										"defrect" : [ 91.0, 247.0, 597.0, 355.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 267.0, 143.0, 33.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Set message to 6nd inlet",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 401.0, 232.0, 119.0, 17.0 ],
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 96.0, 274.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-3",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak set 1200. 1. 1.",
													"fontname" : "Arial",
													"numinlets" : 4,
													"patching_rect" : [ 96.0, 232.0, 215.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 335.0, 119.0, 50.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 199.0, 50.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 267.0, 119.0, 50.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 267.0, 50.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-8",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 199.0, 119.0, 50.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 335.0, 50.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-10",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Get rid of set",
													"fontname" : "Arial",
													"numinlets" : 1,
													"patching_rect" : [ 405.0, 121.0, 100.0, 17.0 ],
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numoutlets" : 0,
													"fontsize" : 9.0,
													"id" : "obj-11"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 2 ],
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
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
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
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"presentation_rect" : [ 56.0, 285.0, 44.0, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 627.299988, 657.200012, 50.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"id" : "obj-45",
									"numdecimalplaces" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"presentation_rect" : [ 56.0, 264.0, 44.0, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 627.299988, 581.200012, 50.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"id" : "obj-46",
									"numdecimalplaces" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"presentation_rect" : [ 56.0, 243.0, 44.0, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 627.299988, 740.200012, 68.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"id" : "obj-47"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar FilterType 2",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 495.299988, 437.199982, 89.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-48"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar FilterGraph 7",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 473.299988, 556.200012, 93.0, 17.0 ],
									"numoutlets" : 7,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "", "", "", "", "" ],
									"id" : "obj-49"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "fdn_eq/filtertype",
									"text" : "jcom.parameter fdn_eq/filtertype @type msg_symbol @description \"What kind of filter to use. Possible values: lowpass | highpass | bandpass | bandstop | peaknotch | lowshelf | highshelf\"",
									"linecount" : 3,
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 495.299988, 462.199982, 306.0, 38.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-50"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "fdn_eq/filtergain",
									"text" : "jcom.parameter fdn_eq/filtergain @type msg_float @range/bounds -24. 0. @range/clipmode both @ramp/drive scheduler @repetitions/allow 1 @description \"Gain (dB)\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 627.299988, 681.200012, 378.0, 27.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-51"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "fdn_eq/q",
									"text" : "jcom.parameter fdn_eq/q @type msg_float @ramp/drive scheduler @range/bounds 0. 100. @range/clipmode both @repetitions/allow 1 @description \"Resonance (Q)\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 627.299988, 605.200012, 356.0, 27.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-52"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "fdn_eq/cf",
									"text" : "jcom.parameter fdn_eq/cf @type msg_float @range/bounds 30. 11025. @range/clipmode both @ramp/drive scheduler @repetitions/allow 1 @description \"Center frequency (Hz)\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 627.299988, 761.200012, 377.0, 27.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-53"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "interpolationtime",
									"text" : "jcom.parameter interpolationtime @type msg_float @range/bounds 0. 1000. @range/clipmode low @ramp/drive scheduler @description \"Interpolationtime for changes of feedback path length and path modulation\"",
									"linecount" : 3,
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 627.299988, 326.199982, 338.0, 38.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-54"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"presentation_rect" : [ 89.137421, 198.041702, 44.574112, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 500.299988, 340.199982, 50.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"id" : "obj-55"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl sort",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 625.299988, 263.199982, 40.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-58"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "modulation/amplitude",
									"text" : "jcom.parameter modulation/amplitude @type msg_list @range/bounds 0. 10. @range/clipmode low @ramp/drive scheduler @description \"minimal and maximal amplitude of the feedback path's length modulation\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 624.299988, 285.199982, 469.0, 27.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-59"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.list2parameter 2",
									"fontname" : "Arial",
									"numinlets" : 11,
									"patching_rect" : [ 448.299988, 286.199982, 144.0, 17.0 ],
									"numoutlets" : 11,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"id" : "obj-60"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"presentation_rect" : [ 184.048447, 165.813614, 44.811665, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 532.299988, 263.199982, 50.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"id" : "obj-61"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"presentation_rect" : [ 184.048447, 145.283844, 44.811665, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 448.299988, 263.199982, 50.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"id" : "obj-62"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl sort",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 623.299988, 150.199982, 40.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-63"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "modulation/frequency",
									"text" : "jcom.parameter modulation/frequency @type msg_list @range/bounds 0. 10. @range/clipmode low @ramp/drive scheduler @description \"minimal and maximal modulation frequency of the feedback path's length\"",
									"linecount" : 3,
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 622.299988, 172.199982, 386.0, 38.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-64"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.list2parameter 2",
									"fontname" : "Arial",
									"numinlets" : 11,
									"patching_rect" : [ 446.299988, 175.199982, 144.0, 17.0 ],
									"numoutlets" : 11,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"id" : "obj-65"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"presentation_rect" : [ 123.140778, 165.813614, 44.811665, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 530.299988, 152.199982, 50.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"id" : "obj-66"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"presentation_rect" : [ 123.140778, 145.283844, 44.070473, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 446.299988, 152.199982, 50.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"id" : "obj-67"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl sort",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 602.299988, 80.199997, 40.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-68"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "delaylength",
									"text" : "jcom.parameter delaylength @type msg_list @range/bounds 0. 300. @range/clipmode both @ramp/drive scheduler @description \"minimal and maximal delaylength of the feedback paths\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 601.299988, 102.199997, 404.0, 27.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-69"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.list2parameter 2",
									"fontname" : "Arial",
									"numinlets" : 11,
									"patching_rect" : [ 445.299988, 105.199997, 144.0, 17.0 ],
									"numoutlets" : 11,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"id" : "obj-70"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"presentation_rect" : [ 47.0, 165.813614, 44.070473, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 512.299988, 83.199997, 50.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"id" : "obj-71"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"presentation_rect" : [ 47.0, 145.283844, 44.070473, 19.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 445.299988, 82.199997, 50.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"id" : "obj-72"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"hidden" : 1,
									"numinlets" : 0,
									"patching_rect" : [ 178.799988, 543.600037, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-87",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 172.300003, 228.199982, 162.0, 59.0 ],
									"border" : 1,
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-96"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"hint" : "panel",
									"annotation" : "panel",
									"presentation_rect" : [ 97.881699, 131.329285, 195.588516, 65.611176 ],
									"numinlets" : 1,
									"patching_rect" : [ 76.299995, 104.199997, 282.0, 117.0 ],
									"presentation" : 1,
									"border" : 1,
									"rounded" : 15,
									"numoutlets" : 0,
									"id" : "obj-151",
									"background" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"hint" : "panel",
									"annotation" : "panel",
									"presentation_rect" : [ 6.0, 4.0, 291.0, 106.623329 ],
									"numinlets" : 1,
									"patching_rect" : [ 61.299995, 208.199982, 281.0, 98.0 ],
									"presentation" : 1,
									"border" : 1,
									"rounded" : 15,
									"numoutlets" : 0,
									"id" : "obj-117",
									"background" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"hint" : "panel",
									"annotation" : "panel",
									"presentation_rect" : [ 6.0, 112.140945, 291.0, 107.859055 ],
									"numinlets" : 1,
									"patching_rect" : [ 61.299995, 89.199997, 282.0, 117.0 ],
									"presentation" : 1,
									"border" : 1,
									"rounded" : 15,
									"numoutlets" : 0,
									"id" : "obj-116",
									"background" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"hint" : "panel",
									"annotation" : "panel",
									"presentation_rect" : [ 6.0, 222.0, 291.0, 111.07048 ],
									"numinlets" : 1,
									"patching_rect" : [ 60.299995, 307.199982, 282.0, 117.0 ],
									"presentation" : 1,
									"border" : 1,
									"rounded" : 15,
									"numoutlets" : 0,
									"id" : "obj-99",
									"background" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"hint" : "panel",
									"annotation" : "panel",
									"presentation_rect" : [ 0.0, 0.0, 302.0, 336.846893 ],
									"numinlets" : 1,
									"patching_rect" : [ 50.299995, 85.199997, 302.0, 345.0 ],
									"presentation" : 1,
									"border" : 1,
									"rounded" : 15,
									"numoutlets" : 0,
									"id" : "obj-98",
									"background" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-40", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-29", 5 ],
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-60", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 1 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [ 470.299988, 313.200012, 443.299927, 313.200012, 443.299927, 253.200012, 541.799988, 253.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [ 457.799988, 309.200012, 446.299927, 309.200012, 446.299927, 256.200012, 457.799988, 256.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-65", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 1 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [ 468.299988, 202.200012, 441.299927, 202.200012, 441.299927, 142.200012, 539.799988, 142.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [ 455.799988, 198.200012, 444.299927, 198.200012, 444.299927, 145.200012, 455.799988, 145.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-70", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 1 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [ 467.299988, 132.200012, 440.299927, 132.200012, 440.299927, 69.200012, 521.799988, 69.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [ 454.799988, 128.200012, 443.299927, 128.200012, 443.299927, 75.200012, 454.799988, 75.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [ 1153.799927, 791.200012, 1140.299927, 791.200012, 1140.299927, 732.200012, 1153.799927, 732.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [ 1153.799927, 711.200012, 1137.299927, 711.200012, 1137.299927, 651.200012, 1153.799927, 651.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [ 1153.799927, 635.200012, 1138.299927, 635.200012, 1138.299927, 570.200012, 1153.799927, 570.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1,
									"midpoints" : [ 636.799988, 637.200012, 621.299927, 637.200012, 621.299927, 572.200012, 636.799988, 572.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 1,
									"midpoints" : [ 636.799988, 713.200012, 620.299927, 713.200012, 620.299927, 653.200012, 636.799988, 653.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [ 636.799988, 793.200012, 623.299927, 793.200012, 623.299927, 734.200012, 636.799988, 734.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [ 1165.300049, 505.200012, 1221.799927, 505.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 2 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-9", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 3 ],
									"hidden" : 1,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [ 1221.799927, 552.200012, 1093.800049, 552.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 2 ],
									"destination" : [ "obj-7", 3 ],
									"hidden" : 1,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [ 1242.799927, 552.200012, 1093.800049, 552.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 3 ],
									"destination" : [ "obj-7", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 2 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [ 1108.800049, 456.200012, 1021.799988, 456.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [ 1021.799988, 504.200012, 1005.299927, 504.200012, 1005.299927, 430.200012, 1021.799988, 430.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [ 1232.299927, 538.200012, 999.799988, 538.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 1 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 1,
									"midpoints" : [ 648.299988, 507.200012, 704.799988, 507.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 1 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 2 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 10 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 10 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 10 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-44", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-60", 10 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 2 ],
									"destination" : [ "obj-42", 3 ],
									"hidden" : 1,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [ 725.799988, 554.200012, 576.799988, 554.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-42", 3 ],
									"hidden" : 1,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [ 704.799988, 554.200012, 576.799988, 554.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-65", 10 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-70", 10 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 3 ],
									"destination" : [ "obj-42", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-44", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 2 ],
									"destination" : [ "obj-42", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 1 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 1,
									"midpoints" : [ 574.799988, 458.200012, 504.799988, 458.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [ 504.799988, 506.200012, 488.299927, 506.200012, 488.299927, 432.200012, 504.799988, 432.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 1 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 1 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 1,
									"midpoints" : [ 715.299988, 540.200012, 482.799988, 540.200012 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Predelay [ms]:",
					"presentation_rect" : [ 102.0, 45.0, 94.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 146.0, 42.0, 94.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "predelay",
					"text" : "jcom.parameter predelay @type msg_float @range/bounds 0. 1000. @range/clipmode both @ramp/drive scheduler @description \"Predelay for incomming signals\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 448.0, 67.0, 603.0, 27.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-45"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "T60 [s]:",
					"presentation_rect" : [ 130.0, 24.0, 60.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 175.0, 24.0, 60.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-47"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "t60",
					"text" : "jcom.parameter t60 @type msg_float @range/bounds 0. 60. @range/clipmode both @ramp/drive scheduler @description \"t60 reverb time\"",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 449.0, 31.0, 561.0, 17.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-49"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 112.0, 85.0, 191.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~",
					"fontname" : "Arial",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 201.0, 49.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-51"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----multicable signal output----",
					"fontname" : "Arial",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 157.0, 501.0, 158.0, 17.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-52"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Arial",
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 98.0, 121.0, 125.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-53"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 143.0, 501.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-54",
					"comment" : "Channel 1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hidden" : 1,
					"numinlets" : 0,
					"patching_rect" : [ 307.0, 372.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-55",
					"comment" : "multicable signal input"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----multicable signal input----",
					"fontname" : "Arial",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 225.0, 346.0, 158.0, 17.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-56"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sur.reverb~",
					"fontname" : "Arial",
					"hidden" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 143.0, 417.0, 343.5, 17.0 ],
					"numoutlets" : 24,
					"fontsize" : 9.0,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"id" : "obj-57"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.sur.reverb~ @description \"multichannel reverb based on a 16x16 Feedback Delay Network\"",
					"fontname" : "Arial",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 150.0, 437.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-59"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Arial",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 14.0, 121.0, 79.0, 17.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-60"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hidden" : 1,
					"numinlets" : 0,
					"patching_rect" : [ 0.0, 121.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-61",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 246.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-63",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_panel" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"has_gain" : 1,
					"numinlets" : 1,
					"presentation" : 1,
					"has_mute" : 1,
					"numoutlets" : 1,
					"prefix" : "audio",
					"outlettype" : [ "" ],
					"id" : "obj-65"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 23 ],
					"destination" : [ "obj-2", 23 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 22 ],
					"destination" : [ "obj-2", 22 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 21 ],
					"destination" : [ "obj-2", 21 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 20 ],
					"destination" : [ "obj-2", 20 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 19 ],
					"destination" : [ "obj-2", 19 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 18 ],
					"destination" : [ "obj-2", 18 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 17 ],
					"destination" : [ "obj-2", 17 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 16 ],
					"destination" : [ "obj-2", 16 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 15 ],
					"destination" : [ "obj-2", 15 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 14 ],
					"destination" : [ "obj-2", 14 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 13 ],
					"destination" : [ "obj-2", 13 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 12 ],
					"destination" : [ "obj-2", 12 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 11 ],
					"destination" : [ "obj-2", 11 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 10 ],
					"destination" : [ "obj-2", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 9 ],
					"destination" : [ "obj-2", 9 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 8 ],
					"destination" : [ "obj-2", 8 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 7 ],
					"destination" : [ "obj-2", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 6 ],
					"destination" : [ "obj-2", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 5 ],
					"destination" : [ "obj-2", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 4 ],
					"destination" : [ "obj-2", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 3 ],
					"destination" : [ "obj-2", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 2 ],
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 23 ],
					"destination" : [ "obj-1", 23 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 22 ],
					"destination" : [ "obj-1", 22 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 21 ],
					"destination" : [ "obj-1", 21 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 20 ],
					"destination" : [ "obj-1", 20 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 19 ],
					"destination" : [ "obj-1", 19 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 18 ],
					"destination" : [ "obj-1", 18 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 17 ],
					"destination" : [ "obj-1", 17 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 16 ],
					"destination" : [ "obj-1", 16 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 15 ],
					"destination" : [ "obj-1", 15 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 14 ],
					"destination" : [ "obj-1", 14 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 13 ],
					"destination" : [ "obj-1", 13 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 12 ],
					"destination" : [ "obj-1", 12 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 11 ],
					"destination" : [ "obj-1", 11 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 10 ],
					"destination" : [ "obj-1", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 9 ],
					"destination" : [ "obj-1", 9 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 8 ],
					"destination" : [ "obj-1", 8 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 7 ],
					"destination" : [ "obj-1", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 6 ],
					"destination" : [ "obj-1", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 5 ],
					"destination" : [ "obj-1", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 4 ],
					"destination" : [ "obj-1", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 3 ],
					"destination" : [ "obj-1", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 2 ],
					"destination" : [ "obj-1", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 1 ],
					"destination" : [ "obj-1", 1 ],
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
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [ 107.5, 138.0, 9.5, 138.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 8 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 7 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 7 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 6 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 6 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 5 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 5 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 4 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 4 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 3 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 3 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 2 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 2 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 557.5, 292.0, 543.0, 292.0, 543.0, 134.0, 568.5, 134.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
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
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 562.5, 465.0, 550.0, 465.0, 550.0, 304.0, 562.5, 304.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 293.5, 314.0, 152.5, 314.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-57", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-57", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 170.5, 314.0, 152.5, 314.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 2 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-66", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
