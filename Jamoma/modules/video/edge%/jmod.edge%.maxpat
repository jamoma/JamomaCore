{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 98.0, 44.0, 959.0, 481.0 ],
		"bglocked" : 0,
		"defrect" : [ 98.0, 44.0, 959.0, 481.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"text" : "p mouse-stuff",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 457.0, 92.0, 78.0, 18.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"outlettype" : [ "float" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 967.0, 44.0, 239.0, 322.0 ],
						"bglocked" : 0,
						"defrect" : [ 967.0, 44.0, 239.0, 322.0 ],
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
									"maxclass" : "message",
									"text" : "$5",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 42.0, 165.0, 32.5, 17.0 ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 1",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 42.0, 77.0, 46.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "clip -200 200",
									"fontsize" : 9.873845,
									"numinlets" : 3,
									"numoutlets" : 1,
									"patching_rect" : [ 42.0, 192.0, 76.0, 18.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale -200 200 -3. 5.",
									"fontsize" : 9.873845,
									"numinlets" : 6,
									"numoutlets" : 1,
									"patching_rect" : [ 42.0, 222.0, 116.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 2 4",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 42.0, 102.0, 56.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.pwindow.mouse",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 42.0, 51.0, 118.0, 18.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 42.0, 17.0, 25.0, 25.0 ],
									"id" : "obj-15",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 42.0, 252.0, 25.0, 25.0 ],
									"id" : "obj-16",
									"comment" : "brightness"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-20", 0 ],
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
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontsize" : 10.0,
						"fontsize" : 10.0,
						"fontname" : "Verdana",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 90.0, 93.0, 195.0, 16.0 ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"presentation_rect" : [ 236.0, 22.0, 60.0, 45.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 457.0, 39.0, 60.0, 45.0 ],
					"presentation" : 1,
					"id" : "obj-24",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out 1",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 141.0, 398.0, 62.0, 18.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 191.0, 242.0, 55.0, 18.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Algorithm",
					"fontsize" : 10.0,
					"presentation_rect" : [ 89.0, 44.0, 60.0, 19.0 ],
					"items" : [ "Sobel", ",", "Prewitt", ",", "Robcross" ],
					"numinlets" : 1,
					"pattrmode" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 457.0, 230.0, 60.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"types" : [  ],
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 69.0, 317.0, 49.0, 18.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass /open",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 69.0, 296.0, 91.0, 18.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 132.0, 122.0, 135.0, 16.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "algorithm",
					"text" : "jcom.parameter algorithm @type msg_symbol @description \"Choose the type of algorithm to use for the edge detection.\"",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 525.0, 226.0, 326.0, 30.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "thresh",
					"text" : "jcom.parameter thresh @type msg_float @ramp/drive scheduler @description \"Edge detection threshold - pixels below the threshold are set to black.\"",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 525.0, 146.0, 401.0, 30.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Thresh",
					"triangle" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 89.0, 22.0, 35.0, 19.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 457.0, 156.0, 35.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "thresh",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 34.0, 22.0, 41.0, 19.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 406.0, 157.0, 41.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-12",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "algorithm",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 21.0, 44.0, 57.0, 19.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 391.0, 230.0, 57.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-13",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 170.0, 427.0, 87.0, 18.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 141.0, 426.0, 25.0, 25.0 ],
					"id" : "obj-15",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 192.0, 210.0, 25.0, 25.0 ],
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 221.0, 210.0, 77.0, 18.0 ],
					"id" : "obj-17",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.edge%",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 141.0, 371.0, 69.0, 18.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"outlettype" : [ "jit_matrix" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 277.0, 122.0, 31.0, 16.0 ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 32.0, 118.0, 88.0, 18.0 ],
					"id" : "obj-20",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type video @algorithm_type jitter @description \"Glowing Edges Effect\"",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 6.0, 153.0, 306.0, 30.0 ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6.0, 210.0, 25.0, 25.0 ],
					"id" : "obj-22",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 6.0, 114.0, 25.0, 25.0 ],
					"id" : "obj-23",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module.1",
					"has_freeze" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"has_mute" : 1,
					"numoutlets" : 1,
					"prefix" : "video",
					"presentation" : 1,
					"id" : "obj-34",
					"outlettype" : [ "" ],
					"has_bypass" : 1,
					"has_preview" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 78.5, 356.0, 150.5, 356.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 150.5, 348.0, 150.5, 348.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 218.5, 282.0, 78.5, 282.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 99.5, 114.0, 3.0, 114.0, 3.0, 147.0, 15.5, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 141.5, 144.0, 15.5, 144.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 286.5, 146.0, 15.5, 146.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
