{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 120.0, 87.0, 1192.0, 634.0 ],
		"bglocked" : 0,
		"defrect" : [ 120.0, 87.0, 1192.0, 634.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.970939,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf %ld/poly %ld %ld",
					"numinlets" : 3,
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numoutlets" : 1,
					"patching_rect" : [ 756.0, 353.0, 134.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf %ld/program %ld",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numoutlets" : 1,
					"patching_rect" : [ 574.0, 355.0, 133.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf %ld/bend %f",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numoutlets" : 1,
					"patching_rect" : [ 406.0, 355.0, 127.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf %ld/note %ld %ld",
					"numinlets" : 3,
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numoutlets" : 1,
					"patching_rect" : [ 37.0, 358.0, 152.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p convert",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numoutlets" : 1,
					"patching_rect" : [ 406.0, 274.0, 55.0, 18.0 ],
					"outlettype" : [ "float" ],
					"fontsize" : 9.873845,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 400.0, 327.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 400.0, 327.0 ],
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
									"maxclass" : "comment",
									"text" : "By Trond Lossius.",
									"linecount" : 4,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numoutlets" : 0,
									"patching_rect" : [ 57.0, 230.0, 41.0, 54.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The MIDI specification stipulates that pitch bend be a 14-bit value, where zero is maximum downward bend, 16383 is maximum upward bend, and 8192 is the center (no pitch bend).",
									"linecount" : 4,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numoutlets" : 0,
									"patching_rect" : [ 57.0, 169.0, 248.0, 54.0 ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale 0. 8192. -24. 0.",
									"numinlets" : 6,
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numoutlets" : 1,
									"patching_rect" : [ 57.0, 97.0, 116.0, 18.0 ],
									"outlettype" : [ "float" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale 8192. 16383. 0. 24.",
									"numinlets" : 6,
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numoutlets" : 1,
									"patching_rect" : [ 176.0, 97.0, 137.0, 18.0 ],
									"outlettype" : [ "float" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 0 8191",
									"numinlets" : 3,
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numoutlets" : 2,
									"patching_rect" : [ 57.0, 57.0, 67.0, 18.0 ],
									"outlettype" : [ "int", "int" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-6",
									"numoutlets" : 1,
									"patching_rect" : [ 57.0, 37.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 0,
									"patching_rect" : [ 57.0, 139.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return raw/voice/*/poly @type msg_list @description \"poly information on channel *.\"",
					"linecount" : 3,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numoutlets" : 2,
					"patching_rect" : [ 718.0, 451.0, 170.0, 42.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl rev",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numoutlets" : 2,
					"patching_rect" : [ 756.0, 276.0, 37.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"id" : "obj-8",
					"numoutlets" : 1,
					"patching_rect" : [ 262.0, 166.0, 15.0, 15.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mode $1",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numoutlets" : 1,
					"patching_rect" : [ 262.0, 185.0, 52.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p norm-midi",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numoutlets" : 2,
					"patching_rect" : [ 226.0, 250.0, 95.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 584.0, 266.0, 510.0, 373.0 ],
						"bglocked" : 0,
						"defrect" : [ 584.0, 266.0, 510.0, 373.0 ],
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
									"id" : "obj-1",
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 237.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "type msg_int, range 0 127",
									"linecount" : 2,
									"numinlets" : 2,
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numoutlets" : 1,
									"patching_rect" : [ 294.0, 141.0, 81.0, 28.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "type msg_float, range 0. 1.",
									"linecount" : 2,
									"numinlets" : 2,
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numoutlets" : 1,
									"patching_rect" : [ 199.0, 141.0, 87.0, 28.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numoutlets" : 3,
									"patching_rect" : [ 199.0, 119.0, 201.0, 18.0 ],
									"outlettype" : [ "bang", "bang", "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numoutlets" : 1,
									"patching_rect" : [ 79.0, 111.0, 27.0, 18.0 ],
									"outlettype" : [ "int" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 127.",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numoutlets" : 1,
									"patching_rect" : [ 116.0, 166.0, 40.0, 18.0 ],
									"outlettype" : [ "float" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2 2",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numoutlets" : 2,
									"patching_rect" : [ 79.0, 136.0, 50.0, 18.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route mode",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numoutlets" : 2,
									"patching_rect" : [ 79.0, 85.0, 66.0, 18.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-9",
									"numoutlets" : 0,
									"patching_rect" : [ 79.0, 242.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-10",
									"numoutlets" : 1,
									"patching_rect" : [ 79.0, 48.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiin",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numoutlets" : 1,
					"patching_rect" : [ 406.0, 224.0, 39.0, 18.0 ],
					"outlettype" : [ "int" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return raw/voice/*/program @type msg_int @range/bounds 0 127 @description \"Program change information on channel *.\"",
					"linecount" : 4,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numoutlets" : 2,
					"patching_rect" : [ 535.0, 451.0, 180.0, 54.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl rev",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numoutlets" : 2,
					"patching_rect" : [ 574.0, 276.0, 37.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl rev",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numoutlets" : 2,
					"patching_rect" : [ 406.0, 331.0, 37.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "$3 $1 $2",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numoutlets" : 1,
					"patching_rect" : [ 37.0, 276.0, 53.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl rev",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numoutlets" : 2,
					"patching_rect" : [ 226.0, 298.0, 37.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 0. 0 0",
					"numinlets" : 3,
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numoutlets" : 1,
					"patching_rect" : [ 226.0, 276.0, 64.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ctlin",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numoutlets" : 3,
					"patching_rect" : [ 226.0, 224.0, 98.0, 18.0 ],
					"outlettype" : [ "int", "int", "int" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf %ld/cc/%ld %f",
					"numinlets" : 3,
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numoutlets" : 1,
					"patching_rect" : [ 226.0, 355.0, 127.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.init",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numoutlets" : 2,
					"patching_rect" : [ 142.0, 89.0, 58.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return raw/voice/* @description \"generic output for midiin module\"",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numoutlets" : 2,
					"patching_rect" : [ 226.0, 387.0, 372.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 0 0",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numoutlets" : 1,
					"patching_rect" : [ 869.0, 250.0, 51.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 0 0",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numoutlets" : 1,
					"patching_rect" : [ 574.0, 250.0, 51.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 0 0",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numoutlets" : 1,
					"patching_rect" : [ 406.0, 298.0, 51.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 0 0 0",
					"numinlets" : 3,
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numoutlets" : 1,
					"patching_rect" : [ 756.0, 250.0, 61.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 0 0 0",
					"numinlets" : 3,
					"fontname" : "Verdana",
					"id" : "obj-26",
					"numoutlets" : 1,
					"patching_rect" : [ 37.0, 250.0, 61.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rtin",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-27",
					"numoutlets" : 1,
					"patching_rect" : [ 948.0, 224.0, 26.0, 18.0 ],
					"outlettype" : [ "int" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "touchin",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-28",
					"numoutlets" : 2,
					"patching_rect" : [ 869.0, 224.0, 45.0, 18.0 ],
					"outlettype" : [ "int", "int" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pgmin",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-29",
					"numoutlets" : 2,
					"patching_rect" : [ 574.0, 224.0, 39.0, 18.0 ],
					"outlettype" : [ "int", "int" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sysexin",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-30",
					"numoutlets" : 1,
					"patching_rect" : [ 990.0, 224.0, 45.0, 18.0 ],
					"outlettype" : [ "int" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "xbendin",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-31",
					"numoutlets" : 2,
					"patching_rect" : [ 406.0, 250.0, 48.0, 18.0 ],
					"outlettype" : [ "int", "int" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "polyin",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-32",
					"numoutlets" : 3,
					"patching_rect" : [ 756.0, 224.0, 40.0, 18.0 ],
					"outlettype" : [ "int", "int", "int" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "notein",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-33",
					"numoutlets" : 3,
					"patching_rect" : [ 37.0, 224.0, 40.0, 18.0 ],
					"outlettype" : [ "int", "int", "int" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "-1",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-34",
					"numoutlets" : 1,
					"patching_rect" : [ 122.0, 115.0, 19.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"items" : [ "IAC Driver IAC Bus 1", ",", "MOTU 828mk2 Midi Port", ",", "Daemon Output 0", ",", "Daemon Output 1", ",", "Daemon Output 2", ",", "Daemon Output 3", ",", "Daemon Output 4", ",", "Daemon Output 5", ",", "Daemon Output 6", ",", "Daemon Output 7", ",", "to MaxMSP 1", ",", "to MaxMSP 2", ",", "USB Keystation 49e" ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-35",
					"numoutlets" : 3,
					"labelclick" : 1,
					"patching_rect" : [ 36.0, 170.0, 147.0, 18.0 ],
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiinfo",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-36",
					"numoutlets" : 1,
					"patching_rect" : [ 87.0, 136.0, 48.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-37",
					"numoutlets" : 0,
					"patching_rect" : [ 1062.0, 483.0, 25.0, 25.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-38",
					"numoutlets" : 0,
					"patching_rect" : [ 1012.0, 483.0, 25.0, 25.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /device_menu /midi_init /midi_normalize",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-39",
					"numoutlets" : 4,
					"patching_rect" : [ 36.0, 54.0, 287.0, 18.0 ],
					"outlettype" : [ "", "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-40",
					"numoutlets" : 1,
					"patching_rect" : [ 36.0, 19.0, 30.0, 30.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "for type/range changing",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-41",
					"numoutlets" : 0,
					"patching_rect" : [ 298.0, 285.0, 80.0, 30.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return raw/voice/*/cc/* @type msg_int @range/bounds 0 127 @description \"Control number m changed at channel n. (1st*=n, 2d*=m) \"",
					"linecount" : 5,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-42",
					"numoutlets" : 2,
					"patching_rect" : [ 202.0, 451.0, 166.0, 66.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return raw/voice/*/note @type msg_list @description \"MIDI note information as pitch and velocity on channel *.\"",
					"linecount" : 4,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-43",
					"numoutlets" : 2,
					"patching_rect" : [ 38.0, 451.0, 165.0, 54.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return raw/voice/*/bend @type msg_float @range/bounds -24. 24. @description \"Pitch bend on channel *.\"",
					"linecount" : 4,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-44",
					"numoutlets" : 2,
					"patching_rect" : [ 374.0, 451.0, 175.0, 54.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 96.5, 160.0, 1071.5, 160.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 206.0, 999.5, 206.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 206.0, 957.5, 206.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 206.0, 878.5, 206.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 2 ],
					"destination" : [ "obj-25", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 1 ],
					"destination" : [ "obj-25", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 206.0, 765.5, 206.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 206.0, 583.5, 206.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 206.0, 415.5, 206.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 2 ],
					"destination" : [ "obj-17", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 2 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 765.5, 379.0, 235.5, 379.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 583.5, 380.0, 235.5, 380.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 415.5, 379.0, 235.5, 379.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 46.5, 381.0, 235.5, 381.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-17", 0 ],
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
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 206.0, 235.5, 206.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 151.5, 110.0, 129.5, 110.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 1 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 2 ],
					"destination" : [ "obj-26", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 1 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 206.0, 46.5, 206.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-35", 0 ],
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
 ]
	}

}
