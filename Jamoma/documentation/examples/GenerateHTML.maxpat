{
	"patcher" : 	{
		"rect" : [ 195.0, 44.0, 832.0, 795.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 195.0, 44.0, 832.0, 795.0 ],
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
					"text" : "print",
					"patching_rect" : [ 164.0, 96.0, 50.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print a",
					"patching_rect" : [ 375.0, 545.0, 40.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print b",
					"patching_rect" : [ 374.0, 575.0, 40.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim",
					"patching_rect" : [ 302.0, 263.0, 27.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim",
					"patching_rect" : [ 289.0, 239.0, 27.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim",
					"patching_rect" : [ 286.0, 214.0, 27.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack s s",
					"patching_rect" : [ 78.0, 214.0, 56.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "regexp !\\\\.svn.*\/(jmod\\\\..*\\\\.mxt)",
					"patching_rect" : [ 316.0, 81.0, 182.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 1,
					"numoutlets" : 5,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"patching_rect" : [ 142.0, 67.0, 60.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"rect" : [ 50.0, 59.0, 600.0, 426.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 50.0, 59.0, 600.0, 426.0 ],
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
									"text" : "tosymbol",
									"patching_rect" : [ 50.0, 147.0, 51.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\".\/Cycling '74\/Jamoma\/Jamoma\/library\/\"",
									"patching_rect" : [ 286.0, 28.0, 210.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 284.0, 59.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"patching_rect" : [ 289.0, 126.0, 86.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "relativepath",
									"patching_rect" : [ 289.0, 106.0, 86.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog folder",
									"patching_rect" : [ 288.0, 79.0, 86.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"patching_rect" : [ 50.0, 99.0, 51.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf %s\/modules",
									"patching_rect" : [ 50.0, 126.0, 100.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"patching_rect" : [ 136.0, 170.0, 33.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend prefix",
									"patching_rect" : [ 50.0, 169.0, 82.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "absolutepath",
									"patching_rect" : [ 50.0, 70.0, 61.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "library",
									"patching_rect" : [ 50.0, 50.0, 210.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"id" : "obj-13",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 50.0, 196.0, 15.0, 15.0 ],
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-7", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel done",
					"patching_rect" : [ 112.0, 581.0, 46.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim",
					"patching_rect" : [ 143.0, 353.0, 27.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim",
					"patching_rect" : [ 283.0, 294.0, 27.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p genpath",
					"patching_rect" : [ 220.0, 440.0, 49.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"rect" : [ 117.0, 105.0, 600.0, 426.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 117.0, 105.0, 600.0, 426.0 ],
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
									"text" : "tosymbol",
									"patching_rect" : [ 90.0, 140.0, 47.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf %s\/documentation\/html\/modules\/%s.html",
									"patching_rect" : [ 90.0, 97.0, 211.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp (.*)\/library\/modules\/.*\/(.*)\\\\.mxt",
									"patching_rect" : [ 50.0, 50.0, 215.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 5,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 90.0, 164.0, 15.0, 15.0 ],
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend \/themodule\/documentation\/generate",
					"patching_rect" : [ 112.0, 489.0, 214.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl reg",
					"patching_rect" : [ 112.0, 466.0, 118.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim",
					"patching_rect" : [ 112.0, 443.0, 27.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route \/themodule\/documentation\/generate",
					"patching_rect" : [ 112.0, 561.0, 203.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.receive jcom.remote.module.from",
					"patching_rect" : [ 112.0, 541.0, 188.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.send jcom.remote.module.to",
					"patching_rect" : [ 112.0, 512.0, 161.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 267.0, 194.0, 15.0, 15.0 ],
					"id" : "obj-20",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim",
					"patching_rect" : [ 112.0, 668.0, 27.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim",
					"patching_rect" : [ 112.0, 602.0, 27.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "delay 5000",
					"patching_rect" : [ 112.0, 421.0, 68.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim",
					"patching_rect" : [ 112.0, 399.0, 27.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "b 2",
					"patching_rect" : [ 112.0, 377.0, 75.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim",
					"patching_rect" : [ 112.0, 353.0, 27.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-26",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "delay 1000",
					"patching_rect" : [ 112.0, 331.0, 68.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-27",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "script delete \/themodule",
					"patching_rect" : [ 185.0, 647.0, 127.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-28",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "b 2",
					"patching_rect" : [ 112.0, 624.0, 83.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-29",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"patching_rect" : [ 337.0, 671.0, 68.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-30",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend script new \/themodule newex 450 450 35 472055817",
					"linecount" : 2,
					"patching_rect" : [ 337.0, 346.0, 160.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-31",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "just the module file names...",
					"linecount" : 2,
					"patching_rect" : [ 6.0, 170.0, 87.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-32",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "GENERATE NEW HTML FOR ALL MODULES!",
					"linecount" : 2,
					"patching_rect" : [ 124.0, 27.0, 154.0, 35.0 ],
					"fontname" : "Verdana",
					"id" : "obj-33",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.533333
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "regexp .*\/(audio|video|control)\/(jmod\\\\..*\\\\.mxt)",
					"patching_rect" : [ 93.0, 173.0, 245.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-34",
					"numinlets" : 1,
					"numoutlets" : 5,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "resume",
					"patching_rect" : [ 112.0, 699.0, 39.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-35",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "delay 1000",
					"patching_rect" : [ 112.0, 646.0, 68.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-36",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b l",
					"patching_rect" : [ 112.0, 266.0, 27.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-37",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print MODULE",
					"patching_rect" : [ 137.0, 293.0, 68.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-38",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 1",
					"patching_rect" : [ 408.0, 280.0, 27.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-39",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t pause i",
					"patching_rect" : [ 374.0, 256.0, 44.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-40",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "pause", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "uzi",
					"patching_rect" : [ 344.0, 234.0, 40.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-41",
					"numinlets" : 2,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "bang", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "num items",
					"patching_rect" : [ 380.0, 198.0, 52.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-42",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 344.0, 197.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-43",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route populate",
					"patching_rect" : [ 344.0, 173.0, 81.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-44",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 93.0, 30.0, 29.0, 29.0 ],
					"id" : "obj-45",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "populate",
					"patching_rect" : [ 93.0, 67.0, 44.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-46",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "D. Remove the module",
					"patching_rect" : [ 563.0, 250.0, 226.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-47",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "iii. actually send the \/autodoc message with the dstpath as an argument",
					"linecount" : 2,
					"patching_rect" : [ 574.0, 216.0, 226.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-48",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ii. from that path generate a new path for where the html should go",
					"linecount" : 2,
					"patching_rect" : [ 575.0, 185.0, 226.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-49",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "i. get the path of the module",
					"patching_rect" : [ 575.0, 168.0, 226.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-50",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "C. Send it the \/autodoc message",
					"patching_rect" : [ 566.0, 148.0, 226.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-51",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "B. Initialize it",
					"patching_rect" : [ 565.0, 129.0, 226.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-52",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A. Create it",
					"patching_rect" : [ 565.0, 110.0, 226.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-53",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2. For each module...",
					"patching_rect" : [ 395.0, 236.0, 98.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-54",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"patching_rect" : [ 93.0, 144.0, 138.0, 17.0 ],
					"autopopulate" : 1,
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-55",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"items" : [ ".svn", ",", ".svn\/all-wcprops", ",", ".svn\/entries", ",", ".svn\/format", ",", ".svn\/prop-base", ",", ".svn\/props", ",", ".svn\/text-base", ",", ".svn\/tmp", ",", ".svn\/tmp\/prop-base", ",", ".svn\/tmp\/props", ",", ".svn\/tmp\/text-base", ",", "audio", ",", "audio\/.svn", ",", "audio\/.svn\/all-wcprops", ",", "audio\/.svn\/entries", ",", "audio\/.svn\/format", ",", "audio\/.svn\/prop-base", ",", "audio\/.svn\/prop-base\/jmod.crossfade~.mxt.svn-base", ",", "audio\/.svn\/prop-base\/jmod.degrade~.mxt.svn-base", ",", "audio\/.svn\/prop-base\/jmod.filter~.mxt.svn-base", ",", "audio\/.svn\/prop-base\/jmod.input~.mxt.svn-base", ",", "audio\/.svn\/prop-base\/jmod.limiter~.mxt.svn-base", ",", "audio\/.svn\/prop-base\/jmod.noisegate~.mxt.svn-base", ",", "audio\/.svn\/prop-base\/jmod.output~.mxt.svn-base", ",", "audio\/.svn\/prop-base\/jmod.saturation~.mxt.svn-base", ",", "audio\/.svn\/props", ",", "audio\/.svn\/text-base", ",", "audio\/.svn\/text-base\/jmod.crossfade~.mxt.svn-base", ",", "audio\/.svn\/text-base\/jmod.degrade~.mxt.svn-base", ",", "audio\/.svn\/text-base\/jmod.delay~.mxt.svn-base", ",", "audio\/.svn\/text-base\/jmod.echo~.mxt.svn-base", ",", "audio\/.svn\/text-base\/jmod.equalizer~.mxt.svn-base", ",", "audio\/.svn\/text-base\/jmod.filter~.mxt.svn-base", ",", "audio\/.svn\/text-base\/jmod.fluidsynth~.mxt.svn-base", ",", "audio\/.svn\/text-base\/jmod.input~.mxt.svn-base", ",", "audio\/.svn\/text-base\/jmod.limiter~.mxt.svn-base", ",", "audio\/.svn\/text-base\/jmod.multidelay~.mxt.svn-base", ",", "audio\/.svn\/text-base\/jmod.noisegate~.mxt.svn-base", ",", "audio\/.svn\/text-base\/jmod.noise~.mxt.svn-base", ",", "audio\/.svn\/text-base\/jmod.output~.mxt.svn-base", ",", "audio\/.svn\/text-base\/jmod.saturation~.mxt.svn-base", ",", "audio\/.svn\/text-base\/jmod.scope~.mxt.svn-base", ",", "audio\/.svn\/text-base\/jmod.sine~.mxt.svn-base", ",", "audio\/.svn\/text-base\/jmod.sur.ambi.adjust~.mx#112C69", ",", "audio\/.svn\/text-base\/jmod.sur.ambi.decode~.mx#112C57", ",", "audio\/.svn\/text-base\/jmod.sur.ambi.encodeM~.m#112C42", ",", "audio\/.svn\/text-base\/jmod.sur.doppler~.mxt.svn-base", ",", "audio\/.svn\/text-base\/jmod.sur.multi.in~.mxt.svn-base", ",", "audio\/.svn\/text-base\/jmod.sur.multi.out~.mxt.#112C5E", ",", "audio\/.svn\/text-base\/jmod.sur.output~.mxt.svn-base", ",", "audio\/.svn\/text-base\/jmod.sur.rolloff~.mxt.svn-base", ",", "audio\/.svn\/text-base\/jmod.sur.speaker.delay~.#112C4E", ",", "audio\/.svn\/text-base\/jmod.sur.vbap~.mxt.svn-base", ",", "audio\/.svn\/text-base\/jmod.vst~.mxt.svn-base", ",", "audio\/.svn\/tmp", ",", "audio\/.svn\/tmp\/prop-base", ",", "audio\/.svn\/tmp\/props", ",", "audio\/.svn\/tmp\/text-base", ",", "audio\/jmod.crossfade~.mxt", ",", "audio\/jmod.degrade~.mxt", ",", "audio\/jmod.delay~.mxt", ",", "audio\/jmod.echo~.mxt", ",", "audio\/jmod.equalizer~.mxt", ",", "audio\/jmod.filter~.mxt", ",", "audio\/jmod.fluidsynth~.mxt", ",", "audio\/jmod.input~.mxt", ",", "audio\/jmod.limiter~.mxt", ",", "audio\/jmod.multidelay~.mxt", ",", "audio\/jmod.noisegate~.mxt", ",", "audio\/jmod.noise~.mxt", ",", "audio\/jmod.output~.mxt", ",", "audio\/jmod.saturation~.mxt", ",", "audio\/jmod.scope~.mxt", ",", "audio\/jmod.sine~.mxt", ",", "audio\/jmod.sur.ambi.adjust~.mxt", ",", "audio\/jmod.sur.ambi.decode~.mxt", ",", "audio\/jmod.sur.ambi.encodeM~.mxt", ",", "audio\/jmod.sur.doppler~.mxt", ",", "audio\/jmod.sur.multi.in~.mxt", ",", "audio\/jmod.sur.multi.out~.mxt", ",", "audio\/jmod.sur.output~.mxt", ",", "audio\/jmod.sur.rolloff~.mxt", ",", "audio\/jmod.sur.speaker.delay~.mxt", ",", "audio\/jmod.sur.vbap~.mxt", ",", "audio\/jmod.vst~.mxt", ",", "control", ",", "control\/.svn", ",", "control\/.svn\/all-wcprops", ",", "control\/.svn\/entries", ",", "control\/.svn\/format", ",", "control\/.svn\/prop-base", ",", "control\/.svn\/prop-base\/jmod.control.mxt.svn-base", ",", "control\/.svn\/prop-base\/jmod.cuelist.mxt.svn-base", ",", "control\/.svn\/prop-base\/jmod.qmetro.mxt.svn-base", ",", "control\/.svn\/props", ",", "control\/.svn\/text-base", ",", "control\/.svn\/text-base\/jmod.bcf2000.mxt.svn-base", ",", "control\/.svn\/text-base\/jmod.colorpicker.mxt.svn-base", ",", "control\/.svn\/text-base\/jmod.cont_mapper.mxt.svn-base", ",", "control\/.svn\/text-base\/jmod.control.mxt.svn-base", ",", "control\/.svn\/text-base\/jmod.cpu_test.mxt.svn-base", ",", "control\/.svn\/text-base\/jmod.cuelist.mxt.svn-base", ",", "control\/.svn\/text-base\/jmod.file_browser.mxt.svn-base", ",", "control\/.svn\/text-base\/jmod.hi.mxt.svn-base", ",", "control\/.svn\/text-base\/jmod.mapper.mxt.svn-base", ",", "control\/.svn\/text-base\/jmod.midiin.mxt.svn-base", ",", "control\/.svn\/text-base\/jmod.mouse.gdif.mxt.svn-base", ",", "control\/.svn\/text-base\/jmod.mouse.mxt.svn-base", ",", "control\/.svn\/text-base\/jmod.oscnet.mxt.svn-base", ",", "control\/.svn\/text-base\/jmod.palette.mxt.svn-base", ",", "control\/.svn\/text-base\/jmod.phidgets.accelerome#112BD1", ",", "control\/.svn\/text-base\/jmod.phidgets.interfacek#112BFC", ",", "control\/.svn\/text-base\/jmod.phidgets.mxt.svn-base", ",", "control\/.svn\/text-base\/jmod.polhemus.mxt.svn-base", ",", "control\/.svn\/text-base\/jmod.qmetro.mxt.svn-base", ",", "control\/.svn\/text-base\/jmod.sur.speaker.setup.m#112BE8", ",", "control\/.svn\/text-base\/jmod.trig_mapper.mxt.svn-base", ",", "control\/.svn\/text-base\/jmod.wacom.mxt.svn-base", ",", "control\/.svn\/tmp", ",", "control\/.svn\/tmp\/prop-base", ",", "control\/.svn\/tmp\/props", ",", "control\/.svn\/tmp\/text-base", ",", "control\/jmod.bcf2000.mxt", ",", "control\/jmod.colorpicker.mxt", ",", "control\/jmod.cont_mapper.mxt", ",", "control\/jmod.control.mxt", ",", "control\/jmod.cpu_test.mxt", ",", "control\/jmod.cuelist.mxt", ",", "control\/jmod.file_browser.mxt", ",", "control\/jmod.hi.mxt", ",", "control\/jmod.mapper.mxt", ",", "control\/jmod.midiin.mxt", ",", "control\/jmod.mouse.gdif.mxt", ",", "control\/jmod.mouse.mxt", ",", "control\/jmod.oscnet.mxt", ",", "control\/jmod.palette.mxt", ",", "control\/jmod.phidgets.accelerometer.mxt", ",", "control\/jmod.phidgets.interfacekit.mxt", ",", "control\/jmod.phidgets.mxt", ",", "control\/jmod.polhemus.mxt", ",", "control\/jmod.qmetro.mxt", ",", "control\/jmod.sur.speaker.setup.mxt", ",", "control\/jmod.trig_mapper.mxt", ",", "control\/jmod.wacom.mxt", ",", "video", ",", "video\/.svn", ",", "video\/.svn\/all-wcprops", ",", "video\/.svn\/entries", ",", "video\/.svn\/format", ",", "video\/.svn\/prop-base", ",", "video\/.svn\/prop-base\/jmod.brcosa%.mxt.svn-base", ",", "video\/.svn\/prop-base\/jmod.chromakey%.mxt.svn-base", ",", "video\/.svn\/prop-base\/jmod.edge%.mxt.svn-base", ",", "video\/.svn\/prop-base\/jmod.mblur%.mxt.svn-base", ",", "video\/.svn\/prop-base\/jmod.motion%.mxt.svn-base", ",", "video\/.svn\/prop-base\/jmod.op%.mxt.svn-base", ",", "video\/.svn\/prop-base\/jmod.orsize%.mxt.svn-base", ",", "video\/.svn\/prop-base\/jmod.wake%.mxt.svn-base", ",", "video\/.svn\/props", ",", "video\/.svn\/text-base", ",", "video\/.svn\/text-base\/jmod.avg4%.mxt.svn-base", ",", "video\/.svn\/text-base\/jmod.blur%.mxt.svn-base", ",", "video\/.svn\/text-base\/jmod.brcosa%.mxt.svn-base", ",", "video\/.svn\/text-base\/jmod.chromakey%.mxt.svn-base", ",", "video\/.svn\/text-base\/jmod.edge%.mxt.svn-base", ",", "video\/.svn\/text-base\/jmod.emboss%.mxt.svn-base", ",", "video\/.svn\/text-base\/jmod.fluoride%.mxt.svn-base", ",", "video\/.svn\/text-base\/jmod.gl.videoplane%.mxt.#15E2E5", ",", "video\/.svn\/text-base\/jmod.input%.mxt.svn-base", ",", "video\/.svn\/text-base\/jmod.keyscreen%.mxt.svn-base", ",", "video\/.svn\/text-base\/jmod.mblur%.mxt.svn-base", ",", "video\/.svn\/text-base\/jmod.motion%.mxt.svn-base", ",", "video\/.svn\/text-base\/jmod.motiongram%.mxt.svn-base", ",", "video\/.svn\/text-base\/jmod.op%.mxt.svn-base", ",", "video\/.svn\/text-base\/jmod.orsize%.mxt.svn-base", ",", "video\/.svn\/text-base\/jmod.output%.mxt.svn-base", ",", "video\/.svn\/text-base\/jmod.plur%.mxt.svn-base", ",", "video\/.svn\/text-base\/jmod.record%.mxt.svn-base", ",", "video\/.svn\/text-base\/jmod.similarity%.mxt.svn-base", ",", "video\/.svn\/text-base\/jmod.wake%.mxt.svn-base", ",", "video\/.svn\/text-base\/jmod.xfade%.mxt.svn-base", ",", "video\/.svn\/text-base\/jmod.yfade%.mxt.svn-base", ",", "video\/.svn\/tmp", ",", "video\/.svn\/tmp\/prop-base", ",", "video\/.svn\/tmp\/props", ",", "video\/.svn\/tmp\/text-base", ",", "video\/jmod.avg4%.mxt", ",", "video\/jmod.blur%.mxt", ",", "video\/jmod.brcosa%.mxt", ",", "video\/jmod.chromakey%.mxt", ",", "video\/jmod.edge%.mxt", ",", "video\/jmod.emboss%.mxt", ",", "video\/jmod.fluoride%.mxt", ",", "video\/jmod.gl.videoplane%.mxt", ",", "video\/jmod.input%.mxt", ",", "video\/jmod.keyscreen%.mxt", ",", "video\/jmod.mblur%.mxt", ",", "video\/jmod.motion%.mxt", ",", "video\/jmod.motiongram%.mxt", ",", "video\/jmod.op%.mxt", ",", "video\/jmod.orsize%.mxt", ",", "video\/jmod.output%.mxt", ",", "video\/jmod.plur%.mxt", ",", "video\/jmod.record%.mxt", ",", "video\/jmod.similarity%.mxt", ",", "video\/jmod.wake%.mxt", ",", "video\/jmod.xfade%.mxt", ",", "video\/jmod.yfade%.mxt" ],
					"depth" : 3,
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1. Build a list of Modules in the searchpath",
					"patching_rect" : [ 232.0, 145.0, 205.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-56",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "all of this delaying and deferring is here mostly from superstition, not because of any testing or rational reason...",
					"linecount" : 7,
					"patching_rect" : [ 16.0, 339.0, 81.0, 80.0 ],
					"fontname" : "Verdana",
					"id" : "obj-57",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "when the HTML generation is done, the module sends us a message - then we can clean up and move on to the next module...",
					"linecount" : 8,
					"patching_rect" : [ 16.0, 555.0, 82.0, 91.0 ],
					"fontname" : "Verdana",
					"id" : "obj-58",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "\/themodule",
					"text" : "jmod.crossfade~.mxt",
					"patching_rect" : [ 450.0, 450.0, 255.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-59",
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 417.5, 306.0, 521.0, 306.0, 521.0, 136.0, 102.5, 136.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 1 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 162.0, 167.0, 102.5, 167.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-19", 0 ],
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
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 292.5, 241.0, 98.0, 260.0, 98.0, 689.0, 121.5, 689.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"color" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 3 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
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
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 324.0, 346.5, 324.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 2 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"color" : [ 0.4, 0.4, 0.8, 1.0 ],
					"midpoints" : [ 121.5, 727.0, 503.0, 727.0, 503.0, 228.0, 353.5, 228.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 2 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 1 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
