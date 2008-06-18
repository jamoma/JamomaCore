{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 92.0, 213.0, 1216.0, 745.0 ],
		"bglocked" : 0,
		"defrect" : [ 92.0, 213.0, 1216.0, 745.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
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
					"text" : "/preset/store 1 default, /preset/write",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"fontsize" : 9.0,
					"patching_rect" : [ 106.0, 70.0, 191.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontsize" : 9.0,
					"patching_rect" : [ 443.0, 101.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"fontname" : "Arial",
					"outlettype" : [ "open" ],
					"id" : "obj-3",
					"fontsize" : 9.0,
					"patching_rect" : [ 443.0, 77.0, 37.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /open_inspector",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"id" : "obj-4",
					"fontsize" : 9.0,
					"patching_rect" : [ 443.0, 53.0, 151.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p inspector",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"fontsize" : 9.0,
					"patching_rect" : [ 443.0, 125.0, 60.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 277.0, 69.0, 432.0, 252.0 ],
						"bglocked" : 0,
						"defrect" : [ 277.0, 69.0, 432.0, 252.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
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
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-1",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triscale" : 0.9,
									"fontsize" : 9.0,
									"patching_rect" : [ 6.0, 124.0, 35.0, 17.0 ],
									"numinlets" : 1,
									"minimum" : 0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/contraction/window/size $1",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontsize" : 9.0,
									"patching_rect" : [ 44.0, 124.0, 146.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"id" : "obj-3",
									"patching_rect" : [ 26.0, 142.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/contraction/window/on $1",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontsize" : 9.0,
									"patching_rect" : [ 44.0, 142.0, 138.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar centroid_color",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 452.0, 552.0, 100.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar contraction_max_color",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 452.0, 484.0, 139.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar contraction_color",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 452.0, 417.0, 114.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar centroid_size_on",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 452.0, 352.0, 111.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar centroid_on",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 452.0, 287.0, 87.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar contraction_max_on",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 452.0, 163.0, 126.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar contraction_on",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 452.0, 96.0, 101.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar contraction_slide",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 452.0, 27.0, 112.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "data/smoothing",
									"text" : "jcom.parameter data/smoothing @type msg_float @range 0. 12. @range/clipmode low @description \"Level of smoothing for the returened data\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-13",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 452.0, 635.0, 350.0, 27.0 ],
									"numinlets" : 1,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar data_smoothing",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-14",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 452.0, 615.0, 104.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "centroid/color",
									"text" : "jcom.parameter centroid/color @type msg_list @description \"Change color of centroid.\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-15",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 452.0, 575.0, 224.0, 27.0 ],
									"numinlets" : 1,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction/max/color",
									"text" : "jcom.parameter contraction/max/color @type msg_list @description \"Change color of max contraction box.\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-16",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 452.0, 506.0, 263.0, 27.0 ],
									"numinlets" : 1,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction/color",
									"text" : "jcom.parameter contraction/color @type msg_list @description \"Change color of local contraction box.\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-17",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 452.0, 438.0, 250.0, 27.0 ],
									"numinlets" : 1,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "centroid/size/on",
									"text" : "jcom.parameter centroid/size/on @type msg_toggle @description \"Turn on automatic size adjustment of centre of mass - based on quantity of motion.\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-18",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 452.0, 374.0, 352.0, 27.0 ],
									"numinlets" : 1,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "centroid/on",
									"text" : "jcom.parameter centroid/on @type msg_toggle @description \"Turn display of centre of mass on.\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-19",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 452.0, 308.0, 235.0, 27.0 ],
									"numinlets" : 1,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "jmod.parameter[12]",
									"text" : "jcom.message contraction/max/reset @description \"Reset max_contraction box.\"",
									"fontname" : "Arial",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-20",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 452.0, 255.0, 382.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction/max/on",
									"text" : "jcom.parameter contraction/max/on @type msg_toggle @description \"Turn max contraction box on or off.\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-21",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 452.0, 185.0, 262.0, 27.0 ],
									"numinlets" : 1,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction/on",
									"text" : "jcom.parameter contraction/on @type msg_toggle @description \"Turn local contraction box on or off.\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-22",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 452.0, 120.0, 244.0, 27.0 ],
									"numinlets" : 1,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "contraction/slide",
									"text" : "jcom.parameter contraction/slide @type msg_float @range 0. 10. @range/clipmode low @description @repetitions/allow 0 \"The level of smoothing for contraction box.\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-23",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 452.0, 50.0, 406.0, 27.0 ],
									"numinlets" : 1,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r jmod.init",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-24",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 94.0, 348.0, 58.0, 17.0 ],
									"numinlets" : 0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontname" : "Arial",
									"outlettype" : [ "front" ],
									"id" : "obj-25",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 81.0, 322.0, 40.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /open_inspector",
									"fontname" : "Arial",
									"outlettype" : [ "", "" ],
									"id" : "obj-26",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 81.0, 301.0, 151.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"id" : "obj-27",
									"patching_rect" : [ 26.0, 179.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/centroid/size/on $1",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-28",
									"fontsize" : 9.0,
									"patching_rect" : [ 44.0, 179.0, 108.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-29",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triscale" : 0.9,
									"fontsize" : 9.0,
									"patching_rect" : [ 6.0, 69.0, 35.0, 17.0 ],
									"numinlets" : 1,
									"minimum" : 0.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"outlettype" : [ "", "float" ],
									"id" : "obj-30",
									"compatibility" : 1,
									"patching_rect" : [ 237.0, 111.0, 128.0, 32.0 ],
									"numinlets" : 3,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/centroid/color $1 $2 $3",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-31",
									"fontsize" : 9.0,
									"patching_rect" : [ 237.0, 143.0, 127.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"outlettype" : [ "", "float" ],
									"id" : "obj-32",
									"compatibility" : 1,
									"patching_rect" : [ 237.0, 60.0, 128.0, 32.0 ],
									"numinlets" : 3,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/contraction/max/color $1 $2 $3",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-33",
									"fontsize" : 9.0,
									"patching_rect" : [ 237.0, 92.0, 166.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"outlettype" : [ "", "float" ],
									"id" : "obj-34",
									"compatibility" : 1,
									"patching_rect" : [ 237.0, 9.0, 128.0, 32.0 ],
									"numinlets" : 3,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/contraction/slide $1",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-35",
									"fontsize" : 9.0,
									"patching_rect" : [ 44.0, 69.0, 109.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/contraction/max/reset",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-36",
									"fontsize" : 9.0,
									"patching_rect" : [ 44.0, 105.0, 122.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/contraction/color $1 $2 $3",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-37",
									"fontsize" : 9.0,
									"patching_rect" : [ 237.0, 41.0, 141.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"id" : "obj-38",
									"patching_rect" : [ 27.0, 161.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/centroid/on $1",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-39",
									"fontsize" : 9.0,
									"patching_rect" : [ 45.0, 161.0, 84.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"id" : "obj-40",
									"patching_rect" : [ 26.0, 87.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/contraction/max/on $1",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-41",
									"fontsize" : 9.0,
									"patching_rect" : [ 44.0, 87.0, 123.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"id" : "obj-42",
									"patching_rect" : [ 26.0, 51.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/contraction/on $1",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-43",
									"fontsize" : 9.0,
									"patching_rect" : [ 44.0, 51.0, 98.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-44",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triscale" : 0.9,
									"fontsize" : 9.0,
									"patching_rect" : [ 7.0, 32.0, 35.0, 17.0 ],
									"numinlets" : 1,
									"minimum" : 0.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/data/smoothing $1",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-45",
									"fontsize" : 9.0,
									"patching_rect" : [ 45.0, 32.0, 101.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-46",
									"hidden" : 1,
									"patching_rect" : [ 200.0, 220.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Various things that might be useful",
									"fontname" : "Arial",
									"id" : "obj-47",
									"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 4.0, 4.0, 252.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-48",
									"hidden" : 1,
									"patching_rect" : [ 81.0, 281.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "patcher more jmod.motion% features",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"id" : "obj-49",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 94.0, 370.0, 178.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Arial",
									"outlettype" : [ "", "" ],
									"id" : "obj-50",
									"hidden" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 94.0, 389.0, 61.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"background" : 1,
									"bgcolor" : [ 0.854902, 0.847059, 0.827451, 1.0 ],
									"rounded" : 0,
									"id" : "obj-51",
									"patching_rect" : [ 0.0, 0.0, 412.0, 206.0 ],
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"hidden" : 1,
									"midpoints" : [  ]
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
									"hidden" : 1,
									"midpoints" : [  ]
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
									"hidden" : 1,
									"midpoints" : [  ]
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
									"hidden" : 1,
									"midpoints" : [  ]
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
									"hidden" : 1,
									"midpoints" : [  ]
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
									"hidden" : 1,
									"midpoints" : [  ]
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
									"hidden" : 1,
									"midpoints" : [  ]
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
									"hidden" : 1,
									"midpoints" : [  ]
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
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command output",
					"fontname" : "Arial",
					"id" : "obj-6",
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 19.0, 157.0, 79.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"id" : "obj-7",
					"fontsize" : 9.0,
					"patching_rect" : [ 443.0, 192.0, 49.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"patching_rect" : [ 409.0, 9.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"fontname" : "Arial",
					"id" : "obj-9",
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 424.0, 9.0, 66.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-10",
					"fontsize" : 9.0,
					"patching_rect" : [ 409.0, 28.0, 78.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "color[1]",
					"text" : "jcom.parameter color @type msg_toggle @description \"Color or greyscale\"",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-11",
					"fontsize" : 9.0,
					"patching_rect" : [ 457.0, 408.0, 355.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "color",
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"presentation_rect" : [ 216.181885, 22.545475, 18.0, 18.0 ],
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"patching_rect" : [ 458.457886, 386.731506, 18.0, 18.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
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
					"fontname" : "Verdana",
					"id" : "obj-14",
					"presentation_rect" : [ 184.545471, 23.545475, 41.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 144.0, 24.0, 41.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"fontsize" : 9.0,
					"patching_rect" : [ 584.0, 101.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"id" : "obj-16",
					"fontsize" : 9.0,
					"patching_rect" : [ 584.0, 77.0, 78.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "edge/threshold",
					"text" : "jcom.parameter edge/threshold @type msg_float @description \"Edge threshold\"",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-17",
					"fontsize" : 9.0,
					"patching_rect" : [ 455.0, 346.0, 371.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "edge_threshold",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-19",
					"presentation_rect" : [ 189.909256, 45.409161, 43.0, 19.0 ],
					"triscale" : 0.9,
					"triangle" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 455.321564, 325.139679, 43.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"minimum" : 0.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "edge_algorithm",
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"pattrmode" : 1,
					"id" : "obj-20",
					"presentation_rect" : [ 133.090958, 45.409161, 55.727364, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 453.68573, 269.502655, 48.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 3,
					"items" : [ "None", ",", "Sobel", ",", "Prewitt", ",", "Robcross" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "edge",
					"fontname" : "Verdana",
					"id" : "obj-21",
					"presentation_rect" : [ 101.545471, 46.545467, 37.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 89.0, 42.0, 37.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "slide",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-22",
					"presentation_rect" : [ 57.181892, 44.636425, 43.0, 19.0 ],
					"triscale" : 0.9,
					"triangle" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 34.227066, 439.504639, 41.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"minimum" : 0.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "trails",
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"presentation_rect" : [ 37.954628, 45.636425, 18.0, 18.0 ],
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"patching_rect" : [ 34.0, 380.776672, 18.0, 18.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
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
					"fontname" : "Verdana",
					"id" : "obj-24",
					"presentation_rect" : [ 8.545472, 46.545467, 33.759708, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 4.0, 42.0, 43.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "edge/algorithm",
					"text" : "jcom.parameter edge/algorithm @type msg_symbol @description \"Edge detection\"",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-25",
					"fontsize" : 9.0,
					"patching_rect" : [ 454.0, 290.0, 382.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "slide[1]",
					"text" : "jcom.parameter slide @type msg_float @description \"Level of slide for thre trails\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-27",
					"fontsize" : 9.0,
					"patching_rect" : [ 34.0, 460.0, 213.0, 27.0 ],
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "trails[1]",
					"text" : "jcom.parameter trails @type msg_toggle @description \"Trails - ghostlike image\"",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-29",
					"fontsize" : 9.0,
					"patching_rect" : [ 34.0, 402.0, 380.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "noise",
					"outlettype" : [ "" ],
					"id" : "obj-31",
					"presentation_rect" : [ 154.727371, 22.545475, 18.0, 18.0 ],
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"patching_rect" : [ 34.862694, 318.730713, 18.0, 18.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
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
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-32",
					"fontsize" : 9.0,
					"patching_rect" : [ 34.0, 341.0, 340.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "noise",
					"fontname" : "Verdana",
					"id" : "obj-34",
					"presentation_rect" : [ 121.545471, 23.545475, 41.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 89.0, 24.0, 41.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-35",
					"patching_rect" : [ 443.0, 233.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "threshold",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-36",
					"presentation_rect" : [ 57.181892, 22.545475, 43.0, 19.0 ],
					"triscale" : 0.9,
					"triangle" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 33.681591, 260.775513, 43.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"minimum" : 0.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "threshold",
					"fontname" : "Verdana",
					"id" : "obj-37",
					"presentation_rect" : [ 2.545472, 23.545475, 65.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 4.0, 24.0, 65.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "documentation/generate",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-38",
					"fontsize" : 9.0,
					"patching_rect" : [ 123.0, 87.0, 119.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "threshold[1]",
					"text" : "jcom.parameter threshold @type msg_float @description \\\"Threshold\\\"",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-39",
					"fontsize" : 9.0,
					"patching_rect" : [ 34.0, 281.0, 352.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"fontname" : "Arial",
					"id" : "obj-41",
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 457.0, 233.0, 76.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.motion%",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-42",
					"fontsize" : 9.0,
					"patching_rect" : [ 443.0, 161.0, 77.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Arial",
					"id" : "obj-43",
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 15.0, 84.0, 79.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.motion% @module_type video @algorithm_type jitter @description \"Motion-related analysis\" @inspector 1",
					"linecount" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"id" : "obj-44",
					"fontsize" : 9.0,
					"patching_rect" : [ 1.0, 109.0, 241.0, 38.0 ],
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-45",
					"patching_rect" : [ 1.0, 157.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-46",
					"patching_rect" : [ 1.0, 84.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"id" : "obj-48",
					"presentation_rect" : [ 235.545273, 22.31801, 60.0, 45.0 ],
					"patching_rect" : [ 237.0, 22.0, 60.0, 45.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_freeze" : 1,
					"outlettype" : [ "" ],
					"prefix" : "video",
					"has_mute" : 1,
					"id" : "obj-49",
					"presentation_rect" : [ -1.227469, 0.318011, 300.0, 70.0 ],
					"has_preview" : 1,
					"has_bypass" : 1,
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-4", 0 ],
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 115.5, 106.0, 10.5, 106.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 132.5, 106.0, 10.5, 106.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 43.5, 300.0, 18.0, 300.0, 18.0, 246.0, 43.181591, 246.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 43.5, 360.0, 21.0, 360.0, 21.0, 315.0, 44.362694, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 43.5, 420.0, 21.0, 420.0, 21.0, 375.0, 43.5, 375.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 43.5, 489.0, 21.0, 489.0, 21.0, 435.0, 43.727066, 435.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 463.5, 309.0, 450.0, 309.0, 450.0, 264.0, 463.18573, 264.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 464.5, 363.0, 441.0, 363.0, 441.0, 321.0, 464.821564, 321.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 466.5, 426.0, 444.0, 426.0, 444.0, 381.0, 467.957886, 381.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 593.5, 150.0, 452.5, 150.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 652.5, 154.0, 452.5, 154.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [ 418.5, 74.0, 510.5, 74.0 ]
				}

			}
 ]
	}

}
