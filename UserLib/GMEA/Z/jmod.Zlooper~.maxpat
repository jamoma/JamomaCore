{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 256.0, 217.0, 587.0, 379.0 ],
		"bglocked" : 0,
		"defrect" : [ 256.0, 217.0, 587.0, 379.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 2.0, 2.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "input",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 193.0, 43.0, 40.0, 17.0 ],
					"presentation" : 1,
					"frgb" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"bgcolor" : [ 1.0, 0.223529, 0.223529, 0.0 ],
					"fontname" : "Arial",
					"id" : "obj-17",
					"numinlets" : 1,
					"textcolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"presentation_rect" : [ 182.0, 44.0, 33.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "buffer",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 110.0, 25.0, 40.0, 17.0 ],
					"presentation" : 1,
					"frgb" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"bgcolor" : [ 1.0, 0.223529, 0.223529, 0.0 ],
					"fontname" : "Arial",
					"id" : "obj-16",
					"numinlets" : 1,
					"textcolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"presentation_rect" : [ 112.0, 26.0, 33.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "folder",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 57.0, 268.0, 40.0, 17.0 ],
					"presentation" : 1,
					"frgb" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"bgcolor" : [ 1.0, 0.223529, 0.223529, 0.0 ],
					"fontname" : "Arial",
					"id" : "obj-15",
					"numinlets" : 1,
					"textcolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"presentation_rect" : [ 0.0, 26.0, 33.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p widgetctrl",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"patching_rect" : [ 204.0, 414.0, 189.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"fontname" : "Arial",
					"id" : "obj-10",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 636.0, 171.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 636.0, 171.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 2.0, 2.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 370.0, 268.0, 25.0, 25.0 ],
									"id" : "obj-11",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "mute 1 $1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"patching_rect" : [ 94.0, 138.0, 63.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-5",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 94.0, 264.0, 25.0, 25.0 ],
									"id" : "obj-3",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /audio/mute /audio/gain",
									"fontsize" : 12.0,
									"numoutlets" : 3,
									"patching_rect" : [ 94.0, 112.0, 303.0, 20.0 ],
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 94.0, 78.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"numinlets" : 0,
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend setsymbol",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 298.0, 550.0, 106.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p fillmenu",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 10.0, 506.0, 106.0, 17.0 ],
					"outlettype" : [ "clear" ],
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 29.0, 67.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 29.0, 67.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 2.0, 2.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route symbol",
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"patching_rect" : [ 310.0, 308.0, 79.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r dumpaudioinputlist",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 238.0, 204.0, 103.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 276.0, 356.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 306.0, 332.0, 79.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-33",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t dump clear",
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"patching_rect" : [ 238.0, 226.0, 66.0, 17.0 ],
									"outlettype" : [ "dump", "clear" ],
									"fontname" : "Arial",
									"id" : "obj-29",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll audioinputmapping 1",
									"fontsize" : 9.0,
									"numoutlets" : 4,
									"patching_rect" : [ 312.0, 286.0, 124.0, 17.0 ],
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-28",
									"numinlets" : 1,
									"save" : [ "#N", "coll", "audioinputmapping", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 247.5, 254.0, 265.0, 254.0, 265.0, 254.0, 321.5, 254.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "select a sub-folder of buffers",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 10.0, 530.0, 100.0, 17.0 ],
					"outlettype" : [ "int", "", "" ],
					"presentation" : 1,
					"items" : "dodo",
					"arrowframe" : 0,
					"arrow" : 0,
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-13",
					"numinlets" : 1,
					"presentation_rect" : [ 208.0, 44.0, 63.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p set",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"patching_rect" : [ 506.0, 738.0, 100.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-23",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 2.0, 2.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set 1 $1",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"patching_rect" : [ 52.0, 144.0, 74.918251, 18.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-17",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1.",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 120.0, 74.918251, 18.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-16",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l",
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"patching_rect" : [ 50.0, 100.0, 32.0, 17.0 ],
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-19",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 57.0, 222.0, 25.0, 25.0 ],
									"id" : "obj-21",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 0",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"patching_rect" : [ 872.0, 568.0, 42.0, 19.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"bgoveroncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"bgoncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 800.0, 228.0, 42.0, 18.0 ],
					"outlettype" : [ "", "", "int" ],
					"presentation" : 1,
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "Play",
					"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textoveroncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"rounded" : 0.0,
					"fontname" : "Arial",
					"text" : "<->",
					"id" : "obj-9",
					"numinlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 274.0, 119.0, 20.55835, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_tobuffermenu",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 696.0, 80.0, 113.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_frombuffermenu",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 788.0, 120.0, 113.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-55",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sample/buffername[2]",
					"text" : "jcom.parameter looper/menu/buffer @type msg_symbol @priority 32",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 908.0, 102.0, 286.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-41",
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "select a buffer",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 696.0, 102.0, 203.0, 17.0 ],
					"outlettype" : [ "int", "", "" ],
					"presentation" : 1,
					"items" : [  ],
					"arrowframe" : 0,
					"arrow" : 0,
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-35",
					"numinlets" : 1,
					"presentation_rect" : [ 141.0, 24.0, 156.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_tofoldermenu",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 702.0, 14.0, 106.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-53",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_fromfoldermenu",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 744.0, 60.0, 113.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-51",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sample/buffername[1]",
					"text" : "jcom.parameter looper/menu/folder @type msg_symbol @priority 31",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 806.0, 40.0, 293.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-42",
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "select a sub-folder of buffers",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 702.0, 40.0, 100.0, 17.0 ],
					"outlettype" : [ "int", "", "" ],
					"presentation" : 1,
					"items" : [  ],
					"arrowframe" : 0,
					"arrow" : 0,
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-27",
					"numinlets" : 1,
					"presentation_rect" : [ 29.0, 24.0, 84.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sample/buffername",
					"text" : "jcom.parameter looper/buffername @type msg_symbol",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 692.0, 170.0, 254.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-20",
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p selectit",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"patching_rect" : [ 692.0, 144.0, 100.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-5",
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 165.0, 144.0, 1093.0, 598.0 ],
						"bglocked" : 0,
						"defrect" : [ 165.0, 144.0, 1093.0, 598.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 2.0, 2.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_tobuffermenu",
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"patching_rect" : [ 198.0, 368.0, 113.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-56",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_frombuffermenu",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 368.0, 278.0, 113.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-54",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_tofoldermenu",
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"patching_rect" : [ 172.0, 224.0, 106.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-52",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_fromfoldermenu",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 408.0, 162.0, 113.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-50",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_frombpoolmenu",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 312.0, 56.0, 106.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-45",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_tobpoolmenu",
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"patching_rect" : [ 184.0, 118.0, 106.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-44",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 184.0, 94.0, 82.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"patching_rect" : [ 184.0, 73.0, 47.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p refreshbuffer",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"patching_rect" : [ 284.0, 254.0, 141.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-40",
									"numinlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 2.0, 2.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"patching_rect" : [ 50.5, 100.0, 47.0, 17.0 ],
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"id" : "obj-45",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"patching_rect" : [ 50.5, 207.0, 79.0, 17.0 ],
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"id" : "obj-4",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l clear",
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"patching_rect" : [ 50.0, 123.0, 126.0, 17.0 ],
													"outlettype" : [ "", "clear" ],
													"fontname" : "Verdana",
													"id" : "obj-37",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl iter 1",
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"patching_rect" : [ 50.0, 231.0, 46.0, 17.0 ],
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"id" : "obj-36",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 255.0, 87.0, 17.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"id" : "obj-34",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend symbol",
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 147.0, 87.0, 17.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"id" : "obj-30",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll",
													"fontsize" : 9.0,
													"numoutlets" : 4,
													"patching_rect" : [ 50.0, 182.0, 98.0, 17.0 ],
													"outlettype" : [ "", "", "", "" ],
													"fontname" : "Verdana",
													"id" : "obj-29",
													"numinlets" : 1,
													"save" : [ "#N", "coll", ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 54.5, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-33",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 55.5, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-38",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 49.5, 332.0, 25.0, 25.0 ],
													"id" : "obj-39",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 1 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p refreshfolder",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"patching_rect" : [ 286.0, 142.0, 100.0, 20.0 ],
									"outlettype" : [ "", "int" ],
									"fontname" : "Arial",
									"id" : "obj-32",
									"numinlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 67.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 67.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 2.0, 2.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0 dump l clear",
													"fontsize" : 9.0,
													"numoutlets" : 4,
													"patching_rect" : [ 50.0, 151.0, 216.0, 17.0 ],
													"outlettype" : [ "int", "dump", "", "clear" ],
													"fontname" : "Verdana",
													"id" : "obj-44",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"patching_rect" : [ 140.0, 201.0, 90.0, 17.0 ],
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"id" : "obj-28",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"patching_rect" : [ 140.0, 227.0, 87.0, 17.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"id" : "obj-24",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend refer",
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 100.0, 136.0, 17.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"id" : "obj-23",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll",
													"fontsize" : 9.0,
													"numoutlets" : 4,
													"patching_rect" : [ 115.0, 177.0, 98.0, 17.0 ],
													"outlettype" : [ "", "", "", "" ],
													"fontname" : "Verdana",
													"id" : "obj-7",
													"numinlets" : 1,
													"save" : [ "#N", "coll", ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 54.5, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-21",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 119.5, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "dump" ],
													"id" : "obj-22",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 18.0, 304.0, 25.0, 25.0 ],
													"id" : "obj-26",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 140.0, 306.0, 25.0, 25.0 ],
													"id" : "obj-31",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-44", 2 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 1 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 3 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p refreshbufferpool",
									"fontsize" : 12.0,
									"numoutlets" : 6,
									"patching_rect" : [ 24.0, 26.0, 519.0, 20.0 ],
									"outlettype" : [ "bang", "bang", "bang", "", "dump", "" ],
									"fontname" : "Arial",
									"id" : "obj-20",
									"numinlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 593.0, 88.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 593.0, 88.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 2.0, 2.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 152.0, 324.0, 25.0, 25.0 ],
													"id" : "obj-4",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "clear",
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"patching_rect" : [ 473.0, 157.0, 50.0, 15.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"id" : "obj-52",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b b",
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"patching_rect" : [ 57.0, 172.0, 69.0, 17.0 ],
													"outlettype" : [ "bang", "bang", "bang" ],
													"fontname" : "Verdana",
													"id" : "obj-46",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 104.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-21",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"patching_rect" : [ 233.0, 100.0, 100.0, 17.0 ],
													"outlettype" : [ "bang" ],
													"fontname" : "Verdana",
													"id" : "obj-2",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"patching_rect" : [ 216.5, 191.0, 90.0, 17.0 ],
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"id" : "obj-17",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"patching_rect" : [ 216.5, 215.0, 87.0, 17.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"id" : "obj-18",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b dump b",
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"patching_rect" : [ 74.5, 137.0, 417.0, 17.0 ],
													"outlettype" : [ "bang", "dump", "bang" ],
													"fontname" : "Verdana",
													"id" : "obj-16",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r refresh_buffpools",
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"patching_rect" : [ 75.5, 104.0, 99.0, 17.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"id" : "obj-8",
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll buffpools 1",
													"fontsize" : 9.0,
													"numoutlets" : 4,
													"patching_rect" : [ 183.0, 167.0, 104.0, 17.0 ],
													"outlettype" : [ "", "", "", "" ],
													"fontname" : "Verdana",
													"id" : "obj-6",
													"numinlets" : 1,
													"save" : [ "#N", "coll", "buffpools", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 62.0, 323.5, 25.0, 25.0 ],
													"id" : "obj-1",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 96.0, 322.0, 25.0, 25.0 ],
													"id" : "obj-3",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 236.0, 323.5, 25.0, 25.0 ],
													"id" : "obj-10",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 350.0, 328.0, 25.0, 25.0 ],
													"id" : "obj-13",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 478.0, 323.5, 25.0, 25.0 ],
													"id" : "obj-19",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 2 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 242.5, 128.0, 84.0, 128.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 2 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"default_fontface" : 0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 370.0, 392.0, 25.0, 25.0 ],
									"id" : "obj-48",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend symbol",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 172.0, 192.0, 89.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-47",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 196.0, 336.0, 72.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"patching_rect" : [ 196.0, 314.0, 47.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"patching_rect" : [ 172.0, 172.0, 47.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-20", 5 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [ 533.5, 345.0, 294.0, 345.0, 294.0, 357.0, 207.5, 357.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [ 293.5, 358.0, 207.0, 358.0, 207.0, 357.0, 207.5, 357.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [ 377.5, 297.0, 233.5, 297.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 1 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [ 376.5, 216.0, 181.5, 216.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 5 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [ 533.5, 216.0, 181.5, 216.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [ 417.5, 180.0, 273.0, 180.0, 273.0, 168.0, 209.5, 168.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-40", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 3 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 2 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 4 ],
									"destination" : [ "obj-32", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 33.5, 310.0, 205.5, 310.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numoutlets" : 0,
					"patching_rect" : [ 98.0, 480.0, 100.0, 12.0 ],
					"presentation" : 1,
					"id" : "obj-7",
					"numinlets" : 1,
					"presentation_rect" : [ 148.0, 6.0, 100.0, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 258.0, 468.0, 15.0, 15.0 ],
					"id" : "obj-145",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"bgoveroncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"bgoncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 25.0, 626.0, 42.0, 18.0 ],
					"outlettype" : [ "", "", "int" ],
					"presentation" : 1,
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "Rec",
					"mode" : 1,
					"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textoveroncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"text" : "Rec",
					"id" : "obj-141",
					"numinlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 154.0, 44.0, 30.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "preampgain",
					"minimum" : -140.0,
					"triangle" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"maximum" : 10.0,
					"patching_rect" : [ 502.0, 532.0, 35.0, 17.0 ],
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"id" : "obj-123",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"bgoveroncolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"bgoncolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"patching_rect" : [ 878.0, 662.0, 64.0, 20.0 ],
					"outlettype" : [ "", "", "int" ],
					"presentation" : 1,
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "<-",
					"mode" : 1,
					"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"textoveroncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"text" : "->",
					"bgovercolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"id" : "obj-86",
					"numinlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 68.0, 44.0, 25.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"bgoveroncolor" : [ 0.121569, 0.709804, 0.207843, 1.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"bgoncolor" : [ 0.121569, 0.709804, 0.207843, 1.0 ],
					"patching_rect" : [ 872.0, 595.0, 42.0, 18.0 ],
					"outlettype" : [ "", "", "int" ],
					"presentation" : 1,
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "Play",
					"mode" : 1,
					"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textoveroncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"text" : "Play",
					"id" : "obj-85",
					"numinlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 4.0, 44.0, 29.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"patching_rect" : [ 43.0, 255.0, 233.0, 19.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-78",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"patching_rect" : [ 53.0, 274.0, 163.0, 19.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-81",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"patching_rect" : [ 196.0, 274.0, 44.0, 19.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-83",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"patching_rect" : [ 41.0, 349.0, 100.0, 20.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-12",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Play modes",
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"patching_rect" : [ 1012.0, 656.0, 174.0, 27.0 ],
					"frgb" : [ 0.776471, 0.090196, 0.0, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-2",
					"numinlets" : 1,
					"textcolor" : [ 0.776471, 0.090196, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "volume",
					"peakcolor" : [ 0.019608, 0.0, 0.690196, 1.0 ],
					"slidercolor" : [ 0.866667, 0.905882, 0.964706, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"numoutlets" : 2,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"patching_rect" : [ 505.0, 632.0, 30.0, 66.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.0, 1.0 ],
					"contdata" : 1,
					"bgcolor" : [ 0.513726, 0.54902, 0.631373, 1.0 ],
					"setstyle" : 1,
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"bordercolor" : [ 0.831373, 0.05098, 0.031373, 1.0 ],
					"candicane2" : [ 0.286275, 0.494118, 0.733333, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"id" : "obj-4",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Volume",
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"patching_rect" : [ 622.0, 601.0, 174.0, 27.0 ],
					"frgb" : [ 0.776471, 0.090196, 0.0, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-22",
					"numinlets" : 1,
					"textcolor" : [ 0.776471, 0.090196, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.parameter.mxb[5]",
					"text" : "jcom.parameter looper/play @type msg_int @repetitions/allow 1 @description \"Play current sound.\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 872.0, 616.0, 316.0, 27.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-40",
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"varname" : "wftools",
					"imagemask" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 642.0, 152.0, 30.0, 93.0 ],
					"knobpict" : "wfknob.pct",
					"outlettype" : [ "int", "int" ],
					"presentation" : 1,
					"bottomvalue" : 3,
					"movehorizontal" : 0,
					"bkgndpict" : "wfmodes.pct",
					"topvalue" : 0,
					"id" : "obj-57",
					"rightvalue" : 0,
					"inactiveimage" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 274.0, 64.0, 21.055206, 73.027603 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p wfkeys",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"patching_rect" : [ 656.0, 248.0, 63.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-58",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 40.0, 55.0, 238.0, 375.0 ],
						"bglocked" : 0,
						"defrect" : [ 40.0, 55.0, 238.0, 375.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 2.0, 2.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 96.0, 202.0, 27.0, 17.0 ],
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontsize" : 9.0,
									"numoutlets" : 4,
									"patching_rect" : [ 131.0, 255.0, 53.0, 17.0 ],
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1,
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", 0, "mode", "select", ";", "#T", 1, "mode", "loop", ";", "#T", 2, "mode", "move", ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"patching_rect" : [ 75.0, 117.0, 15.0, 15.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-3",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 74.0, 164.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-4",
									"numinlets" : 0,
									"comment" : "waveform~ mode messages"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "<< 1",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 113.0, 88.0, 27.0, 17.0 ],
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-5",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"patching_rect" : [ 96.0, 140.0, 40.0, 17.0 ],
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "select 0",
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"patching_rect" : [ 96.0, 164.0, 45.0, 17.0 ],
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"id" : "obj-7",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "|",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 96.0, 117.0, 27.0, 17.0 ],
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-8",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 131.0, 284.0, 15.0, 15.0 ],
									"id" : "obj-9",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "modifiers 100",
									"fontsize" : 9.0,
									"numoutlets" : 5,
									"patching_rect" : [ 45.0, 62.0, 78.0, 17.0 ],
									"outlettype" : [ "int", "int", "int", "int", "int" ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 3 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 4 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "dispstart",
					"text" : "jcom.parameter looper/display/start @type msg_float @range/bounds 0. 10000. @ramp/function 1 @repetitions/allow 0 @description \"Start of the diplayed region (ms)\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 662.0, 310.0, 405.0, 27.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-60",
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "dispend",
					"text" : "jcom.parameter looper/display/length @type msg_float @range/bounds 0. 10000. @ramp/function 1 @repetitions/allow 0 @description \"End of the diplayed region (ms)\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 688.0, 344.0, 403.0, 27.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-61",
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictctrl",
					"varname" : "Mute",
					"snap" : 1,
					"trackhorizontal" : 1,
					"numoutlets" : 1,
					"name" : "jmod.button.mute.pct",
					"patching_rect" : [ 479.0, 4.0, 0.0, 0.0 ],
					"tracking" : 1,
					"outlettype" : [ "int" ],
					"mode" : 1,
					"multiplier" : 1,
					"trackvertical" : 1,
					"id" : "obj-68",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 204.0, 466.0, 15.0, 15.0 ],
					"id" : "obj-69",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : ": direction",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 334.0, 79.0, 57.0, 17.0 ],
					"frgb" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-70",
					"numinlets" : 1,
					"textcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : ": loop mode",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 334.0, 100.0, 61.0, 17.0 ],
					"frgb" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-71",
					"numinlets" : 1,
					"textcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "file :",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 389.0, 70.0, 30.0, 17.0 ],
					"frgb" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-75",
					"numinlets" : 1,
					"textcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "folder :",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 388.0, 54.0, 44.0, 17.0 ],
					"frgb" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-76",
					"numinlets" : 1,
					"textcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.panelopen",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"patching_rect" : [ 41.0, 373.0, 101.0, 20.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-79",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"patching_rect" : [ 41.0, 394.0, 59.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-80",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "input_inspector",
					"text" : "p input_inspector",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 42.0, 418.0, 121.0, 20.0 ],
					"fontname" : "Arial",
					"id" : "obj-82",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 113.0, 294.0, 254.0, 25.0 ],
						"bglocked" : 0,
						"defrect" : [ 113.0, 294.0, 254.0, 25.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 2.0, 2.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_tobpoolmenu",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 302.0, 16.0, 106.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-49",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_frombpoolmenu",
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"patching_rect" : [ 342.0, 62.0, 106.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-46",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sample/buffername[2]",
									"text" : "jcom.parameter looper/menu/bufferpool @type msg_symbol @priority 30",
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"patching_rect" : [ 430.0, 42.0, 307.0, 17.0 ],
									"outlettype" : [ "", "", "" ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-43",
									"numinlets" : 1,
									"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "select a collection of buffers",
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"patching_rect" : [ 304.0, 38.0, 100.0, 17.0 ],
									"outlettype" : [ "int", "", "" ],
									"presentation" : 1,
									"items" : "bp",
									"arrowframe" : 0,
									"arrow" : 0,
									"fontname" : "Verdana",
									"types" : [  ],
									"id" : "obj-15",
									"numinlets" : 1,
									"presentation_rect" : [ 62.0, 4.0, 186.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Bufferpool :",
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 40.0, 58.0, 17.0 ],
									"presentation" : 1,
									"frgb" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1,
									"textcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
									"presentation_rect" : [ 4.0, 4.0, 58.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 12.0, 123.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"hidden" : 1,
									"id" : "obj-1",
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 12.0, 328.0, 13.0, 13.0 ],
					"id" : "obj-88",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 12.0, 276.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-89",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.hub",
					"text" : "jcom.hub Z.lp~ @module_type audio @description \"Mono loop RAM audio player.\"",
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"patching_rect" : [ 11.0, 301.0, 588.0, 20.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-90",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"bgoveroncolor" : [ 0.0, 0.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"bgoncolor" : [ 0.0, 0.0, 1.0, 1.0 ],
					"patching_rect" : [ 889.0, 860.0, 42.0, 18.0 ],
					"outlettype" : [ "", "", "int" ],
					"presentation" : 1,
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "loop",
					"mode" : 1,
					"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"textoveroncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"text" : "loop",
					"bgovercolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"id" : "obj-91",
					"numinlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 36.0, 44.0, 29.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop",
					"text" : "jcom.parameter looper/loopmode @type msg_int @repetitions/allow 0 @description \"Select the loopmode the file should be played (one shot or looped).\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 889.0, 825.0, 380.0, 27.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-92",
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "poly~ jalg.Zlooper~ 1",
					"fontsize" : 12.0,
					"numoutlets" : 4,
					"patching_rect" : [ 204.0, 438.0, 189.0, 20.0 ],
					"outlettype" : [ "signal", "signal", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-96",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "gain",
					"text" : "jcom.parameter looper/preamp_gain @type msg_float @range/bounds -100. 10. @range/clipmode both @description \"Select preamp audio gain. (dB)\" @value/default 0.",
					"linecount" : 3,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 501.0, 555.0, 355.0, 38.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-98",
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "direction",
					"text" : "jcom.parameter looper/direction @type msg_int @repetitions/allow 0 @description \"Select the way the file should be played (forward or backward).\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 878.0, 686.0, 394.0, 27.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-106",
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.parameter.mxb[16]",
					"text" : "jcom.parameter looper/input @type msg_symbol @description \"Select the input to record.\"",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 116.0, 530.0, 381.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-108",
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "volume_pattr",
					"text" : "jcom.parameter looper/volume @type msg_float @range/bounds 0. 1. @range/clipmode both @description \"Ouput Volume.\" @value/default 1.",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 506.0, 704.0, 317.0, 27.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-116",
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "pi",
					"minimum" : 0.0,
					"triangle" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"maximum" : 20.0,
					"patching_rect" : [ 889.0, 794.0, 37.0, 17.0 ],
					"outlettype" : [ "float", "bang" ],
					"presentation" : 1,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"id" : "obj-117",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 124.0, 44.0, 29.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "pitch",
					"text" : "jcom.parameter looper/pitch @type msg_float @range/bounds 0.01 20. @range/clipmode both @repetitions/allow 0 @description \"Select audio sample pitch.\" @value/default 1.",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 890.0, 760.0, 401.0, 27.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-118",
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "selstart",
					"text" : "jcom.parameter looper/selection/start @type msg_float @range/bounds 0. 1. @ramp/function linear @repetitions/allow 0 @priority 10 @description \"Start of the selected region\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 720.0, 374.0, 412.0, 27.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-119",
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "selend",
					"text" : "jcom.parameter looper/selection/end @type msg_float @range/bounds 0. 1. @ramp/function linear @repetitions/allow 0 @description \"size of the selected region\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 744.0, 409.0, 390.0, 27.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-120",
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "waveform~",
					"varname" : "wf",
					"numoutlets" : 6,
					"selectioncolor" : [ 0.019608, 0.0, 0.690196, 0.5 ],
					"labelbgcolor" : [ 0.419608, 0.098039, 0.164706, 1.0 ],
					"patching_rect" : [ 664.0, 282.0, 156.0, 25.0 ],
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"clipdraw" : 1,
					"presentation" : 1,
					"vlabels" : 1,
					"setmode" : 1,
					"tickmarkcolor" : [ 0.423529, 0.423529, 0.423529, 1.0 ],
					"bgcolor" : [ 0.384314, 0.462745, 0.65098, 1.0 ],
					"waveformcolor" : [ 0.866667, 0.905882, 0.964706, 1.0 ],
					"buffername" : "0",
					"bordercolor" : [ 0.831373, 0.05098, 0.031373, 1.0 ],
					"id" : "obj-127",
					"numinlets" : 5,
					"textcolor" : [  ],
					"snapto" : 2,
					"presentation_rect" : [ 2.0, 62.0, 272.0, 77.0 ],
					"grid" : 500.0,
					"labeltextcolor" : [ 0.286275, 0.494118, 0.733333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p all",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 802.0, 251.0, 25.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-129",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 646.0, 162.0, 271.0, 197.0 ],
						"bglocked" : 0,
						"defrect" : [ 646.0, 162.0, 271.0, 197.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 2.0, 2.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 88.0, 116.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"patching_rect" : [ 89.0, 52.0, 38.0, 17.0 ],
									"outlettype" : [ "bang", "bang" ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0 -1 0 -1",
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 82.0, 90.0, 51.0, 15.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 89.0, 34.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Waveform",
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"patching_rect" : [ 829.0, 293.0, 100.0, 27.0 ],
					"frgb" : [ 0.776471, 0.090196, 0.0, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-130",
					"numinlets" : 1,
					"textcolor" : [ 0.776471, 0.090196, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 1188.0, 250.0, 467.0, 276.0 ],
					"border" : 1,
					"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.396078 ],
					"rounded" : 0,
					"id" : "obj-131",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.parameter.mxb[17]",
					"text" : "jcom.parameter looper/inputrec @type msg_int @description \"Start and stop to record.\"",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 26.0, 648.0, 385.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-136",
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Record",
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"patching_rect" : [ 68.0, 620.0, 95.0, 27.0 ],
					"frgb" : [ 0.776471, 0.090196, 0.0, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-137",
					"numinlets" : 1,
					"textcolor" : [ 0.776471, 0.090196, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "preamp gain",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 332.0, 124.0, 60.0, 17.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 1.0, 0.843137, 0.223529, 0.396078 ],
					"fontname" : "Arial",
					"id" : "obj-74",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "pitch",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 336.0, 142.0, 40.0, 17.0 ],
					"presentation" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 1.0, 0.223529, 0.223529, 0.396078 ],
					"fontname" : "Arial",
					"id" : "obj-73",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 98.0, 44.0, 54.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 412.0, 84.0, 128.0, 128.0 ],
					"presentation" : 1,
					"border" : 1,
					"bgcolor" : [ 0.384314, 0.462745, 0.65098, 1.0 ],
					"rounded" : 0,
					"bordercolor" : [ 0.831373, 0.05098, 0.031373, 1.0 ],
					"id" : "obj-143",
					"numinlets" : 1,
					"presentation_rect" : [ 273.0, 62.0, 24.0, 77.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module.2",
					"numoutlets" : 1,
					"prefix" : "audio",
					"patching_rect" : [ 6.0, 4.0, 300.0, 140.0 ],
					"outlettype" : [ "" ],
					"presentation" : 1,
					"has_gain" : 1,
					"has_panel" : 1,
					"has_meters" : 1,
					"id" : "obj-142",
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 2.0, 300.0, 140.0 ],
					"has_mute" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-89", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-129", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-141", 0 ],
					"destination" : [ "obj-136", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-136", 0 ],
					"destination" : [ "obj-141", 0 ],
					"hidden" : 0,
					"midpoints" : [ 35.5, 667.0, 9.0, 667.0, 9.0, 622.0, 34.5, 622.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 1 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-127", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [ 881.5, 648.0, 865.0, 648.0, 865.0, 590.0, 881.5, 590.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [ 887.5, 717.0, 864.0, 717.0, 864.0, 657.0, 887.5, 657.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"midpoints" : [ 898.5, 882.0, 883.0, 882.0, 883.0, 822.0, 898.5, 822.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 1 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 2 ],
					"destination" : [ "obj-119", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 3 ],
					"destination" : [ "obj-120", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-127", 0 ],
					"hidden" : 0,
					"midpoints" : [ 671.5, 339.0, 648.0, 339.0, 648.0, 279.0, 660.0, 279.0, 660.0, 273.0, 673.5, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-127", 1 ],
					"hidden" : 0,
					"midpoints" : [ 697.5, 372.0, 648.0, 372.0, 648.0, 279.0, 660.0, 279.0, 660.0, 273.0, 707.75, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-119", 0 ],
					"destination" : [ "obj-127", 2 ],
					"hidden" : 0,
					"midpoints" : [ 729.5, 402.0, 648.0, 402.0, 648.0, 279.0, 660.0, 279.0, 660.0, 273.0, 742.0, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-120", 0 ],
					"destination" : [ "obj-127", 3 ],
					"hidden" : 0,
					"midpoints" : [ 753.5, 438.0, 648.0, 438.0, 648.0, 279.0, 660.0, 279.0, 660.0, 273.0, 776.25, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 0 ],
					"destination" : [ "obj-127", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-117", 0 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 0,
					"midpoints" : [ 898.5, 817.0, 883.0, 817.0, 883.0, 756.0, 899.5, 756.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-118", 0 ],
					"destination" : [ "obj-117", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-123", 0 ],
					"hidden" : 0,
					"midpoints" : [ 510.5, 603.0, 496.0, 603.0, 496.0, 528.0, 511.5, 528.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-123", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-116", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 515.5, 758.0, 492.0, 758.0, 492.0, 629.0, 514.5, 629.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-116", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-108", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-96", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 1 ],
					"destination" : [ "obj-145", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 2 ],
					"destination" : [ "obj-127", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 3 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-96", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
