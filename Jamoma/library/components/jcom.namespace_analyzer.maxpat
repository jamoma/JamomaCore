{
	"patcher" : 	{
		"rect" : [ 6.0, 427.0, 857.0, 277.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 6.0, 427.0, 857.0, 277.0 ],
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
					"text" : "p mods",
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"fontsize" : 9.0,
					"patching_rect" : [ 737.0, 152.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"patcher" : 					{
						"rect" : [ 327.0, 62.0, 225.0, 219.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 327.0, 62.0, 225.0, 219.0 ],
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
									"text" : "zl slice 1",
									"outlettype" : [ "", "" ],
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 57.0, 97.0, 50.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend attributes",
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontsize" : 9.0,
									"patching_rect" : [ 57.0, 120.0, 93.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend symbol",
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontsize" : 9.0,
									"patching_rect" : [ 57.0, 49.0, 80.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-4",
									"patching_rect" : [ 57.0, 146.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.namespace 1",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-5",
									"fontsize" : 9.0,
									"patching_rect" : [ 57.0, 72.0, 111.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"save" : [ "#N", "coll", "jcom.namespace", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"patching_rect" : [ 57.0, 23.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 97.5, 116.0, 66.5, 116.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
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
					"maxclass" : "newobj",
					"text" : "p mods",
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontsize" : 9.0,
					"patching_rect" : [ 633.0, 150.0, 41.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"patcher" : 					{
						"rect" : [ 233.0, 51.0, 252.0, 211.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 233.0, 51.0, 252.0, 211.0 ],
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
									"text" : "prepend symbol",
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 41.0, 59.0, 80.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend module_attributes",
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontsize" : 9.0,
									"patching_rect" : [ 41.0, 105.0, 130.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-3",
									"patching_rect" : [ 41.0, 128.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.modules_attributes 1",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-4",
									"fontsize" : 9.0,
									"patching_rect" : [ 41.0, 82.0, 150.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"save" : [ "#N", "coll", "jcom.modules_attributes", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"patching_rect" : [ 41.0, 38.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
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
					"maxclass" : "newobj",
					"text" : "route module",
					"outlettype" : [ "", "" ],
					"id" : "obj-3",
					"fontsize" : 9.0,
					"patching_rect" : [ 633.0, 128.0, 114.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.post namespace",
					"id" : "obj-4",
					"fontsize" : 9.0,
					"patching_rect" : [ 33.0, 163.0, 105.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "analysis done",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"fontsize" : 9.0,
					"patching_rect" : [ 33.0, 105.0, 50.0, 26.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p ret",
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"fontsize" : 9.0,
					"patching_rect" : [ 533.0, 125.0, 41.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"patcher" : 					{
						"rect" : [ 10.0, 59.0, 219.0, 207.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 219.0, 207.0 ],
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
									"text" : "zl iter 1",
									"outlettype" : [ "", "" ],
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 100.0, 50.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-2",
									"patching_rect" : [ 32.0, 143.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend returns",
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 120.0, 82.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend symbol",
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 54.0, 80.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.modules_returns 1",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-5",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 77.0, 139.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"save" : [ "#N", "coll", "jcom.modules_returns", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"patching_rect" : [ 32.0, 30.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
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
					"maxclass" : "newobj",
					"text" : "p mess",
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"fontsize" : 9.0,
					"patching_rect" : [ 483.0, 126.0, 41.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"patcher" : 					{
						"rect" : [ 10.0, 59.0, 239.0, 214.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 239.0, 214.0 ],
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
									"text" : "zl iter 1",
									"outlettype" : [ "", "" ],
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 100.0, 50.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend messages",
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 125.0, 100.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend symbol",
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 53.0, 80.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-4",
									"patching_rect" : [ 32.0, 148.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.modules_messages 1",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-5",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 77.0, 148.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"save" : [ "#N", "coll", "jcom.modules_messages", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"patching_rect" : [ 32.0, 30.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
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
					"maxclass" : "newobj",
					"text" : "p params",
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"fontsize" : 9.0,
					"patching_rect" : [ 433.0, 126.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"patcher" : 					{
						"rect" : [ 331.0, 64.0, 238.0, 211.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 331.0, 64.0, 238.0, 211.0 ],
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
									"text" : "zl iter 1",
									"outlettype" : [ "", "" ],
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 106.0, 50.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend parameters",
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 131.0, 100.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-3",
									"patching_rect" : [ 32.0, 154.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend symbol",
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 52.0, 80.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.modules_parameters 1",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-5",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 77.0, 157.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"save" : [ "#N", "coll", "jcom.modules_parameters", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"patching_rect" : [ 32.0, 30.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
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
					"maxclass" : "outlet",
					"id" : "obj-9",
					"patching_rect" : [ 383.0, 189.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : "retrieve outlet"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p mods",
					"outlettype" : [ "" ],
					"id" : "obj-10",
					"fontsize" : 9.0,
					"patching_rect" : [ 383.0, 126.0, 41.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"patcher" : 					{
						"rect" : [ 233.0, 51.0, 231.0, 226.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 233.0, 51.0, 231.0, 226.0 ],
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
									"text" : "prepend modules",
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 69.0, 119.0, 84.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-2",
									"patching_rect" : [ 69.0, 142.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route symbol",
									"outlettype" : [ "", "" ],
									"id" : "obj-3",
									"fontsize" : 9.0,
									"patching_rect" : [ 69.0, 96.0, 69.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t dump",
									"outlettype" : [ "dump" ],
									"id" : "obj-4",
									"fontsize" : 9.0,
									"patching_rect" : [ 23.0, 49.0, 40.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.modules_attributes 1",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-5",
									"fontsize" : 9.0,
									"patching_rect" : [ 23.0, 72.0, 150.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"save" : [ "#N", "coll", "jcom.modules_attributes", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"patching_rect" : [ 23.0, 28.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
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
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
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
					"maxclass" : "newobj",
					"text" : "route modules parameters messages returns all attributes",
					"outlettype" : [ "", "", "", "", "", "", "" ],
					"id" : "obj-11",
					"fontsize" : 9.0,
					"patching_rect" : [ 383.0, 104.0, 314.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 7,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p space",
					"id" : "obj-12",
					"fontsize" : 9.0,
					"patching_rect" : [ 313.0, 129.0, 41.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patcher" : 					{
						"rect" : [ 10.0, 59.0, 222.0, 164.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 222.0, 164.0 ],
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
									"text" : "t open",
									"outlettype" : [ "open" ],
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 54.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.namespace 1",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-2",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 77.0, 111.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"save" : [ "#N", "coll", "jcom.namespace", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"patching_rect" : [ 32.0, 30.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
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
					"maxclass" : "newobj",
					"text" : "p ret",
					"id" : "obj-13",
					"fontsize" : 9.0,
					"patching_rect" : [ 263.0, 128.0, 41.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patcher" : 					{
						"rect" : [ 10.0, 59.0, 222.0, 164.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 222.0, 164.0 ],
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
									"text" : "t open",
									"outlettype" : [ "open" ],
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 54.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.modules_returns 1",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-2",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 77.0, 139.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"save" : [ "#N", "coll", "jcom.modules_returns", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"patching_rect" : [ 32.0, 30.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
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
					"maxclass" : "newobj",
					"text" : "p mess",
					"id" : "obj-14",
					"fontsize" : 9.0,
					"patching_rect" : [ 213.0, 128.0, 41.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patcher" : 					{
						"rect" : [ 10.0, 59.0, 222.0, 164.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 222.0, 164.0 ],
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
									"text" : "t open",
									"outlettype" : [ "open" ],
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 54.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.modules_messages 1",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-2",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 77.0, 148.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"save" : [ "#N", "coll", "jcom.modules_messages", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"patching_rect" : [ 32.0, 30.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
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
					"maxclass" : "newobj",
					"text" : "p params",
					"id" : "obj-15",
					"fontsize" : 9.0,
					"patching_rect" : [ 163.0, 128.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patcher" : 					{
						"rect" : [ 10.0, 59.0, 222.0, 164.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 222.0, 164.0 ],
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
									"text" : "t open",
									"outlettype" : [ "open" ],
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 54.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.modules_parameters 1",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-2",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 77.0, 157.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"save" : [ "#N", "coll", "jcom.modules_parameters", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"patching_rect" : [ 32.0, 30.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
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
					"maxclass" : "newobj",
					"text" : "p mods",
					"id" : "obj-16",
					"fontsize" : 9.0,
					"patching_rect" : [ 113.0, 128.0, 41.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patcher" : 					{
						"rect" : [ 10.0, 59.0, 222.0, 164.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 222.0, 164.0 ],
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
									"text" : "t open",
									"outlettype" : [ "open" ],
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 54.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.modules_attributes 1",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-2",
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 77.0, 150.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"save" : [ "#N", "coll", "jcom.modules_attributes", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"patching_rect" : [ 32.0, 30.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
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
					"maxclass" : "newobj",
					"text" : "route modules parameters messages returns namespace",
					"outlettype" : [ "", "", "", "", "", "" ],
					"id" : "obj-17",
					"fontsize" : 9.0,
					"patching_rect" : [ 113.0, 104.0, 262.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 6,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route view get",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-18",
					"fontsize" : 9.0,
					"patching_rect" : [ 113.0, 81.0, 551.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-19",
					"patching_rect" : [ 33.0, 31.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route bang analyse",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-20",
					"fontsize" : 9.0,
					"patching_rect" : [ 33.0, 56.0, 91.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p analyse",
					"outlettype" : [ "" ],
					"id" : "obj-21",
					"fontsize" : 9.0,
					"patching_rect" : [ 33.0, 83.0, 50.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"patcher" : 					{
						"rect" : [ 38.0, 200.0, 943.0, 464.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 38.0, 200.0, 943.0, 464.0 ],
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
									"text" : "p trig_mapping",
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 84.0, 119.0, 77.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"patcher" : 									{
										"rect" : [ 4.0, 58.0, 1079.0, 695.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 4.0, 58.0, 1079.0, 695.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p noparam",
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 507.0, 546.0, 231.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"patcher" : 													{
														"rect" : [ 20.0, 52.0, 305.0, 264.0 ],
														"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
														"bglocked" : 0,
														"defrect" : [ 20.0, 52.0, 305.0, 264.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 1 l",
																	"outlettype" : [ "int", "" ],
																	"id" : "obj-1",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 79.0, 152.0, 29.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl slice 2",
																	"outlettype" : [ "", "" ],
																	"id" : "obj-2",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 79.0, 131.0, 50.0, 17.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 2 1",
																	"outlettype" : [ "", "" ],
																	"id" : "obj-3",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 39.0, 106.0, 50.0, 17.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"id" : "obj-4",
																	"patching_rect" : [ 79.0, 83.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-5",
																	"patching_rect" : [ 39.0, 183.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "<separator>" ],
																	"id" : "obj-6",
																	"patching_rect" : [ 126.0, 53.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "in case there's no int\/float\/menu parameter",
																	"linecount" : 2,
																	"id" : "obj-7",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 105.0, 92.0, 158.0, 28.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 2",
																	"outlettype" : [ "int" ],
																	"id" : "obj-8",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 39.0, 83.0, 21.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontname" : "Verdana"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 135.0, 75.0, 48.5, 75.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 1 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 98.5, 178.0, 48.0, 178.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 1 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
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
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p noparam",
													"outlettype" : [ "<separator>" ],
													"id" : "obj-2",
													"fontsize" : 9.0,
													"patching_rect" : [ 728.0, 470.0, 56.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"patcher" : 													{
														"rect" : [ 20.0, 52.0, 420.0, 302.0 ],
														"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
														"bglocked" : 0,
														"defrect" : [ 20.0, 52.0, 420.0, 302.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-1",
																	"patching_rect" : [ 59.0, 199.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t <separator>",
																	"outlettype" : [ "<separator>" ],
																	"id" : "obj-2",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 59.0, 176.0, 71.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0",
																	"outlettype" : [ "bang", "" ],
																	"id" : "obj-3",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 59.0, 153.0, 34.0, 17.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "i",
																	"outlettype" : [ "int" ],
																	"id" : "obj-4",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 59.0, 130.0, 42.0, 17.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "counter",
																	"outlettype" : [ "int", "", "", "int" ],
																	"id" : "obj-5",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 91.0, 106.0, 66.0, 17.0 ],
																	"numinlets" : 5,
																	"numoutlets" : 4,
																	"fontname" : "Verdana",
																	"save" : [ "#N", "counter", ";", "#X", "flags", 0, 0, ";" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0 b",
																	"outlettype" : [ "int", "bang" ],
																	"id" : "obj-6",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 39.0, 61.0, 30.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b",
																	"outlettype" : [ "bang" ],
																	"id" : "obj-7",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 91.0, 63.0, 23.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "bang" ],
																	"id" : "obj-8",
																	"patching_rect" : [ 39.0, 36.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"id" : "obj-9",
																	"patching_rect" : [ 91.0, 39.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "in case there's no int\/float\/menu parameter",
																	"id" : "obj-10",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 122.0, 60.0, 182.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Verdana"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-4", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-5", 3 ],
																	"hidden" : 0,
																	"midpoints" : [ 48.5, 93.0, 135.75, 93.0 ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
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
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 888.0, 146.0, 37.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontsize" : 9.0,
													"patching_rect" : [ 608.0, 151.0, 37.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t <separator> b",
													"outlettype" : [ "<separator>", "bang" ],
													"id" : "obj-5",
													"fontsize" : 9.0,
													"patching_rect" : [ 435.0, 180.0, 82.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-6",
													"fontsize" : 9.0,
													"patching_rect" : [ 507.0, 497.0, 37.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"outlettype" : [ "", "" ],
													"id" : "obj-7",
													"fontsize" : 9.0,
													"patching_rect" : [ 435.0, 469.0, 82.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"outlettype" : [ "", "" ],
													"id" : "obj-8",
													"fontsize" : 9.0,
													"patching_rect" : [ 608.0, 82.0, 50.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_imod",
													"outlettype" : [ "" ],
													"id" : "obj-9",
													"fontsize" : 9.0,
													"patching_rect" : [ 648.0, 61.0, 73.0, 17.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_imod",
													"id" : "obj-10",
													"fontsize" : 9.0,
													"patching_rect" : [ 953.0, 170.0, 72.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l",
													"outlettype" : [ "", "" ],
													"id" : "obj-11",
													"fontsize" : 9.0,
													"patching_rect" : [ 581.0, 197.0, 37.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"outlettype" : [ "bang", "" ],
													"id" : "obj-12",
													"fontsize" : 9.0,
													"patching_rect" : [ 507.0, 128.0, 111.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl group 255",
													"outlettype" : [ "", "" ],
													"id" : "obj-13",
													"fontsize" : 9.0,
													"patching_rect" : [ 507.0, 446.0, 67.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"outlettype" : [ "" ],
													"id" : "obj-14",
													"fontsize" : 9.0,
													"patching_rect" : [ 540.0, 424.0, 51.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"outlettype" : [ "int" ],
													"id" : "obj-15",
													"fontsize" : 9.0,
													"patching_rect" : [ 728.0, 388.0, 21.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1",
													"outlettype" : [ "int" ],
													"id" : "obj-16",
													"fontsize" : 9.0,
													"patching_rect" : [ 608.0, 394.0, 21.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel generic menu toggle msg_int msg_float msg_list msg_symbol jit_matrix",
													"linecount" : 3,
													"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
													"id" : "obj-17",
													"fontsize" : 9.0,
													"patching_rect" : [ 608.0, 334.0, 136.0, 38.0 ],
													"numinlets" : 1,
													"numoutlets" : 9,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl nth 7",
													"outlettype" : [ "", "" ],
													"id" : "obj-18",
													"fontsize" : 9.0,
													"patching_rect" : [ 608.0, 310.0, 53.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s%s",
													"outlettype" : [ "" ],
													"id" : "obj-19",
													"fontsize" : 9.0,
													"patching_rect" : [ 608.0, 265.0, 72.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-20",
													"fontsize" : 9.0,
													"patching_rect" : [ 608.0, 242.0, 59.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack s s",
													"outlettype" : [ "" ],
													"id" : "obj-21",
													"fontsize" : 9.0,
													"patching_rect" : [ 608.0, 219.0, 59.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl iter 1",
													"outlettype" : [ "", "" ],
													"id" : "obj-22",
													"fontsize" : 9.0,
													"patching_rect" : [ 608.0, 173.0, 47.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"outlettype" : [ "", "" ],
													"id" : "obj-23",
													"fontsize" : 9.0,
													"patching_rect" : [ 657.0, 173.0, 80.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.namespace 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-24",
													"fontsize" : 9.0,
													"patching_rect" : [ 608.0, 288.0, 111.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.namespace", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_parameters 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-25",
													"fontsize" : 9.0,
													"patching_rect" : [ 608.0, 104.0, 157.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.modules_parameters", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"outlettype" : [ "", "" ],
													"id" : "obj-26",
													"fontsize" : 9.0,
													"patching_rect" : [ 507.0, 523.0, 290.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-27",
													"fontsize" : 9.0,
													"patching_rect" : [ 507.0, 593.0, 37.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend store",
													"outlettype" : [ "" ],
													"id" : "obj-28",
													"fontsize" : 9.0,
													"patching_rect" : [ 507.0, 616.0, 72.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l",
													"outlettype" : [ "", "" ],
													"id" : "obj-29",
													"fontsize" : 9.0,
													"patching_rect" : [ 861.0, 193.0, 37.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.trig_mapper_ins 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-30",
													"fontsize" : 9.0,
													"patching_rect" : [ 507.0, 643.0, 151.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.trig_mapper_ins", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"outlettype" : [ "bang", "" ],
													"id" : "obj-31",
													"fontsize" : 9.0,
													"patching_rect" : [ 787.0, 124.0, 111.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s",
													"outlettype" : [ "", "" ],
													"id" : "obj-32",
													"fontsize" : 9.0,
													"patching_rect" : [ 937.0, 191.0, 111.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"outlettype" : [ "", "" ],
													"id" : "obj-33",
													"fontsize" : 9.0,
													"patching_rect" : [ 507.0, 571.0, 541.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl group 255",
													"outlettype" : [ "", "" ],
													"id" : "obj-34",
													"fontsize" : 9.0,
													"patching_rect" : [ 787.0, 470.0, 67.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"outlettype" : [ "" ],
													"id" : "obj-35",
													"fontsize" : 9.0,
													"patching_rect" : [ 820.0, 420.0, 51.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"outlettype" : [ "int" ],
													"id" : "obj-36",
													"fontsize" : 9.0,
													"patching_rect" : [ 1010.0, 389.0, 21.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1",
													"outlettype" : [ "int" ],
													"id" : "obj-37",
													"fontsize" : 9.0,
													"patching_rect" : [ 888.0, 390.0, 21.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel generic menu toggle msg_int msg_float msg_list msg_symbol jit_matrix",
													"linecount" : 3,
													"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
													"id" : "obj-38",
													"fontsize" : 9.0,
													"patching_rect" : [ 888.0, 333.0, 136.0, 38.0 ],
													"numinlets" : 1,
													"numoutlets" : 9,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl nth 7",
													"outlettype" : [ "", "" ],
													"id" : "obj-39",
													"fontsize" : 9.0,
													"patching_rect" : [ 888.0, 306.0, 53.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t dump clear",
													"outlettype" : [ "dump", "clear" ],
													"id" : "obj-40",
													"fontsize" : 9.0,
													"patching_rect" : [ 888.0, 78.0, 176.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s%s",
													"outlettype" : [ "" ],
													"id" : "obj-41",
													"fontsize" : 9.0,
													"patching_rect" : [ 888.0, 261.0, 72.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-42",
													"fontsize" : 9.0,
													"patching_rect" : [ 888.0, 238.0, 59.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack s s",
													"outlettype" : [ "" ],
													"id" : "obj-43",
													"fontsize" : 9.0,
													"patching_rect" : [ 888.0, 215.0, 59.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl iter 1",
													"outlettype" : [ "", "" ],
													"id" : "obj-44",
													"fontsize" : 9.0,
													"patching_rect" : [ 888.0, 169.0, 47.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"outlettype" : [ "", "" ],
													"id" : "obj-45",
													"fontsize" : 9.0,
													"patching_rect" : [ 937.0, 124.0, 65.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.namespace 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-46",
													"fontsize" : 9.0,
													"patching_rect" : [ 888.0, 284.0, 111.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.namespace", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_returns 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-47",
													"fontsize" : 9.0,
													"patching_rect" : [ 888.0, 100.0, 157.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.modules_returns", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"outlettype" : [ "bang" ],
													"id" : "obj-48",
													"patching_rect" : [ 264.0, 2.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p noparam",
													"outlettype" : [ "" ],
													"id" : "obj-49",
													"fontsize" : 9.0,
													"patching_rect" : [ -145.0, 515.0, 231.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"patcher" : 													{
														"rect" : [ 20.0, 52.0, 305.0, 264.0 ],
														"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
														"bglocked" : 0,
														"defrect" : [ 20.0, 52.0, 305.0, 264.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 1 l",
																	"outlettype" : [ "int", "" ],
																	"id" : "obj-1",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 79.0, 152.0, 29.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl slice 2",
																	"outlettype" : [ "", "" ],
																	"id" : "obj-2",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 79.0, 131.0, 50.0, 17.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 2 1",
																	"outlettype" : [ "", "" ],
																	"id" : "obj-3",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 39.0, 106.0, 50.0, 17.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"id" : "obj-4",
																	"patching_rect" : [ 79.0, 83.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-5",
																	"patching_rect" : [ 39.0, 183.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "<separator>" ],
																	"id" : "obj-6",
																	"patching_rect" : [ 126.0, 53.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "in case there's no int\/float\/menu parameter",
																	"linecount" : 2,
																	"id" : "obj-7",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 105.0, 92.0, 158.0, 28.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 2",
																	"outlettype" : [ "int" ],
																	"id" : "obj-8",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 39.0, 83.0, 21.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontname" : "Verdana"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 135.0, 75.0, 48.5, 75.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 1 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 98.5, 178.0, 48.0, 178.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 1 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
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
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p noparam",
													"outlettype" : [ "<separator>" ],
													"id" : "obj-50",
													"fontsize" : 9.0,
													"patching_rect" : [ 76.0, 439.0, 56.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"patcher" : 													{
														"rect" : [ 20.0, 52.0, 420.0, 302.0 ],
														"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
														"bglocked" : 0,
														"defrect" : [ 20.0, 52.0, 420.0, 302.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-1",
																	"patching_rect" : [ 59.0, 199.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t <separator>",
																	"outlettype" : [ "<separator>" ],
																	"id" : "obj-2",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 59.0, 176.0, 71.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0",
																	"outlettype" : [ "bang", "" ],
																	"id" : "obj-3",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 59.0, 153.0, 34.0, 17.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "i",
																	"outlettype" : [ "int" ],
																	"id" : "obj-4",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 59.0, 130.0, 42.0, 17.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "counter",
																	"outlettype" : [ "int", "", "", "int" ],
																	"id" : "obj-5",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 91.0, 106.0, 66.0, 17.0 ],
																	"numinlets" : 5,
																	"numoutlets" : 4,
																	"fontname" : "Verdana",
																	"save" : [ "#N", "counter", ";", "#X", "flags", 0, 0, ";" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0 b",
																	"outlettype" : [ "int", "bang" ],
																	"id" : "obj-6",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 39.0, 61.0, 30.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b",
																	"outlettype" : [ "bang" ],
																	"id" : "obj-7",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 91.0, 63.0, 23.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "bang" ],
																	"id" : "obj-8",
																	"patching_rect" : [ 39.0, 36.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"id" : "obj-9",
																	"patching_rect" : [ 91.0, 39.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "in case there's no int\/float\/menu parameter",
																	"id" : "obj-10",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 122.0, 60.0, 182.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Verdana"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-4", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-5", 3 ],
																	"hidden" : 0,
																	"midpoints" : [ 48.5, 93.0, 135.75, 93.0 ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
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
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-51",
													"fontsize" : 9.0,
													"patching_rect" : [ 236.0, 115.0, 37.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-52",
													"fontsize" : 9.0,
													"patching_rect" : [ -44.0, 120.0, 37.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"outlettype" : [ "bang", "bang" ],
													"id" : "obj-53",
													"fontsize" : 9.0,
													"patching_rect" : [ 236.0, 20.0, 662.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t <separator> b",
													"outlettype" : [ "<separator>", "bang" ],
													"id" : "obj-54",
													"fontsize" : 9.0,
													"patching_rect" : [ -217.0, 149.0, 82.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-55",
													"fontsize" : 9.0,
													"patching_rect" : [ -145.0, 466.0, 37.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"outlettype" : [ "", "" ],
													"id" : "obj-56",
													"fontsize" : 9.0,
													"patching_rect" : [ -217.0, 438.0, 82.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"outlettype" : [ "", "" ],
													"id" : "obj-57",
													"fontsize" : 9.0,
													"patching_rect" : [ -44.0, 51.0, 50.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_omod",
													"outlettype" : [ "" ],
													"id" : "obj-58",
													"fontsize" : 9.0,
													"patching_rect" : [ -4.0, 30.0, 73.0, 17.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_omod",
													"id" : "obj-59",
													"fontsize" : 9.0,
													"patching_rect" : [ 301.0, 139.0, 72.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l",
													"outlettype" : [ "", "" ],
													"id" : "obj-60",
													"fontsize" : 9.0,
													"patching_rect" : [ -71.0, 166.0, 37.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"outlettype" : [ "bang", "" ],
													"id" : "obj-61",
													"fontsize" : 9.0,
													"patching_rect" : [ -145.0, 97.0, 111.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl group 255",
													"outlettype" : [ "", "" ],
													"id" : "obj-62",
													"fontsize" : 9.0,
													"patching_rect" : [ -145.0, 415.0, 67.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"outlettype" : [ "" ],
													"id" : "obj-63",
													"fontsize" : 9.0,
													"patching_rect" : [ -112.0, 393.0, 51.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"outlettype" : [ "int" ],
													"id" : "obj-64",
													"fontsize" : 9.0,
													"patching_rect" : [ 76.0, 357.0, 21.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1",
													"outlettype" : [ "int" ],
													"id" : "obj-65",
													"fontsize" : 9.0,
													"patching_rect" : [ -44.0, 363.0, 21.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel generic menu toggle msg_int msg_float msg_list msg_symbol jit_matrix",
													"linecount" : 3,
													"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
													"id" : "obj-66",
													"fontsize" : 9.0,
													"patching_rect" : [ -44.0, 303.0, 136.0, 38.0 ],
													"numinlets" : 1,
													"numoutlets" : 9,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl nth 7",
													"outlettype" : [ "", "" ],
													"id" : "obj-67",
													"fontsize" : 9.0,
													"patching_rect" : [ -44.0, 279.0, 53.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s%s",
													"outlettype" : [ "" ],
													"id" : "obj-68",
													"fontsize" : 9.0,
													"patching_rect" : [ -44.0, 234.0, 72.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-69",
													"fontsize" : 9.0,
													"patching_rect" : [ -44.0, 211.0, 59.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack s s",
													"outlettype" : [ "" ],
													"id" : "obj-70",
													"fontsize" : 9.0,
													"patching_rect" : [ -44.0, 188.0, 59.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl iter 1",
													"outlettype" : [ "", "" ],
													"id" : "obj-71",
													"fontsize" : 9.0,
													"patching_rect" : [ -44.0, 142.0, 47.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"outlettype" : [ "", "" ],
													"id" : "obj-72",
													"fontsize" : 9.0,
													"patching_rect" : [ 5.0, 142.0, 80.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.namespace 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-73",
													"fontsize" : 9.0,
													"patching_rect" : [ -44.0, 257.0, 111.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.namespace", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_messages 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-74",
													"fontsize" : 9.0,
													"patching_rect" : [ -44.0, 73.0, 157.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.modules_messages", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"outlettype" : [ "", "" ],
													"id" : "obj-75",
													"fontsize" : 9.0,
													"patching_rect" : [ -145.0, 492.0, 290.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-76",
													"fontsize" : 9.0,
													"patching_rect" : [ -145.0, 562.0, 37.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend store",
													"outlettype" : [ "" ],
													"id" : "obj-77",
													"fontsize" : 9.0,
													"patching_rect" : [ -145.0, 585.0, 72.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l",
													"outlettype" : [ "", "" ],
													"id" : "obj-78",
													"fontsize" : 9.0,
													"patching_rect" : [ 209.0, 162.0, 37.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.trig_mapper_outs 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-79",
													"fontsize" : 9.0,
													"patching_rect" : [ -145.0, 612.0, 151.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.trig_mapper_outs", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"outlettype" : [ "bang", "" ],
													"id" : "obj-80",
													"fontsize" : 9.0,
													"patching_rect" : [ 135.0, 93.0, 111.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s",
													"outlettype" : [ "", "" ],
													"id" : "obj-81",
													"fontsize" : 9.0,
													"patching_rect" : [ 285.0, 160.0, 111.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"outlettype" : [ "", "" ],
													"id" : "obj-82",
													"fontsize" : 9.0,
													"patching_rect" : [ -145.0, 540.0, 541.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl group 255",
													"outlettype" : [ "", "" ],
													"id" : "obj-83",
													"fontsize" : 9.0,
													"patching_rect" : [ 135.0, 439.0, 67.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"outlettype" : [ "" ],
													"id" : "obj-84",
													"fontsize" : 9.0,
													"patching_rect" : [ 168.0, 389.0, 51.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"outlettype" : [ "int" ],
													"id" : "obj-85",
													"fontsize" : 9.0,
													"patching_rect" : [ 358.0, 358.0, 21.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1",
													"outlettype" : [ "int" ],
													"id" : "obj-86",
													"fontsize" : 9.0,
													"patching_rect" : [ 236.0, 359.0, 21.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel generic menu toggle msg_int msg_float msg_list msg_symbol jit_matrix",
													"linecount" : 3,
													"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
													"id" : "obj-87",
													"fontsize" : 9.0,
													"patching_rect" : [ 236.0, 302.0, 136.0, 38.0 ],
													"numinlets" : 1,
													"numoutlets" : 9,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl nth 7",
													"outlettype" : [ "", "" ],
													"id" : "obj-88",
													"fontsize" : 9.0,
													"patching_rect" : [ 236.0, 275.0, 53.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t dump clear",
													"outlettype" : [ "dump", "clear" ],
													"id" : "obj-89",
													"fontsize" : 9.0,
													"patching_rect" : [ 236.0, 47.0, 176.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s%s",
													"outlettype" : [ "" ],
													"id" : "obj-90",
													"fontsize" : 9.0,
													"patching_rect" : [ 236.0, 230.0, 72.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-91",
													"fontsize" : 9.0,
													"patching_rect" : [ 236.0, 207.0, 59.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack s s",
													"outlettype" : [ "" ],
													"id" : "obj-92",
													"fontsize" : 9.0,
													"patching_rect" : [ 236.0, 184.0, 59.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl iter 1",
													"outlettype" : [ "", "" ],
													"id" : "obj-93",
													"fontsize" : 9.0,
													"patching_rect" : [ 236.0, 138.0, 47.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"outlettype" : [ "", "" ],
													"id" : "obj-94",
													"fontsize" : 9.0,
													"patching_rect" : [ 285.0, 93.0, 65.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.namespace 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-95",
													"fontsize" : 9.0,
													"patching_rect" : [ 236.0, 253.0, 111.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.namespace", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_parameters 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-96",
													"fontsize" : 9.0,
													"patching_rect" : [ 236.0, 69.0, 157.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.modules_parameters", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "bang" ],
													"id" : "obj-97",
													"patching_rect" : [ 236.0, 1.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-61", 0 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-54", 0 ],
													"destination" : [ "obj-56", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-74", 0 ],
													"destination" : [ "obj-61", 0 ],
													"hidden" : 0,
													"midpoints" : [ -34.5, 92.0, -135.5, 92.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-54", 1 ],
													"destination" : [ "obj-62", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-63", 0 ],
													"destination" : [ "obj-62", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-56", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-56", 0 ],
													"destination" : [ "obj-55", 0 ],
													"hidden" : 0,
													"midpoints" : [ -207.5, 460.0, -135.5, 460.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-75", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-75", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 0 ],
													"destination" : [ "obj-82", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-82", 0 ],
													"destination" : [ "obj-76", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-76", 0 ],
													"destination" : [ "obj-77", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-89", 1 ],
													"destination" : [ "obj-79", 0 ],
													"hidden" : 0,
													"midpoints" : [ 402.5, 607.0, -135.5, 607.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-77", 0 ],
													"destination" : [ "obj-79", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-64", 0 ],
													"destination" : [ "obj-63", 0 ],
													"hidden" : 0,
													"midpoints" : [ 85.5, 386.0, -102.5, 386.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-65", 0 ],
													"destination" : [ "obj-63", 0 ],
													"hidden" : 0,
													"midpoints" : [ -34.5, 386.0, -102.5, 386.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-71", 0 ],
													"destination" : [ "obj-60", 0 ],
													"hidden" : 0,
													"midpoints" : [ -34.5, 162.0, -61.5, 162.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-60", 0 ],
													"destination" : [ "obj-63", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-80", 0 ],
													"destination" : [ "obj-57", 0 ],
													"hidden" : 0,
													"midpoints" : [ 144.5, 116.0, 126.0, 116.0, 126.0, 23.0, -34.5, 23.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-57", 0 ],
													"destination" : [ "obj-74", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-61", 1 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-71", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-60", 1 ],
													"destination" : [ "obj-70", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-70", 0 ],
													"destination" : [ "obj-69", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-69", 0 ],
													"destination" : [ "obj-68", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-68", 0 ],
													"destination" : [ "obj-73", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-73", 0 ],
													"destination" : [ "obj-67", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-67", 0 ],
													"destination" : [ "obj-66", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-66", 7 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [ 67.875, 353.0, -34.5, 353.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-66", 6 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [ 53.25, 353.0, -34.5, 353.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-66", 5 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [ 38.625, 353.0, -34.5, 353.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-66", 4 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [ 24.0, 353.0, -34.5, 353.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-66", 3 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [ 9.375, 353.0, -34.5, 353.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-66", 2 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [ -5.25, 353.0, -34.5, 353.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-66", 0 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-66", 1 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0,
													"midpoints" : [ -19.875, 353.0, -34.5, 353.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 0 ],
													"destination" : [ "obj-57", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-74", 1 ],
													"destination" : [ "obj-72", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-72", 0 ],
													"destination" : [ "obj-70", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-66", 8 ],
													"destination" : [ "obj-64", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-80", 0 ],
													"destination" : [ "obj-50", 0 ],
													"hidden" : 0,
													"midpoints" : [ 144.5, 413.0, 85.5, 413.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-49", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-84", 0 ],
													"destination" : [ "obj-50", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-96", 0 ],
													"destination" : [ "obj-80", 0 ],
													"hidden" : 0,
													"midpoints" : [ 245.5, 88.0, 144.5, 88.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-80", 0 ],
													"destination" : [ "obj-83", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-84", 0 ],
													"destination" : [ "obj-83", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-75", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-83", 0 ],
													"destination" : [ "obj-75", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-86", 0 ],
													"destination" : [ "obj-84", 0 ],
													"hidden" : 0,
													"midpoints" : [ 245.5, 382.0, 177.5, 382.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-85", 0 ],
													"destination" : [ "obj-84", 0 ],
													"hidden" : 0,
													"midpoints" : [ 367.5, 382.0, 177.5, 382.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-93", 0 ],
													"destination" : [ "obj-78", 0 ],
													"hidden" : 0,
													"midpoints" : [ 245.5, 158.0, 218.5, 158.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-78", 0 ],
													"destination" : [ "obj-84", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-53", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-97", 0 ],
													"destination" : [ "obj-53", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-89", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-89", 0 ],
													"destination" : [ "obj-96", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-80", 1 ],
													"destination" : [ "obj-51", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 0 ],
													"destination" : [ "obj-93", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-78", 1 ],
													"destination" : [ "obj-92", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-92", 0 ],
													"destination" : [ "obj-91", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-91", 0 ],
													"destination" : [ "obj-90", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-90", 0 ],
													"destination" : [ "obj-95", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-95", 0 ],
													"destination" : [ "obj-88", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-88", 0 ],
													"destination" : [ "obj-87", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-87", 1 ],
													"destination" : [ "obj-86", 0 ],
													"hidden" : 0,
													"midpoints" : [ 260.125, 351.0, 245.5, 351.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-87", 0 ],
													"destination" : [ "obj-86", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-87", 2 ],
													"destination" : [ "obj-86", 0 ],
													"hidden" : 0,
													"midpoints" : [ 274.75, 351.0, 245.5, 351.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-96", 1 ],
													"destination" : [ "obj-94", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-94", 0 ],
													"destination" : [ "obj-81", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-81", 0 ],
													"destination" : [ "obj-92", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-94", 0 ],
													"destination" : [ "obj-59", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-87", 8 ],
													"destination" : [ "obj-85", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-81", 1 ],
													"destination" : [ "obj-82", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [ 617.5, 123.0, 516.5, 123.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [ 444.5, 491.0, 516.5, 491.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 1 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [ 1054.5, 638.0, 516.5, 638.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [ 617.5, 417.0, 549.5, 417.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [ 737.5, 417.0, 549.5, 417.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 617.5, 193.0, 590.5, 193.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-14", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 796.5, 147.0, 778.0, 147.0, 778.0, 54.0, 617.5, 54.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 1 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 632.125, 384.0, 617.5, 384.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 2 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 646.75, 384.0, 617.5, 384.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 3 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 661.375, 384.0, 617.5, 384.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 4 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 676.0, 384.0, 617.5, 384.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 5 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 690.625, 384.0, 617.5, 384.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 6 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 705.25, 384.0, 617.5, 384.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 7 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 719.875, 384.0, 617.5, 384.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 1 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-21", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 8 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [ 796.5, 444.0, 737.5, 444.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-2", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [ 897.5, 119.0, 796.5, 119.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-26", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-26", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [ 1019.5, 413.0, 829.5, 413.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [ 897.5, 413.0, 829.5, 413.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [ 897.5, 189.0, 870.5, 189.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-35", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 1 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 1 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 2 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [ 926.75, 382.0, 897.5, 382.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 1 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [ 912.125, 382.0, 897.5, 382.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 1 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-43", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 8 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 1 ],
													"destination" : [ "obj-33", 1 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p cont_mapping",
									"id" : "obj-2",
									"fontsize" : 9.0,
									"patching_rect" : [ 96.0, 98.0, 79.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"patcher" : 									{
										"rect" : [ -7.0, 44.0, 1270.0, 719.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ -7.0, 44.0, 1270.0, 719.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p noparam",
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 698.0, 536.0, 231.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"patcher" : 													{
														"rect" : [ 20.0, 52.0, 305.0, 264.0 ],
														"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
														"bglocked" : 0,
														"defrect" : [ 20.0, 52.0, 305.0, 264.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 1 l",
																	"outlettype" : [ "int", "" ],
																	"id" : "obj-1",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 79.0, 152.0, 29.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl slice 2",
																	"outlettype" : [ "", "" ],
																	"id" : "obj-2",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 79.0, 131.0, 50.0, 17.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 2 1",
																	"outlettype" : [ "", "" ],
																	"id" : "obj-3",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 39.0, 106.0, 50.0, 17.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"id" : "obj-4",
																	"patching_rect" : [ 79.0, 83.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-5",
																	"patching_rect" : [ 39.0, 183.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "<separator>" ],
																	"id" : "obj-6",
																	"patching_rect" : [ 126.0, 53.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "in case there's no int\/float\/menu parameter",
																	"linecount" : 2,
																	"id" : "obj-7",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 105.0, 92.0, 158.0, 28.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 2",
																	"outlettype" : [ "int" ],
																	"id" : "obj-8",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 39.0, 83.0, 21.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontname" : "Verdana"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 135.0, 75.0, 48.5, 75.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 1 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 98.5, 178.0, 48.0, 178.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 1 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
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
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p noparam",
													"outlettype" : [ "<separator>" ],
													"id" : "obj-2",
													"fontsize" : 9.0,
													"patching_rect" : [ 919.0, 460.0, 56.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"patcher" : 													{
														"rect" : [ 20.0, 52.0, 420.0, 302.0 ],
														"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
														"bglocked" : 0,
														"defrect" : [ 20.0, 52.0, 420.0, 302.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-1",
																	"patching_rect" : [ 59.0, 199.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t <separator>",
																	"outlettype" : [ "<separator>" ],
																	"id" : "obj-2",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 59.0, 176.0, 71.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0",
																	"outlettype" : [ "bang", "" ],
																	"id" : "obj-3",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 59.0, 153.0, 34.0, 17.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "i",
																	"outlettype" : [ "int" ],
																	"id" : "obj-4",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 59.0, 130.0, 42.0, 17.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "counter",
																	"outlettype" : [ "int", "", "", "int" ],
																	"id" : "obj-5",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 91.0, 106.0, 66.0, 17.0 ],
																	"numinlets" : 5,
																	"numoutlets" : 4,
																	"fontname" : "Verdana",
																	"save" : [ "#N", "counter", ";", "#X", "flags", 0, 0, ";" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0 b",
																	"outlettype" : [ "int", "bang" ],
																	"id" : "obj-6",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 39.0, 61.0, 30.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b",
																	"outlettype" : [ "bang" ],
																	"id" : "obj-7",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 91.0, 63.0, 23.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "bang" ],
																	"id" : "obj-8",
																	"patching_rect" : [ 39.0, 36.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"id" : "obj-9",
																	"patching_rect" : [ 91.0, 39.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "in case there's no int\/float\/menu parameter",
																	"id" : "obj-10",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 122.0, 60.0, 182.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Verdana"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-4", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-5", 3 ],
																	"hidden" : 0,
																	"midpoints" : [ 48.5, 93.0, 135.75, 93.0 ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
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
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 1079.0, 175.0, 37.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontsize" : 9.0,
													"patching_rect" : [ 799.0, 180.0, 37.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t <separator> b",
													"outlettype" : [ "<separator>", "bang" ],
													"id" : "obj-5",
													"fontsize" : 9.0,
													"patching_rect" : [ 626.0, 209.0, 82.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-6",
													"fontsize" : 9.0,
													"patching_rect" : [ 698.0, 487.0, 37.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"outlettype" : [ "", "" ],
													"id" : "obj-7",
													"fontsize" : 9.0,
													"patching_rect" : [ 626.0, 459.0, 82.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"outlettype" : [ "", "" ],
													"id" : "obj-8",
													"fontsize" : 9.0,
													"patching_rect" : [ 799.0, 111.0, 50.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_cimod",
													"outlettype" : [ "" ],
													"id" : "obj-9",
													"fontsize" : 9.0,
													"patching_rect" : [ 839.0, 90.0, 73.0, 17.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_cimod",
													"id" : "obj-10",
													"fontsize" : 9.0,
													"patching_rect" : [ 1158.0, 186.0, 72.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l",
													"outlettype" : [ "", "" ],
													"id" : "obj-11",
													"fontsize" : 9.0,
													"patching_rect" : [ 772.0, 226.0, 37.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"outlettype" : [ "bang", "" ],
													"id" : "obj-12",
													"fontsize" : 9.0,
													"patching_rect" : [ 698.0, 157.0, 111.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl group 255",
													"outlettype" : [ "", "" ],
													"id" : "obj-13",
													"fontsize" : 9.0,
													"patching_rect" : [ 698.0, 436.0, 67.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"outlettype" : [ "" ],
													"id" : "obj-14",
													"fontsize" : 9.0,
													"patching_rect" : [ 731.0, 414.0, 51.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"outlettype" : [ "int" ],
													"id" : "obj-15",
													"fontsize" : 9.0,
													"patching_rect" : [ 925.0, 383.0, 21.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1",
													"outlettype" : [ "int" ],
													"id" : "obj-16",
													"fontsize" : 9.0,
													"patching_rect" : [ 799.0, 384.0, 21.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel msg_float msg_int menu",
													"outlettype" : [ "bang", "bang", "bang", "" ],
													"id" : "obj-17",
													"fontsize" : 9.0,
													"patching_rect" : [ 799.0, 362.0, 136.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl nth 7",
													"outlettype" : [ "", "" ],
													"id" : "obj-18",
													"fontsize" : 9.0,
													"patching_rect" : [ 799.0, 339.0, 53.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s%s",
													"outlettype" : [ "" ],
													"id" : "obj-19",
													"fontsize" : 9.0,
													"patching_rect" : [ 799.0, 294.0, 72.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-20",
													"fontsize" : 9.0,
													"patching_rect" : [ 799.0, 271.0, 59.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack s s",
													"outlettype" : [ "" ],
													"id" : "obj-21",
													"fontsize" : 9.0,
													"patching_rect" : [ 799.0, 248.0, 59.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl iter 1",
													"outlettype" : [ "", "" ],
													"id" : "obj-22",
													"fontsize" : 9.0,
													"patching_rect" : [ 799.0, 202.0, 47.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"outlettype" : [ "", "" ],
													"id" : "obj-23",
													"fontsize" : 9.0,
													"patching_rect" : [ 848.0, 202.0, 80.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.namespace 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-24",
													"fontsize" : 9.0,
													"patching_rect" : [ 799.0, 317.0, 111.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.namespace", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_parameters 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-25",
													"fontsize" : 9.0,
													"patching_rect" : [ 799.0, 133.0, 157.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.modules_parameters", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"outlettype" : [ "", "" ],
													"id" : "obj-26",
													"fontsize" : 9.0,
													"patching_rect" : [ 698.0, 513.0, 290.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-27",
													"fontsize" : 9.0,
													"patching_rect" : [ 698.0, 583.0, 37.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend store",
													"outlettype" : [ "" ],
													"id" : "obj-28",
													"fontsize" : 9.0,
													"patching_rect" : [ 698.0, 606.0, 72.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l",
													"outlettype" : [ "", "" ],
													"id" : "obj-29",
													"fontsize" : 9.0,
													"patching_rect" : [ 1052.0, 222.0, 37.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.cont_mapper_ins 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-30",
													"fontsize" : 9.0,
													"patching_rect" : [ 698.0, 633.0, 151.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.cont_mapper_ins", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"outlettype" : [ "bang", "" ],
													"id" : "obj-31",
													"fontsize" : 9.0,
													"patching_rect" : [ 978.0, 153.0, 111.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s",
													"outlettype" : [ "", "" ],
													"id" : "obj-32",
													"fontsize" : 9.0,
													"patching_rect" : [ 1128.0, 220.0, 111.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"outlettype" : [ "", "" ],
													"id" : "obj-33",
													"fontsize" : 9.0,
													"patching_rect" : [ 698.0, 561.0, 541.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl group 255",
													"outlettype" : [ "", "" ],
													"id" : "obj-34",
													"fontsize" : 9.0,
													"patching_rect" : [ 978.0, 460.0, 67.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"outlettype" : [ "" ],
													"id" : "obj-35",
													"fontsize" : 9.0,
													"patching_rect" : [ 1011.0, 410.0, 51.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"outlettype" : [ "int" ],
													"id" : "obj-36",
													"fontsize" : 9.0,
													"patching_rect" : [ 1205.0, 381.0, 21.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1",
													"outlettype" : [ "int" ],
													"id" : "obj-37",
													"fontsize" : 9.0,
													"patching_rect" : [ 1079.0, 380.0, 21.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl nth 7",
													"outlettype" : [ "", "" ],
													"id" : "obj-38",
													"fontsize" : 9.0,
													"patching_rect" : [ 1079.0, 335.0, 53.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t dump clear",
													"outlettype" : [ "dump", "clear" ],
													"id" : "obj-39",
													"fontsize" : 9.0,
													"patching_rect" : [ 1079.0, 66.0, 176.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s%s",
													"outlettype" : [ "" ],
													"id" : "obj-40",
													"fontsize" : 9.0,
													"patching_rect" : [ 1079.0, 290.0, 72.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-41",
													"fontsize" : 9.0,
													"patching_rect" : [ 1079.0, 267.0, 59.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack s s",
													"outlettype" : [ "" ],
													"id" : "obj-42",
													"fontsize" : 9.0,
													"patching_rect" : [ 1079.0, 244.0, 59.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl iter 1",
													"outlettype" : [ "", "" ],
													"id" : "obj-43",
													"fontsize" : 9.0,
													"patching_rect" : [ 1079.0, 198.0, 47.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"outlettype" : [ "", "" ],
													"id" : "obj-44",
													"fontsize" : 9.0,
													"patching_rect" : [ 1128.0, 153.0, 65.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.namespace 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-45",
													"fontsize" : 9.0,
													"patching_rect" : [ 1079.0, 313.0, 111.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.namespace", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_returns 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-46",
													"fontsize" : 9.0,
													"patching_rect" : [ 1079.0, 88.0, 157.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.modules_returns", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"outlettype" : [ "bang" ],
													"id" : "obj-47",
													"patching_rect" : [ 447.0, 12.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p noparam",
													"outlettype" : [ "" ],
													"id" : "obj-48",
													"fontsize" : 9.0,
													"patching_rect" : [ 38.0, 486.0, 231.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"patcher" : 													{
														"rect" : [ 20.0, 52.0, 305.0, 264.0 ],
														"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
														"bglocked" : 0,
														"defrect" : [ 20.0, 52.0, 305.0, 264.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 1 l",
																	"outlettype" : [ "int", "" ],
																	"id" : "obj-1",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 79.0, 152.0, 29.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl slice 2",
																	"outlettype" : [ "", "" ],
																	"id" : "obj-2",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 79.0, 131.0, 50.0, 17.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 2 1",
																	"outlettype" : [ "", "" ],
																	"id" : "obj-3",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 39.0, 106.0, 50.0, 17.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"id" : "obj-4",
																	"patching_rect" : [ 79.0, 83.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-5",
																	"patching_rect" : [ 39.0, 183.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "<separator>" ],
																	"id" : "obj-6",
																	"patching_rect" : [ 126.0, 53.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "in case there's no int\/float\/menu parameter",
																	"linecount" : 2,
																	"id" : "obj-7",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 105.0, 92.0, 158.0, 28.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 2",
																	"outlettype" : [ "int" ],
																	"id" : "obj-8",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 39.0, 83.0, 21.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontname" : "Verdana"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 135.0, 75.0, 48.5, 75.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 1 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 98.5, 178.0, 48.0, 178.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 1 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
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
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p noparam",
													"outlettype" : [ "<separator>" ],
													"id" : "obj-49",
													"fontsize" : 9.0,
													"patching_rect" : [ 259.0, 410.0, 56.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"patcher" : 													{
														"rect" : [ 20.0, 52.0, 420.0, 302.0 ],
														"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
														"bglocked" : 0,
														"defrect" : [ 20.0, 52.0, 420.0, 302.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-1",
																	"patching_rect" : [ 59.0, 199.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t <separator>",
																	"outlettype" : [ "<separator>" ],
																	"id" : "obj-2",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 59.0, 176.0, 71.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0",
																	"outlettype" : [ "bang", "" ],
																	"id" : "obj-3",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 59.0, 153.0, 34.0, 17.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "i",
																	"outlettype" : [ "int" ],
																	"id" : "obj-4",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 59.0, 130.0, 42.0, 17.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "counter",
																	"outlettype" : [ "int", "", "", "int" ],
																	"id" : "obj-5",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 91.0, 106.0, 66.0, 17.0 ],
																	"numinlets" : 5,
																	"numoutlets" : 4,
																	"fontname" : "Verdana",
																	"save" : [ "#N", "counter", ";", "#X", "flags", 0, 0, ";" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0 b",
																	"outlettype" : [ "int", "bang" ],
																	"id" : "obj-6",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 39.0, 61.0, 30.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b",
																	"outlettype" : [ "bang" ],
																	"id" : "obj-7",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 91.0, 63.0, 23.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "bang" ],
																	"id" : "obj-8",
																	"patching_rect" : [ 39.0, 36.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"id" : "obj-9",
																	"patching_rect" : [ 91.0, 39.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "in case there's no int\/float\/menu parameter",
																	"id" : "obj-10",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 122.0, 60.0, 182.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"fontname" : "Verdana"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-4", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-5", 3 ],
																	"hidden" : 0,
																	"midpoints" : [ 48.5, 93.0, 135.75, 93.0 ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
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
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-50",
													"fontsize" : 9.0,
													"patching_rect" : [ 419.0, 125.0, 37.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-51",
													"fontsize" : 9.0,
													"patching_rect" : [ 139.0, 130.0, 37.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b",
													"outlettype" : [ "bang", "bang" ],
													"id" : "obj-52",
													"fontsize" : 9.0,
													"patching_rect" : [ 419.0, 30.0, 670.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t <separator> b",
													"outlettype" : [ "<separator>", "bang" ],
													"id" : "obj-53",
													"fontsize" : 9.0,
													"patching_rect" : [ -34.0, 159.0, 82.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-54",
													"fontsize" : 9.0,
													"patching_rect" : [ 38.0, 437.0, 37.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"outlettype" : [ "", "" ],
													"id" : "obj-55",
													"fontsize" : 9.0,
													"patching_rect" : [ -34.0, 409.0, 82.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"outlettype" : [ "", "" ],
													"id" : "obj-56",
													"fontsize" : 9.0,
													"patching_rect" : [ 139.0, 61.0, 50.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_comod",
													"outlettype" : [ "" ],
													"id" : "obj-57",
													"fontsize" : 9.0,
													"patching_rect" : [ 179.0, 40.0, 73.0, 17.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_comod",
													"id" : "obj-58",
													"fontsize" : 9.0,
													"patching_rect" : [ 484.0, 149.0, 72.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l",
													"outlettype" : [ "", "" ],
													"id" : "obj-59",
													"fontsize" : 9.0,
													"patching_rect" : [ 112.0, 176.0, 37.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"outlettype" : [ "bang", "" ],
													"id" : "obj-60",
													"fontsize" : 9.0,
													"patching_rect" : [ 38.0, 107.0, 111.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl group 255",
													"outlettype" : [ "", "" ],
													"id" : "obj-61",
													"fontsize" : 9.0,
													"patching_rect" : [ 38.0, 386.0, 67.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"outlettype" : [ "" ],
													"id" : "obj-62",
													"fontsize" : 9.0,
													"patching_rect" : [ 71.0, 364.0, 51.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"outlettype" : [ "int" ],
													"id" : "obj-63",
													"fontsize" : 9.0,
													"patching_rect" : [ 265.0, 333.0, 21.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1",
													"outlettype" : [ "int" ],
													"id" : "obj-64",
													"fontsize" : 9.0,
													"patching_rect" : [ 139.0, 334.0, 21.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel msg_float msg_int menu",
													"outlettype" : [ "bang", "bang", "bang", "" ],
													"id" : "obj-65",
													"fontsize" : 9.0,
													"patching_rect" : [ 139.0, 312.0, 136.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl nth 7",
													"outlettype" : [ "", "" ],
													"id" : "obj-66",
													"fontsize" : 9.0,
													"patching_rect" : [ 139.0, 289.0, 53.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s%s",
													"outlettype" : [ "" ],
													"id" : "obj-67",
													"fontsize" : 9.0,
													"patching_rect" : [ 139.0, 244.0, 72.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-68",
													"fontsize" : 9.0,
													"patching_rect" : [ 139.0, 221.0, 59.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack s s",
													"outlettype" : [ "" ],
													"id" : "obj-69",
													"fontsize" : 9.0,
													"patching_rect" : [ 139.0, 198.0, 59.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl iter 1",
													"outlettype" : [ "", "" ],
													"id" : "obj-70",
													"fontsize" : 9.0,
													"patching_rect" : [ 139.0, 152.0, 47.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"outlettype" : [ "", "" ],
													"id" : "obj-71",
													"fontsize" : 9.0,
													"patching_rect" : [ 188.0, 152.0, 80.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.namespace 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-72",
													"fontsize" : 9.0,
													"patching_rect" : [ 139.0, 267.0, 111.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.namespace", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_messages 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-73",
													"fontsize" : 9.0,
													"patching_rect" : [ 139.0, 83.0, 157.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.modules_messages", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"outlettype" : [ "", "" ],
													"id" : "obj-74",
													"fontsize" : 9.0,
													"patching_rect" : [ 38.0, 463.0, 290.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-75",
													"fontsize" : 9.0,
													"patching_rect" : [ 38.0, 533.0, 37.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend store",
													"outlettype" : [ "" ],
													"id" : "obj-76",
													"fontsize" : 9.0,
													"patching_rect" : [ 38.0, 556.0, 72.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l l",
													"outlettype" : [ "", "" ],
													"id" : "obj-77",
													"fontsize" : 9.0,
													"patching_rect" : [ 392.0, 172.0, 37.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.cont_mapper_outs 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-78",
													"fontsize" : 9.0,
													"patching_rect" : [ 38.0, 583.0, 151.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.cont_mapper_outs", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"outlettype" : [ "bang", "" ],
													"id" : "obj-79",
													"fontsize" : 9.0,
													"patching_rect" : [ 318.0, 103.0, 111.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s",
													"outlettype" : [ "", "" ],
													"id" : "obj-80",
													"fontsize" : 9.0,
													"patching_rect" : [ 468.0, 170.0, 111.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"outlettype" : [ "", "" ],
													"id" : "obj-81",
													"fontsize" : 9.0,
													"patching_rect" : [ 38.0, 511.0, 541.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl group 255",
													"outlettype" : [ "", "" ],
													"id" : "obj-82",
													"fontsize" : 9.0,
													"patching_rect" : [ 318.0, 410.0, 67.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"outlettype" : [ "" ],
													"id" : "obj-83",
													"fontsize" : 9.0,
													"patching_rect" : [ 351.0, 360.0, 51.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"outlettype" : [ "int" ],
													"id" : "obj-84",
													"fontsize" : 9.0,
													"patching_rect" : [ 545.0, 329.0, 21.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1",
													"outlettype" : [ "int" ],
													"id" : "obj-85",
													"fontsize" : 9.0,
													"patching_rect" : [ 419.0, 330.0, 21.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel msg_float msg_int menu",
													"outlettype" : [ "bang", "bang", "bang", "" ],
													"id" : "obj-86",
													"fontsize" : 9.0,
													"patching_rect" : [ 419.0, 308.0, 136.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl nth 7",
													"outlettype" : [ "", "" ],
													"id" : "obj-87",
													"fontsize" : 9.0,
													"patching_rect" : [ 419.0, 285.0, 53.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t dump clear",
													"outlettype" : [ "dump", "clear" ],
													"id" : "obj-88",
													"fontsize" : 9.0,
													"patching_rect" : [ 419.0, 57.0, 176.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s%s",
													"outlettype" : [ "" ],
													"id" : "obj-89",
													"fontsize" : 9.0,
													"patching_rect" : [ 419.0, 240.0, 72.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rev",
													"outlettype" : [ "", "" ],
													"id" : "obj-90",
													"fontsize" : 9.0,
													"patching_rect" : [ 419.0, 217.0, 59.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack s s",
													"outlettype" : [ "" ],
													"id" : "obj-91",
													"fontsize" : 9.0,
													"patching_rect" : [ 419.0, 194.0, 59.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl iter 1",
													"outlettype" : [ "", "" ],
													"id" : "obj-92",
													"fontsize" : 9.0,
													"patching_rect" : [ 419.0, 148.0, 47.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"outlettype" : [ "", "" ],
													"id" : "obj-93",
													"fontsize" : 9.0,
													"patching_rect" : [ 468.0, 103.0, 65.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.namespace 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-94",
													"fontsize" : 9.0,
													"patching_rect" : [ 419.0, 263.0, 111.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.namespace", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_parameters 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-95",
													"fontsize" : 9.0,
													"patching_rect" : [ 419.0, 79.0, 157.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.modules_parameters", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "bang" ],
													"id" : "obj-96",
													"patching_rect" : [ 419.0, 11.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel msg_float msg_int menu",
													"outlettype" : [ "bang", "bang", "bang", "" ],
													"id" : "obj-97",
													"fontsize" : 9.0,
													"patching_rect" : [ 1079.0, 358.0, 136.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-60", 0 ],
													"destination" : [ "obj-53", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-55", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-73", 0 ],
													"destination" : [ "obj-60", 0 ],
													"hidden" : 0,
													"midpoints" : [ 148.5, 102.0, 47.5, 102.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-61", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 1 ],
													"destination" : [ "obj-61", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-61", 0 ],
													"destination" : [ "obj-55", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 0,
													"midpoints" : [ -24.5, 431.0, 47.5, 431.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-54", 0 ],
													"destination" : [ "obj-74", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-74", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-81", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-81", 0 ],
													"destination" : [ "obj-75", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-75", 0 ],
													"destination" : [ "obj-76", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-88", 1 ],
													"destination" : [ "obj-78", 0 ],
													"hidden" : 0,
													"midpoints" : [ 585.5, 576.0, 47.5, 576.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-76", 0 ],
													"destination" : [ "obj-78", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-64", 0 ],
													"destination" : [ "obj-62", 0 ],
													"hidden" : 0,
													"midpoints" : [ 148.5, 357.0, 80.5, 357.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-63", 0 ],
													"destination" : [ "obj-62", 0 ],
													"hidden" : 0,
													"midpoints" : [ 274.5, 357.0, 80.5, 357.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-70", 0 ],
													"destination" : [ "obj-59", 0 ],
													"hidden" : 0,
													"midpoints" : [ 148.5, 172.0, 121.5, 172.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-59", 0 ],
													"destination" : [ "obj-62", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-79", 0 ],
													"destination" : [ "obj-56", 0 ],
													"hidden" : 0,
													"midpoints" : [ 327.5, 126.0, 309.0, 126.0, 309.0, 33.0, 148.5, 33.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-56", 0 ],
													"destination" : [ "obj-73", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-60", 1 ],
													"destination" : [ "obj-51", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 0 ],
													"destination" : [ "obj-70", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-59", 1 ],
													"destination" : [ "obj-69", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-69", 0 ],
													"destination" : [ "obj-68", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-68", 0 ],
													"destination" : [ "obj-67", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-67", 0 ],
													"destination" : [ "obj-72", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-72", 0 ],
													"destination" : [ "obj-66", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-66", 0 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-65", 2 ],
													"destination" : [ "obj-64", 0 ],
													"hidden" : 0,
													"midpoints" : [ 226.5, 331.0, 148.5, 331.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-65", 0 ],
													"destination" : [ "obj-64", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-65", 1 ],
													"destination" : [ "obj-64", 0 ],
													"hidden" : 0,
													"midpoints" : [ 187.5, 331.0, 148.5, 331.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-57", 0 ],
													"destination" : [ "obj-56", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-73", 1 ],
													"destination" : [ "obj-71", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-71", 0 ],
													"destination" : [ "obj-69", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-79", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [ 327.5, 388.0, 268.5, 388.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 0 ],
													"destination" : [ "obj-48", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-65", 3 ],
													"destination" : [ "obj-63", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-83", 0 ],
													"destination" : [ "obj-49", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-95", 0 ],
													"destination" : [ "obj-79", 0 ],
													"hidden" : 0,
													"midpoints" : [ 428.5, 98.0, 327.5, 98.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-79", 0 ],
													"destination" : [ "obj-82", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-83", 0 ],
													"destination" : [ "obj-82", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 0 ],
													"destination" : [ "obj-74", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-82", 0 ],
													"destination" : [ "obj-74", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-84", 0 ],
													"destination" : [ "obj-83", 0 ],
													"hidden" : 0,
													"midpoints" : [ 554.5, 353.0, 360.5, 353.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-85", 0 ],
													"destination" : [ "obj-83", 0 ],
													"hidden" : 0,
													"midpoints" : [ 428.5, 353.0, 360.5, 353.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-92", 0 ],
													"destination" : [ "obj-77", 0 ],
													"hidden" : 0,
													"midpoints" : [ 428.5, 168.0, 401.5, 168.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-77", 0 ],
													"destination" : [ "obj-83", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-96", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-88", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-88", 0 ],
													"destination" : [ "obj-95", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-79", 1 ],
													"destination" : [ "obj-50", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-92", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-77", 1 ],
													"destination" : [ "obj-91", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-91", 0 ],
													"destination" : [ "obj-90", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-90", 0 ],
													"destination" : [ "obj-89", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-89", 0 ],
													"destination" : [ "obj-94", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-94", 0 ],
													"destination" : [ "obj-87", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-87", 0 ],
													"destination" : [ "obj-86", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-86", 1 ],
													"destination" : [ "obj-85", 0 ],
													"hidden" : 0,
													"midpoints" : [ 467.5, 327.0, 428.5, 327.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-86", 0 ],
													"destination" : [ "obj-85", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-86", 2 ],
													"destination" : [ "obj-85", 0 ],
													"hidden" : 0,
													"midpoints" : [ 506.5, 327.0, 428.5, 327.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-95", 1 ],
													"destination" : [ "obj-93", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-93", 0 ],
													"destination" : [ "obj-80", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-80", 0 ],
													"destination" : [ "obj-91", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-93", 0 ],
													"destination" : [ "obj-58", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-86", 3 ],
													"destination" : [ "obj-84", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-80", 1 ],
													"destination" : [ "obj-81", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [ 808.5, 152.0, 707.5, 152.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [ 635.5, 481.0, 707.5, 481.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 1 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [ 1245.5, 626.0, 707.5, 626.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [ 934.5, 407.0, 740.5, 407.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [ 808.5, 407.0, 740.5, 407.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 808.5, 222.0, 781.5, 222.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-14", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 987.5, 176.0, 969.0, 176.0, 969.0, 83.0, 808.5, 83.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 1 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 847.5, 381.0, 808.5, 381.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 2 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 886.5, 381.0, 808.5, 381.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 1 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-21", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [ 987.5, 438.0, 928.5, 438.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 3 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-2", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [ 1088.5, 148.0, 987.5, 148.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-26", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-26", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [ 1088.5, 403.0, 1020.5, 403.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [ 1214.5, 403.0, 1020.5, 403.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [ 1088.5, 218.0, 1061.5, 218.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-35", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 1 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 1 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-97", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-97", 2 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [ 1166.5, 377.0, 1088.5, 377.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-97", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-97", 1 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [ 1127.5, 377.0, 1088.5, 377.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 1 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-42", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-97", 3 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 1 ],
													"destination" : [ "obj-33", 1 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-3",
									"patching_rect" : [ 26.0, 158.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontsize" : 9.0,
									"patching_rect" : [ 16.0, 136.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b dump",
									"outlettype" : [ "bang", "bang", "dump" ],
									"id" : "obj-5",
									"fontsize" : 9.0,
									"patching_rect" : [ 16.0, 74.0, 170.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p count_instances",
									"id" : "obj-6",
									"fontsize" : 9.0,
									"patching_rect" : [ 96.0, 149.0, 90.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"patcher" : 									{
										"rect" : [ 295.0, 75.0, 507.0, 514.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 295.0, 75.0, 507.0, 514.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s 1",
													"outlettype" : [ "", "int" ],
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 358.0, 192.0, 69.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"outlettype" : [ "bang" ],
													"id" : "obj-2",
													"patching_rect" : [ 341.0, 295.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"outlettype" : [ "int" ],
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 358.0, 294.0, 27.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend store",
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"fontsize" : 9.0,
													"patching_rect" : [ 186.0, 363.0, 72.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"outlettype" : [ "", "" ],
													"id" : "obj-5",
													"fontsize" : 9.0,
													"patching_rect" : [ 186.0, 341.0, 50.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s",
													"outlettype" : [ "", "" ],
													"id" : "obj-6",
													"fontsize" : 9.0,
													"patching_rect" : [ 186.0, 315.0, 86.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "maximum",
													"outlettype" : [ "int" ],
													"id" : "obj-7",
													"fontsize" : 9.0,
													"patching_rect" : [ 318.0, 317.0, 50.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_instances 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-8",
													"fontsize" : 9.0,
													"patching_rect" : [ 80.0, 398.0, 147.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.modules_instances", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend store",
													"outlettype" : [ "" ],
													"id" : "obj-9",
													"fontsize" : 9.0,
													"patching_rect" : [ 80.0, 370.0, 72.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "append 0",
													"outlettype" : [ "" ],
													"id" : "obj-10",
													"fontsize" : 9.0,
													"patching_rect" : [ 80.0, 349.0, 50.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"outlettype" : [ "", "" ],
													"id" : "obj-11",
													"fontsize" : 9.0,
													"patching_rect" : [ 80.0, 71.0, 69.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_attributes 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-12",
													"fontsize" : 9.0,
													"patching_rect" : [ 34.0, 48.0, 150.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.modules_attributes", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p 2slashs?",
													"outlettype" : [ "", "" ],
													"id" : "obj-13",
													"fontsize" : 9.0,
													"patching_rect" : [ 80.0, 116.0, 94.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"patcher" : 													{
														"rect" : [ 151.0, 59.0, 193.0, 302.0 ],
														"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
														"bglocked" : 0,
														"defrect" : [ 151.0, 59.0, 193.0, 302.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl sub 47",
																	"outlettype" : [ "", "" ],
																	"id" : "obj-1",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 99.0, 105.0, 47.0, 17.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-2",
																	"patching_rect" : [ 55.0, 212.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 2",
																	"outlettype" : [ "", "" ],
																	"id" : "obj-3",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 15.0, 188.0, 50.0, 17.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1",
																	"outlettype" : [ "int" ],
																	"id" : "obj-4",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 99.0, 157.0, 27.0, 17.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "> 1",
																	"outlettype" : [ "int" ],
																	"id" : "obj-5",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 99.0, 133.0, 27.0, 17.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t s s",
																	"outlettype" : [ "", "" ],
																	"id" : "obj-6",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 55.0, 59.0, 54.0, 17.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "atoi",
																	"outlettype" : [ "list" ],
																	"id" : "obj-7",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 99.0, 83.0, 40.0, 17.0 ],
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-8",
																	"patching_rect" : [ 15.0, 211.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"id" : "obj-9",
																	"patching_rect" : [ 55.0, 37.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-3", 1 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 1 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 1 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 136.5, 127.0, 108.5, 127.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
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
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 49",
													"outlettype" : [ "int" ],
													"id" : "obj-14",
													"fontsize" : 9.0,
													"patching_rect" : [ 358.0, 266.0, 30.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route 47",
													"outlettype" : [ "", "" ],
													"id" : "obj-15",
													"fontsize" : 9.0,
													"patching_rect" : [ 358.0, 242.0, 49.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "atoi",
													"outlettype" : [ "list" ],
													"id" : "obj-16",
													"fontsize" : 9.0,
													"patching_rect" : [ 358.0, 216.0, 40.0, 17.0 ],
													"numinlets" : 3,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"outlettype" : [ "" ],
													"id" : "obj-17",
													"fontsize" : 9.0,
													"patching_rect" : [ 80.0, 93.0, 50.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "regexp (.*)(\\\\\/.*)",
													"outlettype" : [ "", "", "", "", "" ],
													"id" : "obj-18",
													"fontsize" : 9.0,
													"patching_rect" : [ 164.0, 141.0, 98.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 5,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl ecils 1",
													"outlettype" : [ "", "" ],
													"id" : "obj-19",
													"fontsize" : 9.0,
													"patching_rect" : [ 186.0, 167.0, 182.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "dump" ],
													"id" : "obj-20",
													"patching_rect" : [ 34.0, 29.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 262.5, 391.0, 89.5, 391.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 195.5, 391.0, 89.5, 391.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 1 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-5", 1 ],
													"hidden" : 0,
													"midpoints" : [ 327.5, 337.0, 226.5, 337.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 417.5, 313.0, 327.5, 313.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 89.5, 419.0, 305.0, 419.0, 305.0, 305.0, 327.5, 305.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 1 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [ 417.5, 313.0, 358.5, 313.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jcom.analysis.done",
									"id" : "obj-7",
									"fontsize" : 9.0,
									"patching_rect" : [ 16.0, 177.0, 103.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p namespace",
									"id" : "obj-8",
									"fontsize" : 9.0,
									"patching_rect" : [ 820.0, 72.0, 66.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"patcher" : 									{
										"rect" : [ 60.0, 124.0, 607.0, 487.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 60.0, 124.0, 607.0, 487.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_instances 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 16.0, 380.0, 147.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.modules_instances", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_returns 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-2",
													"fontsize" : 9.0,
													"patching_rect" : [ 16.0, 347.0, 139.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.modules_returns", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_messages 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 18.0, 315.0, 148.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.modules_messages", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_parameters 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-4",
													"fontsize" : 9.0,
													"patching_rect" : [ 18.0, 285.0, 157.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.modules_parameters", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend store",
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"fontsize" : 9.0,
													"patching_rect" : [ 18.0, 219.0, 72.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s jcom.remote.modules.browse",
													"id" : "obj-6",
													"fontsize" : 9.0,
													"patching_rect" : [ 18.0, 80.0, 150.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r jcom.remote.modules.register",
													"outlettype" : [ "" ],
													"id" : "obj-7",
													"fontsize" : 9.0,
													"patching_rect" : [ 18.0, 197.0, 154.0, 17.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_attributes 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-8",
													"fontsize" : 9.0,
													"patching_rect" : [ 18.0, 251.0, 150.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.modules_attributes", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b clear",
													"outlettype" : [ "bang", "bang", "clear" ],
													"id" : "obj-9",
													"fontsize" : 9.0,
													"patching_rect" : [ 18.0, 55.0, 360.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "bang" ],
													"id" : "obj-10",
													"patching_rect" : [ 18.0, 30.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend store",
													"outlettype" : [ "" ],
													"id" : "obj-11",
													"fontsize" : 9.0,
													"patching_rect" : [ 193.0, 191.0, 72.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"outlettype" : [ "", "" ],
													"id" : "obj-12",
													"fontsize" : 9.0,
													"patching_rect" : [ 193.0, 167.0, 77.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.namespace 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-13",
													"fontsize" : 9.0,
													"patching_rect" : [ 193.0, 215.0, 111.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"save" : [ "#N", "coll", "jcom.namespace", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"outlettype" : [ "", "" ],
													"id" : "obj-14",
													"fontsize" : 9.0,
													"patching_rect" : [ 193.0, 131.0, 51.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r jcom.remote.namespace.register",
													"outlettype" : [ "" ],
													"id" : "obj-15",
													"fontsize" : 9.0,
													"patching_rect" : [ 193.0, 98.0, 166.0, 17.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s jcom.remote.namespace.browse",
													"id" : "obj-16",
													"fontsize" : 9.0,
													"patching_rect" : [ 193.0, 77.0, 162.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 2 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
													"midpoints" : [ 368.5, 341.0, 25.5, 341.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 2 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
													"midpoints" : [ 368.5, 373.0, 25.5, 373.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 2 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
													"midpoints" : [ 368.5, 242.0, 27.5, 242.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 2 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
													"midpoints" : [ 368.5, 275.0, 27.5, 275.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 2 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
													"midpoints" : [ 368.5, 309.0, 27.5, 309.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 1 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 2 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
													"midpoints" : [ 368.5, 211.0, 202.5, 211.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-12", 1 ],
													"hidden" : 0,
													"midpoints" : [ 202.5, 122.0, 260.5, 122.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b dump dump dump b",
									"outlettype" : [ "bang", "dump", "dump", "dump", "bang" ],
									"id" : "obj-9",
									"fontsize" : 9.0,
									"patching_rect" : [ 16.0, 48.0, 815.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 5,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p filt_returns",
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontsize" : 9.0,
									"patching_rect" : [ 703.0, 198.0, 81.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patcher" : 									{
										"rect" : [ 10.0, 59.0, 260.0, 221.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 260.0, 221.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 30.0, 116.0, 29.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.equals return",
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"fontsize" : 9.0,
													"patching_rect" : [ 76.0, 80.0, 113.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl nth 3",
													"outlettype" : [ "", "" ],
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 76.0, 58.0, 50.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-4",
													"patching_rect" : [ 30.0, 144.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"patching_rect" : [ 49.0, 28.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route symbol",
									"outlettype" : [ "", "" ],
									"id" : "obj-11",
									"fontsize" : 9.0,
									"patching_rect" : [ 665.0, 100.0, 69.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"outlettype" : [ "", "" ],
									"id" : "obj-12",
									"fontsize" : 9.0,
									"patching_rect" : [ 665.0, 330.0, 48.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b s",
									"outlettype" : [ "bang", "bang", "" ],
									"id" : "obj-13",
									"fontsize" : 9.0,
									"patching_rect" : [ 665.0, 122.0, 48.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"outlettype" : [ "", "" ],
									"id" : "obj-14",
									"fontsize" : 9.0,
									"patching_rect" : [ 665.0, 304.0, 154.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.modules_returns 1",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-15",
									"fontsize" : 9.0,
									"patching_rect" : [ 665.0, 376.0, 139.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"save" : [ "#N", "coll", "jcom.modules_returns", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend store",
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontsize" : 9.0,
									"patching_rect" : [ 665.0, 354.0, 72.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl group 255",
									"outlettype" : [ "", "" ],
									"id" : "obj-17",
									"fontsize" : 9.0,
									"patching_rect" : [ 703.0, 279.0, 67.0, 17.0 ],
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
									"id" : "obj-18",
									"fontsize" : 9.0,
									"patching_rect" : [ 703.0, 247.0, 50.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute",
									"outlettype" : [ "" ],
									"id" : "obj-19",
									"fontsize" : 9.0,
									"patching_rect" : [ 703.0, 226.0, 98.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t dump s s",
									"outlettype" : [ "dump", "", "" ],
									"id" : "obj-20",
									"fontsize" : 9.0,
									"patching_rect" : [ 703.0, 143.0, 116.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.modules_attributes 1",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-21",
									"fontsize" : 9.0,
									"patching_rect" : [ 619.0, 75.0, 150.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"save" : [ "#N", "coll", "jcom.modules_attributes", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.namespace 1",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-22",
									"fontsize" : 9.0,
									"patching_rect" : [ 703.0, 172.0, 107.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"save" : [ "#N", "coll", "jcom.namespace", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p filt_messages",
									"outlettype" : [ "" ],
									"id" : "obj-23",
									"fontsize" : 9.0,
									"patching_rect" : [ 502.0, 199.0, 81.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patcher" : 									{
										"rect" : [ 10.0, 59.0, 260.0, 221.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 260.0, 221.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 30.0, 116.0, 29.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.equals message",
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"fontsize" : 9.0,
													"patching_rect" : [ 76.0, 80.0, 113.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl nth 3",
													"outlettype" : [ "", "" ],
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 76.0, 58.0, 50.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-4",
													"patching_rect" : [ 30.0, 144.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"patching_rect" : [ 49.0, 28.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route symbol",
									"outlettype" : [ "", "" ],
									"id" : "obj-24",
									"fontsize" : 9.0,
									"patching_rect" : [ 464.0, 101.0, 69.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"outlettype" : [ "", "" ],
									"id" : "obj-25",
									"fontsize" : 9.0,
									"patching_rect" : [ 464.0, 331.0, 48.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b s",
									"outlettype" : [ "bang", "bang", "" ],
									"id" : "obj-26",
									"fontsize" : 9.0,
									"patching_rect" : [ 464.0, 123.0, 48.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"outlettype" : [ "", "" ],
									"id" : "obj-27",
									"fontsize" : 9.0,
									"patching_rect" : [ 464.0, 305.0, 154.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.modules_messages 1",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-28",
									"fontsize" : 9.0,
									"patching_rect" : [ 464.0, 377.0, 148.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"save" : [ "#N", "coll", "jcom.modules_messages", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend store",
									"outlettype" : [ "" ],
									"id" : "obj-29",
									"fontsize" : 9.0,
									"patching_rect" : [ 464.0, 355.0, 72.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl group 255",
									"outlettype" : [ "", "" ],
									"id" : "obj-30",
									"fontsize" : 9.0,
									"patching_rect" : [ 502.0, 280.0, 67.0, 17.0 ],
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
									"id" : "obj-31",
									"fontsize" : 9.0,
									"patching_rect" : [ 502.0, 248.0, 50.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute",
									"outlettype" : [ "" ],
									"id" : "obj-32",
									"fontsize" : 9.0,
									"patching_rect" : [ 502.0, 227.0, 98.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t dump s s",
									"outlettype" : [ "dump", "", "" ],
									"id" : "obj-33",
									"fontsize" : 9.0,
									"patching_rect" : [ 502.0, 144.0, 116.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.modules_attributes 1",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-34",
									"fontsize" : 9.0,
									"patching_rect" : [ 418.0, 76.0, 150.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"save" : [ "#N", "coll", "jcom.modules_attributes", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.namespace 1",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-35",
									"fontsize" : 9.0,
									"patching_rect" : [ 502.0, 171.0, 107.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"save" : [ "#N", "coll", "jcom.namespace", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p filt_params",
									"outlettype" : [ "" ],
									"id" : "obj-36",
									"fontsize" : 9.0,
									"patching_rect" : [ 301.0, 203.0, 71.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patcher" : 									{
										"rect" : [ 10.0, 59.0, 260.0, 221.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 260.0, 221.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 30.0, 116.0, 29.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.equals parameter",
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"fontsize" : 9.0,
													"patching_rect" : [ 76.0, 80.0, 113.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl nth 3",
													"outlettype" : [ "", "" ],
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 76.0, 58.0, 50.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-4",
													"patching_rect" : [ 30.0, 144.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"patching_rect" : [ 49.0, 28.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route symbol",
									"outlettype" : [ "", "" ],
									"id" : "obj-37",
									"fontsize" : 9.0,
									"patching_rect" : [ 263.0, 105.0, 69.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"outlettype" : [ "", "" ],
									"id" : "obj-38",
									"fontsize" : 9.0,
									"patching_rect" : [ 263.0, 335.0, 48.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b s",
									"outlettype" : [ "bang", "bang", "" ],
									"id" : "obj-39",
									"fontsize" : 9.0,
									"patching_rect" : [ 263.0, 127.0, 48.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"outlettype" : [ "", "" ],
									"id" : "obj-40",
									"fontsize" : 9.0,
									"patching_rect" : [ 263.0, 309.0, 154.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.modules_parameters 1",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-41",
									"fontsize" : 9.0,
									"patching_rect" : [ 263.0, 381.0, 157.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"save" : [ "#N", "coll", "jcom.modules_parameters", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend store",
									"outlettype" : [ "" ],
									"id" : "obj-42",
									"fontsize" : 9.0,
									"patching_rect" : [ 263.0, 359.0, 72.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl group 255",
									"outlettype" : [ "", "" ],
									"id" : "obj-43",
									"fontsize" : 9.0,
									"patching_rect" : [ 301.0, 284.0, 67.0, 17.0 ],
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
									"id" : "obj-44",
									"fontsize" : 9.0,
									"patching_rect" : [ 301.0, 252.0, 50.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute",
									"outlettype" : [ "" ],
									"id" : "obj-45",
									"fontsize" : 9.0,
									"patching_rect" : [ 301.0, 231.0, 98.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t dump s s",
									"outlettype" : [ "dump", "", "" ],
									"id" : "obj-46",
									"fontsize" : 9.0,
									"patching_rect" : [ 301.0, 148.0, 116.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.modules_attributes 1",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-47",
									"fontsize" : 9.0,
									"patching_rect" : [ 217.0, 80.0, 150.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"save" : [ "#N", "coll", "jcom.modules_attributes", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.namespace 1",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-48",
									"fontsize" : 9.0,
									"patching_rect" : [ 301.0, 177.0, 107.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"save" : [ "#N", "coll", "jcom.namespace", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-49",
									"patching_rect" : [ 16.0, 27.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 101.0, 94.0, 93.5, 94.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 2 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 176.5, 142.0, 105.5, 142.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 1 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 2 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 1 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [ 287.0, 276.0, 310.5, 276.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-38", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 1 ],
									"destination" : [ "obj-45", 1 ],
									"hidden" : 0,
									"midpoints" : [ 359.0, 171.0, 389.5, 171.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 2 ],
									"destination" : [ "obj-40", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 2 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 1 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 2 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 488.0, 272.0, 511.5, 272.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-32", 1 ],
									"hidden" : 0,
									"midpoints" : [ 560.0, 166.0, 590.5, 166.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 2 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 3 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 2 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 689.0, 271.0, 712.5, 271.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [ 761.0, 165.0, 791.5, 165.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 2 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 4 ],
									"destination" : [ "obj-8", 0 ],
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
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 2 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 2 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 3 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 4 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 42.5, 151.0, 392.0, 151.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 746.5, 175.0, 392.0, 175.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 442.5, 151.0, 392.0, 151.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 642.5, 175.0, 392.0, 175.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 542.5, 151.0, 392.0, 151.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 492.5, 151.0, 392.0, 151.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 4 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 589.166687, 123.0, 442.5, 123.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 4 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 589.166687, 123.0, 492.5, 123.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 2 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 4 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 589.166687, 123.0, 542.5, 123.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 3 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 5 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
