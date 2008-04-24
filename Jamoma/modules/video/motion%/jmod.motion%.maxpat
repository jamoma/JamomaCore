{
	"patcher" : 	{
		"rect" : [ 309.0, 62.0, 894.0, 582.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 309.0, 62.0, 894.0, 582.0 ],
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
					"maxclass" : "message",
					"text" : "\/preset\/store 1 default, \/preset\/write",
					"numinlets" : 2,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"patching_rect" : [ 105.0, 72.0, 191.0, 15.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"patching_rect" : [ 443.0, 101.0, 47.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"numinlets" : 1,
					"patching_rect" : [ 443.0, 77.0, 37.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "open" ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute \/open_inspector",
					"numinlets" : 1,
					"patching_rect" : [ 443.0, 53.0, 151.0, 17.0 ],
					"numoutlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p inspector",
					"numinlets" : 1,
					"patching_rect" : [ 443.0, 125.0, 60.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"patcher" : 					{
						"rect" : [ 277.0, 69.0, 432.0, 252.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 277.0, 69.0, 432.0, 252.0 ],
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
									"maxclass" : "number",
									"numinlets" : 1,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 6.0, 124.0, 35.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-1",
									"minimum" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/contraction\/window\/size $1",
									"numinlets" : 2,
									"patching_rect" : [ 44.0, 124.0, 146.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 26.0, 142.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/contraction\/window\/on $1",
									"numinlets" : 2,
									"patching_rect" : [ 44.0, 142.0, 138.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar centroid_color",
									"numinlets" : 1,
									"patching_rect" : [ 452.0, 552.0, 100.0, 17.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar contraction_max_color",
									"numinlets" : 1,
									"patching_rect" : [ 452.0, 484.0, 139.0, 17.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar contraction_color",
									"numinlets" : 1,
									"patching_rect" : [ 452.0, 417.0, 114.0, 17.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar centroid_size_on",
									"numinlets" : 1,
									"patching_rect" : [ 452.0, 352.0, 111.0, 17.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar centroid_on",
									"numinlets" : 1,
									"patching_rect" : [ 452.0, 287.0, 87.0, 17.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar contraction_max_on",
									"numinlets" : 1,
									"patching_rect" : [ 452.0, 163.0, 126.0, 17.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar contraction_on",
									"numinlets" : 1,
									"patching_rect" : [ 452.0, 96.0, 101.0, 17.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar contraction_slide",
									"numinlets" : 1,
									"patching_rect" : [ 452.0, 27.0, 112.0, 17.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "data\/smoothing",
									"text" : "jcom.parameter data\/smoothing @type msg_float @range/bounds 0. 12. @range/clipmode low @ramp/drive none @description \"Level of smoothing for the returened data\"",
									"linecount" : 2,
									"numinlets" : 1,
									"patching_rect" : [ 452.0, 635.0, 350.0, 28.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar data_smoothing",
									"numinlets" : 1,
									"patching_rect" : [ 452.0, 615.0, 104.0, 17.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "centroid\/color",
									"text" : "jcom.parameter centroid\/color @type msg_list @description \"Change color of centroid.\"",
									"linecount" : 2,
									"numinlets" : 1,
									"patching_rect" : [ 452.0, 575.0, 224.0, 28.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction\/max\/color",
									"text" : "jcom.parameter contraction\/max\/color @type msg_list @description \"Change color of max contraction box.\"",
									"linecount" : 2,
									"numinlets" : 1,
									"patching_rect" : [ 452.0, 506.0, 263.0, 28.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction\/color",
									"text" : "jcom.parameter contraction\/color @type msg_list @description \"Change color of local contraction box.\"",
									"linecount" : 2,
									"numinlets" : 1,
									"patching_rect" : [ 452.0, 438.0, 250.0, 28.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "centroid\/size\/on",
									"text" : "jcom.parameter centroid\/size\/on @type msg_toggle @description \"Turn on automatic size adjustment of centre of mass - based on quantity of motion.\"",
									"linecount" : 2,
									"numinlets" : 1,
									"patching_rect" : [ 452.0, 374.0, 352.0, 28.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "centroid\/on",
									"text" : "jcom.parameter centroid\/on @type msg_toggle @description \"Turn display of centre of mass on.\"",
									"linecount" : 2,
									"numinlets" : 1,
									"patching_rect" : [ 452.0, 308.0, 235.0, 28.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "jmod.parameter.mxt[12]",
									"text" : "jcom.message contraction\/max\/reset @description \"Reset max_contraction box.\"",
									"numinlets" : 0,
									"patching_rect" : [ 452.0, 255.0, 382.0, 17.0 ],
									"numoutlets" : 0,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction\/max\/on",
									"text" : "jcom.parameter contraction\/max\/on @type msg_toggle @description \"Turn max contraction box on or off.\"",
									"linecount" : 2,
									"numinlets" : 1,
									"patching_rect" : [ 452.0, 185.0, 262.0, 28.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction\/on",
									"text" : "jcom.parameter contraction\/on @type msg_toggle @description \"Turn local contraction box on or off.\"",
									"linecount" : 2,
									"numinlets" : 1,
									"patching_rect" : [ 452.0, 120.0, 244.0, 28.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction\/slide",
									"text" : "jcom.parameter contraction\/slide @type msg_float @range/bounds 0. 10. @range/clipmode low @description @repetitions 0 @ramp/drive none \"The level of smoothing for contraction box.\"",
									"linecount" : 2,
									"numinlets" : 1,
									"patching_rect" : [ 452.0, 50.0, 406.0, 28.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r jmod.init",
									"numinlets" : 0,
									"patching_rect" : [ 94.0, 348.0, 58.0, 17.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"numinlets" : 1,
									"patching_rect" : [ 81.0, 322.0, 40.0, 17.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "front" ],
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute \/open_inspector",
									"numinlets" : 1,
									"patching_rect" : [ 81.0, 301.0, 151.0, 17.0 ],
									"numoutlets" : 2,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 26.0, 179.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/centroid\/size\/on $1",
									"numinlets" : 2,
									"patching_rect" : [ 44.0, 179.0, 108.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 6.0, 69.0, 35.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-29",
									"minimum" : 0.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"numinlets" : 3,
									"compatibility" : 1,
									"patching_rect" : [ 237.0, 111.0, 128.0, 32.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"id" : "obj-30"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/centroid\/color $1 $2 $3",
									"numinlets" : 2,
									"patching_rect" : [ 237.0, 143.0, 127.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-31"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"numinlets" : 3,
									"compatibility" : 1,
									"patching_rect" : [ 237.0, 60.0, 128.0, 32.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"id" : "obj-32"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/contraction\/max\/color $1 $2 $3",
									"numinlets" : 2,
									"patching_rect" : [ 237.0, 92.0, 166.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-33"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"numinlets" : 3,
									"compatibility" : 1,
									"patching_rect" : [ 237.0, 9.0, 128.0, 32.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"id" : "obj-34"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/contraction\/slide $1",
									"numinlets" : 2,
									"patching_rect" : [ 44.0, 69.0, 109.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-35"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/contraction\/max\/reset",
									"numinlets" : 2,
									"patching_rect" : [ 44.0, 105.0, 122.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-36"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/contraction\/color $1 $2 $3",
									"numinlets" : 2,
									"patching_rect" : [ 237.0, 41.0, 141.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-37"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 27.0, 161.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-38"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/centroid\/on $1",
									"numinlets" : 2,
									"patching_rect" : [ 45.0, 161.0, 84.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-39"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 26.0, 87.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-40"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/contraction\/max\/on $1",
									"numinlets" : 2,
									"patching_rect" : [ 44.0, 87.0, 123.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-41"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 26.0, 51.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-42"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/contraction\/on $1",
									"numinlets" : 2,
									"patching_rect" : [ 44.0, 51.0, 98.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-43"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 7.0, 32.0, 35.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-44",
									"minimum" : 0.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/data\/smoothing $1",
									"numinlets" : 2,
									"patching_rect" : [ 45.0, 32.0, 101.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-45"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 200.0, 220.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"hidden" : 1,
									"id" : "obj-46",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Various things that might be useful",
									"numinlets" : 1,
									"patching_rect" : [ 4.0, 4.0, 252.0, 21.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.533333,
									"fontname" : "Verdana",
									"id" : "obj-47"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 81.0, 281.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-48",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "patcher more jmod.motion% features",
									"numinlets" : 2,
									"patching_rect" : [ 94.0, 370.0, 178.0, 15.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-49"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"numinlets" : 1,
									"patching_rect" : [ 94.0, 389.0, 61.0, 17.0 ],
									"numoutlets" : 2,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"id" : "obj-50",
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"background" : 1,
									"numinlets" : 1,
									"bgcolor" : [ 0.854902, 0.847059, 0.827451, 1.0 ],
									"patching_rect" : [ 0.0, 0.0, 412.0, 206.0 ],
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-51"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [ 461.5, 85.0, 447.0, 85.0, 447.0, 23.0, 461.5, 23.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [ 461.5, 156.0, 448.0, 156.0, 448.0, 93.0, 461.5, 93.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [ 461.5, 219.0, 447.0, 219.0, 447.0, 160.0, 461.5, 160.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"midpoints" : [ 461.5, 342.0, 445.0, 342.0, 445.0, 282.0, 461.5, 282.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [ 461.5, 408.0, 447.0, 408.0, 447.0, 347.0, 461.5, 347.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [ 461.5, 473.0, 446.0, 473.0, 446.0, 412.0, 461.5, 412.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [ 461.5, 542.0, 447.0, 542.0, 447.0, 482.0, 461.5, 482.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [ 461.5, 599.0, 448.0, 599.0, 448.0, 545.0, 461.5, 545.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [ 461.5, 669.0, 447.0, 669.0, 447.0, 610.0, 461.5, 610.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command output",
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 157.0, 79.0, 17.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"numinlets" : 1,
					"patching_rect" : [ 443.0, 192.0, 49.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 409.0, 9.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"numinlets" : 1,
					"patching_rect" : [ 424.0, 9.0, 67.0, 17.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"numinlets" : 1,
					"patching_rect" : [ 409.0, 28.0, 78.0, 17.0 ],
					"numoutlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "color[1]",
					"text" : "jcom.parameter color @type msg_toggle @description \"Color or greyscale\"",
					"numinlets" : 1,
					"patching_rect" : [ 457.0, 408.0, 355.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar color",
					"numinlets" : 1,
					"patching_rect" : [ 457.0, 388.0, 57.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "color",
					"numinlets" : 1,
					"patching_rect" : [ 171.0, 22.0, 18.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "color",
					"numinlets" : 1,
					"patching_rect" : [ 144.0, 24.0, 33.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-14",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"patching_rect" : [ 584.0, 101.0, 47.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"numinlets" : 1,
					"patching_rect" : [ 584.0, 77.0, 78.0, 17.0 ],
					"numoutlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "edge\/threshold",
					"text" : "jcom.parameter edge\/threshold @type msg_float @description \"Edge threshold\"",
					"numinlets" : 1,
					"patching_rect" : [ 455.0, 346.0, 371.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar edge_threshold",
					"numinlets" : 1,
					"patching_rect" : [ 455.0, 326.0, 102.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "edge_threshold",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 164.0, 40.0, 35.0, 17.0 ],
					"transparent" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-19",
					"minimum" : 0.0,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "edge_algorithm",
					"numinlets" : 1,
					"patching_rect" : [ 116.0, 40.0, 48.0, 17.0 ],
					"types" : [  ],
					"numoutlets" : 3,
					"pattrmode" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-20",
					"items" : [ "None", ",", "Sobel", ",", "Prewitt", ",", "Robcross" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "edge",
					"numinlets" : 1,
					"patching_rect" : [ 89.0, 42.0, 30.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-21",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "slide",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 52.0, 40.0, 35.0, 17.0 ],
					"transparent" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-22",
					"minimum" : 0.0,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "trails",
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 40.0, 18.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "trails",
					"numinlets" : 1,
					"patching_rect" : [ 4.0, 42.0, 35.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-24",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "edge\/algorithm",
					"text" : "jcom.parameter edge\/algorithm @type msg_symbol @description \"Edge detection\"",
					"numinlets" : 1,
					"patching_rect" : [ 454.0, 290.0, 382.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar edge_algorithm 2",
					"numinlets" : 1,
					"patching_rect" : [ 454.0, 268.0, 112.0, 17.0 ],
					"numoutlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "slide[1]",
					"text" : "jcom.parameter slide @type msg_float @description \"Level of slide for thre trails\"",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 460.0, 213.0, 28.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar slide",
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 440.0, 55.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "trails[1]",
					"text" : "jcom.parameter trails @type msg_toggle @description \"Trails - ghostlike image\"",
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 402.0, 380.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar trails",
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 382.0, 59.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "noise",
					"numinlets" : 1,
					"patching_rect" : [ 116.0, 22.0, 18.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-31",
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "noise[1]",
					"text" : "jcom.parameter noise @type msg_toggle @description \"Noise reduction\"",
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 341.0, 340.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar noise",
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 321.0, 57.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "noise",
					"numinlets" : 1,
					"patching_rect" : [ 89.0, 24.0, 33.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-34",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 443.0, 233.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"id" : "obj-35",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "threshold",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 53.0, 22.0, 35.0, 17.0 ],
					"transparent" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-36",
					"minimum" : 0.0,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "threshold",
					"numinlets" : 1,
					"patching_rect" : [ 4.0, 24.0, 52.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-37",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "documentation\/generate",
					"numinlets" : 2,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"patching_rect" : [ 122.0, 89.0, 119.0, 15.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "threshold[1]",
					"text" : "jcom.parameter threshold @type msg_float @description \"Threshold\"",
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 281.0, 352.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar threshold",
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 261.0, 76.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"numinlets" : 1,
					"patching_rect" : [ 457.0, 233.0, 77.0, 17.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-41"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.motion%.mxt",
					"numinlets" : 2,
					"patching_rect" : [ 443.0, 161.0, 90.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 84.0, 79.0, 17.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.motion% @size 1U-half @module_type video @algorithm_type jitter @description \"Motion-related analysis\" @inspector 1",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 1.0, 109.0, 358.0, 28.0 ],
					"numoutlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 1.0, 157.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"id" : "obj-45",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 1.0, 84.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-46",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "\/Jamoma",
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-47",
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [ 131.5, 106.0, 10.5, 106.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [ 114.5, 106.0, 10.5, 106.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [ 43.5, 306.0, 29.0, 306.0, 29.0, 256.0, 43.5, 256.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [ 43.5, 366.0, 29.0, 366.0, 29.0, 316.0, 43.5, 316.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [ 43.5, 427.0, 27.0, 427.0, 27.0, 375.0, 43.5, 375.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [ 43.5, 494.0, 29.0, 494.0, 29.0, 435.0, 43.5, 435.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [ 593.5, 150.0, 452.5, 150.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [ 652.5, 154.0, 452.5, 154.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [ 463.5, 312.0, 449.0, 312.0, 449.0, 265.0, 463.5, 265.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [ 464.5, 371.0, 450.0, 371.0, 450.0, 321.0, 464.5, 321.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [ 466.5, 433.0, 452.0, 433.0, 452.0, 383.0, 466.5, 383.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
