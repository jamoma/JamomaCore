{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 411.0, 224.0, 889.0, 590.0 ],
		"bglocked" : 0,
		"defrect" : [ 411.0, 224.0, 889.0, 590.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "multichannel signal outlet",
					"id" : "obj-1",
					"hidden" : 1,
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 415.0, 440.0, 141.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"id" : "obj-2",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 150.0, 160.0, 213.0, 17.0 ],
					"fontsize" : 10.0,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"id" : "obj-3",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 225.0, 265.0, 49.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"id" : "obj-4",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 225.0, 290.0, 94.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"id" : "obj-5",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 225.0, 315.0, 53.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "$2",
					"id" : "obj-6",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 300.0, 340.0, 33.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route mute",
					"id" : "obj-7",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 300.0, 315.0, 65.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mute~",
					"id" : "obj-8",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 300.0, 360.0, 46.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "meter",
					"text" : "jcom.parameter meter @type msg_toggle @description \"Enable or disable monotoring of levels.\"",
					"linecount" : 2,
					"id" : "obj-9",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 467.0, 263.0, 282.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Meter",
					"id" : "obj-10",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 467.0, 235.0, 69.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"id" : "obj-11",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 165.0, 180.0, 140.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "gains",
					"text" : "p gains",
					"id" : "obj-12",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 225.0, 445.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 203.0, 50.0, 998.0, 778.0 ],
						"bglocked" : 0,
						"defrect" : [ 203.0, 50.0, 998.0, 778.0 ],
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
									"text" : "print FREEZE",
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 865.0, 715.0, 76.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.freeze_display #0_",
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 747.0, 654.0, 160.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 747.0, 700.0, 68.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim 65",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 747.0, 677.0, 49.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.",
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 16,
									"numoutlets" : 1,
									"patching_rect" : [ 747.0, 631.0, 243.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.",
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 16,
									"patching_rect" : [ 3.0, 57.0, 261.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-7",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 3.0, 23.0, 26.0, 26.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 747.0, 723.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Xenakis-patching...",
									"id" : "obj-24",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 835.0, 170.0, 111.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "r/gain",
									"text" : "jcom.parameter r/gain @type msg_float @range -24 24 @range/clipmode both @repetitions 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 256.0, 221.0, 559.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "w/gain",
									"text" : "jcom.parameter w/gain @type msg_float @range -24 24 @range/clipmode both @repetitions 1 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 256.0, 89.0, 563.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "x/gain",
									"text" : "jcom.parameter x/gain @type msg_float @range -24 24 @range/clipmode both @repetitions 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 256.0, 122.0, 561.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "y/gain",
									"text" : "jcom.parameter y/gain @type msg_float @range -24 24 @range/clipmode both @repetitions 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 256.0, 155.0, 561.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "z/gain",
									"text" : "jcom.parameter z/gain @type msg_float @range -24 24 @range/clipmode both @repetitions 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 256.0, 188.0, 560.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "s/gain",
									"text" : "jcom.parameter s/gain @type msg_float @range -24 24 @range/clipmode both @repetitions 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 256.0, 254.0, 560.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "t/gain",
									"text" : "jcom.parameter t/gain @type msg_float @range -24 24 @range/clipmode both @repetitions 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 256.0, 287.0, 559.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "u/gain",
									"text" : "jcom.parameter u/gain @type msg_float @range -24 24 @range/clipmode both @repetitions 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 256.0, 320.0, 562.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "v/gain",
									"text" : "jcom.parameter v/gain @type msg_float @range -24 24 @range/clipmode both @repetitions 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 255.0, 353.0, 561.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "k/gain",
									"text" : "jcom.parameter k/gain @type msg_float @range -24 24 @range/clipmode both @repetitions 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 255.0, 386.0, 561.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "l/gain",
									"text" : "jcom.parameter l/gain @type msg_float @range -24 24 @range/clipmode both @repetitions 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 255.0, 419.0, 558.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "m/gain",
									"text" : "jcom.parameter m/gain @type msg_float @range -24 24 @range/clipmode both @repetitions 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 255.0, 452.0, 565.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "n/gain",
									"text" : "jcom.parameter n/gain @type msg_float @range -24 24 @range/clipmode both @repetitions 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 255.0, 485.0, 562.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "o/gain",
									"text" : "jcom.parameter o/gain @type msg_float @range -24 24 @range/clipmode both @repetitions 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 255.0, 518.0, 561.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "p/gain",
									"text" : "jcom.parameter p/gain @type msg_float @range -24 24 @range/clipmode both @repetitions 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 255.0, 551.0, 561.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "q/gain",
									"text" : "jcom.parameter q/gain @type msg_float @range -24 24 @range/clipmode both @repetitions 0 @ramp/drive scheduler @description \"Adjustment of volum for Nth component of ambisonic signal.\"",
									"linecount" : 2,
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 255.0, 584.0, 561.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-5", 15 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-5", 14 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-5", 13 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-5", 12 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-5", 11 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-5", 10 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-5", 9 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-5", 8 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-5", 7 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-5", 6 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-5", 5 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-5", 4 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-5", 3 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-5", 2 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-8", 0 ],
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 7 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 6 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 5 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 4 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 3 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 2 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 15 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 14 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 13 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 12 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 11 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 10 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 9 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 8 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
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
					"text" : "pvar jsui_multigain",
					"id" : "obj-13",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 225.0, 420.0, 138.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mute",
					"text" : "jcom.parameter mute @type msg_toggle @description \"When active, this attribute turns off the module's processing algorithm to save CPU\"",
					"linecount" : 2,
					"id" : "obj-14",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 467.0, 167.0, 365.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[2]",
					"text" : "pvar Mute",
					"id" : "obj-15",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 467.0, 145.0, 63.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictctrl",
					"varname" : "Mute",
					"trackvertical" : 1,
					"snap" : 1,
					"id" : "obj-16",
					"trackhorizontal" : 1,
					"name" : "jcom.button.mute.pct",
					"mode" : 1,
					"numinlets" : 1,
					"tracking" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 238.0, 3.0, 11.0, 11.0 ],
					"multiplier" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "jsui_multigain",
					"id" : "obj-17",
					"jsarguments" : [ 16, 16, 1, 1 ],
					"numinlets" : 1,
					"filename" : "jcom.jsui_multigain.js",
					"numoutlets" : 2,
					"patching_rect" : [ 9.0, 21.0, 236.0, 80.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Order",
					"id" : "obj-19",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 467.0, 37.0, 76.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jcom.sur.ambi.adjust~ @size 2U-half @module_type audio.no_panel @description \"Adjust relative weight of components of ambisonic signal.\"",
					"linecount" : 3,
					"id" : "obj-20",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 0.0, 210.0, 290.0, 43.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"id" : "obj-21",
					"hidden" : 1,
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 160.0, 87.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-22",
					"hidden" : 1,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 0.0, 160.0, 21.0, 21.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "order",
					"text" : "jcom.parameter order @type msg_int @range 1 3 @range/clipmode both @repetitions 1 @description \"Ambisonic order. Note: Order is only updated when audio is not running.\"",
					"linecount" : 3,
					"id" : "obj-24",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 467.0, 63.0, 332.0, 43.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sur.ambi.adjust~",
					"id" : "obj-25",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 225.0, 390.0, 184.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-26",
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 300.0, 21.0, 21.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-27",
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 390.0, 440.0, 21.0, 21.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Order:",
					"id" : "obj-28",
					"fontname" : "Verdana",
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 104.0, 38.0, 17.0 ],
					"fontsize" : 9.0,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Order",
					"triangle" : 0,
					"id" : "obj-29",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"minimum" : 1,
					"numinlets" : 1,
					"maximum" : 3,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 2,
					"patching_rect" : [ 45.0, 102.0, 20.0, 17.0 ],
					"fontsize" : 9.0,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Meter",
					"id" : "obj-30",
					"fontname" : "Verdana",
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 209.0, 104.0, 40.0, 17.0 ],
					"fontsize" : 9.0,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "Meter",
					"id" : "obj-31",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 194.0, 101.0, 54.0, 18.0 ],
					"outlettype" : [ "" ],
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "multichannel signal inlet",
					"id" : "obj-32",
					"hidden" : 1,
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 415.0, 345.0, 138.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-33",
					"hidden" : 1,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 390.0, 345.0, 21.0, 21.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"id" : "obj-35",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "" ],
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [ 476.5, 297.0, 459.0, 297.0, 459.0, 230.0, 476.5, 230.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 476.5, 200.0, 461.0, 200.0, 461.0, 140.0, 476.5, 140.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 476.5, 112.0, 461.0, 112.0, 461.0, 33.0, 476.5, 33.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-25", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [ 234.5, 470.0, 219.0, 470.0, 219.0, 412.0, 234.5, 412.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [ 234.5, 408.0, 234.5, 408.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [ 355.5, 384.0, 234.5, 384.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [ 309.5, 384.0, 234.5, 384.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [ 159.5, 177.0, 123.0, 177.0, 123.0, 198.0, 9.5, 198.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [ 174.5, 198.0, 9.5, 198.0 ]
				}

			}
 ]
	}

}
