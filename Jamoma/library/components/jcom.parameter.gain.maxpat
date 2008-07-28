{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 104.0, 141.0, 641.0, 598.0 ],
		"bglocked" : 0,
		"defrect" : [ 104.0, 141.0, 641.0, 598.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@slave removed in version 0.5",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 102.0, 512.0, 0.0, 0.0 ],
					"patching_rect" : [ 245.0, 300.0, 413.0, 19.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcherargs",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 429.0, 257.0, 68.0, 19.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route done",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 483.0, 281.0, 63.0, 19.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p convert2midi",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 238.0, 362.0, 84.0, 19.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 232.0, 82.0, 904.0, 462.0 ],
										"bglocked" : 0,
						"defrect" : [ 232.0, 82.0, 904.0, 462.0 ],
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
									"text" : "jcom.thru",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 128.0, 101.0, 57.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "ramp 0",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 294.0, 168.0, 44.0, 16.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 294.0, 145.0, 22.0, 18.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr ($f1 * (10./6.)) + 127",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 128.0, 168.0, 146.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 128.0, 190.0, 152.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 128.0, 146.0, 152.0, 18.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route int float list",
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 128.0, 73.0, 94.0, 18.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.pass inc dec",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 50.0, 50.0, 97.0, 18.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"id" : "obj-9",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 288.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- decibels to midi conversion",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.873845,
									"patching_rect" : [ 368.0, 170.0, 172.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 2 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 137.5, 131.0, 303.5, 131.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 2 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Direct Output",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 232.0, 441.0, 99.0, 19.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 216.0, 441.0, 15.0, 15.0 ],
					"id" : "obj-5",
					"comment" : "Prepend \"set\" and connect to GUI inlet"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Connect to GUI inlet",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 80.0, 441.0, 111.0, 19.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 64.0, 441.0, 15.0, 15.0 ],
					"id" : "obj-7",
					"comment" : "Prepend \"set\" and connect to GUI inlet"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Connect to GUI outlet",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 80.0, 275.0, 118.0, 19.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 64.0, 274.0, 15.0, 15.0 ],
					"id" : "obj-9",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "#1/midi",
					"text" : "jcom.parameter #1/midi @type msg_float @range/bounds 0. 158. @range/clipmode low @ramp/drive scheduler @description \"Set gain as MIDI value.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 64.0, 403.0, 438.0, 31.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message #1 @type msg_float @range/bounds -144. 18. @range/clipmode none @ramp/drive scheduler @description \"Set gain as dB value.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 88.0, 320.0, 568.0, 31.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "For this component to work properly, you have to avoid output from being fed back to the inlet, else the output will kill any ongoing ramp. If jcom.parameter.gain outlet/inlet is connected to a GUI inlet/outlet, use the \"set\" mesage for updating GUI display when jcom.parameter.gain value change.",
					"linecount" : 4,
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 45.0, 172.0, 413.0, 55.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "IMPORTANT:",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 45.0, 157.0, 397.0, 19.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- #1/midi: gain as MIDI values",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 45.0, 85.0, 316.0, 19.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Component for dealing with gain parameters. Incorporates",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 45.0, 57.0, 316.0, 19.0 ],
					"id" : "obj-15",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- #1: gain as dB values",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 45.0, 72.0, 314.0, 19.0 ],
					"id" : "obj-16",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.parameter.gain is special in the sense that gain levels can be adjusted using various messages, or by a GUI. All kinds of messages are mapped to MIDI values internally, so that they can all be dealt with by the same ramping mechanism.",
					"linecount" : 3,
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 45.0, 112.0, 421.0, 43.0 ],
					"id" : "obj-17",
					"fontname" : "Verdana"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 536.5, 312.0, 97.5, 312.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-5", 0 ],
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 536.5, 394.0, 73.5, 394.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 247.5, 391.0, 73.5, 391.0 ]
				}

			}
 ]
	}

}
