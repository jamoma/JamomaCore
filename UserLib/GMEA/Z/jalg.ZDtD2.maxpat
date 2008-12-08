{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 214.0, 102.0, 640.0, 480.0 ],
		"bglocked" : 0,
		"defrect" : [ 214.0, 102.0, 640.0, 480.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "in 4",
					"fontsize" : 9.0,
					"patching_rect" : [ 206.0, 322.0, 30.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-25",
					"outlettype" : [ "" ],
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "$1 10",
					"fontsize" : 12.0,
					"patching_rect" : [ 202.0, 370.0, 50.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 0. 127. 0. 7.94321 1.071519",
					"fontsize" : 10.0,
					"patching_rect" : [ 202.0, 346.0, 191.0, 19.0 ],
					"numinlets" : 6,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-24",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line~",
					"fontsize" : 12.0,
					"patching_rect" : [ 200.0, 398.0, 60.0, 20.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"id" : "obj-20",
					"outlettype" : [ "signal", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"fontsize" : 12.0,
					"patching_rect" : [ 182.0, 424.0, 29.0, 20.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"fontsize" : 12.0,
					"patching_rect" : [ 148.0, 424.0, 29.0, 20.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "in 3",
					"fontsize" : 9.0,
					"patching_rect" : [ 88.0, 164.0, 30.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "" ],
					"saved_object_attributes" : 					{
						"attr_comment" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "out 2",
					"fontsize" : 9.0,
					"patching_rect" : [ 318.0, 294.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-15",
					"saved_object_attributes" : 					{
						"attr_comment" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 286.0, 288.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-16",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p h:m:s:ms",
					"fontsize" : 10.0,
					"patching_rect" : [ 281.0, 254.0, 68.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-14",
					"outlettype" : [ "", "loop_flag" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 575.0, 57.0, 701.0, 519.0 ],
						"bglocked" : 0,
						"defrect" : [ 575.0, 57.0, 701.0, 519.0 ],
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
									"text" : "t loop_flag",
									"fontsize" : 10.0,
									"patching_rect" : [ 370.0, 255.0, 62.0, 19.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "loop_flag" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 370.0, 450.0, 26.0, 26.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-2",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "edge~",
									"fontsize" : 10.0,
									"patching_rect" : [ 370.0, 185.0, 41.0, 19.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-3",
									"outlettype" : [ "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change~",
									"fontsize" : 10.0,
									"patching_rect" : [ 370.0, 160.0, 53.0, 19.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change~",
									"fontsize" : 10.0,
									"patching_rect" : [ 370.0, 135.0, 53.0, 19.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 0 9",
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 320.0, 49.0, 19.0 ],
									"numinlets" : 3,
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-6",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf O%i",
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 345.0, 66.0, 19.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 370.0, 54.0, 19.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf O%i",
									"fontsize" : 10.0,
									"patching_rect" : [ 135.0, 345.0, 66.0, 19.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"fontsize" : 10.0,
									"patching_rect" : [ 135.0, 370.0, 54.0, 19.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 0 9",
									"fontsize" : 10.0,
									"patching_rect" : [ 135.0, 320.0, 49.0, 19.0 ],
									"numinlets" : 3,
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-11",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf O%i",
									"fontsize" : 10.0,
									"patching_rect" : [ 245.0, 345.0, 66.0, 19.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"fontsize" : 10.0,
									"patching_rect" : [ 245.0, 370.0, 54.0, 19.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 0 9",
									"fontsize" : 10.0,
									"patching_rect" : [ 245.0, 320.0, 49.0, 19.0 ],
									"numinlets" : 3,
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-14",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 30.0, 450.0, 26.0, 26.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-15",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf set %s:%s:%s",
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 405.0, 123.0, 19.0 ],
									"numinlets" : 3,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-16",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $f1-$i2",
									"fontsize" : 10.0,
									"patching_rect" : [ 165.0, 165.0, 71.0, 19.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-18",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 60.",
									"fontsize" : 10.0,
									"patching_rect" : [ 245.0, 195.0, 35.0, 19.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-19",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $f1-$i2",
									"fontsize" : 10.0,
									"patching_rect" : [ 45.0, 115.0, 71.0, 19.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-20",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "s",
									"fontsize" : 34.668163,
									"patching_rect" : [ 260.0, 260.0, 39.0, 49.0 ],
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 60.",
									"fontsize" : 10.0,
									"patching_rect" : [ 135.0, 140.0, 35.0, 19.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-22",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "m",
									"fontsize" : 34.668163,
									"patching_rect" : [ 146.0, 260.0, 42.0, 49.0 ],
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 3600000.",
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 90.0, 65.0, 19.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-24",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "snapshot~ 1000",
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 65.0, 91.0, 19.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-25",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 30.0, 15.0, 24.0, 24.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-26",
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "h",
									"fontsize" : 34.668163,
									"patching_rect" : [ 38.0, 260.0, 39.0, 49.0 ],
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-27"
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 39.5, 51.0, 379.5, 51.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
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
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 174.5, 183.0, 254.5, 183.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-18", 1 ],
									"hidden" : 0,
									"midpoints" : [ 144.5, 158.0, 226.5, 158.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 144.5, 158.0, 174.5, 158.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 54.5, 135.0, 144.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [ 39.5, 110.0, 106.5, 110.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 39.5, 111.0, 54.5, 111.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
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
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-16", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
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
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "out 1",
					"fontsize" : 9.0,
					"patching_rect" : [ 452.0, 214.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-13",
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "out~ 2",
					"fontsize" : 9.0,
					"patching_rect" : [ 192.0, 450.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-12",
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "out~ 1",
					"fontsize" : 9.0,
					"patching_rect" : [ 146.0, 450.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-11",
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "in 2",
					"fontsize" : 9.0,
					"patching_rect" : [ 296.0, 50.0, 30.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-10",
					"outlettype" : [ "" ],
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "in 1",
					"fontsize" : 9.0,
					"patching_rect" : [ 240.0, 118.0, 30.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line~",
					"fontsize" : 12.0,
					"patching_rect" : [ 190.0, 270.0, 60.0, 20.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"id" : "obj-8",
					"outlettype" : [ "signal", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"fontsize" : 12.0,
					"patching_rect" : [ 178.0, 300.0, 29.0, 20.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"fontsize" : 12.0,
					"patching_rect" : [ 144.0, 300.0, 29.0, 20.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend prefix",
					"fontsize" : 9.0,
					"patching_rect" : [ 128.0, 134.0, 74.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 420.0, 208.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-4",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 104.0, 442.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-2",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 70.0, 442.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-1",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontsize" : 9.0,
					"autopopulate" : 1,
					"patching_rect" : [ 220.0, 138.0, 57.0, 17.0 ],
					"items" : [  ],
					"arrow" : 0,
					"numinlets" : 1,
					"fontname" : "Arial",
					"types" : [ "AIFF", "WAVE", "Sd2f" ],
					"numoutlets" : 3,
					"id" : "obj-64",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p foldsnd",
					"fontsize" : 12.0,
					"patching_rect" : [ 220.0, 160.0, 228.0, 20.0 ],
					"numinlets" : 4,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"id" : "obj-62",
					"outlettype" : [ "int", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 690.0, 45.0, 338.0, 409.0 ],
						"bglocked" : 0,
						"defrect" : [ 690.0, 45.0, 338.0, 409.0 ],
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
									"patching_rect" : [ 264.0, 320.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-25",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 310.0, 16.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-24",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 284.0, 16.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-23",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 254.0, 16.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-20",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 202.0, 318.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-22",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"fontsize" : 9.0,
									"patching_rect" : [ 118.0, 193.0, 21.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"fontsize" : 9.0,
									"patching_rect" : [ 91.0, 193.0, 21.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"fontsize" : 9.0,
									"patching_rect" : [ 64.0, 192.0, 21.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"fontsize" : 9.0,
									"patching_rect" : [ 37.0, 192.0, 21.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"fontsize" : 9.0,
									"patching_rect" : [ 10.0, 192.0, 21.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 10 110 101 11 111",
									"fontsize" : 9.0,
									"patching_rect" : [ 10.0, 170.0, 146.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 6,
									"id" : "obj-6",
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $i1*100+$i2*10+$i3",
									"fontsize" : 9.0,
									"patching_rect" : [ 10.0, 148.0, 135.0, 17.0 ],
									"numinlets" : 3,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p state",
									"fontsize" : 9.0,
									"patching_rect" : [ 51.0, 121.0, 38.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "int" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 83.0, 588.0, 195.0, 301.0 ],
										"bglocked" : 0,
										"defrect" : [ 83.0, 588.0, 195.0, 301.0 ],
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
													"patching_rect" : [ 47.0, 217.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-1",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1",
													"fontsize" : 9.0,
													"patching_rect" : [ 94.0, 159.0, 21.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"fontsize" : 9.0,
													"patching_rect" : [ 47.0, 193.0, 104.0, 17.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b 0",
													"fontsize" : 9.0,
													"patching_rect" : [ 47.0, 70.0, 104.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 3,
													"id" : "obj-4",
													"outlettype" : [ "bang", "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 47.0, 48.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "onebang",
													"linecount" : 2,
													"fontsize" : 9.0,
													"patching_rect" : [ 94.0, 135.0, 43.0, 27.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 2,
													"id" : "obj-6",
													"outlettype" : [ "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"fontsize" : 9.0,
													"patching_rect" : [ 120.0, 111.0, 23.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 120.0, 92.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 1 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 0 ],
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
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
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
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i b i",
									"fontsize" : 9.0,
									"patching_rect" : [ 10.0, 68.0, 93.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"id" : "obj-9",
									"outlettype" : [ "int", "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 92.0, 92.0, 35.0, 27.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"id" : "obj-10",
									"outlettype" : [ "", "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"fontsize" : 9.0,
									"patching_rect" : [ 135.0, 38.0, 27.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-11",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p state",
									"fontsize" : 9.0,
									"patching_rect" : [ 135.0, 114.0, 38.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "int" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 83.0, 588.0, 195.0, 301.0 ],
										"bglocked" : 0,
										"defrect" : [ 83.0, 588.0, 195.0, 301.0 ],
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
													"patching_rect" : [ 47.0, 217.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-1",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1",
													"fontsize" : 9.0,
													"patching_rect" : [ 94.0, 159.0, 21.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"fontsize" : 9.0,
													"patching_rect" : [ 47.0, 193.0, 104.0, 17.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b 0",
													"fontsize" : 9.0,
													"patching_rect" : [ 47.0, 70.0, 104.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 3,
													"id" : "obj-4",
													"outlettype" : [ "bang", "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 47.0, 48.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "onebang",
													"linecount" : 2,
													"fontsize" : 9.0,
													"patching_rect" : [ 94.0, 135.0, 43.0, 27.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 2,
													"id" : "obj-6",
													"outlettype" : [ "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"fontsize" : 9.0,
													"patching_rect" : [ 120.0, 111.0, 23.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 120.0, 92.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 1 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 0 ],
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
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
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
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i",
									"fontsize" : 9.0,
									"patching_rect" : [ 81.0, 224.0, 18.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p rampe",
									"fontsize" : 9.0,
									"patching_rect" : [ 31.0, 251.0, 45.0, 17.0 ],
									"numinlets" : 3,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"id" : "obj-14",
									"outlettype" : [ "int", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 318.0, 79.0, 547.0, 476.0 ],
										"bglocked" : 0,
										"defrect" : [ 318.0, 79.0, 547.0, 476.0 ],
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
													"patching_rect" : [ 228.0, 424.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-33",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 374.0, 20.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-32",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 329.0, 20.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 157.0, 422.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-31",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p close",
													"fontsize" : 9.0,
													"patching_rect" : [ 268.0, 77.0, 40.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "int" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 10.0, 59.0, 128.0, 192.0 ],
														"bglocked" : 0,
														"defrect" : [ 10.0, 59.0, 128.0, 192.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 30.0, 118.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-1",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 30.0, 35.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"id" : "obj-2",
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 1",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 30.0, 96.0, 30.0, 17.0 ],
																	"numinlets" : 1,
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"id" : "obj-3",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b 0",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 30.0, 55.0, 30.0, 17.0 ],
																	"numinlets" : 1,
																	"fontname" : "Arial",
																	"numoutlets" : 2,
																	"id" : "obj-4",
																	"outlettype" : [ "bang", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "del 20",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 30.0, 76.0, 35.0, 17.0 ],
																	"numinlets" : 2,
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"id" : "obj-5",
																	"outlettype" : [ "bang" ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"globalpatchername" : "",
														"default_fontface" : 0,
														"fontname" : "Arial",
														"default_fontname" : "Arial",
														"default_fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"fontsize" : 9.0,
													"patching_rect" : [ 272.0, 335.0, 20.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "del 20",
													"fontsize" : 9.0,
													"patching_rect" : [ 272.0, 356.0, 50.0, 17.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 0",
													"fontsize" : 9.0,
													"patching_rect" : [ 269.0, 255.0, 50.0, 17.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"fontsize" : 9.0,
													"patching_rect" : [ 162.0, 390.0, 21.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 0",
													"fontsize" : 9.0,
													"patching_rect" : [ 162.0, 368.0, 50.0, 17.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_fgtfedn",
													"fontsize" : 9.0,
													"patching_rect" : [ 184.0, 332.0, 68.0, 17.0 ],
													"numinlets" : 0,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_fgtfedn",
													"fontsize" : 9.0,
													"patching_rect" : [ 116.0, 196.0, 68.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 0,
													"id" : "obj-9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0. 10",
													"fontsize" : 9.0,
													"patching_rect" : [ 231.0, 303.0, 62.0, 17.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-10",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "stat",
													"fontsize" : 9.0,
													"patching_rect" : [ 170.0, 243.0, 48.0, 17.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 0,
													"id" : "obj-11"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 0",
													"fontsize" : 9.0,
													"patching_rect" : [ 226.0, 208.0, 50.0, 17.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-12",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #1ffadv",
													"fontsize" : 9.0,
													"patching_rect" : [ 104.0, 351.0, 50.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 0,
													"id" : "obj-13"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1.",
													"fontsize" : 9.0,
													"patching_rect" : [ 226.0, 177.0, 21.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-14",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0.",
													"fontsize" : 9.0,
													"patching_rect" : [ 255.0, 177.0, 21.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-15",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "descente",
													"fontsize" : 9.0,
													"patching_rect" : [ 104.0, 243.0, 48.0, 17.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 0,
													"id" : "obj-16"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 1000.",
													"fontsize" : 9.0,
													"patching_rect" : [ 156.0, 284.0, 45.0, 17.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-17",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0. 100",
													"fontsize" : 9.0,
													"patching_rect" : [ 104.0, 305.0, 62.0, 17.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-18",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "line 0.",
													"fontsize" : 9.0,
													"patching_rect" : [ 104.0, 329.0, 75.0, 17.0 ],
													"numinlets" : 3,
													"fontname" : "Arial",
													"numoutlets" : 3,
													"id" : "obj-19",
													"outlettype" : [ "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 0",
													"fontsize" : 9.0,
													"patching_rect" : [ 94.0, 222.0, 50.0, 17.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-21",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 0",
													"fontsize" : 9.0,
													"patching_rect" : [ 34.0, 222.0, 50.0, 17.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"id" : "obj-22",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1 0 0 1",
													"fontsize" : 9.0,
													"patching_rect" : [ 138.0, 102.0, 49.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 4,
													"id" : "obj-23",
													"outlettype" : [ "int", "int", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1 0 0",
													"fontsize" : 9.0,
													"patching_rect" : [ 91.0, 102.0, 41.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 3,
													"id" : "obj-24",
													"outlettype" : [ "int", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1 0",
													"fontsize" : 9.0,
													"patching_rect" : [ 226.0, 153.0, 69.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 3,
													"id" : "obj-25",
													"outlettype" : [ "bang", "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 226.0, 133.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-26",
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0 0 1",
													"fontsize" : 9.0,
													"patching_rect" : [ 44.0, 102.0, 41.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 3,
													"id" : "obj-27",
													"outlettype" : [ "int", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1 2",
													"fontsize" : 9.0,
													"patching_rect" : [ 44.0, 80.0, 152.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 4,
													"id" : "obj-28",
													"outlettype" : [ "bang", "bang", "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "montée",
													"fontsize" : 9.0,
													"patching_rect" : [ 45.0, 242.0, 41.0, 17.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 0,
													"id" : "obj-30"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-33", 0 ],
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
													"source" : [ "obj-27", 1 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 1 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 383.5, 120.0, 198.0, 120.0, 198.0, 228.0, 153.0, 228.0, 153.0, 279.0, 165.5, 279.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [ 338.5, 63.0, 54.0, 63.0, 54.0, 75.0, 53.5, 75.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 2 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 2 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-12", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 1 ],
													"destination" : [ "obj-15", 0 ],
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 3 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 2 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 2 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [ 281.5, 387.0, 171.5, 387.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-18", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 2 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-21", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [ 240.5, 324.0, 113.5, 324.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 1 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 1 ],
													"destination" : [ "obj-21", 0 ],
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
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-22", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 1 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
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
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"fontsize" : 9.0,
									"patching_rect" : [ 81.0, 251.0, 31.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"id" : "obj-15",
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"fontsize" : 9.0,
									"patching_rect" : [ 203.0, 291.0, 24.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-16",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i i",
									"fontsize" : 9.0,
									"patching_rect" : [ 135.0, 64.0, 93.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"id" : "obj-18",
									"outlettype" : [ "bang", "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 176.0, 87.0, 35.0, 27.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"id" : "obj-19",
									"outlettype" : [ "", "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 135.0, 18.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-21",
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-14", 2 ],
									"hidden" : 0,
									"midpoints" : [ 319.0, 246.0, 66.5, 246.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [ 293.0, 246.0, 53.5, 246.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 263.0, 33.0, 19.5, 33.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 2 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 90.5, 278.0, 212.5, 278.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 185.5, 109.0, 163.5, 109.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-7", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 4 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 2 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 3 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 19.5, 217.0, 90.5, 217.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 46.5, 217.0, 90.5, 217.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 73.5, 217.0, 90.5, 217.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 100.5, 217.0, 90.5, 217.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 127.5, 217.0, 90.5, 217.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [ 101.5, 115.0, 79.5, 115.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [ 60.5, 143.0, 77.5, 143.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 2 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 90.5, 242.0, 40.5, 242.0 ]
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-22", 0 ],
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
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /play /rampmode /ramptime /pitch /loopmode",
					"fontsize" : 12.0,
					"patching_rect" : [ 304.0, 126.0, 328.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 6,
					"id" : "obj-58",
					"outlettype" : [ "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /mainfolder /selectedfile /sf",
					"fontsize" : 12.0,
					"patching_rect" : [ 128.0, 94.0, 283.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 4,
					"id" : "obj-56",
					"outlettype" : [ "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend speed",
					"fontsize" : 9.0,
					"patching_rect" : [ 485.0, 164.0, 72.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-36",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend loop",
					"fontsize" : 9.0,
					"patching_rect" : [ 566.0, 164.0, 62.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-46",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfplay~ 2 60480 1",
					"fontsize" : 9.0,
					"patching_rect" : [ 128.0, 198.0, 108.0, 17.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 4,
					"id" : "obj-48",
					"outlettype" : [ "signal", "signal", "signal", "bang" ],
					"save" : [ "#N", "sfplay~", "", 2, 60480, 1, "", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p preload",
					"fontsize" : 12.0,
					"patching_rect" : [ 128.0, 162.0, 80.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 4.0, 46.0, 332.0, 386.0 ],
						"bglocked" : 0,
						"defrect" : [ 4.0, 46.0, 332.0, 386.0 ],
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
									"patching_rect" : [ 33.0, 317.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend preload",
									"fontsize" : 9.0,
									"patching_rect" : [ 33.0, 288.0, 80.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 2 bla",
									"fontsize" : 9.0,
									"patching_rect" : [ 33.0, 266.0, 71.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"fontsize" : 9.0,
									"patching_rect" : [ 65.0, 215.0, 27.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"fontsize" : 9.0,
									"patching_rect" : [ 33.0, 239.0, 42.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend open",
									"fontsize" : 9.0,
									"patching_rect" : [ 185.0, 232.0, 65.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"fontsize" : 9.0,
									"patching_rect" : [ 106.0, 211.0, 89.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"id" : "obj-8",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i 1 b 2",
									"fontsize" : 9.0,
									"patching_rect" : [ 121.0, 132.0, 163.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 4,
									"id" : "obj-9",
									"outlettype" : [ "int", "int", "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route count",
									"fontsize" : 9.0,
									"patching_rect" : [ 121.0, 113.0, 60.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"id" : "obj-10",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 1",
									"fontsize" : 9.0,
									"patching_rect" : [ 121.0, 152.0, 27.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-11",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "Uzi",
									"fontsize" : 9.0,
									"patching_rect" : [ 121.0, 173.0, 40.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"id" : "obj-12",
									"outlettype" : [ "bang", "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t count s",
									"fontsize" : 9.0,
									"patching_rect" : [ 65.0, 69.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"id" : "obj-13",
									"outlettype" : [ "count", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"fontsize" : 9.0,
									"prefix" : "Cervo:/Users/pascalbaltazar/Music/nanakitsch/soma_sema/sfplay/",
									"autopopulate" : 1,
									"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
									"patching_rect" : [ 67.0, 91.0, 66.0, 17.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
									"framecolor" : [ 0.5, 0.5, 0.5, 1.0 ],
									"items" : [ "Bass_Megane.aif", ",", "craqtsGorla", ",", "fin_clochettes", ",", "pas_Chloé" ],
									"arrow" : 0,
									"numinlets" : 1,
									"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
									"fontname" : "Arial",
									"types" : [ "AIFF", "WAVE", "Sd2f" ],
									"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
									"numoutlets" : 3,
									"arrowlink" : 1,
									"id" : "obj-14",
									"outlettype" : [ "int", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 64.0, 36.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [ 100.0, 198.0, 185.5, 198.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 2 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 3 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 274.5, 200.0, 115.5, 200.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 178.5, 201.0, 115.5, 201.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 2 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 226.5, 192.0, 63.0, 192.0, 63.0, 87.0, 76.5, 87.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 2 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 151.5, 192.0, 63.0, 192.0, 63.0, 87.0, 76.5, 87.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 194.5, 311.0, 42.0, 311.0 ]
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-13", 0 ],
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
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 326.0, 46.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-66",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 206.0, 118.0, 20.0, 20.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-67",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-48", 0 ],
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
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 2 ],
					"destination" : [ "obj-62", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 1 ],
					"destination" : [ "obj-62", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 2 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-62", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 3 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 4 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [ 494.5, 191.0, 137.5, 191.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [ 575.5, 188.0, 137.5, 188.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [ 335.5, 88.0, 137.5, 88.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [ 249.5, 135.0, 229.5, 135.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [ 305.5, 87.0, 137.5, 87.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 2 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 196.833328, 240.0, 290.5, 240.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
