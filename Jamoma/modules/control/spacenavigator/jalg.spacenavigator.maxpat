{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 481.0, 127.0, 333.0, 277.0 ],
		"bglocked" : 0,
		"defrect" : [ 481.0, 127.0, 333.0, 277.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
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
					"text" : "p aka.spacenavigator",
					"numoutlets" : 8,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "", "", "", "", "", "" ],
					"id" : "obj-39",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 76.0, 108.0, 237.5, 18.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.post jmod.spacenavigator",
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 263.0, 143.0, 148.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "aka.spacenavigator, patch available at http://www.iamas.ac.jp/~aka/max/#aka_spacenavigator",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 74.0, 321.0, 273.0, 29.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "SpaceNavigator",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 177.0, 125.0, 80.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "bang" ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 177.0, 100.0, 48.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "aka.spacenavigator by Masayuki Akamatsu",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 263.0, 125.0, 202.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-5",
									"numinlets" : 1,
									"patching_rect" : [ 354.0, 207.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 17 19 18 20 22 21 14 15",
									"numoutlets" : 9,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 179.0, 320.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 0 1",
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 100.0, 113.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "poll 0",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 50.0, 125.0, 35.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "poll 10",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 101.0, 125.0, 41.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "hi",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "list", "" ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 153.0, 27.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-30",
									"numinlets" : 0,
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-31",
									"numinlets" : 1,
									"patching_rect" : [ 55.0, 282.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-32",
									"numinlets" : 1,
									"patching_rect" : [ 92.0, 282.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-33",
									"numinlets" : 1,
									"patching_rect" : [ 130.0, 282.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-34",
									"numinlets" : 1,
									"patching_rect" : [ 167.0, 282.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-35",
									"numinlets" : 1,
									"patching_rect" : [ 205.0, 282.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-36",
									"numinlets" : 1,
									"patching_rect" : [ 243.0, 282.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-37",
									"numinlets" : 1,
									"patching_rect" : [ 280.0, 282.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-38",
									"numinlets" : 1,
									"patching_rect" : [ 318.0, 282.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 8 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 186.5, 120.0, 272.5, 120.0 ]
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
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 2 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 153.5, 146.0, 59.5, 146.0 ]
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 110.5, 146.0, 59.5, 146.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 186.5, 146.0, 59.5, 146.0 ]
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
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 2 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 3 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 4 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 5 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 6 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 7 ],
									"destination" : [ "obj-38", 0 ],
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
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p motion",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-1",
					"fontname" : "Arial",
					"numinlets" : 3,
					"patching_rect" : [ 21.0, 167.0, 48.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ -6.0, 44.0, 454.0, 315.0 ],
						"bglocked" : 0,
						"defrect" : [ -6.0, 44.0, 454.0, 315.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace position @input xyz @output aed",
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 87.0, 324.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return cooked/motion/quantity @range/bounds 0. 1. @type msg_float @range/clipmode none @description \"Quantity of motion from 3D Connexion Space Navigator\"",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 55.0, 195.0, 574.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 360.",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 108.0, 139.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 0. 0.",
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "float", "float", "float" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 113.0, 76.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0. 0. 0.",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 3,
									"patching_rect" : [ 50.0, 64.0, 69.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"numinlets" : 0,
									"patching_rect" : [ 100.0, 30.0, 21.0, 21.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"numinlets" : 0,
									"patching_rect" : [ 75.0, 30.0, 21.0, 21.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 30.0, 21.0, 21.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 2 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-4", 1 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p buttons",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-2",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 231.0, 167.0, 51.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 52.0, 59.0, 798.0, 228.0 ],
						"bglocked" : 0,
						"defrect" : [ 52.0, 59.0, 798.0, 228.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return cooked/button/right @range/bounds 0 1 @type msg_int @range/clipmode both @description \"Cooked right button activity on-off (1-0)\"",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 417.0, 103.0, 333.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return raw/right_button @range/bounds 0 1 @type msg_int @range/clipmode both @description \"Raw right button activity on-off (1-0)\"",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 395.0, 60.0, 321.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return cooked/button/left @range/bounds 0 1 @type msg_int @range/clipmode both @description \"Cooked left button activity on-off (1-0)\"",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 67.0, 103.0, 327.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return raw/left_button @range/bounds 0 1 @type msg_int @range/clipmode both @description \"Raw left button activity on-off (1-0)\"",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 60.0, 315.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"numinlets" : 0,
									"patching_rect" : [ 395.0, 30.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p rotation",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-3",
					"fontname" : "Arial",
					"numinlets" : 3,
					"patching_rect" : [ 160.0, 167.0, 54.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 52.0, 59.0, 641.0, 455.0 ],
						"bglocked" : 0,
						"defrect" : [ 52.0, 59.0, 641.0, 455.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return cooked/rotation/z @range/bounds -1. 1. @type msg_float @range/clipmode none @description \"Cooked Z rotation from the 3D Connexion Space Navigator\"",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 239.0, 333.0, 363.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return raw/Rz @range/bounds -225 221 @type msg_int @range/clipmode none @description \"Raw Z rotation from the 3D Connexion Space Navigator\"",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 226.0, 288.0, 328.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return cooked/rotation/y @range/bounds -1. 1. @type msg_float @range/clipmode none @description \"Cooked Y rotation from the 3D Connexion Space Navigator\"",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 156.0, 236.0, 364.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return raw/Ry @range/bounds -294 175 @type msg_int @range/clipmode none @description \"Raw Y rotation from the 3D Connexion Space Navigator\"",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 133.0, 191.0, 329.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return cooked/rotation/x @range/bounds -1. 1. @type msg_float @range/clipmode none @description \"Cooked X rotation from the 3D Connexion Space Navigator\"",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 60.0, 139.0, 364.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return raw/Rx @range/bounds -207 208 @type msg_int @range/clipmode none @description \"Raw X rotation from the 3D Connexion Space Navigator\"",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 94.0, 329.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 255.",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 239.0, 61.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 255.",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 156.0, 61.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ -255.",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 60.0, 61.0, 45.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"numinlets" : 0,
									"patching_rect" : [ 225.0, 28.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"numinlets" : 0,
									"patching_rect" : [ 133.0, 28.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 28.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-9", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p orientation",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-4",
					"fontname" : "Arial",
					"numinlets" : 3,
					"patching_rect" : [ 76.0, 167.0, 67.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 367.0, 276.0, 685.0, 461.0 ],
						"bglocked" : 0,
						"defrect" : [ 367.0, 276.0, 685.0, 461.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return cooked/position/z @range/bounds -1. 1. @type msg_float @range/clipmode none @description \"Cooked Z position from the 3D Connexion Space Navigator\"",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 233.0, 337.0, 362.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return raw/Tz @range/bounds -243 232 @type msg_int @range/clipmode none @description \"Raw Z position from the 3D Connexion Space Navigator\"",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 212.0, 292.0, 328.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return cooked/position/y @range/bounds -1. 1. @type msg_float @range/clipmode none @description \"Cooked Y position from the 3D Connexion Space Navigator\"",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 150.0, 240.0, 363.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return raw/Ty @range/bounds -241 255 @type msg_int @range/clipmode none @description \"Raw Y position from the 3D Connexion Space Navigator\"",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 120.0, 195.0, 329.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return cooked/position/x @range/bounds -1. 1. @type msg_float @range/clipmode none @description \"Cooked X position from the 3D Connexion Space Navigator\"",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 60.0, 143.0, 363.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 255.",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 233.0, 65.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ -255.",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 150.0, 65.0, 45.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 255.",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 59.0, 65.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return raw/Tx @range/bounds -214 281 @type msg_int @range/clipmode none @description \"Raw X position from the 3D Connexion Space Navigator\"",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 98.0, 329.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"numinlets" : 0,
									"patching_rect" : [ 212.0, 28.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"numinlets" : 0,
									"patching_rect" : [ 120.0, 28.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 28.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
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
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Enable polling ...or...",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-5",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 91.0, 80.0, 101.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-7",
					"numinlets" : 1,
					"patching_rect" : [ 76.0, 79.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-8",
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 51.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /on",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 76.0, 54.0, 93.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-10",
					"numinlets" : 0,
					"patching_rect" : [ 76.0, 30.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
 ],
		"lines" : [ 			{
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
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 1 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 2 ],
					"destination" : [ "obj-1", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 1 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 2 ],
					"destination" : [ "obj-4", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 3 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 4 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 5 ],
					"destination" : [ "obj-3", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 6 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 7 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
