{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 264.0, 67.0, 587.0, 553.0 ],
		"bglocked" : 0,
		"defrect" : [ 264.0, 67.0, 587.0, 553.0 ],
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
					"text" : "generate parameters",
					"numinlets" : 1,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 30.0, 40.0, 117.0, 19.0 ],
					"id" : "obj-1",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 40.0, 20.0, 20.0 ],
					"id" : "obj-2",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"numinlets" : 1,
					"patching_rect" : [ 225.0, 350.0, 41.0, 19.0 ],
					"id" : "obj-3",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "open" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"patching_rect" : [ 225.0, 375.0, 52.0, 19.0 ],
					"id" : "obj-4",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "tap.jmod.procrastinate inspector",
					"text" : "p \"tap.jmod.procrastinate inspector\"",
					"numinlets" : 1,
					"patching_rect" : [ 225.0, 400.0, 196.0, 19.0 ],
					"id" : "obj-5",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 391.0, 185.0, 267.0, 392.0 ],
						"bgcolor" : [ 0.137255, 0.137255, 0.137255, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 391.0, 185.0, 267.0, 392.0 ],
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
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 168.0, 364.0, 43.0, 19.0 ],
									"id" : "obj-1",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 168.0, 348.0, 42.0, 19.0 ],
									"id" : "obj-2",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 168.0, 331.0, 44.0, 19.0 ],
									"id" : "obj-3",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 168.0, 315.0, 44.0, 19.0 ],
									"id" : "obj-4",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 125.0, 364.0, 43.0, 19.0 ],
									"id" : "obj-5",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pan_range:",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 56.0, 364.0, 75.0, 19.0 ],
									"id" : "obj-6",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 125.0, 348.0, 42.0, 19.0 ],
									"id" : "obj-7",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "gain_range:",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 53.0, 348.0, 75.0, 19.0 ],
									"id" : "obj-8",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 125.0, 331.0, 44.0, 19.0 ],
									"id" : "obj-9",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "shift_range:",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 53.0, 331.0, 75.0, 19.0 ],
									"id" : "obj-10",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 125.0, 315.0, 43.0, 19.0 ],
									"id" : "obj-11",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "delay_range:",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 50.0, 315.0, 75.0, 19.0 ],
									"id" : "obj-12",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "4",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 19.0, 320.0, 24.0, 28.0 ],
									"id" : "obj-13",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 18.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "4/pan/max",
									"text" : "jcom.parameter 4/pan/max @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 357.0, 531.0, 341.0, 28.0 ],
									"id" : "obj-14",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "4/pan/min",
									"text" : "jcom.parameter 4/pan/min @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 357.0, 498.0, 341.0, 28.0 ],
									"id" : "obj-15",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "4/gain/max",
									"text" : "jcom.parameter 4/gain/max @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 531.0, 341.0, 28.0 ],
									"id" : "obj-16",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "4/gain/min",
									"text" : "jcom.parameter 4/gain/min @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 498.0, 341.0, 28.0 ],
									"id" : "obj-17",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "4/shift/max",
									"text" : "jcom.parameter 4/shift/max @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 357.0, 466.0, 341.0, 28.0 ],
									"id" : "obj-18",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "4/shift/min",
									"text" : "jcom.parameter 4/shift/min @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 357.0, 433.0, 341.0, 28.0 ],
									"id" : "obj-19",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "4/delay/max",
									"text" : "jcom.parameter 4/delay/max @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 466.0, 341.0, 28.0 ],
									"id" : "obj-20",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "4/delay/min",
									"text" : "jcom.parameter 4/delay/min @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 433.0, 341.0, 28.0 ],
									"id" : "obj-21",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"bgcolor" : [ 0.180392, 0.180392, 0.180392, 1.0 ],
									"patching_rect" : [ 4.0, 309.0, 255.0, 75.0 ],
									"id" : "obj-22",
									"numoutlets" : 0,
									"rounded" : 7
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 168.0, 284.0, 43.0, 19.0 ],
									"id" : "obj-23",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 168.0, 268.0, 42.0, 19.0 ],
									"id" : "obj-24",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 168.0, 251.0, 44.0, 19.0 ],
									"id" : "obj-25",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 168.0, 235.0, 44.0, 19.0 ],
									"id" : "obj-26",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 125.0, 284.0, 43.0, 19.0 ],
									"id" : "obj-27",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pan_range:",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 56.0, 284.0, 75.0, 19.0 ],
									"id" : "obj-28",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 125.0, 268.0, 42.0, 19.0 ],
									"id" : "obj-29",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "gain_range:",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 53.0, 268.0, 75.0, 19.0 ],
									"id" : "obj-30",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 125.0, 251.0, 44.0, 19.0 ],
									"id" : "obj-31",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "shift_range:",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 53.0, 251.0, 75.0, 19.0 ],
									"id" : "obj-32",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 125.0, 235.0, 43.0, 19.0 ],
									"id" : "obj-33",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "delay_range:",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 50.0, 235.0, 75.0, 19.0 ],
									"id" : "obj-34",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 19.0, 240.0, 24.0, 28.0 ],
									"id" : "obj-35",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 18.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "3/pan/max",
									"text" : "jcom.parameter 3/pan/max @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 647.0, 390.0, 341.0, 28.0 ],
									"id" : "obj-36",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "3/pan/min",
									"text" : "jcom.parameter 3/pan/min @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 647.0, 357.0, 341.0, 28.0 ],
									"id" : "obj-37",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "3/gain/max",
									"text" : "jcom.parameter 3/gain/max @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 301.0, 390.0, 341.0, 28.0 ],
									"id" : "obj-38",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "3/gain/min",
									"text" : "jcom.parameter 3/gain/min @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 301.0, 357.0, 341.0, 28.0 ],
									"id" : "obj-39",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "3/shift/max",
									"text" : "jcom.parameter 3/shift/max @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 647.0, 325.0, 341.0, 28.0 ],
									"id" : "obj-40",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "3/shift/min",
									"text" : "jcom.parameter 3/shift/min @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 647.0, 292.0, 341.0, 28.0 ],
									"id" : "obj-41",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "3/delay/max",
									"text" : "jcom.parameter 3/delay/max @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 301.0, 325.0, 341.0, 28.0 ],
									"id" : "obj-42",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "3/delay/min",
									"text" : "jcom.parameter 3/delay/min @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 301.0, 292.0, 341.0, 28.0 ],
									"id" : "obj-43",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"bgcolor" : [ 0.180392, 0.180392, 0.180392, 1.0 ],
									"patching_rect" : [ 4.0, 229.0, 255.0, 75.0 ],
									"id" : "obj-44",
									"numoutlets" : 0,
									"rounded" : 7
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 168.0, 204.0, 43.0, 19.0 ],
									"id" : "obj-45",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 168.0, 188.0, 42.0, 19.0 ],
									"id" : "obj-46",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 168.0, 171.0, 44.0, 19.0 ],
									"id" : "obj-47",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 168.0, 155.0, 44.0, 19.0 ],
									"id" : "obj-48",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 125.0, 204.0, 43.0, 19.0 ],
									"id" : "obj-49",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pan_range:",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 56.0, 204.0, 75.0, 19.0 ],
									"id" : "obj-50",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 125.0, 188.0, 42.0, 19.0 ],
									"id" : "obj-51",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "gain_range:",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 53.0, 188.0, 75.0, 19.0 ],
									"id" : "obj-52",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 125.0, 171.0, 44.0, 19.0 ],
									"id" : "obj-53",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "shift_range:",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 53.0, 171.0, 75.0, 19.0 ],
									"id" : "obj-54",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 125.0, 155.0, 43.0, 19.0 ],
									"id" : "obj-55",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "delay_range:",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 50.0, 155.0, 75.0, 19.0 ],
									"id" : "obj-56",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 19.0, 160.0, 24.0, 28.0 ],
									"id" : "obj-57",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 18.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "2/pan/max",
									"text" : "jcom.parameter 2/pan/max @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 647.0, 249.0, 341.0, 28.0 ],
									"id" : "obj-58",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "2/pan/min",
									"text" : "jcom.parameter 2/pan/min @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 647.0, 216.0, 341.0, 28.0 ],
									"id" : "obj-59",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "2/gain/max",
									"text" : "jcom.parameter 2/gain/max @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 301.0, 249.0, 341.0, 28.0 ],
									"id" : "obj-60",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "2/gain/min",
									"text" : "jcom.parameter 2/gain/min @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 301.0, 216.0, 341.0, 28.0 ],
									"id" : "obj-61",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "2/shift/max",
									"text" : "jcom.parameter 2/shift/max @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 647.0, 184.0, 341.0, 28.0 ],
									"id" : "obj-62",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "2/shift/min",
									"text" : "jcom.parameter 2/shift/min @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 647.0, 151.0, 341.0, 28.0 ],
									"id" : "obj-63",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "2/delay/max",
									"text" : "jcom.parameter 2/delay/max @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 301.0, 184.0, 341.0, 28.0 ],
									"id" : "obj-64",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "2/delay/min",
									"text" : "jcom.parameter 2/delay/min @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 301.0, 151.0, 341.0, 28.0 ],
									"id" : "obj-65",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"bgcolor" : [ 0.180392, 0.180392, 0.180392, 1.0 ],
									"patching_rect" : [ 4.0, 149.0, 255.0, 75.0 ],
									"id" : "obj-66",
									"numoutlets" : 0,
									"rounded" : 7
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 168.0, 124.0, 43.0, 19.0 ],
									"id" : "obj-67",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 168.0, 108.0, 42.0, 19.0 ],
									"id" : "obj-68",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 168.0, 91.0, 44.0, 19.0 ],
									"id" : "obj-69",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 168.0, 75.0, 44.0, 19.0 ],
									"id" : "obj-70",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 125.0, 124.0, 43.0, 19.0 ],
									"id" : "obj-71",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pan_range:",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 56.0, 124.0, 75.0, 19.0 ],
									"id" : "obj-72",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 125.0, 108.0, 42.0, 19.0 ],
									"id" : "obj-73",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "gain_range:",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 53.0, 108.0, 75.0, 19.0 ],
									"id" : "obj-74",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 125.0, 91.0, 44.0, 19.0 ],
									"id" : "obj-75",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "shift_range:",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 53.0, 91.0, 75.0, 19.0 ],
									"id" : "obj-76",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"patching_rect" : [ 125.0, 75.0, 43.0, 19.0 ],
									"id" : "obj-77",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 10.0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "delay_range:",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 50.0, 75.0, 75.0, 19.0 ],
									"id" : "obj-78",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 19.0, 80.0, 24.0, 28.0 ],
									"id" : "obj-79",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 18.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"hidden" : 1,
									"numinlets" : 0,
									"patching_rect" : [ 785.0, 490.0, 20.0, 20.0 ],
									"id" : "obj-80",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "inspector panel",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 19.0, 43.0, 142.0, 19.0 ],
									"id" : "obj-81",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jmod.tap.procrastinate~",
									"numinlets" : 1,
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 19.0, 16.0, 230.0, 28.0 ],
									"id" : "obj-83",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 18.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"bgcolor" : [ 0.180392, 0.180392, 0.180392, 1.0 ],
									"patching_rect" : [ 4.0, 5.0, 255.0, 60.0 ],
									"id" : "obj-84",
									"numoutlets" : 0,
									"rounded" : 7
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "1/pan/max",
									"text" : "jcom.parameter 1/pan/max @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 647.0, 109.0, 341.0, 28.0 ],
									"id" : "obj-85",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "1/pan/min",
									"text" : "jcom.parameter 1/pan/min @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 647.0, 76.0, 341.0, 28.0 ],
									"id" : "obj-86",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "1/gain/max",
									"text" : "jcom.parameter 1/gain/max @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 301.0, 109.0, 341.0, 28.0 ],
									"id" : "obj-87",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "1/gain/min",
									"text" : "jcom.parameter 1/gain/min @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 301.0, 76.0, 341.0, 28.0 ],
									"id" : "obj-88",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "1/shift/max",
									"text" : "jcom.parameter 1/shift/max @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 647.0, 44.0, 341.0, 28.0 ],
									"id" : "obj-89",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "1/shift/min",
									"text" : "jcom.parameter 1/shift/min @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 647.0, 11.0, 341.0, 28.0 ],
									"id" : "obj-90",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "1/delay/max",
									"text" : "jcom.parameter 1/delay/max @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 301.0, 44.0, 341.0, 28.0 ],
									"id" : "obj-91",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "1/delay/min",
									"text" : "jcom.parameter 1/delay/min @type msg_float @description \"Set the range of the for the generated parameter values used by this delay unit.\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 301.0, 11.0, 341.0, 28.0 ],
									"id" : "obj-92",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"bgcolor" : [ 0.180392, 0.180392, 0.180392, 1.0 ],
									"patching_rect" : [ 4.0, 69.0, 255.0, 75.0 ],
									"id" : "obj-93",
									"numoutlets" : 0,
									"rounded" : 7
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-86", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-89", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-90", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
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
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-87", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-88", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-91", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-92", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-85", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-87", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 0 ],
									"destination" : [ "obj-73", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-90", 0 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-92", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel /panel/open",
					"numinlets" : 1,
					"patching_rect" : [ 100.0, 315.0, 89.0, 19.0 ],
					"id" : "obj-6",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "bang", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tap.procrastinate~",
					"numinlets" : 1,
					"patching_rect" : [ 75.0, 350.0, 138.0, 19.0 ],
					"id" : "obj-7",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"numinlets" : 2,
					"patching_rect" : [ 75.0, 380.0, 79.0, 19.0 ],
					"id" : "obj-8",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 1",
					"numinlets" : 1,
					"patching_rect" : [ 75.0, 290.0, 68.0, 19.0 ],
					"id" : "obj-9",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"patching_rect" : [ 25.0, 170.0, 139.0, 17.0 ],
					"id" : "obj-10",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numinlets" : 2,
					"patching_rect" : [ 170.0, 170.0, 34.0, 17.0 ],
					"id" : "obj-11",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.parameter.mxb",
					"text" : "jcom.message generate_parameters @type msg_none @description \"Generates new, random, parameters for all delay settings based on the ranges specified in the rules below.\"",
					"linecount" : 3,
					"numinlets" : 1,
					"patching_rect" : [ 30.0, 80.0, 333.0, 43.0 ],
					"id" : "obj-12",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.hub tap.jmod.procrastinate @description \"Idiosyncratic cascaded pitch-shifting delays\"",
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 200.0, 475.0, 19.0 ],
					"id" : "obj-13",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 75.0, 410.0, 20.0, 20.0 ],
					"id" : "obj-14",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 75.0, 265.0, 20.0, 20.0 ],
					"id" : "obj-17",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 240.0, 20.0, 20.0 ],
					"id" : "obj-18",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 105.0, 410.0, 20.0, 20.0 ],
					"id" : "obj-19",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 10.0, 135.0, 20.0, 20.0 ],
					"id" : "obj-20",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numinlets" : 1,
					"prefix" : "audio",
					"has_mute" : 1,
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"id" : "obj-21",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"has_panel" : 1,
					"has_bypass" : 1,
					"has_meters" : 1,
					"has_gain" : 1,
					"has_mix" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 34.5, 193.0, 19.5, 193.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 179.5, 196.0, 21.0, 196.0, 21.0, 195.0, 19.5, 195.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 338.0, 234.5, 338.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
