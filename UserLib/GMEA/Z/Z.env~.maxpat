{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 9.0, 65.0, 1264.0, 679.0 ],
		"bglocked" : 0,
		"defrect" : [ 9.0, 65.0, 1264.0, 679.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"maxclass" : "comment",
					"text" : "Modulation",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"patching_rect" : [ 1022.0, 404.0, 174.0, 27.0 ],
					"hidden" : 1,
					"frgb" : [ 0.776471, 0.090196, 0.0, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-1",
					"textcolor" : [ 0.776471, 0.090196, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.parameter.mxb[10]",
					"text" : "p alvt2",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 869.0, 487.0, 40.0, 17.0 ],
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-14",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 583.0, 110.0, 356.0, 617.0 ],
						"bglocked" : 0,
						"defrect" : [ 583.0, 110.0, 356.0, 617.0 ],
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
									"maxclass" : "newobj",
									"text" : "/ 2000.",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 47.0, 191.0, 50.0, 17.0 ],
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 45.0, 166.0, 50.0, 17.0 ],
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 2000.",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 147.0, 189.0, 50.0, 17.0 ],
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 2",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 147.0, 127.0, 50.0, 17.0 ],
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!-",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 67.0, 94.0, 71.0, 17.0 ],
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 45.0, 38.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"patching_rect" : [ 45.0, 63.0, 71.0, 17.0 ],
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial",
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 152.0, 507.0, 62.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "jmod.parameter.mxb[1]",
									"text" : "jcom.parameter modulation/pause_ambitus/deviation @type msg_float @range/bounds 0. 1. @range/clipmode both @description \"deviated pause time for random modulation. (fragmented mode only).\"",
									"linecount" : 9,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"patching_rect" : [ 170.0, 233.0, 120.0, 100.0 ],
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "jmod.parameter.mxb[11]",
									"text" : "jcom.parameter modulation/pause_ambitus/center @type msg_float @range/bounds 0. 1. @range/clipmode both @description \"Center pause time for random modulation. (fragmented mode only)\"",
									"linecount" : 9,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"patching_rect" : [ 43.0, 233.0, 113.0, 100.0 ],
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 2000.",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 164.0, 380.0, 50.0, 17.0 ],
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 2000.",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 78.0, 380.0, 50.0, 17.0 ],
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b i",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"patching_rect" : [ 164.0, 402.0, 50.0, 17.0 ],
									"outlettype" : [ "bang", "bang", "int" ],
									"fontname" : "Arial",
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 0",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 213.0, 454.0, 50.0, 17.0 ],
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 0",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 152.0, 454.0, 50.0, 17.0 ],
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 152.0, 537.0, 15.0, 15.0 ],
									"id" : "obj-16",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0 0",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 152.0, 480.0, 71.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-17"
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
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 2 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 87.5, 443.0, 222.5, 443.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 189.0, 436.0, 222.5, 436.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 2 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-13", 0 ],
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
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 173.5, 436.0, 161.5, 436.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 87.5, 408.0, 161.5, 408.0 ]
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
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-2", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.parameter.mxb[9]",
					"text" : "p alvt",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 776.0, 485.0, 40.0, 17.0 ],
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-15",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 253.0, 94.0, 351.0, 598.0 ],
						"bglocked" : 0,
						"defrect" : [ 253.0, 94.0, 351.0, 598.0 ],
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
									"maxclass" : "newobj",
									"text" : "/ 2000.",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 47.0, 191.0, 50.0, 17.0 ],
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 45.0, 166.0, 50.0, 17.0 ],
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 2000.",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 147.0, 189.0, 50.0, 17.0 ],
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 2",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 147.0, 127.0, 50.0, 17.0 ],
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!-",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 67.0, 94.0, 71.0, 17.0 ],
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 45.0, 38.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"patching_rect" : [ 45.0, 63.0, 71.0, 17.0 ],
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial",
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 152.0, 507.0, 62.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "jmod.parameter.mxb[1]",
									"text" : "jcom.parameter /modulation/time_ambitus/deviation @type msg_float @range/bounds 0. 1. @range/clipmode both @description \"deviated time for random modulation.\"",
									"linecount" : 9,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"patching_rect" : [ 172.0, 234.0, 105.0, 100.0 ],
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "jmod.parameter.mxb[11]",
									"text" : "jcom.parameter modulation/time_ambitus/center @type msg_float @range/bounds 0. 1. @range/clipmode both @description \"Center time for random modulation.\"",
									"linecount" : 8,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"patching_rect" : [ 42.0, 234.0, 111.0, 89.0 ],
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 2000.",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 164.0, 380.0, 50.0, 17.0 ],
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 2000.",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 78.0, 380.0, 50.0, 17.0 ],
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b i",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"patching_rect" : [ 164.0, 402.0, 50.0, 17.0 ],
									"outlettype" : [ "bang", "bang", "int" ],
									"fontname" : "Arial",
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 0",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 213.0, 454.0, 50.0, 17.0 ],
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 0",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 152.0, 454.0, 50.0, 17.0 ],
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 152.0, 537.0, 15.0, 15.0 ],
									"id" : "obj-16",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0 0",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 152.0, 480.0, 71.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-17"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 2 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 87.5, 443.0, 222.5, 443.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 189.0, 436.0, 222.5, 436.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 2 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-13", 0 ],
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
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 173.5, 436.0, 161.5, 436.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 87.5, 408.0, 161.5, 408.0 ]
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
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-2", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p set",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 678.0, 636.0, 32.0, 17.0 ],
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-4",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 592.0, 160.0, 128.0, 195.0 ],
						"bglocked" : 0,
						"defrect" : [ 592.0, 160.0, 128.0, 195.0 ],
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
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 24.0, 116.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack s 1 0.",
									"numinlets" : 3,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 24.0, 85.0, 60.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 24.0, 27.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack s 0.",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"patching_rect" : [ 24.0, 59.0, 60.0, 17.0 ],
									"outlettype" : [ "", "float" ],
									"fontname" : "Arial",
									"id" : "obj-4"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-2", 2 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.parameter.mxb[18]",
					"text" : "jcom.parameter modulation/hardness @type msg_float @range/bounds 0. 1. @range/clipmode both @description \"The hardness of the fragmentatoin slope(only in frag mode).\"",
					"linecount" : 3,
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 678.0, 592.0, 354.0, 38.0 ],
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-18",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mod_mode",
					"text" : "jcom.parameter modulation/mode @type msg_int @description \"Select dynamic modulation mode to use (fluctuant or fragmented).\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 672.0, 400.0, 326.0, 27.0 ],
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-24",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.parameter.mxb[11]",
					"text" : "p alvol",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 680.0, 482.0, 40.0, 17.0 ],
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-28",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 277.0, 80.0, 930.0, 587.0 ],
						"bglocked" : 0,
						"defrect" : [ 277.0, 80.0, 930.0, 587.0 ],
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
									"maxclass" : "newobj",
									"text" : "/ 1000.",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 47.0, 191.0, 50.0, 17.0 ],
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 45.0, 166.0, 50.0, 17.0 ],
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 1000.",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 147.0, 189.0, 50.0, 17.0 ],
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 2",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 147.0, 127.0, 50.0, 17.0 ],
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!-",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 67.0, 94.0, 71.0, 17.0 ],
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 45.0, 38.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"patching_rect" : [ 45.0, 63.0, 71.0, 17.0 ],
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial",
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 152.0, 507.0, 62.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "jmod.parameter.mxb[1]",
									"text" : "jcom.parameter /modulation/volume_ambitus/deviation @type msg_float @range/bounds 0. 1. @range/clipmode both @description \"Select min and max value of volume for random modulation.\"",
									"linecount" : 3,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"patching_rect" : [ 170.0, 233.0, 400.0, 38.0 ],
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "jmod.parameter.mxb[11]",
									"text" : "jcom.parameter modulation/volume_ambitus/center @type msg_float @range/bounds 0. 1. @range/clipmode both @description \"Center volume for random modulation.\"",
									"linecount" : 2,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"patching_rect" : [ 36.0, 298.0, 446.0, 27.0 ],
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1000.",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 164.0, 380.0, 50.0, 17.0 ],
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1000.",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 78.0, 380.0, 50.0, 17.0 ],
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b i",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"patching_rect" : [ 164.0, 402.0, 50.0, 17.0 ],
									"outlettype" : [ "bang", "bang", "int" ],
									"fontname" : "Arial",
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 0",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 213.0, 454.0, 50.0, 17.0 ],
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 0",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 152.0, 454.0, 50.0, 17.0 ],
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 152.0, 537.0, 15.0, 15.0 ],
									"id" : "obj-16",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0 0",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 152.0, 480.0, 71.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-17"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 2 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 87.5, 443.0, 222.5, 443.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 189.0, 436.0, 222.5, 436.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 2 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-13", 0 ],
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
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 173.5, 436.0, 161.5, 436.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 87.5, 408.0, 161.5, 408.0 ]
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
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-2", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "hard",
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"numinlets" : 1,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"numoutlets" : 2,
					"patching_rect" : [ 680.0, 576.0, 78.0, 8.0 ],
					"presentation" : 1,
					"setminmax" : [ 0.0, 1.0 ],
					"outlettype" : [ "", "" ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"orientation" : 0,
					"setstyle" : 1,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"contdata" : 1,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"id" : "obj-19",
					"presentation_rect" : [ 218.0, 45.945698, 78.0, 10.054302 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "hardness",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 678.0, 556.0, 58.0, 17.0 ],
					"presentation" : 1,
					"frgb" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-20",
					"textcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
					"presentation_rect" : [ 167.0, 43.0, 58.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Modulation ",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 561.0, 377.0, 84.0, 17.0 ],
					"presentation" : 1,
					"frgb" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-29",
					"textcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
					"presentation_rect" : [ 0.0, 24.0, 64.484138, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "pause time",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 866.0, 448.0, 58.0, 17.0 ],
					"presentation" : 1,
					"frgb" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-30",
					"textcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
					"presentation_rect" : [ 167.0, 24.0, 58.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "time",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 780.0, 442.0, 30.0, 17.0 ],
					"presentation" : 1,
					"frgb" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-31",
					"textcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
					"presentation_rect" : [ 64.0, 42.0, 30.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"varname" : "alvvv",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 682.0, 462.0, 78.0, 16.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "" ],
					"listmode" : 1,
					"id" : "obj-32",
					"presentation_rect" : [ 90.0, 24.0, 78.0, 16.0 ],
					"size" : 1000
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"varname" : "alvtt2",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 868.0, 468.0, 78.0, 11.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "" ],
					"listmode" : 1,
					"id" : "obj-33",
					"presentation_rect" : [ 218.0, 26.0, 78.0, 14.081452 ],
					"size" : 2000
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "alvmm",
					"prefix" : "symbol",
					"numinlets" : 1,
					"bgcolor2" : [ 0.219608, 0.231373, 0.517647, 1.0 ],
					"align" : 1,
					"fontsize" : 9.0,
					"hltcolor" : [ 0.513726, 0.54902, 0.631373, 1.0 ],
					"textcolor2" : [ 0.866667, 0.905882, 0.964706, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 674.0, 378.0, 92.0, 17.0 ],
					"presentation" : 1,
					"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
					"outlettype" : [ "int", "", "" ],
					"items" : [ "none", ",", "fluctuation", ",", "fragmentation" ],
					"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
					"framecolor" : [ 0.019608, 0.0, 0.690196, 1.0 ],
					"fontname" : "Arial",
					"types" : "fold",
					"arrow" : 0,
					"bgcolor" : [ 0.513726, 0.54902, 0.631373, 1.0 ],
					"discolor" : [ 0.286275, 0.494118, 0.733333, 1.0 ],
					"id" : "obj-34",
					"togcolor" : [ 0.831373, 0.05098, 0.031373, 1.0 ],
					"textcolor" : [ 0.866667, 0.905882, 0.964706, 1.0 ],
					"presentation_rect" : [ 2.0, 40.0, 60.0, 17.0 ],
					"arrowlink" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "volume",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 680.0, 438.0, 42.0, 17.0 ],
					"presentation" : 1,
					"frgb" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-35",
					"textcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
					"presentation_rect" : [ 56.0, 24.0, 42.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"varname" : "alvtt",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 776.0, 464.0, 78.0, 14.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "" ],
					"listmode" : 1,
					"id" : "obj-36",
					"presentation_rect" : [ 90.0, 44.0, 78.0, 14.0 ],
					"size" : 2000
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "poly~ jalg.Z.env~ 1",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"patching_rect" : [ 138.0, 310.0, 139.0, 20.0 ],
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p setmultislider",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"patching_rect" : [ 668.0, 202.0, 100.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-16",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 29.0, 67.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 29.0, 67.0, 640.0, 480.0 ],
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
									"maxclass" : "newobj",
									"text" : "prepend set",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"patching_rect" : [ 174.0, 198.0, 78.0, 20.0 ],
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl 513 slice 1",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"patching_rect" : [ 114.0, 120.0, 78.0, 20.0 ],
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"patching_rect" : [ 174.0, 146.0, 78.0, 20.0 ],
									"hidden" : 1,
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl 1024 lace",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"patching_rect" : [ 174.0, 172.0, 78.0, 20.0 ],
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl 512 group",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"patching_rect" : [ 94.0, 148.0, 78.0, 20.0 ],
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi 512",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 3,
									"patching_rect" : [ 50.0, 126.0, 63.0, 20.0 ],
									"hidden" : 1,
									"outlettype" : [ "bang", "bang", "int" ],
									"fontname" : "Arial",
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 100.0, 63.0, 20.0 ],
									"hidden" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 119.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-14",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 179.0, 278.0, 25.0, 25.0 ],
									"id" : "obj-15",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 103.5, 180.0, 171.0, 180.0, 171.0, 168.0, 183.5, 168.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 2 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
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
						"fontsize" : 12.0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 140.0, 340.0, 29.0, 29.0 ],
					"id" : "obj-13",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 264.0, 264.0, 26.0, 26.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop",
					"text" : "jcom.parameter env @type msg_list @description \"Enveloppe shape\"",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 3,
					"patching_rect" : [ 668.0, 176.0, 444.0, 20.0 ],
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-37",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"patching_rect" : [ 362.0, 280.0, 59.0, 20.0 ],
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.panelopen",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"patching_rect" : [ 362.0, 258.0, 155.0, 20.0 ],
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p panel",
					"numinlets" : 3,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 362.0, 302.0, 95.0, 20.0 ],
					"fontname" : "Arial",
					"id" : "obj-45",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 73.0, 111.0, 1200.0, 664.0 ],
						"bglocked" : 0,
						"defrect" : [ 73.0, 111.0, 1200.0, 664.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"title" : "loop editor",
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 945.0, 45.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 830.0, 43.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 91.0, 421.0, 15.0, 15.0 ],
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-69",
									"comment" : ""
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"patching_rect" : [ 130.0, 156.0, 251.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"id" : "obj-47"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"patching_rect" : [ 362.0, 236.0, 76.0, 20.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-49"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"patching_rect" : [ 138.0, 176.0, 164.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub Z.env~ @module_type audio @description \"enveloppe modulation\"",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"patching_rect" : [ 40.0, 204.0, 435.0, 20.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-51"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 38.0, 162.0, 25.0, 25.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-53",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"patching_rect" : [ 269.0, 176.0, 37.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-54"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 138.0, 264.0, 26.0, 26.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 252.0, 29.0, 29.0 ],
					"id" : "obj-58",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "env",
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"numinlets" : 1,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"bordercolor" : [ 0.831373, 0.05098, 0.031373, 1.0 ],
					"peakcolor" : [ 0.019608, 0.0, 0.690196, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"numoutlets" : 2,
					"patching_rect" : [ 668.0, 128.0, 188.0, 42.0 ],
					"presentation" : 1,
					"setminmax" : [ 0.0, 1.0 ],
					"outlettype" : [ "", "" ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"setstyle" : 1,
					"candicane2" : [ 0.286275, 0.494118, 0.733333, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"bgcolor" : [ 0.513726, 0.54902, 0.631373, 1.0 ],
					"slidercolor" : [ 0.866667, 0.905882, 0.964706, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"id" : "obj-177",
					"presentation_rect" : [ 0.0, 62.0, 299.0, 76.0 ],
					"size" : 512
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"prefix" : "audio",
					"has_bypass" : 1,
					"numinlets" : 1,
					"has_panel" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 2.0, -2.0, 300.0, 140.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-62",
					"presentation_rect" : [ 0.0, 2.0, 300.0, 140.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-44", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 687.5, 654.0, 663.0, 654.0, 663.0, 573.0, 689.5, 573.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 878.5, 506.0, 865.0, 506.0, 865.0, 464.0, 877.5, 464.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 785.5, 504.0, 772.0, 504.0, 772.0, 459.0, 785.5, 459.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 689.5, 505.0, 679.0, 505.0, 679.0, 457.0, 691.5, 457.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 278.5, 198.0, 49.5, 198.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 147.5, 197.0, 49.5, 197.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 139.5, 197.0, 49.5, 197.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-177", 0 ],
					"hidden" : 0,
					"midpoints" : [ 677.5, 227.0, 654.0, 227.0, 654.0, 126.0, 677.5, 126.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-177", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 681.5, 429.0, 657.0, 429.0, 657.0, 375.0, 683.5, 375.0 ]
				}

			}
 ]
	}

}
