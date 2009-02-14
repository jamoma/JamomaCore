{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 513.0, 78.0, 867.0, 787.0 ],
		"bglocked" : 0,
		"defrect" : [ 513.0, 78.0, 867.0, 787.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 377.0, 60.0, 22.0, 22.0 ],
					"id" : "obj-7",
					"numinlets" : 0,
					"comment" : "bang to get random output"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 566.0, 337.0, 22.0, 22.0 ],
					"id" : "obj-6",
					"numinlets" : 1,
					"comment" : "random float (0. - 1.)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr $i1 * -1 + 1",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 110.0, 278.0, 98.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-5",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route freeze",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 110.0, 255.0, 71.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-2",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 1 1",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 363.0, 311.0, 47.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-4",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass /freeze",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 110.0, 220.0, 100.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-3",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 1 1",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 110.0, 334.0, 47.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-1",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/random",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 322.0, 333.0, 54.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-55",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/step",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 153.0, 642.0, 41.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-56",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/range",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 223.0, 501.0, 45.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-57",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/center",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 44.0, 553.0, 49.0, 18.0 ],
					"fontsize" : 10.0,
					"id" : "obj-58",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"ignoreclick" : 1,
					"presentation_rect" : [ 89.0, 40.0, 44.0, 19.0 ],
					"triscale" : 0.9,
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"hbgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"minimum" : 0.0,
					"patching_rect" : [ 363.0, 332.0, 53.0, 19.0 ],
					"presentation" : 1,
					"maximum" : 1.0,
					"textcolor" : [ 0.945098, 0.913725, 0.407843, 1.0 ],
					"fontsize" : 10.0,
					"triangle" : 0,
					"id" : "obj-54",
					"numinlets" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[3]",
					"text" : "jcom.parameter step @repetitions/allow 0 @type msg_float @range/bounds 0. 1. @range/clipmode both @ramp/drive scheduler",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 280.0, 640.0, 543.0, 31.0 ],
					"fontsize" : 10.0,
					"id" : "obj-52",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[2]",
					"text" : "jcom.parameter range @repetitions/allow 0 @type msg_float @range/bounds 0. 1. @range/clipmode both @ramp/drive scheduler",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 339.0, 502.0, 551.0, 31.0 ],
					"fontsize" : 10.0,
					"id" : "obj-44",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/step",
					"numoutlets" : 0,
					"presentation_rect" : [ 89.0, 55.0, 30.0, 18.0 ],
					"fontname" : "Arial",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 172.0, 641.0, 41.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"id" : "obj-108",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"presentation_rect" : [ 113.0, 54.0, 37.0, 19.0 ],
					"triscale" : 0.9,
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.741176, 0.184314, 0.756863, 1.0 ],
					"fontname" : "Verdana",
					"hbgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"minimum" : 0.0,
					"patching_rect" : [ 225.0, 641.0, 52.0, 19.0 ],
					"presentation" : 1,
					"maximum" : 1.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"triangle" : 0,
					"id" : "obj-106",
					"numinlets" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* -1.",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 295.0, 439.0, 35.0, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-98",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 0.",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 295.0, 417.0, 32.5, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-101",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 2.",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 110.0, 438.0, 32.5, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-102",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 0.",
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 110.0, 417.0, 32.5, 18.0 ],
					"fontsize" : 9.873845,
					"id" : "obj-103",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"numoutlets" : 2,
					"presentation_rect" : [ 1.0, 21.0, 148.0, 20.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"floatoutput" : 1,
					"mult" : 0.001,
					"outlettype" : [ "", "" ],
					"fgcolor" : [ 1.0, 0.941176, 0.0, 1.0 ],
					"patching_rect" : [ 110.0, 362.0, 218.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-104",
					"numinlets" : 2,
					"size" : 1000
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/range",
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 54.0, 39.0, 18.0 ],
					"fontname" : "Arial",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 242.0, 500.0, 45.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"id" : "obj-68",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/center",
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 41.0, 40.0, 18.0 ],
					"fontname" : "Arial",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 60.0, 555.0, 44.0, 18.0 ],
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"id" : "obj-67",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"presentation_rect" : [ 34.0, 40.0, 40.0, 19.0 ],
					"triscale" : 0.9,
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.741176, 0.184314, 0.756863, 1.0 ],
					"fontname" : "Verdana",
					"hbgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"minimum" : 0.0,
					"patching_rect" : [ 110.0, 555.0, 53.0, 19.0 ],
					"presentation" : 1,
					"maximum" : 1.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.0,
					"triangle" : 0,
					"id" : "obj-64",
					"numinlets" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"presentation_rect" : [ 34.0, 54.0, 39.0, 19.0 ],
					"triscale" : 0.9,
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.741176, 0.184314, 0.756863, 1.0 ],
					"fontname" : "Verdana",
					"hbgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"minimum" : 0.0,
					"patching_rect" : [ 295.0, 501.0, 39.0, 19.0 ],
					"presentation" : 1,
					"maximum" : 1.0,
					"textcolor" : [ 0.984314, 0.980392, 0.980392, 1.0 ],
					"fontsize" : 10.0,
					"triangle" : 0,
					"id" : "obj-61",
					"numinlets" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"presentation_rect" : [ 128.0, 37.0, 24.0, 24.0 ],
					"outlettype" : [ "bang" ],
					"fgcolor" : [ 1.0, 0.94902, 0.45098, 1.0 ],
					"patching_rect" : [ 377.0, 89.0, 20.0, 20.0 ],
					"blinkcolor" : [ 1.0, 1.0, 0.0, 1.0 ],
					"presentation" : 1,
					"id" : "obj-17",
					"numinlets" : 1,
					"bgcolor" : [ 0.913725, 0.913725, 0.913725, 0.0 ],
					"outlinecolor" : [ 1.0, 0.94902, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[1]",
					"text" : "jcom.message bang @repetitions/allow 1 @description \"bang to get output\"",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 404.0, 92.0, 394.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-19",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle",
					"text" : "jcom.parameter center @repetitions/allow 0 @type msg_float @range/bounds 0. 1. @range/clipmode both @ramp/drive scheduler @description \"input a value to get a random number within range, and set center\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 167.0, 554.0, 554.0, 31.0 ],
					"fontsize" : 10.0,
					"id" : "obj-29",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 50.0, 90.0, 251.0, 17.0 ],
					"fontsize" : 10.0,
					"id" : "obj-22",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return random @range/bounds 0. 1. @description \"random number moving on a drunk path, in a centered range\"",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 430.0, 286.0, 626.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-23",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 110.0, 189.0, 48.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-24",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 240.0, 110.0, 40.0, 17.0 ],
					"fontsize" : 10.0,
					"id" : "obj-32",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p algorithm",
					"numoutlets" : 2,
					"outlettype" : [ "float", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 391.0, 249.0, 68.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-33",
					"numinlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 351.0, 346.0, 749.0, 695.0 ],
						"bglocked" : 0,
						"defrect" : [ 351.0, 346.0, 749.0, 695.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
									"text" : "t b f",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 180.0, 128.0, 32.5, 17.0 ],
									"fontsize" : 9.0,
									"id" : "obj-10",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 315.0, 68.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 373.0, 448.0, 15.0, 15.0 ],
									"id" : "obj-5",
									"numinlets" : 1,
									"comment" : "display slider set"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 315.0, 105.0, 20.0, 20.0 ],
									"id" : "obj-18",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "500",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 314.0, 129.0, 32.5, 18.0 ],
									"fontsize" : 12.0,
									"id" : "obj-26",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 366.0, 295.0, 20.0, 20.0 ],
									"id" : "obj-4",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1000.",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 418.0, 356.0, 49.0, 18.0 ],
									"fontsize" : 9.873845,
									"id" : "obj-27",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1000.",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 367.0, 356.0, 49.0, 18.0 ],
									"fontsize" : 9.873845,
									"id" : "obj-30",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 375.0, 407.0, 70.0, 18.0 ],
									"fontsize" : 9.873845,
									"id" : "obj-31",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0. 0.",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 375.0, 387.0, 55.0, 18.0 ],
									"fontsize" : 9.873845,
									"id" : "obj-34",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 2.",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 389.0, 295.0, 32.5, 18.0 ],
									"fontsize" : 9.873845,
									"id" : "obj-35",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 0.",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 375.0, 333.0, 32.5, 18.0 ],
									"fontsize" : 9.873845,
									"id" : "obj-36",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 0.",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 409.0, 333.0, 32.5, 18.0 ],
									"fontsize" : 9.873845,
									"id" : "obj-40",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 500",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 276.0, 180.0, 37.0, 18.0 ],
									"fontsize" : 9.873845,
									"id" : "obj-113",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 1000.",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 276.0, 245.0, 47.0, 18.0 ],
									"fontsize" : 9.873845,
									"id" : "obj-109",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "...et ce step",
									"numoutlets" : 0,
									"presentation_rect" : [ 612.0, 212.0, 72.0, 20.0 ],
									"fontname" : "Arial",
									"patching_rect" : [ 399.0, 107.0, 72.0, 20.0 ],
									"presentation" : 1,
									"fontsize" : 12.0,
									"id" : "obj-108",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1000.",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 348.0, 132.0, 49.0, 18.0 ],
									"fontsize" : 9.873845,
									"id" : "obj-107",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"presentation_rect" : [ 560.0, 212.0, 52.0, 19.0 ],
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Verdana",
									"minimum" : 0.0,
									"patching_rect" : [ 348.0, 107.0, 52.0, 19.0 ],
									"presentation" : 1,
									"maximum" : 1.0,
									"fontsize" : 10.0,
									"id" : "obj-106",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "...avec cette amplitude",
									"numoutlets" : 0,
									"presentation_rect" : [ 600.0, 187.0, 134.0, 20.0 ],
									"fontname" : "Arial",
									"patching_rect" : [ 381.0, 217.0, 200.0, 20.0 ],
									"presentation" : 1,
									"fontsize" : 12.0,
									"id" : "obj-68",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "drunk autour d'une valeur...",
									"numoutlets" : 0,
									"presentation_rect" : [ 618.0, 166.0, 160.0, 20.0 ],
									"fontname" : "Arial",
									"patching_rect" : [ 59.0, 222.0, 160.0, 20.0 ],
									"presentation" : 1,
									"fontsize" : 12.0,
									"id" : "obj-67",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"presentation_rect" : [ 590.0, 244.0, 53.0, 19.0 ],
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Verdana",
									"minimum" : 0.0,
									"patching_rect" : [ 276.0, 322.0, 53.0, 19.0 ],
									"presentation" : 1,
									"maximum" : 1.0,
									"fontsize" : 10.0,
									"id" : "obj-66",
									"numinlets" : 1,
									"bgcolor" : [ 0.945098, 0.913725, 0.407843, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 0.",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 276.0, 298.0, 32.5, 18.0 ],
									"fontsize" : 9.873845,
									"id" : "obj-65",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"presentation_rect" : [ 561.0, 167.0, 53.0, 19.0 ],
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Verdana",
									"minimum" : 0.0,
									"patching_rect" : [ 211.0, 223.0, 53.0, 19.0 ],
									"presentation" : 1,
									"maximum" : 1.0,
									"fontsize" : 10.0,
									"id" : "obj-64",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"presentation_rect" : [ 560.0, 243.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 276.0, 129.0, 20.0, 20.0 ],
									"presentation" : 1,
									"id" : "obj-63",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"presentation_rect" : [ 561.0, 189.0, 39.0, 19.0 ],
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Verdana",
									"minimum" : 0.0,
									"patching_rect" : [ 342.0, 219.0, 39.0, 19.0 ],
									"presentation" : 1,
									"maximum" : 1.0,
									"fontsize" : 10.0,
									"id" : "obj-61",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 276.0, 220.0, 32.5, 18.0 ],
									"fontsize" : 9.873845,
									"id" : "obj-60",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "drunk 1000 50",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 276.0, 156.0, 91.0, 18.0 ],
									"fontsize" : 9.873845,
									"id" : "obj-59",
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 276.0, 273.0, 46.0, 19.0 ],
									"fontsize" : 10.0,
									"id" : "obj-42",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /center /range /step /bang",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 24.0, 65.0, 189.0, 18.0 ],
									"fontsize" : 10.0,
									"id" : "obj-1",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 71.0, 453.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 17.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 3 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-61", 0 ],
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
									"source" : [ "obj-1", 2 ],
									"destination" : [ "obj-106", 0 ],
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
									"source" : [ "obj-113", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-109", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-65", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-109", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-106", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-60", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-36", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-40", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-34", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-59", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-107", 0 ],
									"destination" : [ "obj-59", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-113", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 285.5, 381.0, 43.0, 403.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"centered drunk path generator\"",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 15.0, 140.0, 411.0, 19.0 ],
					"fontsize" : 10.0,
					"id" : "obj-37",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 90.0, 22.0, 22.0 ],
					"id" : "obj-38",
					"numinlets" : 0,
					"comment" : "message"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 180.0, 22.0, 22.0 ],
					"id" : "obj-39",
					"numinlets" : 1,
					"comment" : "message"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 75.0, 110.0, 159.0, 17.0 ],
					"fontsize" : 10.0,
					"id" : "obj-43",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"varname" : "/nd_drunk",
					"text" : "/editing_this_module",
					"numoutlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"outlettype" : [ "" ],
					"has_freeze" : 1,
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"presentation" : 1,
					"id" : "obj-16",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-33", 1 ],
					"hidden" : 0,
					"midpoints" : [ 119.5, 468.0, 582.0, 460.0, 473.0, 217.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 0 ],
					"destination" : [ "obj-102", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-103", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 1 ],
					"destination" : [ "obj-103", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 1 ],
					"destination" : [ "obj-101", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 59.5, 133.0, 24.5, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 84.5, 133.0, 24.5, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 249.5, 133.0, 24.5, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 1 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [ 449.5, 274.0, 147.5, 274.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-54", 0 ],
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
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
