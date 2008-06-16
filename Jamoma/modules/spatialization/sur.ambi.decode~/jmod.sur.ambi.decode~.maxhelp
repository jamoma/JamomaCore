{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 125.0, 44.0, 1049.0, 743.0 ],
		"bglocked" : 0,
		"defrect" : [ 125.0, 44.0, 1049.0, 743.0 ],
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
					"maxclass" : "message",
					"text" : "127",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"bgcolor" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"id" : "obj-1",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 917.0, 83.0, 26.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"bgcolor" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 902.0, 83.0, 16.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/audio/gain/midi $1 ramp 2000",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"bgcolor" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"id" : "obj-3",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 902.0, 108.0, 156.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Split multicable signal",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-4",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 852.0, 612.0, 94.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~",
					"numoutlets" : 1,
					"args" : [ "/output~" ],
					"name" : "jmod.sur.output~.maxpat",
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"lockeddragscroll" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 538.0, 595.0, 300.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Correct for varying speaker distances",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-6",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 852.0, 533.0, 100.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Ambisonic decoding",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-7",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 852.0, 457.0, 100.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Ambisonic encoding",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-8",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 852.0, 372.0, 100.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Doppler effect",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-9",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 852.0, 281.0, 100.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/multi.in~",
					"numoutlets" : 2,
					"args" : [ "/multi.in~" ],
					"name" : "jmod.sur.multi.in~.maxpat",
					"outlettype" : [ "", "" ],
					"id" : "obj-10",
					"lockeddragscroll" : 1,
					"numinlets" : 33,
					"patching_rect" : [ 538.0, 172.0, 300.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "del 500",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "bang" ],
					"hidden" : 1,
					"id" : "obj-11",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 481.0, 206.0, 44.0, 17.0 ],
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.init",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-12",
					"fontname" : "Arial",
					"numinlets" : 0,
					"patching_rect" : [ 481.0, 187.0, 58.0, 17.0 ],
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/voices 1",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"bgcolor" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"hidden" : 1,
					"id" : "obj-13",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 481.0, 229.0, 54.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p ellipse",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-14",
					"fontname" : "Arial",
					"numinlets" : 0,
					"patching_rect" : [ 384.0, 23.0, 47.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 33.0, 59.0, 601.0, 531.0 ],
						"bglocked" : 0,
						"defrect" : [ 33.0, 59.0, 601.0, 531.0 ],
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
									"text" : "swap",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "int" ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 330.0, 318.0, 74.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-2",
									"numinlets" : 1,
									"patching_rect" : [ 330.0, 386.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 0",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 330.0, 345.0, 74.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0. 1.",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 64.0, 318.0, 52.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/aed 1 $2 0. $1 1",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 64.0, 348.0, 91.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.round",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 330.0, 292.0, 60.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.round",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 394.0, 292.0, 60.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 10.",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 394.0, 267.0, 42.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 10.",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 330.0, 267.0, 42.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $f1*180./3.141593",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 106.0, 295.0, 129.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-11",
									"numinlets" : 1,
									"patching_rect" : [ 64.0, 386.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "line 0. 20",
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 3,
									"patching_rect" : [ 64.0, 153.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cartopol",
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "float", "float" ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 64.0, 260.0, 52.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 10.",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 106.0, 207.0, 35.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sin",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 106.0, 180.0, 20.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* -3.",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 64.0, 207.0, 41.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cos",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "float" ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 64.0, 180.0, 23.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0, 6.283185 9000",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 64.0, 133.0, 95.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 9000",
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "bang" ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 64.0, 109.0, 64.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dspstate~",
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "float", "int", "int" ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 64.0, 85.0, 54.0, 17.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 115.5, 246.0, 403.5, 246.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 73.5, 250.0, 339.5, 250.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-11", 0 ],
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
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
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
					"maxclass" : "bpatcher",
					"varname" : "/doppler~",
					"numoutlets" : 2,
					"args" : [ "/doppler~" ],
					"name" : "jmod.sur.doppler~.maxpat",
					"outlettype" : [ "", "" ],
					"id" : "obj-15",
					"lockeddragscroll" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 538.0, 258.0, 300.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/speaker.delay~",
					"numoutlets" : 2,
					"args" : [ "/delay~" ],
					"name" : "jmod.sur.speaker.delay~.maxpat",
					"outlettype" : [ "", "" ],
					"id" : "obj-16",
					"lockeddragscroll" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 687.0, 515.0, 151.0, 71.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/voices 1",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-17",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 479.0, 330.0, 54.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Loudspeaker positions are not stored as part of this module. They will be maintained by a separate module to be added in the future.",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-18",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 9.0, 615.0, 322.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Loadspeaker Position",
					"numoutlets" : 0,
					"fontsize" : 18.0,
					"id" : "obj-19",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 6.0, 516.0, 236.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ],
					"id" : "obj-20",
					"numinlets" : 1,
					"patching_rect" : [ 2.0, 514.0, 373.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Distance",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-21",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 237.0, 549.0, 47.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Elevation",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-22",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 187.0, 549.0, 47.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Azimuth",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-23",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 137.0, 549.0, 47.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-24",
					"fontname" : "Arial",
					"minimum" : 0.0,
					"numinlets" : 1,
					"maximum" : 10.0,
					"patching_rect" : [ 240.0, 571.0, 45.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-25",
					"fontname" : "Arial",
					"minimum" : -90.0,
					"numinlets" : 1,
					"maximum" : 90.0,
					"patching_rect" : [ 189.0, 571.0, 45.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-26",
					"fontname" : "Arial",
					"minimum" : -180.0,
					"numinlets" : 1,
					"maximum" : 180.0,
					"patching_rect" : [ 138.0, 571.0, 45.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-27",
					"fontname" : "Arial",
					"minimum" : 1,
					"numinlets" : 1,
					"maximum" : 16,
					"patching_rect" : [ 87.0, 571.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak /aed i f f f",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-28",
					"fontname" : "Arial",
					"numinlets" : 5,
					"patching_rect" : [ 36.0, 592.0, 216.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/third $1",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-29",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 158.0, 487.0, 53.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-30",
					"fontname" : "Arial",
					"minimum" : 0.0,
					"numinlets" : 1,
					"maximum" : 2.0,
					"patching_rect" : [ 119.0, 487.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/second $1",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-31",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 158.0, 468.0, 61.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-32",
					"fontname" : "Arial",
					"minimum" : 0.0,
					"numinlets" : 1,
					"maximum" : 2.0,
					"patching_rect" : [ 119.0, 468.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/first $1",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-33",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 158.0, 449.0, 52.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-34",
					"fontname" : "Arial",
					"minimum" : 0.0,
					"numinlets" : 1,
					"maximum" : 2.0,
					"patching_rect" : [ 119.0, 449.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/omni $1",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-35",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 158.0, 430.0, 52.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-36",
					"fontname" : "Arial",
					"minimum" : 0.0,
					"numinlets" : 1,
					"maximum" : 2.0,
					"patching_rect" : [ 119.0, 430.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-37",
					"fontname" : "Arial",
					"minimum" : 1,
					"numinlets" : 1,
					"maximum" : 16,
					"patching_rect" : [ 11.0, 377.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "del 500",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "bang" ],
					"id" : "obj-38",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 385.0, 346.0, 44.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.init",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-39",
					"fontname" : "Arial",
					"numinlets" : 0,
					"patching_rect" : [ 385.0, 327.0, 58.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/voices 2, /aed 1 -60. 0. 2., /aed 2 60. 0. 2.",
					"linecount" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-40",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 385.0, 365.0, 128.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/decode~",
					"numoutlets" : 2,
					"args" : [ "/decode~" ],
					"name" : "jmod.sur.ambi.decode~.maxpat",
					"outlettype" : [ "", "" ],
					"id" : "obj-42",
					"lockeddragscroll" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 538.0, 431.0, 300.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/encodeM~",
					"numoutlets" : 2,
					"args" : [ "/encodeM~" ],
					"name" : "jmod.sur.ambi.encodeM~.maxpat",
					"outlettype" : [ "", "" ],
					"id" : "obj-43",
					"lockeddragscroll" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 538.0, 341.0, 300.0, 72.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.sur.ambi.decode~",
					"numoutlets" : 0,
					"fontsize" : 18.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-44",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 13.0, 13.0, 261.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.decode.cmd",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-45",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 262.0, 88.0, 94.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.decode.cmd",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-46",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 267.0, 224.0, 94.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.decode.cmd",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"hidden" : 1,
					"id" : "obj-47",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 259.0, 434.0, 94.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.decode.cmd",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-48",
					"fontname" : "Arial",
					"numinlets" : 0,
					"patching_rect" : [ 447.0, 401.0, 94.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 1,
					"args" : [  ],
					"name" : "jmod.gain_params.maxpat",
					"outlettype" : [ "" ],
					"id" : "obj-49",
					"lockeddragscroll" : 1,
					"numinlets" : 0,
					"patching_rect" : [ 4.0, 68.0, 375.0, 150.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Module Specific Attributes",
					"numoutlets" : 0,
					"fontsize" : 18.0,
					"id" : "obj-50",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 6.0, 396.0, 236.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ],
					"id" : "obj-51",
					"numinlets" : 1,
					"patching_rect" : [ 2.0, 394.0, 373.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-52",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 427.0, 505.0, 65.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/third 0.079101",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-53",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 362.0, 528.0, 170.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/control",
					"numoutlets" : 1,
					"args" : [ "/control" ],
					"name" : "jmod.control.maxpat",
					"outlettype" : [ "" ],
					"id" : "obj-55",
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 536.0, 515.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"numoutlets" : 3,
					"args" : [ "/input~" ],
					"name" : "jmod.input~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"id" : "obj-56",
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 538.0, 14.0, 302.0, 142.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/order",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-57",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 48.0, 396.0, 41.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-58",
					"fontname" : "Arial",
					"minimum" : 1,
					"numinlets" : 1,
					"maximum" : 3,
					"patching_rect" : [ 11.0, 396.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/voices",
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-59",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 48.0, 377.0, 45.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"id" : "obj-60",
					"numinlets" : 1,
					"patching_rect" : [ 2.0, 425.0, 373.0, 82.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "decode ambisonic audio signal",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-61",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 13.0, 44.0, 165.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"rounded" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"id" : "obj-62",
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 4.0, 291.0, 63.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"rounded" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"id" : "obj-63",
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 4.0, 273.0, 63.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Index",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-64",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 87.0, 549.0, 34.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"id" : "obj-65",
					"numinlets" : 1,
					"patching_rect" : [ 1.0, 545.0, 373.0, 100.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"numoutlets" : 2,
					"topvalue" : 100,
					"outlettype" : [ "int", "int" ],
					"imagemask" : 1,
					"knobpict" : "SliderDefaultKnob.pct",
					"bottommargin" : 4,
					"rightmargin" : 4,
					"leftmargin" : 4,
					"bottomvalue" : -100,
					"id" : "obj-66",
					"topmargin" : 4,
					"leftvalue" : -100,
					"numinlets" : 2,
					"bkgndpict" : "SliderDefaultBkgnd.pct",
					"rightvalue" : 100,
					"patching_rect" : [ 393.0, 55.0, 144.0, 144.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Pack signal on multicable",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-67",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 852.0, 193.0, 100.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 1,
					"args" : [  ],
					"name" : "jmod.preset_params.maxpat",
					"outlettype" : [ "" ],
					"id" : "obj-68",
					"lockeddragscroll" : 1,
					"numinlets" : 0,
					"patching_rect" : [ 5.0, 219.0, 375.0, 169.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 394.5, 512.0, 696.5, 512.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 1 ],
					"destination" : [ "obj-16", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-53", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"midpoints" : [ 926.5, 103.0, 911.5, 103.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"midpoints" : [ 911.5, 103.0, 911.5, 103.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 1 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-43", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 1 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [ 689.0, 161.0, 556.28125, 161.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [ 394.5, 396.0, 547.5, 396.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [ 456.5, 422.0, 442.0, 422.0, 442.0, 399.0, 547.5, 399.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"midpoints" : [ 490.5, 321.0, 547.5, 321.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [ 393.5, 333.0, 547.5, 333.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"midpoints" : [ 490.5, 250.0, 547.5, 250.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 393.5, 253.0, 547.5, 253.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [ 421.5, 48.0, 402.5, 48.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1,
					"midpoints" : [ 436.5, 525.0, 371.5, 525.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-28", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-28", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-28", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
