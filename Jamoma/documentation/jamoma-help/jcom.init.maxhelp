{
	"patcher" : 	{
		"rect" : [ 104.0, 127.0, 474.0, 401.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 104.0, 127.0, 474.0, 401.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "foo",
					"text" : "jcom.parameter foo",
					"patching_rect" : [ 201.0, 291.0, 123.0, 18.0 ],
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-1",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/preset\/store 1 default, \/preset\/write",
					"patching_rect" : [ 201.0, 251.0, 244.0, 16.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.hub jcom.init.helppatch",
					"patching_rect" : [ 201.0, 271.0, 172.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-3",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p subpatch_of_module",
					"patching_rect" : [ 45.0, 252.0, 133.0, 18.0 ],
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-4",
					"fontsize" : 9.0,
					"patcher" : 					{
						"rect" : [ 384.0, 75.0, 310.0, 161.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 384.0, 75.0, 310.0, 161.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 183.0, 84.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 183.0, 38.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.init",
									"patching_rect" : [ 183.0, 58.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 130.0, 84.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 130.0, 38.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.init",
									"patching_rect" : [ 130.0, 58.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 77.0, 84.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 77.0, 38.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.init",
									"patching_rect" : [ 77.0, 58.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 24.0, 84.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 24.0, 38.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-11",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.init",
									"patching_rect" : [ 24.0, 58.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "" ],
									"fontsize" : 9.0
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"fontface" : 0,
						"default_fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 176.0, 215.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 176.0, 169.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.init",
					"patching_rect" : [ 176.0, 189.0, 62.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 111.0, 215.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 111.0, 169.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.init",
					"patching_rect" : [ 111.0, 189.0, 62.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-10",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 47.0, 215.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.init connects to jmod.hub in order to link to all other instances of jmod.init within the same module. It also makes jmod.hub reset all parameters to the default preset.",
					"linecount" : 3,
					"patching_rect" : [ 17.0, 110.0, 307.0, 42.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-12",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "another_module",
					"text" : "p \/another_module",
					"patching_rect" : [ 126.0, 370.0, 117.0, 18.0 ],
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-13",
					"fontsize" : 9.0,
					"patcher" : 					{
						"rect" : [ 385.0, 424.0, 346.0, 184.0 ],
						"bgcolor" : [ 1.0, 0.862745, 0.862745, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 385.0, 424.0, 346.0, 184.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "foo",
									"text" : "jcom.parameter foo",
									"patching_rect" : [ 165.0, 126.0, 109.0, 18.0 ],
									"numinlets" : 0,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-1",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 255 220 220",
									"patching_rect" : [ 164.0, 87.0, 114.0, 18.0 ],
									"numinlets" : 4,
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-2",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 91.0, 83.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 91.0, 37.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.init",
									"patching_rect" : [ 91.0, 57.0, 63.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 38.0, 83.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 38.0, 37.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.init",
									"patching_rect" : [ 38.0, 57.0, 63.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.hub jcom.init.helppatch",
									"patching_rect" : [ 164.0, 57.0, 156.0, 18.0 ],
									"numinlets" : 0,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-9",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The presence of jmod.hub makes this a separate module.",
									"patching_rect" : [ 22.0, 112.0, 297.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-10",
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"fontface" : 0,
						"default_fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "one_module",
					"text" : "p \/one_module",
					"patching_rect" : [ 31.0, 370.0, 93.0, 18.0 ],
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-14",
					"fontsize" : 9.0,
					"patcher" : 					{
						"rect" : [ 384.0, 236.0, 341.0, 157.0 ],
						"bgcolor" : [ 0.862745, 0.862745, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 384.0, 236.0, 341.0, 157.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "foo",
									"text" : "jcom.parameter foo",
									"patching_rect" : [ 157.0, 121.0, 109.0, 18.0 ],
									"numinlets" : 0,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-1",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 84.0, 76.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 84.0, 30.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.init",
									"patching_rect" : [ 84.0, 50.0, 54.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 31.0, 76.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 31.0, 30.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.init",
									"patching_rect" : [ 31.0, 50.0, 54.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.hub jcom.init.helppatch",
									"patching_rect" : [ 157.0, 50.0, 156.0, 18.0 ],
									"numinlets" : 0,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-8",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The presence of jmod.hub makes this a separate module.",
									"patching_rect" : [ 15.0, 105.0, 297.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-9",
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 220 220 255",
									"patching_rect" : [ 157.0, 80.0, 114.0, 18.0 ],
									"numinlets" : 4,
									"hidden" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-10",
									"fontsize" : 9.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"fontface" : 0,
						"default_fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 47.0, 169.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-15",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.init",
					"patching_rect" : [ 47.0, 189.0, 62.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.init",
					"patching_rect" : [ 21.0, 18.0, 145.0, 28.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-17",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 15.799999
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "utility for initialization of modules",
					"patching_rect" : [ 21.0, 43.0, 208.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-18",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 16.0, 13.0, 258.0, 50.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"rounded" : 0,
					"id" : "obj-19",
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.init is a kind of loadbang local to the module. This way it is possible to initialize one module without resetting all preexisting modules.",
					"linecount" : 3,
					"patching_rect" : [ 17.0, 68.0, 289.0, 42.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-20",
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Example illustrating that jmod.init works locally on one module only:",
					"linecount" : 2,
					"patching_rect" : [ 26.0, 331.0, 281.0, 30.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-21",
					"fontsize" : 9.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0
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
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
