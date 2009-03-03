{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 355.0, 165.0, 874.0, 713.0 ],
		"bglocked" : 0,
		"defrect" : [ 355.0, 165.0, 874.0, 713.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
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
					"maxclass" : "comment",
					"text" : "(bang) poll output namespace",
					"fontname" : "Verdana",
					"id" : "obj-1",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 40.0, 35.0, 158.0, 18.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p IO-gate",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-2",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"patching_rect" : [ 222.0, 398.0, 56.0, 18.0 ],
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 236.0, 240.0, 700.0, 544.0 ],
						"bglocked" : 0,
						"defrect" : [ 236.0, 240.0, 700.0, 544.0 ],
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
									"text" : "gate",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 40.0, 412.0, 30.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-2",
									"numinlets" : 1,
									"patching_rect" : [ 40.0, 441.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl nth 3",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 123.0, 159.0, 46.0, 18.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"numinlets" : 0,
									"patching_rect" : [ 59.0, 107.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "int" ],
									"id" : "obj-5",
									"numinlets" : 0,
									"patching_rect" : [ 499.0, 133.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "switch",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"fontsize" : 9.873845,
									"numinlets" : 3,
									"patching_rect" : [ 108.0, 373.0, 40.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "||",
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 328.0, 272.0, 27.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "||",
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 123.0, 272.0, 27.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl compare return",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 123.0, 202.0, 99.0, 18.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl compare message",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 345.0, 202.0, 112.0, 18.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl compare parameter",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 228.0, 202.0, 120.0, 18.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "filter so that either possible input syntax is displayed, or valid output syntax",
									"fontname" : "Verdana",
									"id" : "obj-12",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 104.0, 78.0, 430.0, 18.0 ],
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-9", 0 ],
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 132.5, 189.0, 237.5, 189.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 132.5, 189.0, 354.5, 189.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 1 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 508.0, 347.0, 117.5, 347.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 1 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b 2",
					"outlettype" : [ "bang", "int" ],
					"fontname" : "Verdana",
					"id" : "obj-3",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 234.0, 60.0, 32.0, 18.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"numinlets" : 0,
					"patching_rect" : [ 234.0, 35.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"comment" : "(bang) poll input namespace"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b 1",
					"outlettype" : [ "bang", "int" ],
					"fontname" : "Verdana",
					"id" : "obj-5",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 194.0, 60.0, 32.0, 18.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend name",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-6",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 222.0, 435.0, 80.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl rev",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-7",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"patching_rect" : [ 222.0, 584.0, 37.0, 18.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel name kind current_state type range clipmode ramp repetitions description",
					"linecount" : 2,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
					"fontname" : "Verdana",
					"id" : "obj-8",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 515.0, 205.0, 30.0 ],
					"numoutlets" : 10
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl group 256",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-9",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"patching_rect" : [ 222.0, 562.0, 71.0, 18.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "iter",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-10",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 222.0, 480.0, 25.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl rev",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-11",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"patching_rect" : [ 222.0, 458.0, 37.0, 18.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "sort -1 0",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-12",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"patching_rect" : [ 250.0, 199.0, 52.0, 16.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t done dump b b clear start",
					"outlettype" : [ "done", "dump", "bang", "bang", "clear", "start" ],
					"fontname" : "Verdana",
					"id" : "obj-13",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 194.0, 146.0, 150.0, 18.0 ],
					"numoutlets" : 6
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend store",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-14",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 322.0, 323.0, 78.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl join",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-15",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"patching_rect" : [ 322.0, 299.0, 77.0, 18.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "coll",
					"outlettype" : [ "", "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-16",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 222.0, 364.0, 53.0, 18.0 ],
					"numoutlets" : 4,
					"save" : [ "#N", "coll", ";" ],
					"saved_object_attributes" : 					{
						"embed" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl slice 1",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-17",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"patching_rect" : [ 322.0, 263.0, 51.0, 18.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jcom.remote.namespace.register",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-18",
					"fontsize" : 9.873845,
					"numinlets" : 0,
					"patching_rect" : [ 322.0, 230.0, 181.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jcom.remote.namespace.browse",
					"fontname" : "Verdana",
					"id" : "obj-19",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 322.0, 209.0, 179.0, 18.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This part slice the list to parts according to symbols",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-20",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 257.0, 520.0, 148.0, 30.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-21",
					"numinlets" : 0,
					"patching_rect" : [ 194.0, 35.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"comment" : "(bang) poll output namespace"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-22",
					"numinlets" : 1,
					"patching_rect" : [ 222.0, 631.0, 15.0, 15.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-23",
					"numinlets" : 1,
					"patching_rect" : [ 532.0, 631.0, 15.0, 15.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(bang) poll input namespace",
					"fontname" : "Verdana",
					"id" : "obj-24",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 253.0, 35.0, 152.0, 18.0 ],
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 203.5, 186.0, 541.0, 186.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 5 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 334.5, 181.0, 541.0, 181.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [ 331.5, 254.0, 389.5, 254.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-14", 0 ],
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
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 3 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [ 256.5, 126.0, 600.0, 126.0, 600.0, 392.0, 268.5, 392.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [ 216.5, 126.0, 600.0, 126.0, 600.0, 392.0, 268.5, 392.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 2 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 24.5, 553.0, 231.5, 553.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 45.166668, 553.0, 231.5, 553.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 2 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 65.833336, 553.0, 231.5, 553.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 3 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 86.5, 553.0, 231.5, 553.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 4 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 107.166664, 553.0, 231.5, 553.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 5 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 127.833336, 553.0, 231.5, 553.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 6 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 148.5, 553.0, 231.5, 553.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 7 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 169.166672, 553.0, 231.5, 553.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 8 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.833328, 553.0, 231.5, 553.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-6", 0 ],
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
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 259.5, 225.0, 231.5, 225.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 4 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 308.299988, 225.0, 231.5, 225.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 231.5, 506.0, 24.5, 506.0 ]
				}

			}
 ]
	}

}
