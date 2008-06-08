{
	"patcher" : 	{
		"rect" : [ 104.0, 141.0, 641.0, 598.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 104.0, 141.0, 641.0, 598.0 ],
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
					"text" : "patcherargs",
					"outlettype" : [ "", "" ],
					"id" : "obj-1",
					"fontsize" : 9.0,
					"patching_rect" : [ 429.0, 257.0, 64.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route done",
					"outlettype" : [ "", "" ],
					"id" : "obj-2",
					"fontsize" : 9.0,
					"patching_rect" : [ 483.0, 281.0, 57.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p convert2midi",
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"fontsize" : 9.0,
					"patching_rect" : [ 238.0, 362.0, 78.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"patcher" : 					{
						"rect" : [ 232.0, 82.0, 904.0, 462.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 232.0, 82.0, 904.0, 462.0 ],
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
									"text" : "jcom.thru",
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 128.0, 101.0, 54.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "ramp 0",
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontsize" : 9.0,
									"patching_rect" : [ 294.0, 168.0, 42.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"outlettype" : [ "bang" ],
									"id" : "obj-3",
									"fontsize" : 9.0,
									"patching_rect" : [ 294.0, 145.0, 20.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr ($f1 * (10.\/6.)) + 127",
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontsize" : 9.0,
									"patching_rect" : [ 128.0, 168.0, 139.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"outlettype" : [ "", "" ],
									"id" : "obj-5",
									"fontsize" : 9.0,
									"patching_rect" : [ 128.0, 190.0, 152.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"outlettype" : [ "", "" ],
									"id" : "obj-6",
									"fontsize" : 9.0,
									"patching_rect" : [ 128.0, 146.0, 152.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route int float list",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-7",
									"fontsize" : 9.0,
									"patching_rect" : [ 128.0, 73.0, 91.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.pass inc dec",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-8",
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 50.0, 89.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-10",
									"patching_rect" : [ 50.0, 288.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<- decibels to midi conversion",
									"id" : "obj-11",
									"fontsize" : 9.0,
									"patching_rect" : [ 368.0, 170.0, 172.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 2 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 2 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontsize" : 10.0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Direct Output",
					"id" : "obj-4",
					"fontsize" : 9.0,
					"patching_rect" : [ 232.0, 441.0, 98.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-5",
					"patching_rect" : [ 216.0, 441.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : "Prepend \"set\" and connect to GUI inlet"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Connect to GUI inlet",
					"id" : "obj-6",
					"fontsize" : 9.0,
					"patching_rect" : [ 80.0, 441.0, 98.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-7",
					"patching_rect" : [ 64.0, 441.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : "Prepend \"set\" and connect to GUI inlet"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Connect to GUI outlet",
					"id" : "obj-8",
					"fontsize" : 9.0,
					"patching_rect" : [ 80.0, 275.0, 104.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"patching_rect" : [ 64.0, 274.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "#1\/midi",
					"text" : "jcom.parameter #1\/midi @type msg_float @range/bounds 0. 158. @range/clipmode low @ramp/drive scheduler @description \"Set gain as MIDI value.\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-10",
					"fontsize" : 9.0,
					"patching_rect" : [ 64.0, 403.0, 315.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message #1 @type msg_float @slave 1 @range/bounds -144. 18. @range/clipmode none @ramp/drive scheduler @description \"Set gain as dB value.\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-11",
					"fontsize" : 9.0,
					"patching_rect" : [ 88.0, 320.0, 314.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "For this component to work properly, you have to avoid output from being fed back to the inlet, else the output will kill any ongoing ramp. If jcom.parameter.gain outlet\/inlet is connected to a GUI inlet\/outlet, use the \"set\" mesage for updating GUI display when jcom.parameter.gain value change.",
					"linecount" : 4,
					"id" : "obj-12",
					"fontsize" : 9.0,
					"patching_rect" : [ 45.0, 172.0, 395.0, 49.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "IMPORTANT:",
					"id" : "obj-13",
					"fontsize" : 9.0,
					"patching_rect" : [ 45.0, 157.0, 395.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- #1\/midi: gain as MIDI values",
					"id" : "obj-14",
					"fontsize" : 9.0,
					"patching_rect" : [ 45.0, 85.0, 311.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Component for dealing with gain parameters. Incorporates",
					"id" : "obj-15",
					"fontsize" : 9.0,
					"patching_rect" : [ 45.0, 57.0, 311.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- #1: gain as dB values",
					"id" : "obj-16",
					"fontsize" : 9.0,
					"patching_rect" : [ 45.0, 72.0, 311.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.parameter.gain is special in the sense that gain levels can be adjusted using various messages, or by a GUI. All kinds of messages are mapped to MIDI values internally, so that they can all be dealt with by the same ramping mechanism.",
					"linecount" : 3,
					"id" : "obj-17",
					"fontsize" : 9.0,
					"patching_rect" : [ 45.0, 112.0, 395.0, 38.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 247.5, 391.0, 73.5, 391.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 530.5, 394.0, 73.5, 394.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 530.5, 312.0, 97.5, 312.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
